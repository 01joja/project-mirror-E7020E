# Nuttali Presentation

Created by: 
* Tommy Andderson, anetom-6
* Samuel Gradén, samgra-7
* Jonas Jacobsson, jonjac-6

![Typical gaming mouse](Pictures/razer-deathadder-v2-2020-2.jpg)
# Requirements specification/features
*   Work as an ordinary mouse
    * Left button
    * Right button
    * Scroll wheel (up and down)
    * Scroll wheel button
*   Create a mouse we could use every day
*   Working on Windows, Mac and Linux
*   Working RGB since it's a gaming mouse
*   Forward and backwards button
*   DPI/Turbo button
*   DPI/Turbo led
*   Changing RGB via software

# Design
* Inspiration
    * Logitech G304 
    * [Original design](https://www.thingiverse.com/thing:4084764)  
* Needed changes
![All iterations](Pictures/20210325_164827.jpg )
* Tools used

# Hardware
* Design choices
* PCB
    * First iteration
    * Second iteration
    * Third iteration (final iteration)
    * Support PCB
* Componets and footprints
    * Prioritized components
    * Customized footprints 
    * Design flaws
    * Under the hood
        * ![Under the hood](Pictures/20210325_160722.jpg ) 

![Nuttali Jonas version](Pictures/Finnised_mouse.jpg "Nuttali")
![Nuttali Tommy version](Pictures/20210325_175329.jpg )

# Testing and validation
*   Operation system test
    * Windows 
    * Mac
    * Linux
*   Mouse test
    * Tested for 1 hour
    * Tested gaming
        * Rainbow six siege
        * CS
    * Tested on mouse testsites
        * https://www.onlinemictest.com/mouse-test/
        * https://www.clickspeedtest.info/mouse-test

## What works?  

- Nearly everything works on the PCB:s.
  - All buttons can be registered.
  - Encoder for the scroll wheel.
  - Sensor.
  - RGB.
- 3D-print:
  - The shell and button alignment works most of the time.
- USB communication.
  - send left, right and scroll click.
  - send up and down scroll.
  - send movement of mouse.

## Issues

- The PCB needs a few tweaks.
  - The footprint for the ESD-protection needs to change. Right now it dose not fit.
  - The footprints for the 3.3V and 1.9 converter should be changed to fit hand soldering. Right now they are troublesome to hand solder.
  - The footprint for the clock could be a little bit smaller. Right now it takes up too much space.

