// > cargo run usb-mouse
// or
// > cargo run usb-mouse --release

#![no_main]
#![no_std]

use embedded_hal::spi::MODE_3;

use stm32f4xx_hal::{
    gpio::Speed,
    gpio::{
        gpioa::{
            PA1, PA2, PA3, PA4, PA5, PA6, PA7},
        gpiob::{
            PB10,PB12, PB14, PB15},
        gpioc::{
            PC2, PC3, PC4, PC5, PC13}, 
    Input, Output, PushPull, PullDown, Alternate},
    otg_fs::{UsbBus, UsbBusType, USB},
    prelude::*,
    rcc::Clocks,
    spi::Spi,
    stm32,
};

use usb_device::{bus::UsbBusAllocator, prelude::*};
use usbd_hid::{
    descriptor::{generator_prelude::*, MouseReport},
    hid_class::HIDClass,
};

use panic_rtt_target as _;

use app::{
    pmw3389::{self, Register},
    DwtDelay,
};
use rtt_target::{rprintln, rtt_init_print};

type PMW3389T = pmw3389::Pmw3389<
    Spi<
        stm32f4xx_hal::stm32::SPI2,
        (
            PB10<Alternate<stm32f4xx_hal::gpio::AF5>>,
            PC2<Alternate<stm32f4xx_hal::gpio::AF5>>,
            PC3<Alternate<stm32f4xx_hal::gpio::AF5>>,
        ),
    >,
    PB12<Output<PushPull>>,
>;

#[rtic::app(device = stm32f4xx_hal::stm32, monotonic = rtic::cyccnt::CYCCNT, peripherals = true)]
const APP: () = {
    struct Resources {
        btn: PC13<Input<PullDown>>,
        hid: HIDClass<'static, UsbBusType>,
        usb_dev: UsbDevice<'static, UsbBus<USB>>,
        left_button: PC5<Input<PullDown>>,
        right_button: PA5<Input<PullDown>>,

        pmw3389: PMW3389T,
    }

    #[init]
    fn init(ctx: init::Context) -> init::LateResources {
        static mut EP_MEMORY: [u32; 1024] = [0; 1024];
        static mut USB_BUS: Option<UsbBusAllocator<UsbBusType>> = None;

        rtt_init_print!();
        rprintln!("init");

        let mut core = ctx.core;

        // Set up the system clock.
        let rcc = ctx.device.RCC.constrain();
        let _clocks = rcc.cfgr.sysclk(48.mhz()).require_pll48clk().freeze();

        let gpioc = ctx.device.GPIOC.split();
        let gpiob = ctx.device.GPIOB.split();
        let gpioa = ctx.device.GPIOA.split();

        let btn = gpioc.pc13.into_pull_down_input();

        let left_button = gpioc.pc5.into_pull_down_input();
        let right_button = gpioa.pa5.into_pull_down_input();

        //let gpioa = ctx.device.GPIOA.split();
        let usb = USB {
            usb_global: ctx.device.OTG_FS_GLOBAL,
            usb_device: ctx.device.OTG_FS_DEVICE,
            usb_pwrclk: ctx.device.OTG_FS_PWRCLK,
            pin_dm: gpioa.pa11.into_alternate_af10(),
            pin_dp: gpioa.pa12.into_alternate_af10(),
        };
        USB_BUS.replace(UsbBus::new(usb, EP_MEMORY));

        let sck = gpiob.pb10.into_alternate_af5();
        let miso = gpioc.pc2.into_alternate_af5();
        let mosi = gpioc.pc3.into_alternate_af5();
        let cs = gpiob.pb12.into_push_pull_output().set_speed(Speed::High);


        let spi = Spi::spi2(
            ctx.device.SPI2,
            (sck, miso, mosi),
            MODE_3,
            stm32f4xx_hal::time::KiloHertz(2000).into(),
            _clocks,
        );



        let mut delay = DwtDelay::new(&mut core.DWT, _clocks);
        let mut pmw3389 = pmw3389::Pmw3389::new(spi, cs, delay).unwrap();



        // set in burst mode
        pmw3389.write_register(Register::MotionBurst, 0x00);        


        let hid = HIDClass::new(USB_BUS.as_ref().unwrap(), MouseReport::desc(), 1);
        let usb_dev = UsbDeviceBuilder::new(USB_BUS.as_ref().unwrap(), UsbVidPid(0xc410, 0x0000))
            .manufacturer("Nuttali")
            .product("Mouse")
            .serial_number("1.0")
            .device_class(0)
            .build();
        init::LateResources { btn, hid, usb_dev, left_button, right_button, pmw3389}
    }

    #[task(binds=OTG_FS, resources = [btn, hid, usb_dev, left_button, right_button,pmw3389])]
    fn on_usb(ctx: on_usb::Context) {
<<<<<<< HEAD

        static mut OLD_POS_X: i8 = 0;
        static mut OLD_POS_Y: i8 = 0;
        
        static mut COUNTER: u16 = 0;
        
        rprintln!("jag körs {}",COUNTER);
        let (x, y) = ctx.resources.pmw3389.read_status().unwrap();
        let mut posX:i8 = ((x)as i8)/50;
        let mut posY:i8 = ((y)as i8)/50; 
        rprintln!("X {}, Y {}", posX, posY);
=======
        static mut COUNTER: u16 = 0;
        
        rprintln!("Jag körs faktiskt!");
>>>>>>> 8f6a358 (changed stuff)
        // destruct the context
        let (btn, usb_dev, hid, ) = (ctx.resources.btn, ctx.resources.usb_dev, ctx.resources.hid);

        let mut temp_button: u8 = 0;

        if ctx.resources.left_button.is_low().unwrap() {
            temp_button = temp_button +1;
        }

        if ctx.resources.right_button.is_low().unwrap() {
            temp_button = temp_button +2;
        }

        let report = MouseReport {
            x: posX,
            y: posY,
            buttons: temp_button,
            //buttons: btn.is_low().unwrap().into(), // (into takes a bool into an integer)
            wheel: 0,
        };

        *OLD_POS_X = posX;

        *OLD_POS_Y = posY;

        // wraps around after 200ms
        *COUNTER = (*COUNTER + 1) % 200;

        // push the report
        hid.push_input(&report).ok();

        // update the usb device state
        if usb_dev.poll(&mut [hid]) {
            return;
        }
    }

    #[idle]
    fn idle(_cx: idle::Context) -> ! {
        rprintln!("idle");
        loop {
            continue;
        }
    }
};
