//! rtic_bare7.rs
//!
//! HAL OutputPin abstractions
//!
//! What it covers:
//! - using embedded hal, and the OutputPin abstraction

#![no_main]
#![no_std]


use panic_rtt_target as _;
use rtic::cyccnt::{Instant, U32Ext as _};
use rtt_target::{rprintln, rtt_init_print};
use stm32f4xx_hal::stm32;

use stm32f4xx_hal::{
    gpio::{gpioa::PA1, gpioa::PA2, gpioa::PA3, Output, PushPull},
    prelude::*,
};

use embedded_hal::digital::v2::{OutputPin, ToggleableOutputPin};

const OFFSET: u32 = 50_000_000;

#[rtic::app(device = stm32f4xx_hal::stm32, monotonic = rtic::cyccnt::CYCCNT, peripherals = true)]
const APP: () = {
    struct Resources {
        // late resources
        //GPIOA: stm32::GPIOA,
        led_red: PA3<Output<PushPull>>,
        led_green: PA2<Output<PushPull>>,
        led_blue: PA1<Output<PushPull>>,
    }
    #[init(schedule = [toggle])]
    fn init(cx: init::Context) -> init::LateResources {
        rtt_init_print!();
        rprintln!("init");


        let mut core = cx.core;
        let device = cx.device;


        // Initialize (enable) the monotonic timer (CYCCNT)
        core.DCB.enable_trace();
        core.DWT.enable_cycle_counter();

        // semantically, the monotonic timer is frozen at time "zero" during `init`
        // NOTE do *not* call `Instant::now` in this context; it will return a nonsense value
        let now = cx.start; // the start time of the system

        // Schedule `toggle` to run 8e6 cycles (clock cycles) in the future
        let number_of_toggles = 0;
        cx.schedule.toggle(now + OFFSET.cycles(),number_of_toggles).unwrap();

        // power on GPIOA, RM0368 6.3.11
        device.RCC.ahb1enr.modify(|_, w| w.gpioaen().set_bit());
        // configure PA3 as output, RM0368 8.4.1
        device.GPIOA.moder.modify(|_, w| w.moder3().bits(1));
        device.GPIOA.moder.modify(|_, w| w.moder2().bits(1));
        device.GPIOA.moder.modify(|_, w| w.moder1().bits(1));

        
        let gpioa = device.GPIOA.split();
        
        // pass on late resources
        init::LateResources {
            //GPIOA: device.GPIOA,
            led_red: gpioa.pa3.into_push_pull_output(),
            led_green: gpioa.pa2.into_push_pull_output(),
            led_blue: gpioa.pa1.into_push_pull_output(),
        }
    }

    #[idle]
    fn idle(_cx: idle::Context) -> ! {
        rprintln!("idle");
        loop {
            continue;
        }
    }

    #[task(resources = [led_green,led_blue,led_red], schedule = [toggle])]
    fn toggle(cx: toggle::Context, mut no_toggled: i32) {
        static mut TOGGLE: bool = false;
        //rprintln!("toggle  @ {:?}", Instant::now());
        //rprintln!("times I have toggled {:?}", no_toggled);
        no_toggled +=1;

        /*if no_toggled % 8 == 0{
            rprintln!("White");
            cx.resources.led_red.set_high().ok();
            cx.resources.led_green.set_high().ok();
            cx.resources.led_blue.set_high().ok();
        } else if no_toggled % 8 == 1{
            rprintln!("Green-yellow"); //Needs more oomph to be real yellow.
            cx.resources.led_red.set_high().ok();
            cx.resources.led_blue.set_low().ok();
            cx.resources.led_green.set_high().ok();
        } else if no_toggled % 8 == 2{
            rprintln!("Purple");
            cx.resources.led_red.set_high().ok();
            cx.resources.led_blue.set_high().ok();
            cx.resources.led_green.set_low().ok();
        } else if no_toggled % 8 == 3{
            rprintln!("Light blue");
            cx.resources.led_red.set_low().ok();
            cx.resources.led_blue.set_high().ok();
            cx.resources.led_green.set_high().ok();
        } else if no_toggled % 8 == 4{
            rprintln!("Red");
            cx.resources.led_red.set_high().ok();
            cx.resources.led_blue.set_low().ok();
            cx.resources.led_green.set_low().ok();
        } else if no_toggled % 8 == 5{
            rprintln!("Green");
            cx.resources.led_red.set_low().ok();
            cx.resources.led_blue.set_low().ok();
            cx.resources.led_green.set_high().ok();
        } else if no_toggled % 8 == 6{
            rprintln!("Blue");
            cx.resources.led_red.set_low().ok();
            cx.resources.led_blue.set_high().ok();
            cx.resources.led_green.set_low().ok();
        } else {
            rprintln!("Off");
            cx.resources.led_red.set_low().ok();
            cx.resources.led_blue.set_low().ok();
            cx.resources.led_green.set_low().ok();
        }*/
        
zzz        rprintln!("White");
        cx.resources.led_red.set_high().ok();
        cx.resources.led_green.set_high().ok();
        cx.resources.led_blue.set_high().ok();

        //*TOGGLE = !*TOGGLE;
        //cx.schedule.toggle(cx.scheduled + OFFSET.cycles(),no_toggled).unwrap();
    }

    extern "C" {
        fn EXTI0();
        fn USART1();
    }
};