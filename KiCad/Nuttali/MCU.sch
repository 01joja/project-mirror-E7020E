EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
L Nuttali-rescue:STM32F411RETx-MCU_ST_STM32F4 U?
U 1 1 60249702
P 5450 4150
AR Path="/60249702" Ref="U?"  Part="1" 
AR Path="/6022F0F9/60249702" Ref="U1"  Part="1" 
F 0 "U1" H 5450 2261 50  0000 C CNN
F 1 "STM32F411RETx" H 5450 2170 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 4850 2450 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00115249.pdf" H 5450 4150 50  0001 C CNN
	1    5450 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2400 5450 2450
Wire Wire Line
	5450 2400 5550 2400
Wire Wire Line
	5550 2400 5550 2450
Wire Wire Line
	5550 2400 5650 2400
Wire Wire Line
	5650 2400 5650 2450
Connection ~ 5550 2400
$Comp
L Nuttali-rescue:+3.3V-power #PWR?
U 1 1 6024970E
P 5750 2000
AR Path="/6024970E" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/6024970E" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 5750 1850 50  0001 C CNN
F 1 "+3.3V" H 5765 2173 50  0000 C CNN
F 2 "" H 5750 2000 50  0001 C CNN
F 3 "" H 5750 2000 50  0001 C CNN
	1    5750 2000
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 60249714
P 5200 2050
AR Path="/60249714" Ref="C?"  Part="1" 
AR Path="/6022F0F9/60249714" Ref="C5"  Part="1" 
F 0 "C5" V 5350 2050 50  0000 C CNN
F 1 "4.7uF" V 5450 2050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5238 1900 50  0001 C CNN
F 3 "~" H 5200 2050 50  0001 C CNN
	1    5200 2050
	0    1    1    0   
$EndComp
$Comp
L Nuttali-rescue:+3.3V-power #PWR?
U 1 1 60249751
P 5550 1100
AR Path="/60249751" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/60249751" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 5550 950 50  0001 C CNN
F 1 "+3.3V" H 5565 1273 50  0000 C CNN
F 2 "" H 5550 1100 50  0001 C CNN
F 3 "" H 5550 1100 50  0001 C CNN
	1    5550 1100
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:GND-power #PWR?
U 1 1 60249757
P 6350 2250
AR Path="/60249757" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/60249757" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 6350 2000 50  0001 C CNN
F 1 "GND" H 6355 2077 50  0000 C CNN
F 2 "" H 6350 2250 50  0001 C CNN
F 3 "" H 6350 2250 50  0001 C CNN
	1    6350 2250
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 6024975D
P 6200 2250
AR Path="/6024975D" Ref="C?"  Part="1" 
AR Path="/6022F0F9/6024975D" Ref="C9"  Part="1" 
F 0 "C9" V 6350 2250 50  0000 C CNN
F 1 "1uF" V 6450 2250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6238 2100 50  0001 C CNN
F 3 "~" H 6200 2250 50  0001 C CNN
	1    6200 2250
	0    1    1    0   
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 60249763
P 6200 2050
AR Path="/60249763" Ref="C?"  Part="1" 
AR Path="/6022F0F9/60249763" Ref="C8"  Part="1" 
F 0 "C8" V 5950 2050 50  0000 C CNN
F 1 "100nF" V 6050 2050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6238 1900 50  0001 C CNN
F 3 "~" H 6200 2050 50  0001 C CNN
	1    6200 2050
	0    1    1    0   
$EndComp
$Comp
L Nuttali-rescue:+3.3V-power #PWR?
U 1 1 60249772
P 5350 2000
AR Path="/60249772" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/60249772" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 5350 1850 50  0001 C CNN
F 1 "+3.3V" H 5365 2173 50  0000 C CNN
F 2 "" H 5350 2000 50  0001 C CNN
F 3 "" H 5350 2000 50  0001 C CNN
	1    5350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2050 5350 2000
Connection ~ 5350 2050
Wire Wire Line
	5350 2050 5350 2450
Connection ~ 6350 2250
Wire Wire Line
	6350 2050 6350 2250
Wire Wire Line
	5750 2000 5750 2050
Wire Wire Line
	6050 2050 6050 2250
Wire Wire Line
	5750 2050 6050 2050
Connection ~ 5750 2050
Wire Wire Line
	5750 2050 5750 2450
Connection ~ 6050 2050
Wire Wire Line
	5050 2050 5000 2050
$Comp
L Nuttali-rescue:GND-power #PWR?
U 1 1 60249784
P 4300 3400
AR Path="/60249784" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/60249784" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 4300 3150 50  0001 C CNN
F 1 "GND" H 4305 3227 50  0000 C CNN
F 2 "" H 4300 3400 50  0001 C CNN
F 3 "" H 4300 3400 50  0001 C CNN
	1    4300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2450 4800 2450
Wire Wire Line
	4800 2000 4800 2450
$Comp
L Nuttali-rescue:+3.3V-power #PWR?
U 1 1 6024978C
P 4800 2000
AR Path="/6024978C" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/6024978C" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 4800 1850 50  0001 C CNN
F 1 "+3.3V" H 4815 2173 50  0000 C CNN
F 2 "" H 4800 2000 50  0001 C CNN
F 3 "" H 4800 2000 50  0001 C CNN
	1    4800 2000
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 60249792
P 4300 3200
AR Path="/60249792" Ref="C?"  Part="1" 
AR Path="/6022F0F9/60249792" Ref="C4"  Part="1" 
F 0 "C4" H 4500 3150 50  0000 C CNN
F 1 "4.7uF" H 4550 3250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4338 3050 50  0001 C CNN
F 3 "~" H 4300 3200 50  0001 C CNN
	1    4300 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 3050 4300 3050
Wire Wire Line
	4300 3350 4300 3400
$Comp
L Nuttali-rescue:GND-power #PWR?
U 1 1 6024979A
P 5000 2050
AR Path="/6024979A" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/6024979A" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 5000 1800 50  0001 C CNN
F 1 "GND" H 5005 1877 50  0000 C CNN
F 2 "" H 5000 2050 50  0001 C CNN
F 3 "" H 5000 2050 50  0001 C CNN
	1    5000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5950 5350 5950
Wire Wire Line
	5850 5950 5850 6000
Connection ~ 5350 5950
Wire Wire Line
	5350 5950 5450 5950
Connection ~ 5450 5950
Wire Wire Line
	5450 5950 5550 5950
Connection ~ 5550 5950
Wire Wire Line
	5550 5950 5650 5950
Connection ~ 5650 5950
Wire Wire Line
	5650 5950 5850 5950
$Comp
L Nuttali-rescue:GND-power #PWR?
U 1 1 602497AA
P 5850 6000
AR Path="/602497AA" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/602497AA" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 5850 5750 50  0001 C CNN
F 1 "GND" H 5855 5827 50  0000 C CNN
F 2 "" H 5850 6000 50  0001 C CNN
F 3 "" H 5850 6000 50  0001 C CNN
	1    5850 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1100 5550 2400
Text Notes 2250 3900 0    50   ~ 0
2*(Cload-Cstray)*2^(18-6)= \n24pF = 22pF
$Comp
L Nuttali-rescue:Crystal-Device Y1
U 1 1 602B614B
P 4300 3950
F 0 "Y1" V 4200 3700 50  0000 L CNN
F 1 "16Mhz" V 4300 3550 50  0000 L CNN
F 2 "nya:Crystal_SMD_0603-2Pin_6.0x3.5mm_HandSoldering" H 4300 3950 50  0001 C CNN
F 3 "~" H 4300 3950 50  0001 C CNN
	1    4300 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 3750 4300 3750
Connection ~ 4300 3750
Wire Wire Line
	4300 3750 4750 3750
Wire Wire Line
	4750 3850 4550 3850
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 602BBD1B
P 3650 3750
AR Path="/602BBD1B" Ref="C?"  Part="1" 
AR Path="/6022F0F9/602BBD1B" Ref="C2"  Part="1" 
F 0 "C2" V 3400 3750 50  0000 C CNN
F 1 "22pF" V 3500 3750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3688 3600 50  0001 C CNN
F 3 "~" H 3650 3750 50  0001 C CNN
	1    3650 3750
	0    1    1    0   
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 602BEADA
P 3650 4150
AR Path="/602BEADA" Ref="C?"  Part="1" 
AR Path="/6022F0F9/602BEADA" Ref="C3"  Part="1" 
F 0 "C3" V 3800 4150 50  0000 C CNN
F 1 "22pF" V 3900 4150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3688 4000 50  0001 C CNN
F 3 "~" H 3650 4150 50  0001 C CNN
	1    3650 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 3750 3500 3900
Wire Wire Line
	3300 3900 3500 3900
Connection ~ 3500 3900
Wire Wire Line
	3500 3900 3500 4150
$Comp
L Nuttali-rescue:GND-power #PWR?
U 1 1 602C38B2
P 3300 3900
AR Path="/602C38B2" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/602C38B2" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 3300 3650 50  0001 C CNN
F 1 "GND" H 3305 3727 50  0000 C CNN
F 2 "" H 3300 3900 50  0001 C CNN
F 3 "" H 3300 3900 50  0001 C CNN
	1    3300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4150 4300 4150
Wire Wire Line
	4550 3850 4550 4150
Wire Wire Line
	4300 3750 4300 3800
Wire Wire Line
	4300 4100 4300 4150
Connection ~ 4300 4150
Wire Wire Line
	4300 4150 4550 4150
Wire Wire Line
	4650 2650 4750 2650
Wire Wire Line
	4650 2850 4750 2850
$Comp
L Nuttali-rescue:Conn_01x06_Male-Connector J1
U 1 1 602DCAE5
P 8450 4800
F 0 "J1" H 8422 4682 50  0000 R CNN
F 1 "SWD" H 8422 4773 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8450 4800 50  0001 C CNN
F 3 "~" H 8450 4800 50  0001 C CNN
	1    8450 4800
	-1   0    0    1   
$EndComp
$Comp
L Nuttali-rescue:SW_SPDT-Switch SW2
U 1 1 602EAC7D
P 3200 1450
F 0 "SW2" H 3200 1735 50  0000 C CNN
F 1 "RND 210-00662" H 3050 1650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3200 1450 50  0001 C CNN
F 3 "~" H 3200 1450 50  0001 C CNN
	1    3200 1450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3400 1450 3450 1450
Wire Wire Line
	3000 1350 3000 1200
Wire Wire Line
	3000 1550 3000 1700
$Comp
L Nuttali-rescue:R-Device R1
U 1 1 602EF78F
P 3000 1850
F 0 "R1" V 2900 1850 50  0000 C CNN
F 1 "10k" V 2800 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2930 1850 50  0001 C CNN
F 3 "~" H 3000 1850 50  0001 C CNN
	1    3000 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 2000 3000 2150
$Comp
L Nuttali-rescue:+3.3V-power #PWR?
U 1 1 602F24C3
P 3000 1200
AR Path="/602F24C3" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/602F24C3" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 3000 1050 50  0001 C CNN
F 1 "+3.3V" H 3015 1373 50  0000 C CNN
F 2 "" H 3000 1200 50  0001 C CNN
F 3 "" H 3000 1200 50  0001 C CNN
	1    3000 1200
	-1   0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:GND-power #PWR?
U 1 1 602F3F80
P 3000 2150
AR Path="/602F3F80" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/602F3F80" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 3000 1900 50  0001 C CNN
F 1 "GND" H 3005 1977 50  0000 C CNN
F 2 "" H 3000 2150 50  0001 C CNN
F 3 "" H 3000 2150 50  0001 C CNN
	1    3000 2150
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 60301014
P 3350 3050
AR Path="/60301014" Ref="C?"  Part="1" 
AR Path="/6022F0F9/60301014" Ref="C1"  Part="1" 
F 0 "C1" H 3550 3100 50  0000 C CNN
F 1 "100nF" H 3550 3000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3388 2900 50  0001 C CNN
F 3 "~" H 3350 3050 50  0001 C CNN
	1    3350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2750 3350 2750
$Comp
L Nuttali-rescue:GND-power #PWR?
U 1 1 60310565
P 2950 3200
AR Path="/60310565" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/60310565" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 2950 2950 50  0001 C CNN
F 1 "GND" H 2955 3027 50  0000 C CNN
F 2 "" H 2950 3200 50  0001 C CNN
F 3 "" H 2950 3200 50  0001 C CNN
	1    2950 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3200 2950 3200
Connection ~ 2950 3200
Wire Wire Line
	3350 2750 3350 2850
Wire Wire Line
	2950 2850 2950 3200
Connection ~ 5550 1100
Connection ~ 6850 1400
Wire Wire Line
	6850 1400 6950 1400
Connection ~ 6450 1100
Connection ~ 6250 1100
Wire Wire Line
	6250 1100 6450 1100
Connection ~ 6650 1100
Wire Wire Line
	6650 1100 6450 1100
Wire Wire Line
	6850 1100 6650 1100
Connection ~ 6650 1400
Wire Wire Line
	6650 1400 6850 1400
Connection ~ 6450 1400
Wire Wire Line
	6450 1400 6650 1400
Connection ~ 6250 1400
Wire Wire Line
	6250 1400 6450 1400
Wire Wire Line
	5550 1100 5850 1100
$Comp
L Nuttali-rescue:GND-power #PWR?
U 1 1 6024974B
P 6950 1400
AR Path="/6024974B" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/6024974B" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 6950 1150 50  0001 C CNN
F 1 "GND" H 6955 1227 50  0000 C CNN
F 2 "" H 6950 1400 50  0001 C CNN
F 3 "" H 6950 1400 50  0001 C CNN
	1    6950 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1400 5850 1400
Connection ~ 6050 1400
Wire Wire Line
	6250 1400 6050 1400
Wire Wire Line
	6050 1100 5850 1100
Connection ~ 6050 1100
Connection ~ 5850 1100
Wire Wire Line
	6250 1100 6050 1100
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 60249738
P 5850 1250
AR Path="/60249738" Ref="C?"  Part="1" 
AR Path="/6022F0F9/60249738" Ref="C6"  Part="1" 
F 0 "C6" H 5850 1500 50  0000 C CNN
F 1 "100nF" H 5850 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5888 1100 50  0001 C CNN
F 3 "~" H 5850 1250 50  0001 C CNN
	1    5850 1250
	-1   0    0    1   
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 60249732
P 6050 1250
AR Path="/60249732" Ref="C?"  Part="1" 
AR Path="/6022F0F9/60249732" Ref="C7"  Part="1" 
F 0 "C7" H 6050 900 50  0000 C CNN
F 1 "100nF" H 6050 1000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6088 1100 50  0001 C CNN
F 3 "~" H 6050 1250 50  0001 C CNN
	1    6050 1250
	-1   0    0    1   
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 6024972C
P 6250 1250
AR Path="/6024972C" Ref="C?"  Part="1" 
AR Path="/6022F0F9/6024972C" Ref="C10"  Part="1" 
F 0 "C10" H 6250 1500 50  0000 C CNN
F 1 "100nF" H 6250 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6288 1100 50  0001 C CNN
F 3 "~" H 6250 1250 50  0001 C CNN
	1    6250 1250
	-1   0    0    1   
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 60249726
P 6450 1250
AR Path="/60249726" Ref="C?"  Part="1" 
AR Path="/6022F0F9/60249726" Ref="C11"  Part="1" 
F 0 "C11" H 6450 1600 50  0000 C CNN
F 1 "100nF" H 6450 1500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6488 1100 50  0001 C CNN
F 3 "~" H 6450 1250 50  0001 C CNN
	1    6450 1250
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 60249720
P 6650 1250
AR Path="/60249720" Ref="C?"  Part="1" 
AR Path="/6022F0F9/60249720" Ref="C12"  Part="1" 
F 0 "C12" H 6650 1000 50  0000 C CNN
F 1 "100nF" H 6650 900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6688 1100 50  0001 C CNN
F 3 "~" H 6650 1250 50  0001 C CNN
	1    6650 1250
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 6024971A
P 6850 1250
AR Path="/6024971A" Ref="C?"  Part="1" 
AR Path="/6022F0F9/6024971A" Ref="C13"  Part="1" 
F 0 "C13" H 6850 1600 50  0000 C CNN
F 1 "100nF" H 6850 1500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6888 1100 50  0001 C CNN
F 3 "~" H 6850 1250 50  0001 C CNN
	1    6850 1250
	1    0    0    -1  
$EndComp
Text GLabel 4700 4250 0    50   Input ~ 0
NRESET
Wire Wire Line
	4700 4250 4750 4250
Wire Wire Line
	4750 4450 4700 4450
Wire Wire Line
	4750 4550 4700 4550
Text GLabel 4700 4450 0    50   Input ~ 0
MISO
Text GLabel 4700 4550 0    50   Output ~ 0
MOSI
Text GLabel 6200 2650 2    50   Input ~ 0
MOTION
Wire Wire Line
	6200 2650 6150 2650
Text GLabel 6200 3750 2    50   BiDi ~ 0
D-
Text GLabel 6200 3850 2    50   BiDi ~ 0
D+
Text GLabel 6200 5350 2    50   Output ~ 0
SCK
Text GLabel 6200 5450 2    50   Output ~ 0
NCS
Wire Wire Line
	6200 5350 6150 5350
Wire Wire Line
	6200 5450 6150 5450
Wire Wire Line
	6200 4650 6150 4650
Wire Wire Line
	6200 4050 6150 4050
Wire Wire Line
	6200 3950 6150 3950
Wire Wire Line
	6200 3850 6150 3850
Wire Wire Line
	6200 3750 6150 3750
Wire Wire Line
	8250 4500 8000 4500
Wire Wire Line
	8000 4500 8000 4450
$Comp
L Nuttali-rescue:+3.3V-power #PWR0114
U 1 1 601F634D
P 8000 4450
F 0 "#PWR0114" H 8000 4300 50  0001 C CNN
F 1 "+3.3V" H 8015 4623 50  0000 C CNN
F 2 "" H 8000 4450 50  0001 C CNN
F 3 "" H 8000 4450 50  0001 C CNN
	1    8000 4450
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:GND-power #PWR0115
U 1 1 601F695B
P 7500 4750
F 0 "#PWR0115" H 7500 4500 50  0001 C CNN
F 1 "GND" H 7505 4577 50  0000 C CNN
F 2 "" H 7500 4750 50  0001 C CNN
F 3 "" H 7500 4750 50  0001 C CNN
	1    7500 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4700 8250 4700
Wire Wire Line
	7500 4750 7500 4700
Wire Wire Line
	8200 5000 8250 5000
Wire Wire Line
	8250 4900 8200 4900
Wire Wire Line
	8200 4600 8250 4600
Wire Wire Line
	8200 4800 8250 4800
NoConn ~ 6150 4150
NoConn ~ 6150 4450
NoConn ~ 6150 4550
NoConn ~ 6150 4750
NoConn ~ 6150 4850
NoConn ~ 6150 4950
NoConn ~ 6150 5050
NoConn ~ 6150 5150
NoConn ~ 6150 5250
NoConn ~ 6150 5550
NoConn ~ 4750 5750
NoConn ~ 4750 5650
NoConn ~ 4750 5550
NoConn ~ 4750 5450
NoConn ~ 4750 5350
NoConn ~ 4750 5250
NoConn ~ 4750 5150
NoConn ~ 4750 5050
NoConn ~ 4750 4950
NoConn ~ 4750 4850
NoConn ~ 4750 4350
$Comp
L Nuttali-rescue:SW_DPST_x2-Switch SW1
U 1 1 60245B0E
P 3150 2850
F 0 "SW1" H 3150 3085 50  0000 C CNN
F 1 "SW_DPST_x2" H 3150 2994 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P" H 3150 2850 50  0001 C CNN
F 3 "~" H 3150 2850 50  0001 C CNN
	1    3150 2850
	1    0    0    -1  
$EndComp
Connection ~ 3350 2850
Wire Wire Line
	3350 2850 3350 2900
$Comp
L Nuttali-rescue:TestPoint-Connector TP9
U 1 1 60242CC3
P 6650 5950
F 0 "TP9" H 6708 6068 50  0000 L CNN
F 1 "TestPoint" H 6708 5977 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6850 5950 50  0001 C CNN
F 3 "~" H 6850 5950 50  0001 C CNN
	1    6650 5950
	1    0    0    -1  
$EndComp
Connection ~ 5850 5950
$Comp
L Nuttali-rescue:TestPoint-Connector TP7
U 1 1 6024AE5A
P 2750 5450
F 0 "TP7" H 2808 5568 50  0000 L CNN
F 1 "TestPoint" H 2808 5477 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 2950 5450 50  0001 C CNN
F 3 "~" H 2950 5450 50  0001 C CNN
	1    2750 5450
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:TestPoint-Connector TP8
U 1 1 6024B3CD
P 3250 5450
F 0 "TP8" H 3308 5568 50  0000 L CNN
F 1 "TestPoint" H 3308 5477 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 3450 5450 50  0001 C CNN
F 3 "~" H 3450 5450 50  0001 C CNN
	1    3250 5450
	1    0    0    -1  
$EndComp
Text GLabel 2750 5450 3    50   Input ~ 0
D-
Text GLabel 3250 5450 3    50   Input ~ 0
D+
Text GLabel 8200 4600 0    50   Output ~ 0
SWCLK
Text GLabel 8200 4800 0    50   BiDi ~ 0
SWDIO
Text GLabel 8200 4900 0    50   Output ~ 0
NRST
Text GLabel 8200 5000 0    50   Input ~ 0
SWO
Text GLabel 6200 3950 2    50   BiDi ~ 0
SWDIO
Text GLabel 6200 4050 2    50   Input ~ 0
SWCLK
Text GLabel 6200 4650 2    50   Output ~ 0
SWO
Text GLabel 3450 2750 2    50   Output ~ 0
NRST
Text GLabel 3450 1450 2    50   Output ~ 0
BOOT0
Text GLabel 4650 2650 0    50   Input ~ 0
NRST
Text GLabel 4650 2850 0    50   Input ~ 0
BOOT0
Text GLabel 6150 2950 2    50   Input ~ 0
R_LED
Text GLabel 6150 2850 2    50   Input ~ 0
G_LED
NoConn ~ 4750 4050
Text GLabel 6150 4350 2    50   Input ~ 0
Turbo_LED
Text GLabel 4750 4650 0    50   Input ~ 0
WheelB
Text GLabel 6150 3250 2    50   Output ~ 0
WheelButton
Text GLabel 6150 5750 2    50   Output ~ 0
SideBack
Text GLabel 6150 5650 2    50   Output ~ 0
SideFront
Text GLabel 4750 4750 0    50   Output ~ 0
LeftB
NoConn ~ 6150 3450
NoConn ~ 6150 3550
NoConn ~ 6150 3650
Wire Wire Line
	5850 5950 6650 5950
Text GLabel 6150 3050 2    50   Output ~ 0
Turbo
Text GLabel 6150 2750 2    50   Input ~ 0
B_LED
Text GLabel 6150 3150 2    50   Output ~ 0
RightB
Text GLabel 6150 3350 2    50   Input ~ 0
WheelA
Text GLabel 7600 3000 0    50   Output ~ 0
G_LED
Text GLabel 7600 3200 0    50   Output ~ 0
B_LED
Text GLabel 7600 2800 0    50   Output ~ 0
R_LED
$Comp
L Nuttali-rescue:R_Small-Device R16
U 1 1 6032557E
P 7700 2800
F 0 "R16" V 7600 2800 50  0000 C CNN
F 1 "220" V 7600 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7700 2800 50  0001 C CNN
F 3 "~" H 7700 2800 50  0001 C CNN
	1    7700 2800
	0    1    1    0   
$EndComp
$Comp
L Nuttali-rescue:R_Small-Device R17
U 1 1 60326D05
P 7700 3000
F 0 "R17" V 7600 3000 50  0000 C CNN
F 1 "220" V 7600 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7700 3000 50  0001 C CNN
F 3 "~" H 7700 3000 50  0001 C CNN
	1    7700 3000
	0    1    1    0   
$EndComp
$Comp
L Nuttali-rescue:R_Small-Device R18
U 1 1 60327306
P 7700 3200
F 0 "R18" V 7600 3200 50  0000 C CNN
F 1 "220" V 7600 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7700 3200 50  0001 C CNN
F 3 "~" H 7700 3200 50  0001 C CNN
	1    7700 3200
	0    1    1    0   
$EndComp
$Comp
L Nuttali-rescue:GND-power #PWR?
U 1 1 6032E117
P 8100 3300
AR Path="/6032E117" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/6032E117" Ref="#PWR0154"  Part="1" 
F 0 "#PWR0154" H 8100 3050 50  0001 C CNN
F 1 "GND" H 8105 3127 50  0000 C CNN
F 2 "" H 8100 3300 50  0001 C CNN
F 3 "" H 8100 3300 50  0001 C CNN
	1    8100 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 6030C505
P 8350 3200
F 0 "J5" H 8322 3082 50  0000 R CNN
F 1 "Conn_01x04_Male" H 8322 3173 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 8350 3200 50  0001 C CNN
F 3 "~" H 8350 3200 50  0001 C CNN
	1    8350 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 3200 8150 3200
Wire Wire Line
	8150 3100 7950 3100
Wire Wire Line
	8000 3000 8150 3000
Wire Wire Line
	8100 3300 8150 3300
Wire Wire Line
	8000 2800 8000 3000
Wire Wire Line
	7800 2800 8000 2800
Wire Wire Line
	7800 3000 7950 3000
Wire Wire Line
	7950 3000 7950 3100
$EndSCHEMATC
