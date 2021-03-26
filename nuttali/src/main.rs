//Work made by J, Jacobsson, T. Andersson and S. Gradén.
//Tested and valideted on:
//Windows - Lenovo Yoga 7 series
//Mac - Apple MacBook Pro Model A2141 EMC 3347
//TODO:
//Forward and back buttons should work as normal buttons.
//RGB should be able to be configured in the computer.

#![no_main]
#![no_std]

//Needed to create custom made hid reports
use usbd_hid::hid_class::HIDClass;
use usbd_hid::descriptor::SerializedDescriptor;
use serde::ser::{Serialize, Serializer, SerializeTuple};
use usbd_hid::descriptor::AsInputReport;
use usbd_hid::descriptor::gen_hid_descriptor;

//Cortex things from per
//use cortex_m::{asm::delay, peripheral::DWT};
use stm32f4xx_hal::{
    //dwt::Dwt,
    gpio::Speed,
    //Look at resources to see what pin belongs to what.
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

use embedded_hal::spi::MODE_3;
//use rtic::cyccnt::{Instant, U32Ext as _};
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

//Report for USB.
#[gen_hid_descriptor(
    (collection = APPLICATION, usage_page = GENERIC_DESKTOP, usage = MOUSE) = {
        (collection = PHYSICAL, usage = POINTER) = {
            (usage_page = BUTTON, usage_min = 0x01, usage_max = 0x05) = {
                #[packed_bits 5] #[item_settings data,variable,absolute] buttons=input;
            };
            (usage_page = GENERIC_DESKTOP,) = {
                (usage = X,) = {
                    #[item_settings data,variable,relative] x=input;
                };
                (usage = Y,) = {
                    #[item_settings data,variable,relative] y=input;
                };
                (usage = WHEEL,) = {
                    #[item_settings data,variable,relative] wheel=input;
                };
            };
        };
    }
)]
pub struct NuttaliReport {
    pub buttons: u8,
    pub x: i8,
    pub y: i8,
    pub wheel: i8, // Scroll down (negative) or up (positive) this many units
}

#[rtic::app(device = stm32f4xx_hal::stm32, peripherals = true)]
const APP: () = {
    struct Resources {
        // late resources
        // Leds
        led_blue: PA1<Output<PushPull>>,
        led_red:  PA3<Output<PushPull>>,
        led_green: PA2<Output<PushPull>>,

        // Buttons
        dpi_button: PA4<Input<PullDown>>,
        right_button: PA5<Input<PullDown>>,
        scroll_button: PA6<Input<PullDown>>,
        backward_button: PB15<Input<PullDown>>,
        forward_button: PB14<Input<PullDown>>,
        left_button: PC5<Input<PullDown>>,

        // Scroll
        scroll_B: PC4<Input<PullDown>>,
        scroll_A: PA7<Input<PullDown>>,

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
        static mut dpi_button_prev: bool = false;

        rtt_init_print!();
        rprintln!("init");
        
        //Split all needed gpioa so that we can access every single pin.
        let gpioa = ctx.device.GPIOA.split();
        let gpiob = ctx.device.GPIOB.split();
        let gpioc = ctx.device.GPIOC.split();

        // Set up the system clock.
        let rcc = ctx.device.RCC.constrain();
        let _clocks = rcc.cfgr.sysclk(48.mhz()).require_pll48clk().freeze();

        // Initialize (enable) the monotonic timer (CYCCNT)
        ctx.core.DCB.enable_trace();
        ctx.core.DWT.enable_cycle_counter();

        // Leds
        let led_red = gpioa.pa3.into_push_pull_output();
        let led_green = gpioa.pa2.into_push_pull_output();
        let led_blue = gpioa.pa1.into_push_pull_output();
        
        // Buttons
        let left_button = gpioc.pc5.into_pull_down_input();
        let right_button = gpioa.pa5.into_pull_down_input();
        let scroll_button = gpioa.pa6.into_pull_down_input();
        let backward_button = gpiob.pb15.into_pull_down_input();
        let forward_button = gpiob.pb14.into_pull_down_input();
        let dpi_button = gpioa.pa4.into_pull_down_input();

        //Scroll
        let scroll_A = gpioa.pa7.into_pull_down_input();
        let scroll_B = gpioc.pc4.into_pull_down_input();

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

        let delay_or_something = DwtDelay::new(&mut core.DWT, _clocks);
        let mut pmw3389 = pmw3389::Pmw3389::new(spi, cs, delay_or_something).unwrap();

        // set in burst mode
        let _burst = pmw3389.write_register(Register::MotionBurst, 0x00);
        // /\/\/\/\/\
        // ||||||||||
        // Sensor Init

        // USB
        // ||||||||||
        // \/\/\/\/\/

        // Pull the D+ pin down to send a RESET condition to the USB bus.
        // Dose not work yet.
        //let mut usb_dp = gpioa.pa12.into_alternate_af10();
        //usb_dp= false;
        //delay(_clocks.sysclk().0 / 100);

        let usb = USB {
            usb_global: ctx.device.OTG_FS_GLOBAL,
            usb_device: ctx.device.OTG_FS_DEVICE,
            usb_pwrclk: ctx.device.OTG_FS_PWRCLK,
            pin_dm: gpioa.pa11.into_alternate_af10(),
            pin_dp: gpioa.pa12.into_alternate_af10(),
        };

        USB_BUS.replace(UsbBus::new(usb, EP_MEMORY));
        
        let hid = HIDClass::new(USB_BUS.as_ref().unwrap(), NuttaliReport::desc(), 1);
        let usb_dev = UsbDeviceBuilder::new(USB_BUS.as_ref().unwrap(), UsbVidPid(0xc410, 0x0000))
            .manufacturer("Nuttali")
            .product("Mouse")
            .serial_number("1.0")
            .device_class(0)
            .build();
        
        // /\/\/\/\/\
        // ||||||||||
        // USB
        
        init::LateResources{led_blue, led_red, led_green, dpi_button, left_button, right_button, scroll_button, backward_button, forward_button, hid, usb_dev, pmw3389, scroll_B, scroll_A}
    }

    #[task(binds=OTG_FS, resources = [led_blue, led_red, led_green, dpi_button, left_button, right_button, scroll_button, backward_button, forward_button, hid, usb_dev, pmw3389, scroll_A, scroll_B])]
    fn on_usb(ctx: on_usb::Context) {
        //The scroll wheel need to know the last position or dose not work.
        static mut A_PREV :bool = false;
        static mut B_PREV :bool = false;
        
        
        static mut DPI_BUTTON_PREV: bool = false;
        
        static mut WRAPPING_LED_COUNTER:i32 = 0;
        
        // destruct the context
        let (led_blue, led_red, led_green, dpi_button,
            left_button, right_button, scroll_button, backward_button, 
            forward_button, usb_dev, hid, pmw3389, scroll_A, scroll_B) 
            = (ctx.resources.led_blue,ctx.resources.led_red,
               ctx.resources.led_green,ctx.resources.dpi_button,
               ctx.resources.left_button, ctx.resources.right_button,
               ctx.resources.scroll_button, ctx.resources.backward_button,
               ctx.resources.forward_button, ctx.resources.usb_dev, 
               ctx.resources.hid, ctx.resources.pmw3389, ctx.resources.scroll_A,
               ctx.resources.scroll_B);
        let a:bool = scroll_A.is_high().unwrap();
        let b:bool = scroll_B.is_high().unwrap();
        let wheel_count = check_scroll(a,b,*A_PREV,*B_PREV);
        *A_PREV = a;
        *B_PREV = b;
        
        // Read from sensor
        let (x_sensor, y_sensor) = pmw3389.read_status().unwrap();
        
        let left:bool = left_button.is_low().unwrap();
        let right:bool = right_button.is_low().unwrap();
        let scroll:bool = scroll_button.is_high().unwrap();
        let backward:bool = backward_button.is_high().unwrap();
        let forward:bool = forward_button.is_high().unwrap();

        let report = NuttaliReport {
            x: (x_sensor as i8)>> 1, // need to convert form i16 to i8. Shifts to get smother movement
            y: (y_sensor as i8)>> 1, // need to convert form i16 to i8. Shifts to get smother movement
            buttons: check_buttons(left, right, scroll, backward, forward), // (into takes a bool into an integer)
            wheel: wheel_count,
        };

        
        if dpi_button.is_high().unwrap() && *DPI_BUTTON_PREV == false{
            *WRAPPING_LED_COUNTER = *WRAPPING_LED_COUNTER + 1;
            let (red,blue,green) = change_led(*WRAPPING_LED_COUNTER);
            if red{
                led_red.set_high().ok();
            }else{
                led_red.set_low().ok();
            }
            if blue{
                led_blue.set_high().ok();
            }else{
                led_blue.set_low().ok();
            }
            if green{
                led_green.set_high().ok();
            }else{
                led_green.set_low().ok();
            }
        }
        *DPI_BUTTON_PREV = dpi_button.is_high().unwrap();

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
                rprintln!("Up count:{}", wheel_count)
            }else{
                wheel_count -=1;
                rprintln!("Down count:{}", wheel_count)
            }
        }else{
            if scroll_a==scroll_a_prev{
                wheel_count +=1;
                rprintln!("Up count:{}", wheel_count)
            }else{
                wheel_count -=1;
                rprintln!("Down count:{}", wheel_count)
            }
        }
    }
    return wheel_count;
}

//Dose not check dpi
// Left button : bit no 0
// Right button : bit no 1
// Scroll/Middle button : bit no 2
// Backward button : bit no 3
// Forward button : bit no 4
fn check_buttons(left:bool,right:bool,scroll:bool,backward:bool,forward:bool) -> u8{
    let mut result:u8 = 0;
    if left{
        result += 1;
    }
    if right{
        result += 2;
    }
    if scroll{
        result += 4;
    }
    if backward{
        result += 8;
    }
    if forward{ 
        result += 16;
    }
    return result;
}

fn change_led(no_toggled: i32) -> (bool,bool,bool) {
    let led_red:bool;
    let led_blue:bool;
    let led_green:bool;

    if no_toggled % 8 == 0{
        led_red= true;
        led_green= true;
        led_blue= true;
    } else if no_toggled % 8 == 1{
        led_red= true;
        led_blue= false;
        led_green= true;
    } else if no_toggled % 8 == 2{
        led_red= true;
        led_blue= true;
        led_green= false;
    } else if no_toggled % 8 == 3{
        led_red= false;
        led_blue= true;
        led_green= true;
    } else if no_toggled % 8 == 4{
        led_red= true;
        led_blue= false;
        led_green= false;
    } else if no_toggled % 8 == 5{
        led_red= false;
        led_blue= false;
        led_green= true;
    } else if no_toggled % 8 == 6{
        led_red= false;
        led_blue= true;
        led_green= false;
    } else {
        led_red= false;
        led_blue= false;
        led_green= false;
    }
    return (led_red,led_blue,led_green);
}
