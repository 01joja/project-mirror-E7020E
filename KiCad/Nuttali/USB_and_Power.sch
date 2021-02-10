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
L Nuttali-rescue:Conn_01x04_Male-Connector J?
U 1 1 601D53F8
P 1400 1700
AR Path="/601D53F8" Ref="J?"  Part="1" 
AR Path="/601D470C/601D53F8" Ref="J2"  Part="1" 
F 0 "J2" H 1508 1981 50  0000 C CNN
F 1 "B4B-XH-A" H 1508 1890 50  0000 C CNN
F 2 "" H 1400 1700 50  0001 C CNN
F 3 "~" H 1400 1700 50  0001 C CNN
	1    1400 1700
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:+5V-power #PWR?
U 1 1 6025442C
P 1850 1500
AR Path="/6025442C" Ref="#PWR?"  Part="1" 
AR Path="/601D470C/6025442C" Ref="#PWR0126"  Part="1" 
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
L Nuttali-rescue:USBLC6-2P6-Power_Protection U?
U 1 1 60257671
P 3450 1800
AR Path="/60257671" Ref="U?"  Part="1" 
AR Path="/601D470C/60257671" Ref="U3"  Part="1" 
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
L Nuttali-rescue:+5V-power #PWR?
U 1 1 60263555
P 2350 1600
AR Path="/60263555" Ref="#PWR?"  Part="1" 
AR Path="/601D470C/60263555" Ref="#PWR0127"  Part="1" 
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
L Nuttali-rescue:GND-power #PWR?
U 1 1 60263C21
P 1850 1900
AR Path="/60263C21" Ref="#PWR?"  Part="1" 
AR Path="/601D470C/60263C21" Ref="#PWR0128"  Part="1" 
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
L Nuttali-rescue:GND-power #PWR?
U 1 1 6026528C
P 3900 1800
AR Path="/6026528C" Ref="#PWR?"  Part="1" 
AR Path="/601D470C/6026528C" Ref="#PWR0129"  Part="1" 
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
L Nuttali-rescue:AP1117-15-Regulator_Linear U?
U 1 1 60275CC9
P 5150 1550
AR Path="/60275CC9" Ref="U?"  Part="1" 
AR Path="/601D470C/60275CC9" Ref="U5"  Part="1" 
F 0 "U5" H 5150 1792 50  0000 C CNN
F 1 "AP1117-15" H 5150 1701 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5150 1750 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 5250 1300 50  0001 C CNN
	1    5150 1550
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:AP131-15-Regulator_Linear U?
U 1 1 602779E7
P 5050 2750
AR Path="/602779E7" Ref="U?"  Part="1" 
AR Path="/601D470C/602779E7" Ref="U4"  Part="1" 
F 0 "U4" H 5050 3092 50  0000 C CNN
F 1 "AP131-15" H 5050 3001 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5050 3075 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/AP131.pdf" H 5050 2750 50  0001 C CNN
	1    5050 2750
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 601D7AEF
P 2350 1950
AR Path="/601D7AEF" Ref="C?"  Part="1" 
AR Path="/601D470C/601D7AEF" Ref="C22"  Part="1" 
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
L Nuttali-rescue:GND-power #PWR?
U 1 1 601DAD67
P 2950 2000
AR Path="/601DAD67" Ref="#PWR?"  Part="1" 
AR Path="/601D470C/601DAD67" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 2950 1750 50  0001 C CNN
F 1 "GND" H 2955 1827 50  0000 C CNN
F 2 "" H 2950 2000 50  0001 C CNN
F 3 "" H 2950 2000 50  0001 C CNN
	1    2950 2000
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 601DF5EF
P 5700 1800
AR Path="/601DF5EF" Ref="C?"  Part="1" 
AR Path="/601D470C/601DF5EF" Ref="C25"  Part="1" 
F 0 "C25" H 5815 1846 50  0000 L CNN
F 1 "4.7uF" H 5815 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5738 1650 50  0001 C CNN
F 3 "~" H 5700 1800 50  0001 C CNN
	1    5700 1800
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 601E048D
P 4600 2950
AR Path="/601E048D" Ref="C?"  Part="1" 
AR Path="/601D470C/601E048D" Ref="C24"  Part="1" 
F 0 "C24" H 4300 3000 50  0000 L CNN
F 1 "1uF" H 4300 2900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4638 2800 50  0001 C CNN
F 3 "~" H 4600 2950 50  0001 C CNN
	1    4600 2950
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 601E088B
P 5950 2800
AR Path="/601E088B" Ref="C?"  Part="1" 
AR Path="/601D470C/601E088B" Ref="C26"  Part="1" 
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
L Nuttali-rescue:GND-power #PWR?
U 1 1 601E6056
P 5150 2000
AR Path="/601E6056" Ref="#PWR?"  Part="1" 
AR Path="/601D470C/601E6056" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 5150 1750 50  0001 C CNN
F 1 "GND" H 5155 1827 50  0000 C CNN
F 2 "" H 5150 2000 50  0001 C CNN
F 3 "" H 5150 2000 50  0001 C CNN
	1    5150 2000
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R?
U 1 1 601E6FBD
P 5600 2800
AR Path="/601E6FBD" Ref="R?"  Part="1" 
AR Path="/601D470C/601E6FBD" Ref="R4"  Part="1" 
F 0 "R4" H 5670 2846 50  0000 L CNN
F 1 "1000" H 5670 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.20x4.05mm_HandSolder" V 5530 2800 50  0001 C CNN
F 3 "~" H 5600 2800 50  0001 C CNN
	1    5600 2800
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R?
U 1 1 601E7C9F
P 5600 3200
AR Path="/601E7C9F" Ref="R?"  Part="1" 
AR Path="/601D470C/601E7C9F" Ref="R5"  Part="1" 
F 0 "R5" H 5670 3246 50  0000 L CNN
F 1 "1800" H 5670 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.20x4.05mm_HandSolder" V 5530 3200 50  0001 C CNN
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
L Nuttali-rescue:GND-power #PWR?
U 1 1 601F167A
P 5050 3350
AR Path="/601F167A" Ref="#PWR?"  Part="1" 
AR Path="/601D470C/601F167A" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 5050 3100 50  0001 C CNN
F 1 "GND" H 5055 3177 50  0000 C CNN
F 2 "" H 5050 3350 50  0001 C CNN
F 3 "" H 5050 3350 50  0001 C CNN
	1    5050 3350
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:+5V-power #PWR?
U 1 1 601F267E
P 4600 1500
AR Path="/601F267E" Ref="#PWR?"  Part="1" 
AR Path="/601D470C/601F267E" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 4600 1350 50  0001 C CNN
F 1 "+5V" H 4615 1673 50  0000 C CNN
F 2 "" H 4600 1500 50  0001 C CNN
F 3 "" H 4600 1500 50  0001 C CNN
	1    4600 1500
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:+5V-power #PWR?
U 1 1 601F2F4A
P 4600 2600
AR Path="/601F2F4A" Ref="#PWR?"  Part="1" 
AR Path="/601D470C/601F2F4A" Ref="#PWR0134"  Part="1" 
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
L Nuttali-rescue:GND-power #PWR?
U 1 1 601F601B
P 5950 3000
AR Path="/601F601B" Ref="#PWR?"  Part="1" 
AR Path="/601D470C/601F601B" Ref="#PWR0135"  Part="1" 
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
L Nuttali-rescue:+3.3V-power #PWR?
U 1 1 601F8551
P 5700 1500
AR Path="/601F8551" Ref="#PWR?"  Part="1" 
AR Path="/601D470C/601F8551" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 5700 1350 50  0001 C CNN
F 1 "+3.3V" H 5715 1673 50  0000 C CNN
F 2 "" H 5700 1500 50  0001 C CNN
F 3 "" H 5700 1500 50  0001 C CNN
	1    5700 1500
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:LED-Device D?
U 1 1 60219D13
P 6250 2650
AR Path="/60219D13" Ref="D?"  Part="1" 
AR Path="/601D470C/60219D13" Ref="D1"  Part="1" 
F 0 "D1" H 6243 2395 50  0000 C CNN
F 1 "LED" H 6243 2486 50  0000 C CNN
F 2 "" H 6250 2650 50  0001 C CNN
F 3 "~" H 6250 2650 50  0001 C CNN
	1    6250 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6100 2650 5950 2650
Wire Wire Line
	6400 2650 6500 2650
$Comp
L Nuttali-rescue:GND-power #PWR?
U 1 1 6021DE9A
P 6500 2650
AR Path="/6021DE9A" Ref="#PWR?"  Part="1" 
AR Path="/601D470C/6021DE9A" Ref="#PWR0138"  Part="1" 
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
L Nuttali-rescue:R-Device R?
U 1 1 60221CF5
P 6200 1550
AR Path="/60221CF5" Ref="R?"  Part="1" 
AR Path="/601D470C/60221CF5" Ref="R6"  Part="1" 
F 0 "R6" V 6400 1500 50  0000 L CNN
F 1 "68" V 6300 1500 50  0000 L CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.20x4.05mm_HandSolder" V 6130 1550 50  0001 C CNN
F 3 "~" H 6200 1550 50  0001 C CNN
	1    6200 1550
	0    -1   -1   0   
$EndComp
$Comp
L Nuttali-rescue:LED-Device D?
U 1 1 60223427
P 6550 1550
AR Path="/60223427" Ref="D?"  Part="1" 
AR Path="/601D470C/60223427" Ref="D2"  Part="1" 
F 0 "D2" H 6543 1295 50  0000 C CNN
F 1 "LED" H 6543 1386 50  0000 C CNN
F 2 "" H 6550 1550 50  0001 C CNN
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
L Nuttali-rescue:GND-power #PWR?
U 1 1 60225F08
P 6700 1600
AR Path="/60225F08" Ref="#PWR?"  Part="1" 
AR Path="/601D470C/60225F08" Ref="#PWR0139"  Part="1" 
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
L Nuttali-rescue:C-Device C?
U 1 1 6022CD87
P 4600 1800
AR Path="/6022CD87" Ref="C?"  Part="1" 
AR Path="/601D470C/6022CD87" Ref="C23"  Part="1" 
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
