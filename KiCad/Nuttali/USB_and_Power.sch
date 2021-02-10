EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
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
L Connector:Conn_01x04_Male J?
U 1 1 601D53F8
P 1400 1700
AR Path="/601D53F8" Ref="J?"  Part="1" 
AR Path="/601D470C/601D53F8" Ref="J2"  Part="1" 
F 0 "J2" H 1508 1981 50  0000 C CNN
F 1 "B4B-XH-A" H 1508 1890 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1400 1700 50  0001 C CNN
F 3 "~" H 1400 1700 50  0001 C CNN
	1    1400 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0126
U 1 1 6025442C
P 1850 1500
F 0 "#PWR0126" H 1850 1350 50  0001 C CNN
F 1 "+5V" H 1865 1673 50  0000 C CNN
F 2 "" H 1850 1500 50  0001 C CNN
F 3 "" H 1850 1500 50  0001 C CNN
	1    1850 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1600 1850 1600
Wire Wire Line
	1850 1600 1850 1500
$Comp
L Power_Protection:USBLC6-2P6 U3
U 1 1 60257671
P 3450 1800
F 0 "U3" V 3100 2400 50  0000 C CNN
F 1 "USBLC6-2P6" V 3200 2400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-666" H 3450 1300 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 3650 2150 50  0001 C CNN
	1    3450 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 1700 2050 1700
Wire Wire Line
	2050 1700 2050 1350
Wire Wire Line
	2050 1350 3350 1350
Wire Wire Line
	3350 1350 3350 1400
Wire Wire Line
	1600 1800 2050 1800
Wire Wire Line
	2050 1800 2050 2250
Wire Wire Line
	2050 2250 3350 2250
Wire Wire Line
	3350 2250 3350 2200
$Comp
L power:+5V #PWR0127
U 1 1 60263555
P 2350 1600
F 0 "#PWR0127" H 2350 1450 50  0001 C CNN
F 1 "+5V" H 2365 1773 50  0000 C CNN
F 2 "" H 2350 1600 50  0001 C CNN
F 3 "" H 2350 1600 50  0001 C CNN
	1    2350 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1900 1850 1900
$Comp
L power:GND #PWR0128
U 1 1 60263C21
P 1850 1900
F 0 "#PWR0128" H 1850 1650 50  0001 C CNN
F 1 "GND" H 1855 1727 50  0000 C CNN
F 2 "" H 1850 1900 50  0001 C CNN
F 3 "" H 1850 1900 50  0001 C CNN
	1    1850 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1800 3900 1800
$Comp
L power:GND #PWR0129
U 1 1 6026528C
P 3900 1800
F 0 "#PWR0129" H 3900 1550 50  0001 C CNN
F 1 "GND" H 3905 1627 50  0000 C CNN
F 2 "" H 3900 1800 50  0001 C CNN
F 3 "" H 3900 1800 50  0001 C CNN
	1    3900 1800
	1    0    0    -1  
$EndComp
Text GLabel 3700 1350 2    50   BiDi ~ 0
D-
Text GLabel 3700 2250 2    50   BiDi ~ 0
D+
Wire Wire Line
	3700 1350 3550 1350
Wire Wire Line
	3550 1350 3550 1400
Wire Wire Line
	3700 2250 3550 2250
Wire Wire Line
	3550 2250 3550 2200
$Comp
L Regulator_Linear:AP1117-15 U5
U 1 1 60275CC9
P 5150 1550
F 0 "U5" H 5150 1792 50  0000 C CNN
F 1 "AP1117-15" H 5150 1701 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5150 1750 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 5250 1300 50  0001 C CNN
	1    5150 1550
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AP131-15 U4
U 1 1 602779E7
P 5050 2750
F 0 "U4" H 5050 3092 50  0000 C CNN
F 1 "AP131-15" H 5050 3001 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5050 3075 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/AP131.pdf" H 5050 2750 50  0001 C CNN
	1    5050 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 601D7AEF
P 2350 1950
F 0 "C22" H 2465 1996 50  0000 L CNN
F 1 "100nf" H 2465 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2388 1800 50  0001 C CNN
F 3 "~" H 2350 1950 50  0001 C CNN
	1    2350 1950
	1    0    0    -1  
$EndComp
Connection ~ 2350 1800
Wire Wire Line
	2350 1800 3050 1800
Wire Wire Line
	2350 1600 2350 1800
Wire Wire Line
	2350 2100 2800 2100
Wire Wire Line
	2800 2100 2800 2000
Wire Wire Line
	2800 2000 2950 2000
$Comp
L power:GND #PWR0130
U 1 1 601DAD67
P 2950 2000
F 0 "#PWR0130" H 2950 1750 50  0001 C CNN
F 1 "GND" H 2955 1827 50  0000 C CNN
F 2 "" H 2950 2000 50  0001 C CNN
F 3 "" H 2950 2000 50  0001 C CNN
	1    2950 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C25
U 1 1 601DF5EF
P 5700 1800
F 0 "C25" H 5815 1846 50  0000 L CNN
F 1 "4.7uF" H 5815 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5738 1650 50  0001 C CNN
F 3 "~" H 5700 1800 50  0001 C CNN
	1    5700 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C24
U 1 1 601E048D
P 4600 2950
F 0 "C24" H 4300 3000 50  0000 L CNN
F 1 "1uF" H 4300 2900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4638 2800 50  0001 C CNN
F 3 "~" H 4600 2950 50  0001 C CNN
	1    4600 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C26
U 1 1 601E088B
P 5950 2800
F 0 "C26" H 6065 2846 50  0000 L CNN
F 1 "2.2uF" H 6065 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5988 2650 50  0001 C CNN
F 3 "~" H 5950 2800 50  0001 C CNN
	1    5950 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1550 4600 1550
Wire Wire Line
	4600 1550 4600 1500
Wire Wire Line
	5450 1550 5700 1550
Wire Wire Line
	5700 1550 5700 1500
Connection ~ 5700 1550
Wire Wire Line
	4600 2000 5150 2000
Wire Wire Line
	5150 1850 5150 2000
Connection ~ 5150 2000
Wire Wire Line
	5150 2000 5700 2000
$Comp
L power:GND #PWR0131
U 1 1 601E6056
P 5150 2000
F 0 "#PWR0131" H 5150 1750 50  0001 C CNN
F 1 "GND" H 5155 1827 50  0000 C CNN
F 2 "" H 5150 2000 50  0001 C CNN
F 3 "" H 5150 2000 50  0001 C CNN
	1    5150 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 601E6FBD
P 5600 2800
F 0 "R4" H 5670 2846 50  0000 L CNN
F 1 "1000" H 5670 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5530 2800 50  0001 C CNN
F 3 "~" H 5600 2800 50  0001 C CNN
	1    5600 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 601E7C9F
P 5600 3200
F 0 "R5" H 5670 3246 50  0000 L CNN
F 1 "1800" H 5670 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5530 3200 50  0001 C CNN
F 3 "~" H 5600 3200 50  0001 C CNN
	1    5600 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2650 4600 2650
Wire Wire Line
	4600 2750 4750 2750
Wire Wire Line
	4600 2600 4600 2650
Connection ~ 4600 2650
Wire Wire Line
	4600 2650 4600 2750
Connection ~ 4600 2750
Wire Wire Line
	4600 2750 4600 2800
Wire Wire Line
	5350 2750 5350 2950
Wire Wire Line
	5350 2950 5600 2950
Wire Wire Line
	5600 2950 5600 3050
Connection ~ 5600 2950
Wire Wire Line
	5350 2650 5600 2650
Wire Wire Line
	5600 2650 5950 2650
Connection ~ 5600 2650
Wire Wire Line
	5950 2600 5950 2650
Connection ~ 5950 2650
Wire Wire Line
	4600 3100 4600 3350
Wire Wire Line
	4600 3350 5050 3350
Wire Wire Line
	5050 3050 5050 3350
Connection ~ 5050 3350
Wire Wire Line
	5050 3350 5600 3350
$Comp
L power:GND #PWR0132
U 1 1 601F167A
P 5050 3350
F 0 "#PWR0132" H 5050 3100 50  0001 C CNN
F 1 "GND" H 5055 3177 50  0000 C CNN
F 2 "" H 5050 3350 50  0001 C CNN
F 3 "" H 5050 3350 50  0001 C CNN
	1    5050 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0133
U 1 1 601F267E
P 4600 1500
F 0 "#PWR0133" H 4600 1350 50  0001 C CNN
F 1 "+5V" H 4615 1673 50  0000 C CNN
F 2 "" H 4600 1500 50  0001 C CNN
F 3 "" H 4600 1500 50  0001 C CNN
	1    4600 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0134
U 1 1 601F2F4A
P 4600 2600
F 0 "#PWR0134" H 4600 2450 50  0001 C CNN
F 1 "+5V" H 4615 2773 50  0000 C CNN
F 2 "" H 4600 2600 50  0001 C CNN
F 3 "" H 4600 2600 50  0001 C CNN
	1    4600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2950 5950 3000
$Comp
L power:GND #PWR0135
U 1 1 601F601B
P 5950 3000
F 0 "#PWR0135" H 5950 2750 50  0001 C CNN
F 1 "GND" H 5955 2827 50  0000 C CNN
F 2 "" H 5950 3000 50  0001 C CNN
F 3 "" H 5950 3000 50  0001 C CNN
	1    5950 3000
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:+1.9V-new_components #PWR?
U 1 1 601F7C18
P 5950 2600
AR Path="/601F7C18" Ref="#PWR?"  Part="1" 
AR Path="/601B1425/601F7C18" Ref="#PWR?"  Part="1" 
AR Path="/601D470C/601F7C18" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 5950 2450 50  0001 C CNN
F 1 "+1.9V" H 5965 2773 50  0000 C CNN
F 2 "" H 5950 2600 50  0001 C CNN
F 3 "" H 5950 2600 50  0001 C CNN
	1    5950 2600
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0137
U 1 1 601F8551
P 5700 1500
F 0 "#PWR0137" H 5700 1350 50  0001 C CNN
F 1 "+3.3V" H 5715 1673 50  0000 C CNN
F 2 "" H 5700 1500 50  0001 C CNN
F 3 "" H 5700 1500 50  0001 C CNN
	1    5700 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 60219D13
P 6250 2650
F 0 "D1" H 6243 2395 50  0000 C CNN
F 1 "LED" H 6243 2486 50  0000 C CNN
F 2 "LED_SMD:LED_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 6250 2650 50  0001 C CNN
F 3 "~" H 6250 2650 50  0001 C CNN
	1    6250 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6100 2650 5950 2650
Wire Wire Line
	6400 2650 6500 2650
$Comp
L power:GND #PWR0138
U 1 1 6021DE9A
P 6500 2650
F 0 "#PWR0138" H 6500 2400 50  0001 C CNN
F 1 "GND" H 6505 2477 50  0000 C CNN
F 2 "" H 6500 2650 50  0001 C CNN
F 3 "" H 6500 2650 50  0001 C CNN
	1    6500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1550 5700 1650
$Comp
L Device:R R6
U 1 1 60221CF5
P 6200 1550
F 0 "R6" V 6400 1500 50  0000 L CNN
F 1 "68" V 6300 1500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6130 1550 50  0001 C CNN
F 3 "~" H 6200 1550 50  0001 C CNN
	1    6200 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 60223427
P 6550 1550
F 0 "D2" H 6543 1295 50  0000 C CNN
F 1 "LED" H 6543 1386 50  0000 C CNN
F 2 "LED_SMD:LED_0201_0603Metric_Pad0.64x0.40mm_HandSolder" H 6550 1550 50  0001 C CNN
F 3 "~" H 6550 1550 50  0001 C CNN
	1    6550 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 1550 6050 1550
Wire Wire Line
	6350 1550 6400 1550
Wire Wire Line
	6700 1550 6700 1600
$Comp
L power:GND #PWR0139
U 1 1 60225F08
P 6700 1600
F 0 "#PWR0139" H 6700 1350 50  0001 C CNN
F 1 "GND" H 6705 1427 50  0000 C CNN
F 2 "" H 6700 1600 50  0001 C CNN
F 3 "" H 6700 1600 50  0001 C CNN
	1    6700 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2000 5700 1950
$Comp
L Device:C C23
U 1 1 6022CD87
P 4600 1800
F 0 "C23" H 4715 1846 50  0000 L CNN
F 1 "4.7uF" H 4715 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4638 1650 50  0001 C CNN
F 3 "~" H 4600 1800 50  0001 C CNN
	1    4600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1550 4600 1650
Wire Wire Line
	4600 2000 4600 1950
$EndSCHEMATC
