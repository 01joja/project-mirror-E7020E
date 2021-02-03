EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L MCU_ST_STM32F4:STM32F411RETx U?
U 1 1 60249702
P 5450 4150
AR Path="/60249702" Ref="U?"  Part="1" 
AR Path="/6022F0F9/60249702" Ref="U?"  Part="1" 
F 0 "U?" H 5450 2261 50  0000 C CNN
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
L power:+3.3V #PWR?
U 1 1 6024970E
P 5750 2000
AR Path="/6024970E" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/6024970E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5750 1850 50  0001 C CNN
F 1 "+3.3V" H 5765 2173 50  0000 C CNN
F 2 "" H 5750 2000 50  0001 C CNN
F 3 "" H 5750 2000 50  0001 C CNN
	1    5750 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60249714
P 5200 2050
AR Path="/60249714" Ref="C?"  Part="1" 
AR Path="/6022F0F9/60249714" Ref="C?"  Part="1" 
F 0 "C?" V 5350 2050 50  0000 C CNN
F 1 "4.7uF" V 5450 2050 50  0000 C CNN
F 2 "" H 5238 1900 50  0001 C CNN
F 3 "~" H 5200 2050 50  0001 C CNN
	1    5200 2050
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60249751
P 5550 1100
AR Path="/60249751" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/60249751" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5550 950 50  0001 C CNN
F 1 "+3.3V" H 5565 1273 50  0000 C CNN
F 2 "" H 5550 1100 50  0001 C CNN
F 3 "" H 5550 1100 50  0001 C CNN
	1    5550 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60249757
P 6350 2250
AR Path="/60249757" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/60249757" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6350 2000 50  0001 C CNN
F 1 "GND" H 6355 2077 50  0000 C CNN
F 2 "" H 6350 2250 50  0001 C CNN
F 3 "" H 6350 2250 50  0001 C CNN
	1    6350 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6024975D
P 6200 2250
AR Path="/6024975D" Ref="C?"  Part="1" 
AR Path="/6022F0F9/6024975D" Ref="C?"  Part="1" 
F 0 "C?" V 6350 2250 50  0000 C CNN
F 1 "1uF" V 6450 2250 50  0000 C CNN
F 2 "" H 6238 2100 50  0001 C CNN
F 3 "~" H 6200 2250 50  0001 C CNN
	1    6200 2250
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 60249763
P 6200 2050
AR Path="/60249763" Ref="C?"  Part="1" 
AR Path="/6022F0F9/60249763" Ref="C?"  Part="1" 
F 0 "C?" V 5950 2050 50  0000 C CNN
F 1 "100nF" V 6050 2050 50  0000 C CNN
F 2 "" H 6238 1900 50  0001 C CNN
F 3 "~" H 6200 2050 50  0001 C CNN
	1    6200 2050
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60249772
P 5350 2000
AR Path="/60249772" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/60249772" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5350 1850 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 60249784
P 4300 3400
AR Path="/60249784" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/60249784" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4300 3150 50  0001 C CNN
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
L power:+3.3V #PWR?
U 1 1 6024978C
P 4800 2000
AR Path="/6024978C" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/6024978C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4800 1850 50  0001 C CNN
F 1 "+3.3V" H 4815 2173 50  0000 C CNN
F 2 "" H 4800 2000 50  0001 C CNN
F 3 "" H 4800 2000 50  0001 C CNN
	1    4800 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60249792
P 4300 3200
AR Path="/60249792" Ref="C?"  Part="1" 
AR Path="/6022F0F9/60249792" Ref="C?"  Part="1" 
F 0 "C?" H 4500 3150 50  0000 C CNN
F 1 "4.7uF" H 4550 3250 50  0000 C CNN
F 2 "" H 4338 3050 50  0001 C CNN
F 3 "~" H 4300 3200 50  0001 C CNN
	1    4300 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 3050 4300 3050
Wire Wire Line
	4300 3350 4300 3400
$Comp
L power:GND #PWR?
U 1 1 6024979A
P 5000 2050
AR Path="/6024979A" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/6024979A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5000 1800 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 602497AA
P 5850 6000
AR Path="/602497AA" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/602497AA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5850 5750 50  0001 C CNN
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
L Device:Crystal Y?
U 1 1 602B614B
P 4300 3950
F 0 "Y?" V 4200 3700 50  0000 L CNN
F 1 "16Mhz" V 4300 3550 50  0000 L CNN
F 2 "" H 4300 3950 50  0001 C CNN
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
L Device:C C?
U 1 1 602BBD1B
P 3650 3750
AR Path="/602BBD1B" Ref="C?"  Part="1" 
AR Path="/6022F0F9/602BBD1B" Ref="C?"  Part="1" 
F 0 "C?" V 3400 3750 50  0000 C CNN
F 1 "22uF" V 3500 3750 50  0000 C CNN
F 2 "" H 3688 3600 50  0001 C CNN
F 3 "~" H 3650 3750 50  0001 C CNN
	1    3650 3750
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 602BEADA
P 3650 4150
AR Path="/602BEADA" Ref="C?"  Part="1" 
AR Path="/6022F0F9/602BEADA" Ref="C?"  Part="1" 
F 0 "C?" V 3800 4150 50  0000 C CNN
F 1 "22uF" V 3900 4150 50  0000 C CNN
F 2 "" H 3688 4000 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 602C38B2
P 3300 3900
AR Path="/602C38B2" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/602C38B2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3300 3650 50  0001 C CNN
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
Text HLabel 4650 2650 0    50   Input ~ 0
NRST
Wire Wire Line
	4650 2850 4750 2850
Text HLabel 4650 2850 0    50   Input ~ 0
BOOT0
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 602DCAE5
P 9350 4600
F 0 "J?" H 9322 4482 50  0000 R CNN
F 1 "SWD" H 9322 4573 50  0000 R CNN
F 2 "" H 9350 4600 50  0001 C CNN
F 3 "~" H 9350 4600 50  0001 C CNN
	1    9350 4600
	-1   0    0    1   
$EndComp
Text HLabel 3450 1450 2    50   Output ~ 0
BOOT0
$Comp
L Switch:SW_SPDT SW?
U 1 1 602EAC7D
P 3200 1450
F 0 "SW?" H 3200 1735 50  0000 C CNN
F 1 "SW_SPDT" H 3200 1644 50  0000 C CNN
F 2 "" H 3200 1450 50  0001 C CNN
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
L Device:R R?
U 1 1 602EF78F
P 3000 1850
F 0 "R?" V 2900 1850 50  0000 C CNN
F 1 "10k" V 2800 1850 50  0000 C CNN
F 2 "" V 2930 1850 50  0001 C CNN
F 3 "~" H 3000 1850 50  0001 C CNN
	1    3000 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 2000 3000 2150
$Comp
L power:+3.3V #PWR?
U 1 1 602F24C3
P 3000 1200
AR Path="/602F24C3" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/602F24C3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 1050 50  0001 C CNN
F 1 "+3.3V" H 3015 1373 50  0000 C CNN
F 2 "" H 3000 1200 50  0001 C CNN
F 3 "" H 3000 1200 50  0001 C CNN
	1    3000 1200
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 602F3F80
P 3000 2150
AR Path="/602F3F80" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/602F3F80" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 1900 50  0001 C CNN
F 1 "GND" H 3005 1977 50  0000 C CNN
F 2 "" H 3000 2150 50  0001 C CNN
F 3 "" H 3000 2150 50  0001 C CNN
	1    3000 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60301014
P 3350 3050
AR Path="/60301014" Ref="C?"  Part="1" 
AR Path="/6022F0F9/60301014" Ref="C?"  Part="1" 
F 0 "C?" H 3550 3100 50  0000 C CNN
F 1 "100nF" H 3550 3000 50  0000 C CNN
F 2 "" H 3388 2900 50  0001 C CNN
F 3 "~" H 3350 3050 50  0001 C CNN
	1    3350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2750 3350 2750
$Comp
L power:GND #PWR?
U 1 1 60310565
P 2950 3200
AR Path="/60310565" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/60310565" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2950 2950 50  0001 C CNN
F 1 "GND" H 2955 3027 50  0000 C CNN
F 2 "" H 2950 3200 50  0001 C CNN
F 3 "" H 2950 3200 50  0001 C CNN
	1    2950 3200
	1    0    0    -1  
$EndComp
Text HLabel 3450 2750 2    50   Output ~ 0
NRST
Wire Wire Line
	3350 3200 2950 3200
Connection ~ 2950 3200
$Comp
L Switch:SW_SPDT SW?
U 1 1 60364EB9
P 3150 2750
F 0 "SW?" H 3150 3035 50  0000 C CNN
F 1 "SW_SPDT" H 3150 2944 50  0000 C CNN
F 2 "" H 3150 2750 50  0001 C CNN
F 3 "~" H 3150 2750 50  0001 C CNN
	1    3150 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3350 2750 3350 2900
Wire Wire Line
	2950 2850 2950 3200
Connection ~ 3350 2750
NoConn ~ 2950 2650
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
L power:GND #PWR?
U 1 1 6024974B
P 6950 1400
AR Path="/6024974B" Ref="#PWR?"  Part="1" 
AR Path="/6022F0F9/6024974B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6950 1150 50  0001 C CNN
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
L Device:C C?
U 1 1 60249738
P 5850 1250
AR Path="/60249738" Ref="C?"  Part="1" 
AR Path="/6022F0F9/60249738" Ref="C?"  Part="1" 
F 0 "C?" H 5850 1500 50  0000 C CNN
F 1 "100nF" H 5850 1600 50  0000 C CNN
F 2 "" H 5888 1100 50  0001 C CNN
F 3 "~" H 5850 1250 50  0001 C CNN
	1    5850 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 60249732
P 6050 1250
AR Path="/60249732" Ref="C?"  Part="1" 
AR Path="/6022F0F9/60249732" Ref="C?"  Part="1" 
F 0 "C?" H 6050 900 50  0000 C CNN
F 1 "100nF" H 6050 1000 50  0000 C CNN
F 2 "" H 6088 1100 50  0001 C CNN
F 3 "~" H 6050 1250 50  0001 C CNN
	1    6050 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 6024972C
P 6250 1250
AR Path="/6024972C" Ref="C?"  Part="1" 
AR Path="/6022F0F9/6024972C" Ref="C?"  Part="1" 
F 0 "C?" H 6250 1500 50  0000 C CNN
F 1 "100nF" H 6250 1600 50  0000 C CNN
F 2 "" H 6288 1100 50  0001 C CNN
F 3 "~" H 6250 1250 50  0001 C CNN
	1    6250 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 60249726
P 6450 1250
AR Path="/60249726" Ref="C?"  Part="1" 
AR Path="/6022F0F9/60249726" Ref="C?"  Part="1" 
F 0 "C?" H 6450 1600 50  0000 C CNN
F 1 "100nF" H 6450 1500 50  0000 C CNN
F 2 "" H 6488 1100 50  0001 C CNN
F 3 "~" H 6450 1250 50  0001 C CNN
	1    6450 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60249720
P 6650 1250
AR Path="/60249720" Ref="C?"  Part="1" 
AR Path="/6022F0F9/60249720" Ref="C?"  Part="1" 
F 0 "C?" H 6650 1000 50  0000 C CNN
F 1 "100nF" H 6650 900 50  0000 C CNN
F 2 "" H 6688 1100 50  0001 C CNN
F 3 "~" H 6650 1250 50  0001 C CNN
	1    6650 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6024971A
P 6850 1250
AR Path="/6024971A" Ref="C?"  Part="1" 
AR Path="/6022F0F9/6024971A" Ref="C?"  Part="1" 
F 0 "C?" H 6850 1600 50  0000 C CNN
F 1 "100nF" H 6850 1500 50  0000 C CNN
F 2 "" H 6888 1100 50  0001 C CNN
F 3 "~" H 6850 1250 50  0001 C CNN
	1    6850 1250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
