//Work made by J, Jacobsson, T. Andersson and S. Gradén.
//Tested and valideted on:
//Windows - Lenovo Yoga 7 series
//Mac - Apple MacBook Pro Model A2141 EMC 3347
//TODO:
//Forward and back buttons should work as normal buttons.
//RGB should be able to be configured in the computer.

#![no_main]
#![no_std]

use stm32f4xx_hal::{
    //dwt::Dwt,
    gpio::Speed,
    gpio::{gpioa::{PA1, PA2, PA3, PA4, PA5, PA6, PA7},
        gpiob::{PB10, PB12, PB14,PB15},
        gpioc::{PC2, PC3, PC4, PC5},
        Alternate, Output, PushPull, Input, PullDown,// PullUp, 
    },
    //rcc::Clocks,
    spi::Spi,
    //stm32,
    otg_fs::{UsbBus, UsbBusType, USB}, //USB
    prelude::*,
};
use usb_device::{bus::UsbBusAllocator, prelude::*};
use usbd_hid::{
    descriptor::{generator_prelude::*, MouseReport},
    hid_class::HIDClass,
};

use embedded_hal::spi::MODE_3;
use rtic::cyccnt::{Instant, U32Ext as _};
use panic_rtt_target as _;
use rtt_target::{rprintln, rtt_init_print};

use app::{
    pmw3389::{self, Register},
    DwtDelay,
};

//Some settings for the sensor.
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

#[rtic::app(device = stm32f4xx_hal::stm32, peripherals = true)]
const APP: () = {
    struct Resources {
        // late resources
        // Leds
        // led_blue: PA1<Output<PushPull>>,
        // led_red: PA3<Output<PushPull>>,
        // led_green: PA2<Output<PushPull>>,

        // Buttons
        // turbo_button: PA4<Input<PullDown>>,
        right_button: PA5<Input<PullDown>>,
        scroll_button: PA6<Input<PullDown>>,
        forward_button: PB14<Input<PullDown>>,
        // backward_button: PB15<Input<PullDown>>,
        left_button: PC5<Input<PullDown>>,

        // Scroll
        scroll_b: PC4<Input<PullDown>>,
        scroll_a: PA7<Input<PullDown>>,

        // USB
        hid: HIDClass<'static, UsbBusType>,
        usb_dev: UsbDevice<'static, UsbBus<USB>>,
        
        //Sensor
        pmw3389: PMW3389T, 
    }

    #[init]
    fn init(mut ctx: init::Context) -> init::LateResources {
        static mut EP_MEMORY: [u32; 1024] = [0; 1024];
        static mut USB_BUS: Option<UsbBusAllocator<UsbBusType>> = None;

        rtt_init_print!();
        rprintln!("init");

        // Set up the system clock.
        let rcc = ctx.device.RCC.constrain();
        let _clocks = rcc.cfgr.sysclk(48.mhz()).require_pll48clk().freeze();

        // Initialize (enable) the monotonic timer (CYCCNT)
        ctx.core.DCB.enable_trace();
        ctx.core.DWT.enable_cycle_counter();
        
        // Buttons
        // ||||||||||
        // \/\/\/\/\/
        
        let gpioa = ctx.device.GPIOA.split();
        let gpiob = ctx.device.GPIOB.split();
        let gpioc = ctx.device.GPIOC.split();
        let left_button = gpioc.pc5.into_pull_down_input();
        let right_button = gpioa.pa5.into_pull_down_input();
        let scroll_button = gpioa.pa6.into_pull_down_input();
        let forward_button = gpiob.pb14.into_pull_down_input();
        // /\/\/\/\/\
        // ||||||||||
        // Buttons

        //Scroll
        let scroll_a = gpioa.pa7.into_pull_down_input();
        let scroll_b = gpioc.pc4.into_pull_down_input();

        // Sensor Init
        // ||||||||||
        // \/\/\/\/\/
        let mut core = ctx.core;

        // Initialize (enable) the monotonic timer (CYCCNT)
        core.DCB.enable_trace();
        core.DWT.enable_cycle_counter();

        // setup clocks Duplicate code
        //let rcc = ctx.device.RCC.constrain();
        //let clocks = rcc.cfgr.freeze();
        rprintln!("clocks:");
        rprintln!("hclk {}", _clocks.hclk().0);

        // Configure SPI
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

        let delay = DwtDelay::new(&mut core.DWT, _clocks);
        let mut pmw3389 = pmw3389::Pmw3389::new(spi, cs, delay).unwrap();

        // set in burst mode
        pmw3389.write_register(Register::MotionBurst, 0x00);
        // /\/\/\/\/\
        // ||||||||||
        // Sensor Init

        // USB
        // ||||||||||
        // \/\/\/\/\/
        let usb = USB {
            usb_global: ctx.device.OTG_FS_GLOBAL,
            usb_device: ctx.device.OTG_FS_DEVICE,
            usb_pwrclk: ctx.device.OTG_FS_PWRCLK,
            pin_dm: gpioa.pa11.into_alternate_af10(),
            pin_dp: gpioa.pa12.into_alternate_af10(),
        };
        USB_BUS.replace(UsbBus::new(usb, EP_MEMORY));
        
        let hid = HIDClass::new(USB_BUS.as_ref().unwrap(), MouseReport::desc(), 1);
        let usb_dev = UsbDeviceBuilder::new(USB_BUS.as_ref().unwrap(), UsbVidPid(0xc410, 0x0000))
            .manufacturer("Nuttali")
            .product("Mouse")
            .serial_number("1.0")
            .device_class(0)
            .build();
        
        // /\/\/\/\/\
        // ||||||||||
        // USB
        
        init::LateResources{ left_button,right_button,scroll_button,forward_button, hid, usb_dev, pmw3389, scroll_b, scroll_a}
    }

    #[task(binds=OTG_FS, resources = [left_button, right_button,scroll_button,forward_button, hid, usb_dev, pmw3389, scroll_a, scroll_b])]
    fn on_usb(ctx: on_usb::Context) {
        static mut WHEEL_COUNT: i8 = 0;
        static mut A_PREV :bool = false;
        static mut B_PREV :bool = false;
        
        // destruct the context
        let (left_button, right_button, scroll_button, forward_button,
            usb_dev, hid, pmw3389, scroll_a, scroll_b) 
            = (ctx.resources.left_button, ctx.resources.right_button,
               ctx.resources.scroll_button,
               ctx.resources.forward_button, ctx.resources.usb_dev, 
               ctx.resources.hid, ctx.resources.pmw3389, ctx.resources.scroll_a,
               ctx.resources.scroll_b);

        let a:bool = scroll_a.is_high().unwrap();
        let b:bool = scroll_b.is_high().unwrap();
        *WHEEL_COUNT = check_scroll(a,b,*A_PREV,*B_PREV);
        *A_PREV = a;
        *B_PREV = b;
        
        // Read from sensor
        let (x_sensor, y_sensor) = pmw3389.read_status().unwrap();
        
        let left:u8;
        if left_button.is_low().unwrap(){
            left = 1;
        }else{
            left = 0;
        }
        let right:u8;
        if right_button.is_low().unwrap(){
            right = 2;
        }else{
            right = 0;
        }
        let scroll:u8;
        if scroll_button.is_high().unwrap(){
            //rprintln!("scroll"); 
            scroll = 4;
        }else{
            scroll = 0;
        }

        //This dose not work yet.
        let forward:u8;
        if forward_button.is_high().unwrap(){
            //rprintln!("forward"); 
            forward = 8;
        }else{
            forward = 0;
        }


        

        //https://eleccelerator.com/tutorial-about-usb-hid-report-descriptors/
        let report = MouseReport {
            x: (x_sensor as i8)>> 1, // need to convert form i16 to i8. Shifts to get smother movement
            y: (y_sensor as i8)>> 1, // need to convert form i16 to i8. Shifts to get smother movement
            //resolution: 1,
            buttons: left+right+scroll+forward, // (into takes a bool into an integer)
            wheel: *WHEEL_COUNT,
        };

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

fn check_scroll(scroll_a:bool, scroll_b:bool, scroll_a_prev:bool, scroll_b_prev:bool) -> i8{
    let mut wheel_count: i8 = 0;

    if scroll_a != scroll_a_prev || scroll_b != scroll_b_prev{

        //Sequence for up:
        //A:Low  B:Low
        //A:High B:Low
        //B:High B:High
        //A:Low  B:High
        //A:Low  B:Low

        //Sequence for down:
        //A:Low  B:Low
        //A:Low  B:High
        //A:High B:High
        //A:High B:Low
        //A:Low  B:Low

        if scroll_a_prev==scroll_b_prev{
            if scroll_b==scroll_b_prev{
                wheel_count +=1;
                //rprintln!("Up count:{}", WHEEL_COUNT)
            }else{
                wheel_count -=1;
                //rprintln!("Down count:{}", WHEEL_COUNT)
            }
        }else{
            if scroll_a==scroll_a_prev{
                wheel_count +=1;
                //rprintln!("Up count:{}", WHEEL_COUNT)
            }else{
                wheel_count -=1;
                //rprintln!("Down count:{}", WHEEL_COUNT)
            }
        }
    }
    return wheel_count;
}
