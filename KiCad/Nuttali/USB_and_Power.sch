EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
AR Path="/601D470C/601D53F8" Ref="J?"  Part="1" 
F 0 "J?" H 1508 1981 50  0000 C CNN
F 1 "B4B-XH-A" H 1508 1890 50  0000 C CNN
F 2 "" H 1400 1700 50  0001 C CNN
F 3 "~" H 1400 1700 50  0001 C CNN
	1    1400 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6025442C
P 1850 1500
F 0 "#PWR?" H 1850 1350 50  0001 C CNN
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
L Power_Protection:USBLC6-2P6 U?
U 1 1 60257671
P 2550 1800
F 0 "U?" V 2200 2400 50  0000 C CNN
F 1 "USBLC6-2P6" V 2300 2400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-666" H 2550 1300 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 2750 2150 50  0001 C CNN
	1    2550 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 1700 2050 1700
Wire Wire Line
	2050 1700 2050 1350
Wire Wire Line
	2050 1350 2450 1350
Wire Wire Line
	2450 1350 2450 1400
Wire Wire Line
	1600 1800 2050 1800
Wire Wire Line
	2050 1800 2050 2250
Wire Wire Line
	2050 2250 2450 2250
Wire Wire Line
	2450 2250 2450 2200
$Comp
L power:+5V #PWR?
U 1 1 60263555
P 2150 1700
F 0 "#PWR?" H 2150 1550 50  0001 C CNN
F 1 "+5V" H 2165 1873 50  0000 C CNN
F 2 "" H 2150 1700 50  0001 C CNN
F 3 "" H 2150 1700 50  0001 C CNN
	1    2150 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1800 2150 1700
Wire Wire Line
	1600 1900 1850 1900
$Comp
L power:GND #PWR?
U 1 1 60263C21
P 1850 1900
F 0 "#PWR?" H 1850 1650 50  0001 C CNN
F 1 "GND" H 1855 1727 50  0000 C CNN
F 2 "" H 1850 1900 50  0001 C CNN
F 3 "" H 1850 1900 50  0001 C CNN
	1    1850 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1800 3000 1800
$Comp
L power:GND #PWR?
U 1 1 6026528C
P 3000 1800
F 0 "#PWR?" H 3000 1550 50  0001 C CNN
F 1 "GND" H 3005 1627 50  0000 C CNN
F 2 "" H 3000 1800 50  0001 C CNN
F 3 "" H 3000 1800 50  0001 C CNN
	1    3000 1800
	1    0    0    -1  
$EndComp
Text GLabel 2800 1350 2    50   BiDi ~ 0
D-
Text GLabel 2800 2250 2    50   BiDi ~ 0
D+
Wire Wire Line
	2800 1350 2650 1350
Wire Wire Line
	2650 1350 2650 1400
Wire Wire Line
	2800 2250 2650 2250
Wire Wire Line
	2650 2250 2650 2200
$Comp
L Regulator_Linear:AP1117-15 U?
U 1 1 60275CC9
P 4650 1650
F 0 "U?" H 4650 1892 50  0000 C CNN
F 1 "AP1117-15" H 4650 1801 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4650 1850 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 4750 1400 50  0001 C CNN
	1    4650 1650
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AP131-15 U?
U 1 1 602779E7
P 4650 2650
F 0 "U?" H 4650 2992 50  0000 C CNN
F 1 "AP131-15" H 4650 2901 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4650 2975 50  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/AP131.pdf" H 4650 2650 50  0001 C CNN
	1    4650 2650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
