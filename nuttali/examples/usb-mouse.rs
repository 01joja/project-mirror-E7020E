// > cargo run usb-mouse
// or
// > cargo run usb-mouse --release

#![no_main]
#![no_std]

use stm32f4xx_hal::{
    gpio::{gpioc::PC13, Input, PullUp},
    otg_fs::{UsbBus, UsbBusType, USB},
    prelude::*,
};
use usb_device::{bus::UsbBusAllocator, prelude::*};
use usbd_hid::{
    descriptor::{generator_prelude::*, MouseReport},
    hid_class::HIDClass,
};

use panic_rtt_target as _;
use rtt_target::{rprintln, rtt_init_print};

#[rtic::app(device = stm32f4xx_hal::stm32, peripherals = true)]
const APP: () = {
    struct Resources {
        btn: PC13<Input<PullUp>>,
        hid: HIDClass<'static, UsbBusType>,
        usb_dev: UsbDevice<'static, UsbBus<USB>>,
    }

    #[init]
    fn init(ctx: init::Context) -> init::LateResources {
        static mut EP_MEMORY: [u32; 1024] = [0; 1024];
        static mut USB_BUS: Option<UsbBusAllocator<UsbBusType>> = None;

        rtt_init_print!();
        rprintln!("init");

        // Set up the system clock.
        let rcc = ctx.device.RCC.constrain();
        let _clocks = rcc.cfgr.sysclk(48.mhz()).require_pll48clk().freeze();

        let gpioc = ctx.device.GPIOC.split();
        let btn = gpioc.pc13.into_pull_up_input();

        let gpioa = ctx.device.GPIOA.split();
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
            .manufacturer("E70011E")
            .product("Mouse")
            .serial_number("1.0")
            .device_class(0)
            .build();

        init::LateResources { btn, hid, usb_dev }
    }

    #[task(binds=OTG_FS, resources = [btn, hid, usb_dev])]
    fn on_usb(ctx: on_usb::Context) {
        static mut COUNTER: u16 = 0;

        // destruct the context
        let (btn, usb_dev, hid) = (ctx.resources.btn, ctx.resources.usb_dev, ctx.resources.hid);

        let report = MouseReport {
            x: match *COUNTER {
                // reached after 100ms
                100 => {
                    rprintln!("10");
                    10
                }
                // reached after 199ms
                199 => {
                    rprintln!("-10");
                    -10
                }
                _ => 0,
            },
            y: 0,
            buttons: btn.is_low().unwrap().into(), // (into takes a bool into an integer)
            wheel: 0,
        };
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
