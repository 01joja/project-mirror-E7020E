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
L Nuttali-rescue:+3.3V-power #PWR0143
U 1 1 602440B2
P 1700 3350
F 0 "#PWR0143" H 1700 3200 50  0001 C CNN
F 1 "+3.3V" H 1715 3523 50  0000 C CNN
F 2 "" H 1700 3350 50  0001 C CNN
F 3 "" H 1700 3350 50  0001 C CNN
	1    1700 3350
	-1   0    0    1   
$EndComp
$Comp
L Nuttali-rescue:R-Device R8
U 1 1 602440B8
P 1700 3100
F 0 "R8" H 1550 3150 50  0000 L CNN
F 1 "10k" H 1500 3050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1630 3100 50  0001 C CNN
F 3 "~" H 1700 3100 50  0001 C CNN
	1    1700 3100
	-1   0    0    1   
$EndComp
$Comp
L Nuttali-rescue:C-Device C28
U 1 1 602440BE
P 1150 3100
F 0 "C28" H 850 3100 50  0000 L CNN
F 1 "C" H 900 3000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1188 2950 50  0001 C CNN
F 3 "~" H 1150 3100 50  0001 C CNN
	1    1150 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3350 1700 3250
Wire Wire Line
	1150 3250 1150 3350
$Comp
L Nuttali-rescue:GND-power #PWR0145
U 1 1 602440D2
P 1150 3350
F 0 "#PWR0145" H 1150 3100 50  0001 C CNN
F 1 "GND" H 1155 3177 50  0000 C CNN
F 2 "" H 1150 3350 50  0001 C CNN
F 3 "" H 1150 3350 50  0001 C CNN
	1    1150 3350
	1    0    0    -1  
$EndComp
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
Text GLabel 2050 6350 0    50   Output ~ 0
SideFront
Text GLabel 2050 6450 0    50   Output ~ 0
SideBack
$Comp
L Nuttali-rescue:+3.3V-power #PWR0148
U 1 1 602BC22A
P 5000 2550
F 0 "#PWR0148" H 5000 2400 50  0001 C CNN
F 1 "+3.3V" H 5015 2723 50  0000 C CNN
F 2 "" H 5000 2550 50  0001 C CNN
F 3 "" H 5000 2550 50  0001 C CNN
	1    5000 2550
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R13
U 1 1 602BC230
P 4800 2550
F 0 "R13" H 4870 2596 50  0000 L CNN
F 1 "10k" H 4870 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4730 2550 50  0001 C CNN
F 3 "~" H 4800 2550 50  0001 C CNN
	1    4800 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 2550 4950 2550
Text GLabel 3650 2750 0    50   Output ~ 0
WheelButton
$Comp
L Nuttali-rescue:R-Device R15
U 1 1 602BED75
P 9050 3400
F 0 "R15" H 9120 3446 50  0000 L CNN
F 1 "10k" H 9120 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8980 3400 50  0001 C CNN
F 3 "~" H 9050 3400 50  0001 C CNN
	1    9050 3400
	0    1    1    0   
$EndComp
$Comp
L Nuttali-rescue:GND-power #PWR0152
U 1 1 602CF144
P 10100 2700
F 0 "#PWR0152" H 10100 2450 50  0001 C CNN
F 1 "GND" H 10105 2527 50  0000 C CNN
F 2 "" H 10100 2700 50  0001 C CNN
F 3 "" H 10100 2700 50  0001 C CNN
	1    10100 2700
	1    0    0    -1  
$EndComp
Text GLabel 9300 2650 0    50   Input ~ 0
Turbo_LED
Wire Wire Line
	10100 2700 10100 2650
Wire Notes Line
	550  4250 3100 4250
Text Notes 700  4050 0    50   ~ 0
Left and right click
Text Notes 700  4450 0    50   ~ 0
Side buttons
Text Notes 3650 1150 0    50   ~ 0
Scroll wheel
Text Notes 7550 950  0    50   ~ 0
Top buttons
$Comp
L Nuttali-rescue:Rotary_Encoder-Device SW8
U 1 1 60310A0D
P 5200 3650
F 0 "SW8" H 5430 3696 50  0000 L CNN
F 1 "Rotary_Encoder" H 5430 3605 50  0000 L CNN
F 2 "Nuttali:Encoder" H 5050 3810 50  0001 C CNN
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
P 5050 3200
F 0 "R11" H 5120 3246 50  0000 L CNN
F 1 "10k" H 5120 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4980 3200 50  0001 C CNN
F 3 "~" H 5050 3200 50  0001 C CNN
	1    5050 3200
	0    1    1    0   
$EndComp
$Comp
L Nuttali-rescue:R-Device R12
U 1 1 6031A38F
P 5050 4200
F 0 "R12" H 5120 4246 50  0000 L CNN
F 1 "10k" H 5120 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4980 4200 50  0001 C CNN
F 3 "~" H 5050 4200 50  0001 C CNN
	1    5050 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 3550 4900 3200
Wire Wire Line
	4200 3200 4200 3300
Wire Wire Line
	4200 3200 3950 3200
Connection ~ 4200 3200
Wire Wire Line
	4900 3750 4900 4200
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
$Comp
L new_components:Scroll_button U8
U 1 1 6028A058
P 4150 2650
F 0 "U8" H 4150 2975 50  0000 C CNN
F 1 "Scroll_button" H 4150 2884 50  0000 C CNN
F 2 "Nuttali:Scroll_button" H 4150 2900 50  0001 C CNN
F 3 "" H 4150 2900 50  0001 C CNN
	1    4150 2650
	1    0    0    -1  
$EndComp
NoConn ~ 3900 2550
$Comp
L Nuttali-rescue:GND-power #PWR0144
U 1 1 602440CC
P 1550 3050
F 0 "#PWR0144" H 1550 2800 50  0001 C CNN
F 1 "GND" H 1555 2877 50  0000 C CNN
F 2 "" H 1550 3050 50  0001 C CNN
F 3 "" H 1550 3050 50  0001 C CNN
	1    1550 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2950 1550 3050
$Comp
L new_components:Button U6
U 1 1 60293E4C
P 1500 2700
F 0 "U6" H 1828 2701 50  0000 L CNN
F 1 "Button" H 1828 2610 50  0000 L CNN
F 2 "Nuttali:D2F-5" H 1600 2950 50  0001 C CNN
F 3 "" H 1600 2950 50  0001 C CNN
	1    1500 2700
	1    0    0    -1  
$EndComp
Wire Notes Line
	3100 550  3100 7700
Text GLabel 850  2950 0    50   Output ~ 0
LeftB
Wire Wire Line
	1400 2950 1150 2950
Connection ~ 1150 2950
Wire Wire Line
	1150 2950 900  2950
$Comp
L Nuttali-rescue:R-Device R7
U 1 1 602321F1
P 1750 1500
F 0 "R7" H 1820 1546 50  0000 L CNN
F 1 "10k" H 1820 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1680 1500 50  0001 C CNN
F 3 "~" H 1750 1500 50  0001 C CNN
	1    1750 1500
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C27
U 1 1 60232EB4
P 1200 1500
F 0 "C27" H 1315 1546 50  0000 L CNN
F 1 "C" H 1315 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1238 1350 50  0001 C CNN
F 3 "~" H 1200 1500 50  0001 C CNN
	1    1200 1500
	1    0    0    -1  
$EndComp
Text GLabel 900  1350 0    50   Output ~ 0
RightB
$Comp
L Nuttali-rescue:+3.3V-power #PWR0140
U 1 1 602BEDB7
P 1750 1750
F 0 "#PWR0140" H 1750 1600 50  0001 C CNN
F 1 "+3.3V" H 1765 1923 50  0000 C CNN
F 2 "" H 1750 1750 50  0001 C CNN
F 3 "" H 1750 1750 50  0001 C CNN
	1    1750 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 1750 1750 1650
Wire Wire Line
	1200 1650 1200 1750
$Comp
L Nuttali-rescue:GND-power #PWR0141
U 1 1 602BEDCB
P 1200 1750
F 0 "#PWR0141" H 1200 1500 50  0001 C CNN
F 1 "GND" H 1205 1577 50  0000 C CNN
F 2 "" H 1200 1750 50  0001 C CNN
F 3 "" H 1200 1750 50  0001 C CNN
	1    1200 1750
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:GND-power #PWR0142
U 1 1 602BEDD1
P 1600 1450
F 0 "#PWR0142" H 1600 1200 50  0001 C CNN
F 1 "GND" H 1605 1277 50  0000 C CNN
F 2 "" H 1600 1450 50  0001 C CNN
F 3 "" H 1600 1450 50  0001 C CNN
	1    1600 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1350 1600 1450
$Comp
L new_components:Button U7
U 1 1 602BEDD8
P 1550 1100
F 0 "U7" H 1878 1101 50  0000 L CNN
F 1 "Button" H 1878 1010 50  0000 L CNN
F 2 "Nuttali:D2F-5" H 1650 1350 50  0001 C CNN
F 3 "" H 1650 1350 50  0001 C CNN
	1    1550 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1350 950  1350
Connection ~ 1200 1350
Wire Wire Line
	1200 1350 1450 1350
$Comp
L new_components:Button U9
U 1 1 602CB46F
P 9300 3150
F 0 "U9" H 9628 3151 50  0000 L CNN
F 1 "Button" H 9628 3060 50  0000 L CNN
F 2 "Nuttali:D2F-5" H 9400 3400 50  0001 C CNN
F 3 "" H 9400 3400 50  0001 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3400 8900 3400
$Comp
L Nuttali-rescue:+3.3V-power #PWR0150
U 1 1 602BED6F
P 8600 3400
F 0 "#PWR0150" H 8600 3250 50  0001 C CNN
F 1 "+3.3V" H 8615 3573 50  0000 C CNN
F 2 "" H 8600 3400 50  0001 C CNN
F 3 "" H 8600 3400 50  0001 C CNN
	1    8600 3400
	1    0    0    -1  
$EndComp
Text GLabel 9350 3850 3    50   Output ~ 0
Turbo
NoConn ~ 9500 3400
Wire Notes Line
	7000 6500 7000 500 
Wire Wire Line
	9350 3400 9350 3700
Connection ~ 4900 3200
Wire Wire Line
	4200 3200 4350 3200
$Comp
L Nuttali-rescue:+3.3V-power #PWR0146
U 1 1 604D0219
P 5250 3200
F 0 "#PWR0146" H 5250 3050 50  0001 C CNN
F 1 "+3.3V" H 5265 3373 50  0000 C CNN
F 2 "" H 5250 3200 50  0001 C CNN
F 3 "" H 5250 3200 50  0001 C CNN
	1    5250 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 3200 5200 3200
Connection ~ 4900 4200
Wire Wire Line
	4200 4200 4750 4200
$Comp
L Nuttali-rescue:+3.3V-power #PWR0149
U 1 1 604D56F4
P 5250 4200
F 0 "#PWR0149" H 5250 4050 50  0001 C CNN
F 1 "+3.3V" H 5265 4373 50  0000 C CNN
F 2 "" H 5250 4200 50  0001 C CNN
F 3 "" H 5250 4200 50  0001 C CNN
	1    5250 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 4200 5200 4200
$Comp
L Nuttali-rescue:TestPoint-Connector TP?
U 1 1 602996E2
P 950 1150
AR Path="/601B1425/602996E2" Ref="TP?"  Part="1" 
AR Path="/6022DC9B/602996E2" Ref="TP11"  Part="1" 
F 0 "TP11" H 1008 1268 50  0000 L CNN
F 1 "TestPoint" H 1008 1177 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 1150 1150 50  0001 C CNN
F 3 "~" H 1150 1150 50  0001 C CNN
	1    950  1150
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:TestPoint-Connector TP?
U 1 1 6029A34F
P 900 2750
AR Path="/601B1425/6029A34F" Ref="TP?"  Part="1" 
AR Path="/6022DC9B/6029A34F" Ref="TP10"  Part="1" 
F 0 "TP10" H 958 2868 50  0000 L CNN
F 1 "TestPoint" H 958 2777 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 1100 2750 50  0001 C CNN
F 3 "~" H 1100 2750 50  0001 C CNN
	1    900  2750
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:TestPoint-Connector TP?
U 1 1 6029B953
P 3750 2250
AR Path="/601B1425/6029B953" Ref="TP?"  Part="1" 
AR Path="/6022DC9B/6029B953" Ref="TP12"  Part="1" 
F 0 "TP12" H 3808 2368 50  0000 L CNN
F 1 "TestPoint" H 3808 2277 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 3950 2250 50  0001 C CNN
F 3 "~" H 3950 2250 50  0001 C CNN
	1    3750 2250
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:TestPoint-Connector TP?
U 1 1 6029C224
P 4350 3100
AR Path="/601B1425/6029C224" Ref="TP?"  Part="1" 
AR Path="/6022DC9B/6029C224" Ref="TP13"  Part="1" 
F 0 "TP13" H 4408 3218 50  0000 L CNN
F 1 "TestPoint" H 4408 3127 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 4550 3100 50  0001 C CNN
F 3 "~" H 4550 3100 50  0001 C CNN
	1    4350 3100
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:TestPoint-Connector TP?
U 1 1 6029CEB2
P 4750 4300
AR Path="/601B1425/6029CEB2" Ref="TP?"  Part="1" 
AR Path="/6022DC9B/6029CEB2" Ref="TP14"  Part="1" 
F 0 "TP14" H 4808 4418 50  0000 L CNN
F 1 "TestPoint" H 4808 4327 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 4950 4300 50  0001 C CNN
F 3 "~" H 4950 4300 50  0001 C CNN
	1    4750 4300
	-1   0    0    1   
$EndComp
$Comp
L Nuttali-rescue:TestPoint-Connector TP?
U 1 1 6029F887
P 9500 3700
AR Path="/601B1425/6029F887" Ref="TP?"  Part="1" 
AR Path="/6022DC9B/6029F887" Ref="TP15"  Part="1" 
F 0 "TP15" H 9558 3818 50  0000 L CNN
F 1 "TestPoint" H 9558 3727 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 9700 3700 50  0001 C CNN
F 3 "~" H 9700 3700 50  0001 C CNN
	1    9500 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3700 9350 3700
Connection ~ 9350 3700
Wire Wire Line
	9350 3700 9350 3850
Wire Wire Line
	900  2950 900  2750
Connection ~ 900  2950
Wire Wire Line
	900  2950 850  2950
Wire Wire Line
	950  1350 950  1150
Connection ~ 950  1350
Wire Wire Line
	950  1350 1200 1350
Wire Wire Line
	3650 2750 3750 2750
Wire Wire Line
	3750 2250 3750 2750
Connection ~ 3750 2750
Wire Wire Line
	3750 2750 3900 2750
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 602CAADB
P 9650 2450
F 0 "J4" V 9712 2494 50  0000 L CNN
F 1 "Conn_01x02_Male" V 9803 2494 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 9650 2450 50  0001 C CNN
F 3 "~" H 9650 2450 50  0001 C CNN
	1    9650 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 2650 10100 2650
Wire Wire Line
	9300 2650 9550 2650
Wire Wire Line
	4350 3100 4350 3200
Connection ~ 4350 3200
Wire Wire Line
	4350 3200 4900 3200
Wire Wire Line
	4750 4300 4750 4200
Connection ~ 4750 4200
Wire Wire Line
	4750 4200 4900 4200
Wire Wire Line
	4650 2750 4400 2750
Wire Wire Line
	4650 2750 4650 2550
NoConn ~ 4400 2550
$EndSCHEMATC
