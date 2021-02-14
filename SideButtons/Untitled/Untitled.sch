EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector:Conn_01x03_Male J1
U 1 1 6026C38E
P 1800 1050
F 0 "J1" H 1908 1331 50  0000 C CNN
F 1 "Conn_01x03_Male" H 1908 1240 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1800 1050 50  0001 C CNN
F 3 "~" H 1800 1050 50  0001 C CNN
	1    1800 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1000 1050 1000 900 
Wire Wire Line
	1050 950  1050 750 
Wire Wire Line
	1050 750  600  750 
$Comp
L Device:R R2
U 1 1 6026A26C
P 1250 1050
F 0 "R2" V 1043 1050 50  0000 C CNN
F 1 "10k" V 1134 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1180 1050 50  0001 C CNN
F 3 "~" H 1250 1050 50  0001 C CNN
	1    1250 1050
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 6026C85A
P 1250 1300
F 0 "R1" V 1043 1300 50  0000 C CNN
F 1 "10k" V 1134 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 1180 1300 50  0001 C CNN
F 3 "~" H 1250 1300 50  0001 C CNN
	1    1250 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 1150 1600 1300
Wire Wire Line
	1600 950  1050 950 
Wire Wire Line
	1000 1050 1100 1050
Wire Wire Line
	1400 1050 1600 1050
Wire Wire Line
	1600 1300 1400 1300
Wire Wire Line
	1100 1300 1000 1300
$Comp
L Switch:SW_Push SW1
U 1 1 60272F1F
P 800 900
F 0 "SW1" H 800 1185 50  0000 C CNN
F 1 "SW_Push" H 800 1094 50  0000 C CNN
F 2 "PMW:D2F-5" H 800 1100 50  0001 C CNN
F 3 "~" H 800 1100 50  0001 C CNN
	1    800  900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  750  600  900 
Connection ~ 600  900 
Wire Wire Line
	600  900  600  1300
$Comp
L Switch:SW_Push SW2
U 1 1 60277527
P 800 1300
F 0 "SW2" H 800 1585 50  0000 C CNN
F 1 "SW_Push" H 800 1494 50  0000 C CNN
F 2 "PMW:D2F-5" H 800 1500 50  0001 C CNN
F 3 "~" H 800 1500 50  0001 C CNN
	1    800  1300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
