# Jonas Del

## Shell design

The shell we found on the internet that meat our demands where of a [Logitech G305](https://www.logitechg.com/sv-se/products/gaming-mice/g305-lightspeed-wireless-gaming-mouse.910-005283.html).

[Original design](https://www.thingiverse.com/thing:4084764) and [tutorial](https://www.instructables.com/3D-Printed-Gaming-Mouse-G305/).

This mouse shell where not compatible with the PMW3398 sensor and the thickness of our PCB:s where different from the original. This also impacted the buttons and we also got some alignment issues with the side buttons and the corresponding switches. So for us to use it we needed to change a lot of things.

I was responsible for cad and 3D-printing during this project. I had no prior knowledge in any of this so it took quiet some time to get the hang of it. But it where really rewarding and made our project much better.

We used fusion 360 to change the STL files. STL is a vector based format to hold 3D models in and they need to be converted to a workable format before they are changed. It took around 1 week before I could make any changes to the model and around 1 more week until I felt comfterble using fusion 360. 

The learning curve for 3D-printing where not as steep but there where a few things to learn. But now I feel comfterble to do smaller 3D-printing and modeling in my upcoming projects. Xp-el helped me to 

I also designed the scroll wheel from scratch.

*Ask Tommy or Samuel to show the difference between them*

I may have put too much time in to the shell but it gave us a good mouse and with some more changes to the design it could be a good mouse.

## Design of hardware

The hardware design where somewhat inspired form the [G305 PCB](https://www.reddit.com/r/MouseReview/comments/isist1/trimming_guide_for_the_g305_pcb_as_used_in_my/). At least where the buttons goes, the location of the scroll wheel and where the sensor is mounted. Also some of the screw holes came directly from this design. But most of the general layout where things Tommy figured out.

## Testing and validation

During the design of the hardware the only way to test something where with the built in test in KiCad.

Later when we where soldering everything we used the test points in the design frequently. Writing labels next to the test point where really helpful. This made the soldering of the mcu really smooth. Just touch the pin and the test point and you know that you have connection. Touch the pins next to the right pin and you know if two pins are soldered together. Using this way of testing all mcu:s worked first time we programmed them.

The testing and validation of shell and buttons has been *"Dose it feel good?"* and letting our classmates test the mouse.