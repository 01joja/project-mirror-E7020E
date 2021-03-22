//! nuttali_buttons
//!
//! HAL OutputPin abstractions
//!
//! What it covers:
//! - using embedded hal, and the OutputPin abstraction

#![no_main]
#![no_std]


//use core::intrinsics::rotate_left;

use core::convert::TryInto;

use panic_rtt_target as _;
use rtic::cyccnt::{Instant, U32Ext as _};
use rtt_target::{rprint, rprintln, rtt_init_print};
use stm32f4xx_hal::{gpio::{AlternateOD, PullUp}, stm32};

use stm32f4xx_hal::{
    gpio::{
        gpioa::{
            PA1, PA2, PA3, PA4, PA5, PA6, PA7},
        gpiob::{
            PB14,PB15},
        gpioc::{
            PC4, PC5}, 
    Input, Output, PushPull, PullDown, Alternate},
    prelude::*,
};

use embedded_hal::digital::v2::{OutputPin, ToggleableOutputPin, InputPin};

const OFFSET: u32 = 50_000_000;

#[rtic::app(device = stm32f4xx_hal::stm32, monotonic = rtic::cyccnt::CYCCNT, peripherals = true)]
const APP: () = {
    struct Resources {
        // late resources
        //GPIOA: stm32::GPIOA,
        led_blue: PA1<Output<PushPull>>,
        led_red: PA3<Output<PushPull>>,
        led_green: PA2<Output<PushPull>>,
    
        turbo_button: PA4<Input<PullDown>>,
        right_button: PA5<Input<PullDown>>,
        scroll_button: PA6<Input<PullDown>>,

        scroll_B: PC4<Input<PullDown>>,
        scroll_A: PA7<Input<PullDown>>,

        forward_button: PB14<Input<PullDown>>,
        backward_button: PB15<Input<PullDown>>,

        left_button: PC5<Input<PullDown>>,


    }
    //#[init(schedule = [toggle])]
    #[init(schedule = [is_button_pressed])]
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
        //let number_of_toggles = 0;
        //cx.schedule.toggle(now + OFFSET.cycles(),number_of_toggles).unwrap();

        cx.schedule.is_button_pressed(now + OFFSET.cycles()).unwrap();

        
        //let left_button = gpioc.pc5.into_pull_up_input();
        //let left_button_timer = dp.TIM2;

        // power on GPIOA, RM0368 6.3.11
        //device.RCC.ahb1enr.modify(|_, w| w.gpioaen().set_bit());
        
        //device.RCC.ahb1enr.modify(|_, w| w.gpiocen().set_bit());
        //configure PA3 as output, RM0368 8.4.1
        device.GPIOA.moder.modify(|_, w| w.moder3().bits(1));
        device.GPIOA.moder.modify(|_, w| w.moder2().bits(1));
        device.GPIOA.moder.modify(|_, w| w.moder1().bits(1));

        device.GPIOC.moder.modify(|_, w| w.moder5().bits(1));
        //left_button_read = device.GPIOCEN_R;
        let gpioa = device.GPIOA.split();
        let gpiob = device.GPIOB.split();
        let gpioc = device.GPIOC.split();        
        
        // pass on late resources
        init::LateResources {
            //GPIOA: device.GPIOA,
            led_red: gpioa.pa3.into_push_pull_output(),
            led_green: gpioa.pa2.into_push_pull_output(),
            led_blue: gpioa.pa1.into_push_pull_output(),
            turbo_button: gpioa.pa4.into_pull_down_input(),
            left_button: gpioc.pc5.into_pull_down_input(),
            right_button: gpioa.pa5.into_pull_down_input(),

            scroll_B: gpioc.pc4.into_pull_down_input(),
            scroll_button: gpioa.pa6.into_pull_down_input(),
            scroll_A: gpioa.pa7.into_pull_down_input(),

            forward_button: gpiob.pb14.into_pull_down_input(),
            backward_button: gpiob.pb15.into_pull_down_input(),
        }
    }

    #[idle]
    fn idle(_cx: idle::Context) -> ! {
        rprintln!("idle");
        loop {
            continue;
        }
    }

    #[task(resources = [scroll_A, scroll_B], schedule = [is_button_pressed])]
    fn is_button_pressed(cx: is_button_pressed::Context) {
        //[left,right,mouse,turbo,forward,backward]
        let mut counter: i32 = 0;
        let mut scroll: [bool;2] = [false,false];

        let mut scroll_prev : [bool;2] = [false,false];
        loop {
            
            if cx.resources.scroll_A.is_high().unwrap(){
                scroll[0] = true
            } else {
                scroll[0] = false;
            }

            if cx.resources.scroll_B.is_high().unwrap(){
                scroll[1] = true
            } else {
                scroll[1] = false;
            }

            if scroll != scroll_prev{

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

                if scroll_prev[0]==scroll_prev[1]{
                    if scroll[1]==scroll_prev[1]{
                        counter +=1;
                        rprintln!("Up count:{}",counter)
                    }else{
                        counter -=1;
                        rprintln!("Down count:{}",counter)
                    }
                }else{
                    if scroll[0]==scroll_prev[0]{
                        counter +=1;
                        rprintln!("Up count:{}",counter)
                    }else{
                        counter -=1;
                        rprintln!("Down count:{}",counter)
                    }
                }

                //rprintln!(print);
                scroll_prev = scroll;
            }


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
        rprintln!("printing");
        rprintln!("White");
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