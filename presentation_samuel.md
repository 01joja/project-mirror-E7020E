##### Software

- The computer polls the mouse.
- The mouse button 1, 2 and 3, (left, right, middle) uses HID,
- The x and y posistions gets coverted to 8 bit, and sent using HID.
- Sidebuttons are internally and iterates through a set of RBG settings.
- The DPI buttons changes the DPI internally,  

#### Evaluation
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

#### Goals

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