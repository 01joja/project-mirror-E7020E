EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Nuttali-rescue:+3.3V-power #PWR0140
U 1 1 6023138D
P 1800 800
F 0 "#PWR0140" H 1800 650 50  0001 C CNN
F 1 "+3.3V" H 1815 973 50  0000 C CNN
F 2 "" H 1800 800 50  0001 C CNN
F 3 "" H 1800 800 50  0001 C CNN
	1    1800 800 
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R7
U 1 1 602321F1
P 1800 1050
F 0 "R7" H 1870 1096 50  0000 L CNN
F 1 "10k" H 1870 1005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1730 1050 50  0001 C CNN
F 3 "~" H 1800 1050 50  0001 C CNN
	1    1800 1050
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C27
U 1 1 60232EB4
P 1800 1600
F 0 "C27" H 1915 1646 50  0000 L CNN
F 1 "C" H 1915 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1838 1450 50  0001 C CNN
F 3 "~" H 1800 1600 50  0001 C CNN
	1    1800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 800  1800 900 
Wire Wire Line
	1800 1200 1800 1350
Wire Wire Line
	1800 1750 1800 1850
Wire Wire Line
	1800 1350 1550 1350
Connection ~ 1800 1350
Wire Wire Line
	1800 1350 1800 1450
Wire Wire Line
	1150 1350 1150 1450
Wire Wire Line
	1800 1350 2350 1350
$Comp
L Nuttali-rescue:GND-power #PWR0141
U 1 1 602361A1
P 1150 1450
F 0 "#PWR0141" H 1150 1200 50  0001 C CNN
F 1 "GND" H 1155 1277 50  0000 C CNN
F 2 "" H 1150 1450 50  0001 C CNN
F 3 "" H 1150 1450 50  0001 C CNN
	1    1150 1450
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:GND-power #PWR0142
U 1 1 602374C1
P 1800 1850
F 0 "#PWR0142" H 1800 1600 50  0001 C CNN
F 1 "GND" H 1805 1677 50  0000 C CNN
F 2 "" H 1800 1850 50  0001 C CNN
F 3 "" H 1800 1850 50  0001 C CNN
	1    1800 1850
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:+3.3V-power #PWR0143
U 1 1 602440B2
P 1800 2500
F 0 "#PWR0143" H 1800 2350 50  0001 C CNN
F 1 "+3.3V" H 1815 2673 50  0000 C CNN
F 2 "" H 1800 2500 50  0001 C CNN
F 3 "" H 1800 2500 50  0001 C CNN
	1    1800 2500
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R8
U 1 1 602440B8
P 1800 2750
F 0 "R8" H 1870 2796 50  0000 L CNN
F 1 "10k" H 1870 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1730 2750 50  0001 C CNN
F 3 "~" H 1800 2750 50  0001 C CNN
	1    1800 2750
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C28
U 1 1 602440BE
P 1800 3300
F 0 "C28" H 1915 3346 50  0000 L CNN
F 1 "C" H 1915 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1838 3150 50  0001 C CNN
F 3 "~" H 1800 3300 50  0001 C CNN
	1    1800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2500 1800 2600
Wire Wire Line
	1800 2900 1800 3050
Wire Wire Line
	1800 3450 1800 3550
Wire Wire Line
	1800 3050 1550 3050
Connection ~ 1800 3050
Wire Wire Line
	1800 3050 1800 3150
Wire Wire Line
	1150 3050 1150 3150
Wire Wire Line
	1800 3050 2350 3050
$Comp
L Nuttali-rescue:GND-power #PWR0144
U 1 1 602440CC
P 1150 3150
F 0 "#PWR0144" H 1150 2900 50  0001 C CNN
F 1 "GND" H 1155 2977 50  0000 C CNN
F 2 "" H 1150 3150 50  0001 C CNN
F 3 "" H 1150 3150 50  0001 C CNN
	1    1150 3150
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:GND-power #PWR0145
U 1 1 602440D2
P 1800 3550
F 0 "#PWR0145" H 1800 3300 50  0001 C CNN
F 1 "GND" H 1805 3377 50  0000 C CNN
F 2 "" H 1800 3550 50  0001 C CNN
F 3 "" H 1800 3550 50  0001 C CNN
	1    1800 3550
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R9
U 1 1 602454FA
P 2000 5150
F 0 "R9" H 2070 5196 50  0000 L CNN
F 1 "10k" H 2070 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1930 5150 50  0001 C CNN
F 3 "~" H 2000 5150 50  0001 C CNN
	1    2000 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 5150 1850 5150
Wire Wire Line
	2150 5150 2250 5150
$Comp
L Nuttali-rescue:+3.3V-power #PWR0147
U 1 1 6027821D
P 1250 6550
F 0 "#PWR0147" H 1250 6400 50  0001 C CNN
F 1 "+3.3V" H 1265 6723 50  0000 C CNN
F 2 "" H 1250 6550 50  0001 C CNN
F 3 "" H 1250 6550 50  0001 C CNN
	1    1250 6550
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R10
U 1 1 60278223
P 1950 5600
F 0 "R10" H 2020 5646 50  0000 L CNN
F 1 "10k" H 2020 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1880 5600 50  0001 C CNN
F 3 "~" H 1950 5600 50  0001 C CNN
	1    1950 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1750 5600 1800 5600
Text GLabel 2050 6350 0    50   Output ~ 0
SideFront
Text GLabel 2050 6450 0    50   Output ~ 0
SideBack
$Comp
L Nuttali-rescue:+3.3V-power #PWR0148
U 1 1 602BC22A
P 4400 2450
F 0 "#PWR0148" H 4400 2300 50  0001 C CNN
F 1 "+3.3V" H 4415 2623 50  0000 C CNN
F 2 "" H 4400 2450 50  0001 C CNN
F 3 "" H 4400 2450 50  0001 C CNN
	1    4400 2450
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R13
U 1 1 602BC230
P 5100 2450
F 0 "R13" H 5170 2496 50  0000 L CNN
F 1 "10k" H 5170 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5030 2450 50  0001 C CNN
F 3 "~" H 5100 2450 50  0001 C CNN
	1    5100 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 2450 4500 2450
Wire Wire Line
	4900 2450 4950 2450
Wire Wire Line
	5250 2450 5350 2450
Text GLabel 5350 2450 2    50   Output ~ 0
WheelButton
$Comp
L Nuttali-rescue:+3.3V-power #PWR0150
U 1 1 602BED6F
P 9150 3800
F 0 "#PWR0150" H 9150 3650 50  0001 C CNN
F 1 "+3.3V" H 9165 3973 50  0000 C CNN
F 2 "" H 9150 3800 50  0001 C CNN
F 3 "" H 9150 3800 50  0001 C CNN
	1    9150 3800
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R15
U 1 1 602BED75
P 9850 3800
F 0 "R15" H 9920 3846 50  0000 L CNN
F 1 "10k" H 9920 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9780 3800 50  0001 C CNN
F 3 "~" H 9850 3800 50  0001 C CNN
	1    9850 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9150 3800 9250 3800
Wire Wire Line
	9650 3800 9700 3800
Wire Wire Line
	10000 3800 10100 3800
Text GLabel 10100 3800 2    50   Output ~ 0
Turbo
$Comp
L Nuttali-rescue:LED-Device D4
U 1 1 602CBCDE
P 9750 3350
F 0 "D4" H 9743 3095 50  0000 C CNN
F 1 "LED" H 9743 3186 50  0000 C CNN
F 2 "LED_SMD:LED_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 9750 3350 50  0001 C CNN
F 3 "~" H 9750 3350 50  0001 C CNN
	1    9750 3350
	-1   0    0    1   
$EndComp
$Comp
L Nuttali-rescue:GND-power #PWR0152
U 1 1 602CF144
P 10250 3400
F 0 "#PWR0152" H 10250 3150 50  0001 C CNN
F 1 "GND" H 10255 3227 50  0000 C CNN
F 2 "" H 10250 3400 50  0001 C CNN
F 3 "" H 10250 3400 50  0001 C CNN
	1    10250 3400
	1    0    0    -1  
$EndComp
Text GLabel 9450 3350 0    50   Input ~ 0
Turbo_LED
Wire Wire Line
	9450 3350 9600 3350
Wire Wire Line
	9900 3350 10250 3350
Wire Wire Line
	10250 3400 10250 3350
Text GLabel 2350 3050 2    50   Output ~ 0
LeftB
Text GLabel 2350 1350 2    50   Output ~ 0
RightB
Wire Notes Line
	550  4250 3100 4250
Text Notes 700  4050 0    50   ~ 0
Left and right click
Text Notes 700  4450 0    50   ~ 0
Side buttons
Text Notes 3600 1200 0    50   ~ 0
Scroll wheel
Text Notes 7550 950  0    50   ~ 0
Top buttons
$Comp
L Nuttali-rescue:Rotary_Encoder-Device SW8
U 1 1 60310A0D
P 5200 3650
F 0 "SW8" H 5430 3696 50  0000 L CNN
F 1 "Rotary_Encoder" H 5430 3605 50  0000 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E_Vertical_H20mm_CircularMountingHoles" H 5050 3810 50  0001 C CNN
F 3 "~" H 5200 3910 50  0001 C CNN
	1    5200 3650
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C29
U 1 1 60318A18
P 4200 3450
F 0 "C29" H 4315 3496 50  0000 L CNN
F 1 "C" H 4315 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4238 3300 50  0001 C CNN
F 3 "~" H 4200 3450 50  0001 C CNN
	1    4200 3450
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C30
U 1 1 6031913E
P 4200 3850
F 0 "C30" H 4315 3896 50  0000 L CNN
F 1 "C" H 4315 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4238 3700 50  0001 C CNN
F 3 "~" H 4200 3850 50  0001 C CNN
	1    4200 3850
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R11
U 1 1 6031998E
P 4650 3200
F 0 "R11" H 4720 3246 50  0000 L CNN
F 1 "10k" H 4720 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4580 3200 50  0001 C CNN
F 3 "~" H 4650 3200 50  0001 C CNN
	1    4650 3200
	0    -1   -1   0   
$EndComp
$Comp
L Nuttali-rescue:R-Device R12
U 1 1 6031A38F
P 4650 4200
F 0 "R12" H 4720 4246 50  0000 L CNN
F 1 "10k" H 4720 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4580 4200 50  0001 C CNN
F 3 "~" H 4650 4200 50  0001 C CNN
	1    4650 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 3550 4900 3200
Wire Wire Line
	4900 3200 4800 3200
Wire Wire Line
	4500 3200 4200 3200
Wire Wire Line
	4200 3200 4200 3300
Wire Wire Line
	4200 3200 3950 3200
Connection ~ 4200 3200
Wire Wire Line
	4900 3750 4900 4200
Wire Wire Line
	4900 4200 4800 4200
Wire Wire Line
	4500 4200 4200 4200
Wire Wire Line
	4200 4200 4200 4000
Wire Wire Line
	4200 4200 3950 4200
Connection ~ 4200 4200
Wire Wire Line
	4200 3600 4200 3650
Wire Wire Line
	4200 3650 4650 3650
Connection ~ 4200 3650
Wire Wire Line
	4200 3650 4200 3700
Wire Wire Line
	4650 3650 4650 3700
Connection ~ 4650 3650
Wire Wire Line
	4650 3650 4900 3650
$Comp
L Nuttali-rescue:GND-power #PWR0153
U 1 1 6032A748
P 4650 3700
F 0 "#PWR0153" H 4650 3450 50  0001 C CNN
F 1 "GND" H 4655 3527 50  0000 C CNN
F 2 "" H 4650 3700 50  0001 C CNN
F 3 "" H 4650 3700 50  0001 C CNN
	1    4650 3700
	1    0    0    -1  
$EndComp
Text GLabel 3950 3200 0    50   Input ~ 0
WheelA
Text GLabel 3950 4200 0    50   Input ~ 0
WheelB
$Comp
L Nuttali-rescue:SW_Push-Switch SW3
U 1 1 6026C8AE
P 1350 1350
F 0 "SW3" H 1350 1635 50  0000 C CNN
F 1 "SW_Push" H 1350 1544 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_SPST_NO_Alps_SKRK" H 1350 1550 50  0001 C CNN
F 3 "~" H 1350 1550 50  0001 C CNN
	1    1350 1350
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:SW_Push-Switch SW4
U 1 1 6026D38D
P 1350 3050
F 0 "SW4" H 1350 3335 50  0000 C CNN
F 1 "SW_Push" H 1350 3244 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_SPST_NO_Alps_SKRK" H 1350 3250 50  0001 C CNN
F 3 "~" H 1350 3250 50  0001 C CNN
	1    1350 3050
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:SW_Push-Switch SW5
U 1 1 6026DDAA
P 1600 5150
F 0 "SW5" H 1600 5435 50  0000 C CNN
F 1 "SW_Push" H 1600 5344 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_SPST_NO_Alps_SKRK" H 1600 5350 50  0001 C CNN
F 3 "~" H 1600 5350 50  0001 C CNN
	1    1600 5150
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:SW_Push-Switch SW6
U 1 1 6026F191
P 1550 5600
F 0 "SW6" H 1550 5885 50  0000 C CNN
F 1 "SW_Push" H 1550 5794 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_SPST_NO_Alps_SKRK" H 1550 5800 50  0001 C CNN
F 3 "~" H 1550 5800 50  0001 C CNN
	1    1550 5600
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:SW_Push-Switch SW7
U 1 1 6026F8D9
P 4700 2450
F 0 "SW7" H 4700 2735 50  0000 C CNN
F 1 "SW_Push" H 4700 2644 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_SPST_NO_Alps_SKRK" H 4700 2650 50  0001 C CNN
F 3 "~" H 4700 2650 50  0001 C CNN
	1    4700 2450
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:SW_Push-Switch SW10
U 1 1 602726D9
P 9450 3800
F 0 "SW10" H 9450 4085 50  0000 C CNN
F 1 "SW_Push" H 9450 3994 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_SPST_NO_Alps_SKRK" H 9450 4000 50  0001 C CNN
F 3 "~" H 9450 4000 50  0001 C CNN
	1    9450 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 5600 2200 5600
Wire Notes Line
	3100 550  3100 7700
$Comp
L Nuttali-rescue:Conn_01x03_Male-Connector J4
U 1 1 6025B611
P 2750 5300
AR Path="/6025B611" Ref="J4"  Part="1" 
AR Path="/6022DC9B/6025B611" Ref="J4"  Part="1" 
F 0 "J4" H 2858 5581 50  0000 C CNN
F 1 "Conn_01x03_Male" H 2858 5490 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 2750 5300 50  0001 C CNN
F 3 "~" H 2750 5300 50  0001 C CNN
	1    2750 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 5200 2250 5150
Wire Wire Line
	2250 5200 2550 5200
Wire Wire Line
	2200 5600 2200 5300
Wire Wire Line
	2200 5300 2550 5300
Wire Wire Line
	2550 5400 2550 5850
Wire Wire Line
	2550 5850 950  5850
Wire Wire Line
	950  5850 950  5600
Connection ~ 950  5600
Wire Wire Line
	950  5600 950  5150
Wire Wire Line
	950  5600 1350 5600
Wire Wire Line
	950  5150 1400 5150
$Comp
L Nuttali-rescue:Conn_01x03_Male-Connector J3
U 1 1 6029AD59
P 2250 6450
AR Path="/6029AD59" Ref="J3"  Part="1" 
AR Path="/6022DC9B/6029AD59" Ref="J3"  Part="1" 
F 0 "J3" H 2358 6731 50  0000 C CNN
F 1 "Conn_01x03_Male" H 2358 6640 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 2250 6450 50  0001 C CNN
F 3 "~" H 2250 6450 50  0001 C CNN
	1    2250 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 6550 1250 6550
Text Notes 500  6000 0    50   ~ 0
To connect the side buttons since they will be on different pcb
$EndSCHEMATC
