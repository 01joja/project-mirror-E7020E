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
* Schematic
    * ![Sheets](Pictures/nuttali_sheets.PNG)
    * ![Buttons](Pictures/buttons.PNG)
* PCB
    * First iteration
    * Second iteration
    * ![Second iteration](Pictures/pcb_version2.PNG)
    * Third iteration (final iteration)
    * ![Third iteration](Pictures/pcb_version3.PNG)
    * Support PCB
    * ![Support pcb](Pictures/pcb_support.PNG)
* Componets and footprints
    * Prioritized components
    * Customized footprints 
    * Design flaws
    * Under the hood
        * ![Under the hood](Pictures/20210325_160722.jpg ) 
        
# Result
![Nuttali Jonas version](Pictures/Finnised_mouse.jpg)
![Nuttali Tommy version](Pictures/20210325_175329.jpg )

# Testing and validation
*   Operation system test
    * Windows 
    * Mac
    * Linux
*   Mouse test
    * Tested with light activity for 2 hours
    * Tested gaming
        * Rainbow six siege
        * CS
    * Tested on mouse testsites
        * https://www.onlinemictest.com/mouse-test/
        * https://www.clickspeedtest.info/mouse-test


## Issues

- The PCB needs a few tweaks.
  - The footprint for the ESD-protection needs to change. Right now it dose not fit.
  - The footprints for the 3.3V and 1.9 converter should be changed to fit hand soldering. Right now they are troublesome to hand solder.
  - The footprint for the clock could be a little bit smaller. Right now it takes up too much space.


##### Software

- The computer polls the mouse.
- The mouse button 1, 2 and 3, (left, right, middle) uses HID,
- The x and y posistions gets coverted to 8 bit, and sent using HID.
- Sidebuttons are internally and iterates through a set of RBG settings.
- The DPI buttons changes the DPI internally,  

## Evaluation
##### Major
- The sensor does not always register, our primary guess for the reason is that the sensor is a bit high.
- The scroll button is a bit slow.
- Hardware debounce

##### Minor
- More RBG Leds
- Change the resistor for the leds
- Small changes with the 3d print.
- Bigger mouse
- Scroll Wheel hole should be bigger.

## Goals

##### Achieved
- Works as an ordinary mouse 
- Create a mouse we could use every day
- Working on Windows, Mac and Linux.
- Working RGB

##### Almost 
- DPI/Turbo button 

##### Not Achieved
- DPI/Turbo Led
- Changing RGB via software
- 

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
