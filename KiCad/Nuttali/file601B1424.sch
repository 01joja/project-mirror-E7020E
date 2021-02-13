EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
L Nuttali-rescue:+3.3V-power #PWR0125
U 1 1 601C8D0A
P 5400 1850
F 0 "#PWR0125" H 5400 1700 50  0001 C CNN
F 1 "+3.3V" H 5415 2023 50  0000 C CNN
F 2 "" H 5400 1850 50  0001 C CNN
F 3 "" H 5400 1850 50  0001 C CNN
	1    5400 1850
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R_Small-Device R2
U 1 1 601C973A
P 5400 2100
F 0 "R2" H 5341 2054 50  0000 R CNN
F 1 "10k" H 5341 2145 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 5400 2100 50  0001 C CNN
F 3 "~" H 5400 2100 50  0001 C CNN
	1    5400 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 1850 5400 2000
Wire Wire Line
	5400 2800 5400 2200
$Comp
L Nuttali-rescue:TestPoint-Connector TP6
U 1 1 602091FD
P 7250 3850
F 0 "TP6" H 7308 3968 50  0000 L CNN
F 1 "TestPoint" H 7308 3877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 7450 3850 50  0001 C CNN
F 3 "~" H 7450 3850 50  0001 C CNN
	1    7250 3850
	1    0    0    -1  
$EndComp
Text GLabel 7250 3850 3    50   UnSpc ~ 0
NCS
Text GLabel 6800 3850 3    50   UnSpc ~ 0
MOTION
Text GLabel 6350 3850 3    50   UnSpc ~ 0
SCK
$Comp
L Nuttali-rescue:TestPoint-Connector TP5
U 1 1 6020880C
P 6800 3850
F 0 "TP5" H 6858 3968 50  0000 L CNN
F 1 "TestPoint" H 6858 3877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 7000 3850 50  0001 C CNN
F 3 "~" H 7000 3850 50  0001 C CNN
	1    6800 3850
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:TestPoint-Connector TP4
U 1 1 602082AE
P 6350 3850
F 0 "TP4" H 6408 3968 50  0000 L CNN
F 1 "TestPoint" H 6408 3877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6550 3850 50  0001 C CNN
F 3 "~" H 6550 3850 50  0001 C CNN
	1    6350 3850
	1    0    0    -1  
$EndComp
Text GLabel 5900 3850 3    50   UnSpc ~ 0
MOSI
Text GLabel 5400 3850 3    50   UnSpc ~ 0
MISO
$Comp
L Nuttali-rescue:TestPoint-Connector TP3
U 1 1 602068E2
P 5900 3850
F 0 "TP3" H 5958 3968 50  0000 L CNN
F 1 "TestPoint" H 5958 3877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6100 3850 50  0001 C CNN
F 3 "~" H 6100 3850 50  0001 C CNN
	1    5900 3850
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:TestPoint-Connector TP2
U 1 1 6020633C
P 5400 3850
F 0 "TP2" H 5458 3968 50  0000 L CNN
F 1 "TestPoint" H 5458 3877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 5600 3850 50  0001 C CNN
F 3 "~" H 5600 3850 50  0001 C CNN
	1    5400 3850
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:GND-power #PWR0124
U 1 1 60205A5B
P 4950 3850
F 0 "#PWR0124" H 4950 3600 50  0001 C CNN
F 1 "GND" H 4955 3677 50  0000 C CNN
F 2 "" H 4950 3850 50  0001 C CNN
F 3 "" H 4950 3850 50  0001 C CNN
	1    4950 3850
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:TestPoint-Connector TP1
U 1 1 60204BFD
P 4950 3850
F 0 "TP1" H 5008 3968 50  0000 L CNN
F 1 "TestPoint" H 5008 3877 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 5150 3850 50  0001 C CNN
F 3 "~" H 5150 3850 50  0001 C CNN
	1    4950 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2800 5400 2800
Text GLabel 5050 3100 2    50   Output ~ 0
MOTION
Text GLabel 5050 3000 2    50   Input ~ 0
SCK
Text GLabel 5050 2900 2    50   Input ~ 0
MOSI
Text GLabel 5550 2800 2    50   Input ~ 0
MISO
Text GLabel 5050 2700 2    50   Input ~ 0
NCS
Text GLabel 4250 3000 0    50   Input ~ 0
NRESET
Wire Wire Line
	4150 3100 4150 3250
Wire Wire Line
	4250 3100 4150 3100
$Comp
L Nuttali-rescue:GND-power #PWR0123
U 1 1 601D9FB5
P 4150 3250
F 0 "#PWR0123" H 4150 3000 50  0001 C CNN
F 1 "GND" H 4155 3077 50  0000 C CNN
F 2 "" H 4150 3250 50  0001 C CNN
F 3 "" H 4150 3250 50  0001 C CNN
	1    4150 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2150 2950 2300
Wire Wire Line
	2450 2150 2950 2150
Wire Wire Line
	2950 1850 2450 1850
Wire Wire Line
	2950 1850 2950 1950
Wire Wire Line
	2450 1850 2450 1950
Wire Wire Line
	2950 1850 3200 1850
$Comp
L Nuttali-rescue:GND-power #PWR0122
U 1 1 601CF8BA
P 2950 2300
F 0 "#PWR0122" H 2950 2050 50  0001 C CNN
F 1 "GND" H 2955 2127 50  0000 C CNN
F 2 "" H 2950 2300 50  0001 C CNN
F 3 "" H 2950 2300 50  0001 C CNN
	1    2950 2300
	1    0    0    -1  
$EndComp
Connection ~ 2950 2150
$Comp
L Nuttali-rescue:C_Small-Device C17
U 1 1 601CE396
P 2950 2050
F 0 "C17" H 3042 2096 50  0000 L CNN
F 1 "4.7μF/10V" H 3042 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2950 2050 50  0001 C CNN
F 3 "~" H 2950 2050 50  0001 C CNN
	1    2950 2050
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C_Small-Device C14
U 1 1 601CD863
P 2450 2050
F 0 "C14" H 2542 2096 50  0000 L CNN
F 1 "100nF" H 2542 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2450 2050 50  0001 C CNN
F 3 "~" H 2450 2050 50  0001 C CNN
	1    2450 2050
	1    0    0    -1  
$EndComp
Connection ~ 5400 2800
Wire Wire Line
	5050 2800 5400 2800
$Comp
L Nuttali-rescue:+1.9V-new_components #PWR?
U 1 1 601C32CC
P 7550 2450
AR Path="/601C32CC" Ref="#PWR?"  Part="1" 
AR Path="/601B1425/601C32CC" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 7550 2300 50  0001 C CNN
F 1 "+1.9V" H 7565 2623 50  0000 C CNN
F 2 "" H 7550 2450 50  0001 C CNN
F 3 "" H 7550 2450 50  0001 C CNN
	1    7550 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6400 2450 6250 2450
$Comp
L Nuttali-rescue:R_Small-Device R3
U 1 1 601C1642
P 6500 2450
F 0 "R3" V 6304 2450 50  0000 C CNN
F 1 "13" V 6395 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6500 2450 50  0001 C CNN
F 3 "~" H 6500 2450 50  0001 C CNN
	1    6500 2450
	0    -1   1    0   
$EndComp
Wire Wire Line
	6850 2650 7050 2650
Wire Wire Line
	7050 2650 7050 2750
Connection ~ 7050 2650
Wire Wire Line
	7350 2650 7050 2650
$Comp
L Nuttali-rescue:GND-power #PWR0120
U 1 1 601BFAD1
P 7050 2750
F 0 "#PWR0120" H 7050 2500 50  0001 C CNN
F 1 "GND" H 7055 2577 50  0000 C CNN
F 2 "" H 7050 2750 50  0001 C CNN
F 3 "" H 7050 2750 50  0001 C CNN
	1    7050 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6850 2450 6600 2450
Connection ~ 6850 2450
$Comp
L Nuttali-rescue:C_Small-Device C20
U 1 1 601BEECD
P 6850 2550
F 0 "C20" H 6942 2596 50  0000 L CNN
F 1 "10uF" H 6942 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6850 2550 50  0001 C CNN
F 3 "~" H 6850 2550 50  0001 C CNN
	1    6850 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7350 2450 6850 2450
Wire Wire Line
	7350 2450 7550 2450
Connection ~ 7350 2450
$Comp
L Nuttali-rescue:C_Small-Device C21
U 1 1 601BE3E8
P 7350 2550
F 0 "C21" H 7442 2596 50  0000 L CNN
F 1 "100nF" H 7442 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7350 2550 50  0001 C CNN
F 3 "~" H 7350 2550 50  0001 C CNN
	1    7350 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3000 3000 2750 3000
Wire Wire Line
	2750 3000 2750 3100
Connection ~ 2750 3000
Wire Wire Line
	2500 3000 2750 3000
$Comp
L Nuttali-rescue:GND-power #PWR0119
U 1 1 601BCBD9
P 2750 3100
F 0 "#PWR0119" H 2750 2850 50  0001 C CNN
F 1 "GND" H 2755 2927 50  0000 C CNN
F 2 "" H 2750 3100 50  0001 C CNN
F 3 "" H 2750 3100 50  0001 C CNN
	1    2750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2800 3400 2800
Connection ~ 3000 2800
$Comp
L Nuttali-rescue:C_Small-Device C18
U 1 1 601BC32D
P 3000 2900
F 0 "C18" H 3092 2946 50  0000 L CNN
F 1 "10uF" H 3092 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3000 2900 50  0001 C CNN
F 3 "~" H 3000 2900 50  0001 C CNN
	1    3000 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2800 3000 2800
Wire Wire Line
	2250 2800 2500 2800
Connection ~ 2500 2800
$Comp
L Nuttali-rescue:C_Small-Device C15
U 1 1 601BBB39
P 2500 2900
F 0 "C15" H 2592 2946 50  0000 L CNN
F 1 "100uF" H 2592 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2500 2900 50  0001 C CNN
F 3 "~" H 2500 2900 50  0001 C CNN
	1    2500 2900
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:+1.9V-new_components #PWR?
U 1 1 601BB0BC
P 2250 2800
AR Path="/601BB0BC" Ref="#PWR?"  Part="1" 
AR Path="/601B1425/601BB0BC" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 2250 2650 50  0001 C CNN
F 1 "+1.9V" H 2265 2973 50  0000 C CNN
F 2 "" H 2250 2800 50  0001 C CNN
F 3 "" H 2250 2800 50  0001 C CNN
	1    2250 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3700 2750 3700
Wire Wire Line
	2750 3700 2750 3800
Connection ~ 2750 3700
Wire Wire Line
	2500 3700 2750 3700
$Comp
L Nuttali-rescue:GND-power #PWR0117
U 1 1 601B7EF0
P 2750 3800
F 0 "#PWR0117" H 2750 3550 50  0001 C CNN
F 1 "GND" H 2755 3627 50  0000 C CNN
F 2 "" H 2750 3800 50  0001 C CNN
F 3 "" H 2750 3800 50  0001 C CNN
	1    2750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3500 3350 3500
$Comp
L Nuttali-rescue:C_Small-Device C19
U 1 1 601B779D
P 3000 3600
F 0 "C19" H 3092 3646 50  0000 L CNN
F 1 "100nF" H 3092 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3000 3600 50  0001 C CNN
F 3 "~" H 3000 3600 50  0001 C CNN
	1    3000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3500 3000 3500
Wire Wire Line
	2250 3500 2500 3500
Connection ~ 2500 3500
$Comp
L Nuttali-rescue:C_Small-Device C16
U 1 1 601B7149
P 2500 3600
F 0 "C16" H 2592 3646 50  0000 L CNN
F 1 "10uF" H 2592 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2500 3600 50  0001 C CNN
F 3 "~" H 2500 3600 50  0001 C CNN
	1    2500 3600
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:+3.3V-power #PWR0116
U 1 1 601B6020
P 2250 3500
F 0 "#PWR0116" H 2250 3350 50  0001 C CNN
F 1 "+3.3V" H 2265 3673 50  0000 C CNN
F 2 "" H 2250 3500 50  0001 C CNN
F 3 "" H 2250 3500 50  0001 C CNN
	1    2250 3500
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:PMW3389-new_components U2
U 1 1 601B49B3
P 4700 2700
F 0 "U2" H 4650 3265 50  0000 C CNN
F 1 "PMW3389" H 4650 3174 50  0000 C CNN
F 2 "Nuttali:PMW3389DM-T3QU" H 4700 2150 50  0001 C CNN
F 3 "" H 4700 2150 50  0001 C CNN
	1    4700 2700
	1    0    0    -1  
$EndComp
Text GLabel 3200 1850 2    50   Input ~ 0
VDDPIX
Connection ~ 2950 1850
Text GLabel 3350 3500 2    50   Input ~ 0
VDDIO_3.3V
Connection ~ 3000 3500
Text GLabel 5050 2500 2    50   Output ~ 0
LED_1
Text GLabel 6250 2450 0    50   Input ~ 0
LED_1
Text GLabel 4250 2600 0    50   Output ~ 0
VDDPIX
Text GLabel 4250 2800 0    50   Output ~ 0
VDDIO_3.3V
Wire Wire Line
	4250 2700 3400 2700
Wire Wire Line
	3400 2700 3400 2800
$EndSCHEMATC
