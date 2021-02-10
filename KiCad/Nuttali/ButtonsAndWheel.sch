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
L Nuttali-rescue:SW_MEC_5G-Switch SW?
U 1 1 6022E46F
P 1350 1350
AR Path="/6022E46F" Ref="SW?"  Part="1" 
AR Path="/6022DC9B/6022E46F" Ref="SW3"  Part="1" 
F 0 "SW3" H 1350 1635 50  0000 C CNN
F 1 "SW_MEC_5G" H 1350 1544 50  0000 C CNN
F 2 "" H 1350 1550 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 1350 1550 50  0001 C CNN
	1    1350 1350
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:+3.3V-power #PWR?
U 1 1 6023138D
P 1800 800
AR Path="/6023138D" Ref="#PWR?"  Part="1" 
AR Path="/6022DC9B/6023138D" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 1800 650 50  0001 C CNN
F 1 "+3.3V" H 1815 973 50  0000 C CNN
F 2 "" H 1800 800 50  0001 C CNN
F 3 "" H 1800 800 50  0001 C CNN
	1    1800 800 
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R?
U 1 1 602321F1
P 1800 1050
AR Path="/602321F1" Ref="R?"  Part="1" 
AR Path="/6022DC9B/602321F1" Ref="R7"  Part="1" 
F 0 "R7" H 1870 1096 50  0000 L CNN
F 1 "10k" H 1870 1005 50  0000 L CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.20x4.05mm_HandSolder" V 1730 1050 50  0001 C CNN
F 3 "~" H 1800 1050 50  0001 C CNN
	1    1800 1050
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 60232EB4
P 1800 1600
AR Path="/60232EB4" Ref="C?"  Part="1" 
AR Path="/6022DC9B/60232EB4" Ref="C27"  Part="1" 
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
L Nuttali-rescue:GND-power #PWR?
U 1 1 602361A1
P 1150 1450
AR Path="/602361A1" Ref="#PWR?"  Part="1" 
AR Path="/6022DC9B/602361A1" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 1150 1200 50  0001 C CNN
F 1 "GND" H 1155 1277 50  0000 C CNN
F 2 "" H 1150 1450 50  0001 C CNN
F 3 "" H 1150 1450 50  0001 C CNN
	1    1150 1450
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:GND-power #PWR?
U 1 1 602374C1
P 1800 1850
AR Path="/602374C1" Ref="#PWR?"  Part="1" 
AR Path="/6022DC9B/602374C1" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 1800 1600 50  0001 C CNN
F 1 "GND" H 1805 1677 50  0000 C CNN
F 2 "" H 1800 1850 50  0001 C CNN
F 3 "" H 1800 1850 50  0001 C CNN
	1    1800 1850
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:SW_MEC_5G-Switch SW?
U 1 1 602440AC
P 1350 3050
AR Path="/602440AC" Ref="SW?"  Part="1" 
AR Path="/6022DC9B/602440AC" Ref="SW4"  Part="1" 
F 0 "SW4" H 1350 3335 50  0000 C CNN
F 1 "SW_MEC_5G" H 1350 3244 50  0000 C CNN
F 2 "" H 1350 3250 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 1350 3250 50  0001 C CNN
	1    1350 3050
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:+3.3V-power #PWR?
U 1 1 602440B2
P 1800 2500
AR Path="/602440B2" Ref="#PWR?"  Part="1" 
AR Path="/6022DC9B/602440B2" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 1800 2350 50  0001 C CNN
F 1 "+3.3V" H 1815 2673 50  0000 C CNN
F 2 "" H 1800 2500 50  0001 C CNN
F 3 "" H 1800 2500 50  0001 C CNN
	1    1800 2500
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R?
U 1 1 602440B8
P 1800 2750
AR Path="/602440B8" Ref="R?"  Part="1" 
AR Path="/6022DC9B/602440B8" Ref="R8"  Part="1" 
F 0 "R8" H 1870 2796 50  0000 L CNN
F 1 "10k" H 1870 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.20x4.05mm_HandSolder" V 1730 2750 50  0001 C CNN
F 3 "~" H 1800 2750 50  0001 C CNN
	1    1800 2750
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 602440BE
P 1800 3300
AR Path="/602440BE" Ref="C?"  Part="1" 
AR Path="/6022DC9B/602440BE" Ref="C28"  Part="1" 
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
L Nuttali-rescue:GND-power #PWR?
U 1 1 602440CC
P 1150 3150
AR Path="/602440CC" Ref="#PWR?"  Part="1" 
AR Path="/6022DC9B/602440CC" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 1150 2900 50  0001 C CNN
F 1 "GND" H 1155 2977 50  0000 C CNN
F 2 "" H 1150 3150 50  0001 C CNN
F 3 "" H 1150 3150 50  0001 C CNN
	1    1150 3150
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:GND-power #PWR?
U 1 1 602440D2
P 1800 3550
AR Path="/602440D2" Ref="#PWR?"  Part="1" 
AR Path="/6022DC9B/602440D2" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 1800 3300 50  0001 C CNN
F 1 "GND" H 1805 3377 50  0000 C CNN
F 2 "" H 1800 3550 50  0001 C CNN
F 3 "" H 1800 3550 50  0001 C CNN
	1    1800 3550
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:SW_MEC_5G-Switch SW?
U 1 1 602454EE
P 1600 5150
AR Path="/602454EE" Ref="SW?"  Part="1" 
AR Path="/6022DC9B/602454EE" Ref="SW5"  Part="1" 
F 0 "SW5" H 1600 5435 50  0000 C CNN
F 1 "SW_MEC_5G" H 1600 5344 50  0000 C CNN
F 2 "" H 1600 5350 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 1600 5350 50  0001 C CNN
	1    1600 5150
	-1   0    0    1   
$EndComp
$Comp
L Nuttali-rescue:+3.3V-power #PWR?
U 1 1 602454F4
P 1300 5150
AR Path="/602454F4" Ref="#PWR?"  Part="1" 
AR Path="/6022DC9B/602454F4" Ref="#PWR0146"  Part="1" 
F 0 "#PWR0146" H 1300 5000 50  0001 C CNN
F 1 "+3.3V" H 1315 5323 50  0000 C CNN
F 2 "" H 1300 5150 50  0001 C CNN
F 3 "" H 1300 5150 50  0001 C CNN
	1    1300 5150
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R?
U 1 1 602454FA
P 2000 5150
AR Path="/602454FA" Ref="R?"  Part="1" 
AR Path="/6022DC9B/602454FA" Ref="R9"  Part="1" 
F 0 "R9" H 2070 5196 50  0000 L CNN
F 1 "10k" H 2070 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.20x4.05mm_HandSolder" V 1930 5150 50  0001 C CNN
F 3 "~" H 2000 5150 50  0001 C CNN
	1    2000 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 5150 1400 5150
Wire Wire Line
	1800 5150 1850 5150
Wire Wire Line
	2150 5150 2250 5150
$Comp
L Nuttali-rescue:SW_MEC_5G-Switch SW?
U 1 1 60278217
P 1600 5850
AR Path="/60278217" Ref="SW?"  Part="1" 
AR Path="/6022DC9B/60278217" Ref="SW6"  Part="1" 
F 0 "SW6" H 1600 6135 50  0000 C CNN
F 1 "SW_MEC_5G" H 1600 6044 50  0000 C CNN
F 2 "" H 1600 6050 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 1600 6050 50  0001 C CNN
	1    1600 5850
	-1   0    0    1   
$EndComp
$Comp
L Nuttali-rescue:+3.3V-power #PWR?
U 1 1 6027821D
P 1300 5850
AR Path="/6027821D" Ref="#PWR?"  Part="1" 
AR Path="/6022DC9B/6027821D" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 1300 5700 50  0001 C CNN
F 1 "+3.3V" H 1315 6023 50  0000 C CNN
F 2 "" H 1300 5850 50  0001 C CNN
F 3 "" H 1300 5850 50  0001 C CNN
	1    1300 5850
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R?
U 1 1 60278223
P 2000 5850
AR Path="/60278223" Ref="R?"  Part="1" 
AR Path="/6022DC9B/60278223" Ref="R10"  Part="1" 
F 0 "R10" H 2070 5896 50  0000 L CNN
F 1 "10k" H 2070 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.20x4.05mm_HandSolder" V 1930 5850 50  0001 C CNN
F 3 "~" H 2000 5850 50  0001 C CNN
	1    2000 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 5850 1400 5850
Wire Wire Line
	1800 5850 1850 5850
Wire Wire Line
	2150 5850 2250 5850
Text GLabel 2250 5150 2    50   Output ~ 0
SideFront
Text GLabel 2250 5850 2    50   Output ~ 0
SideBack
$Comp
L Nuttali-rescue:SW_MEC_5G-Switch SW?
U 1 1 602BC224
P 4700 2450
AR Path="/602BC224" Ref="SW?"  Part="1" 
AR Path="/6022DC9B/602BC224" Ref="SW7"  Part="1" 
F 0 "SW7" H 4700 2735 50  0000 C CNN
F 1 "SW_MEC_5G" H 4700 2644 50  0000 C CNN
F 2 "" H 4700 2650 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 4700 2650 50  0001 C CNN
	1    4700 2450
	-1   0    0    1   
$EndComp
$Comp
L Nuttali-rescue:+3.3V-power #PWR?
U 1 1 602BC22A
P 4400 2450
AR Path="/602BC22A" Ref="#PWR?"  Part="1" 
AR Path="/6022DC9B/602BC22A" Ref="#PWR0148"  Part="1" 
F 0 "#PWR0148" H 4400 2300 50  0001 C CNN
F 1 "+3.3V" H 4415 2623 50  0000 C CNN
F 2 "" H 4400 2450 50  0001 C CNN
F 3 "" H 4400 2450 50  0001 C CNN
	1    4400 2450
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R?
U 1 1 602BC230
P 5100 2450
AR Path="/602BC230" Ref="R?"  Part="1" 
AR Path="/6022DC9B/602BC230" Ref="R13"  Part="1" 
F 0 "R13" H 5170 2496 50  0000 L CNN
F 1 "10k" H 5170 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.20x4.05mm_HandSolder" V 5030 2450 50  0001 C CNN
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
L Nuttali-rescue:SW_MEC_5G-Switch SW?
U 1 1 602BD719
P 7850 3800
AR Path="/602BD719" Ref="SW?"  Part="1" 
AR Path="/6022DC9B/602BD719" Ref="SW9"  Part="1" 
F 0 "SW9" H 7850 4085 50  0000 C CNN
F 1 "SW_MEC_5G" H 7850 3994 50  0000 C CNN
F 2 "" H 7850 4000 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 7850 4000 50  0001 C CNN
	1    7850 3800
	-1   0    0    1   
$EndComp
$Comp
L Nuttali-rescue:+3.3V-power #PWR?
U 1 1 602BD71F
P 7550 3800
AR Path="/602BD71F" Ref="#PWR?"  Part="1" 
AR Path="/6022DC9B/602BD71F" Ref="#PWR0149"  Part="1" 
F 0 "#PWR0149" H 7550 3650 50  0001 C CNN
F 1 "+3.3V" H 7565 3973 50  0000 C CNN
F 2 "" H 7550 3800 50  0001 C CNN
F 3 "" H 7550 3800 50  0001 C CNN
	1    7550 3800
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R?
U 1 1 602BD725
P 8250 3800
AR Path="/602BD725" Ref="R?"  Part="1" 
AR Path="/6022DC9B/602BD725" Ref="R14"  Part="1" 
F 0 "R14" H 8320 3846 50  0000 L CNN
F 1 "10k" H 8320 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.20x4.05mm_HandSolder" V 8180 3800 50  0001 C CNN
F 3 "~" H 8250 3800 50  0001 C CNN
	1    8250 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 3800 7650 3800
Wire Wire Line
	8050 3800 8100 3800
Wire Wire Line
	8400 3800 8500 3800
Text GLabel 8500 3800 2    50   Output ~ 0
DPI
$Comp
L Nuttali-rescue:SW_MEC_5G-Switch SW?
U 1 1 602BED69
P 9450 3800
AR Path="/602BED69" Ref="SW?"  Part="1" 
AR Path="/6022DC9B/602BED69" Ref="SW10"  Part="1" 
F 0 "SW10" H 9450 4085 50  0000 C CNN
F 1 "SW_MEC_5G" H 9450 3994 50  0000 C CNN
F 2 "" H 9450 4000 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 9450 4000 50  0001 C CNN
	1    9450 3800
	-1   0    0    1   
$EndComp
$Comp
L Nuttali-rescue:+3.3V-power #PWR?
U 1 1 602BED6F
P 9150 3800
AR Path="/602BED6F" Ref="#PWR?"  Part="1" 
AR Path="/6022DC9B/602BED6F" Ref="#PWR0150"  Part="1" 
F 0 "#PWR0150" H 9150 3650 50  0001 C CNN
F 1 "+3.3V" H 9165 3973 50  0000 C CNN
F 2 "" H 9150 3800 50  0001 C CNN
F 3 "" H 9150 3800 50  0001 C CNN
	1    9150 3800
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R?
U 1 1 602BED75
P 9850 3800
AR Path="/602BED75" Ref="R?"  Part="1" 
AR Path="/6022DC9B/602BED75" Ref="R15"  Part="1" 
F 0 "R15" H 9920 3846 50  0000 L CNN
F 1 "10k" H 9920 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.20x4.05mm_HandSolder" V 9780 3800 50  0001 C CNN
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
L Nuttali-rescue:LED-Device D?
U 1 1 602CAB79
P 8150 3350
AR Path="/602CAB79" Ref="D?"  Part="1" 
AR Path="/6022DC9B/602CAB79" Ref="D3"  Part="1" 
F 0 "D3" H 8143 3095 50  0000 C CNN
F 1 "LED" H 8143 3186 50  0000 C CNN
F 2 "" H 8150 3350 50  0001 C CNN
F 3 "~" H 8150 3350 50  0001 C CNN
	1    8150 3350
	-1   0    0    1   
$EndComp
$Comp
L Nuttali-rescue:LED-Device D?
U 1 1 602CBCDE
P 9750 3350
AR Path="/602CBCDE" Ref="D?"  Part="1" 
AR Path="/6022DC9B/602CBCDE" Ref="D4"  Part="1" 
F 0 "D4" H 9743 3095 50  0000 C CNN
F 1 "LED" H 9743 3186 50  0000 C CNN
F 2 "" H 9750 3350 50  0001 C CNN
F 3 "~" H 9750 3350 50  0001 C CNN
	1    9750 3350
	-1   0    0    1   
$EndComp
$Comp
L Nuttali-rescue:GND-power #PWR?
U 1 1 602CCA62
P 8750 3400
AR Path="/602CCA62" Ref="#PWR?"  Part="1" 
AR Path="/6022DC9B/602CCA62" Ref="#PWR0151"  Part="1" 
F 0 "#PWR0151" H 8750 3150 50  0001 C CNN
F 1 "GND" H 8755 3227 50  0000 C CNN
F 2 "" H 8750 3400 50  0001 C CNN
F 3 "" H 8750 3400 50  0001 C CNN
	1    8750 3400
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:GND-power #PWR?
U 1 1 602CF144
P 10250 3400
AR Path="/602CF144" Ref="#PWR?"  Part="1" 
AR Path="/6022DC9B/602CF144" Ref="#PWR0152"  Part="1" 
F 0 "#PWR0152" H 10250 3150 50  0001 C CNN
F 1 "GND" H 10255 3227 50  0000 C CNN
F 2 "" H 10250 3400 50  0001 C CNN
F 3 "" H 10250 3400 50  0001 C CNN
	1    10250 3400
	1    0    0    -1  
$EndComp
Text GLabel 7800 3350 0    50   Input ~ 0
DPI_LED
Wire Wire Line
	7800 3350 8000 3350
Wire Wire Line
	8300 3350 8750 3350
Text GLabel 9450 3350 0    50   Input ~ 0
Turbo_LED
Wire Wire Line
	9450 3350 9600 3350
Wire Wire Line
	9900 3350 10250 3350
Wire Wire Line
	10250 3400 10250 3350
Wire Wire Line
	8750 3400 8750 3350
Text GLabel 2350 3050 2    50   Output ~ 0
LeftB
Text GLabel 2350 1350 2    50   Output ~ 0
RightB
Wire Notes Line
	550  4250 3100 4250
Wire Notes Line
	3100 550  3100 7700
Wire Notes Line
	7000 550  7000 6500
Text Notes 700  4050 0    50   ~ 0
Left and right click
Text Notes 700  4450 0    50   ~ 0
Side buttons
Text Notes 3600 1200 0    50   ~ 0
Scroll wheel
Text Notes 7550 950  0    50   ~ 0
Top buttons
$Comp
L Nuttali-rescue:Rotary_Encoder-Device SW?
U 1 1 60310A0D
P 5200 3650
AR Path="/60310A0D" Ref="SW?"  Part="1" 
AR Path="/6022DC9B/60310A0D" Ref="SW8"  Part="1" 
F 0 "SW8" H 5430 3696 50  0000 L CNN
F 1 "Rotary_Encoder" H 5430 3605 50  0000 L CNN
F 2 "" H 5050 3810 50  0001 C CNN
F 3 "~" H 5200 3910 50  0001 C CNN
	1    5200 3650
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 60318A18
P 4200 3450
AR Path="/60318A18" Ref="C?"  Part="1" 
AR Path="/6022DC9B/60318A18" Ref="C29"  Part="1" 
F 0 "C29" H 4315 3496 50  0000 L CNN
F 1 "C" H 4315 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4238 3300 50  0001 C CNN
F 3 "~" H 4200 3450 50  0001 C CNN
	1    4200 3450
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:C-Device C?
U 1 1 6031913E
P 4200 3850
AR Path="/6031913E" Ref="C?"  Part="1" 
AR Path="/6022DC9B/6031913E" Ref="C30"  Part="1" 
F 0 "C30" H 4315 3896 50  0000 L CNN
F 1 "C" H 4315 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4238 3700 50  0001 C CNN
F 3 "~" H 4200 3850 50  0001 C CNN
	1    4200 3850
	1    0    0    -1  
$EndComp
$Comp
L Nuttali-rescue:R-Device R?
U 1 1 6031998E
P 4650 3200
AR Path="/6031998E" Ref="R?"  Part="1" 
AR Path="/6022DC9B/6031998E" Ref="R11"  Part="1" 
F 0 "R11" H 4720 3246 50  0000 L CNN
F 1 "10k" H 4720 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.20x4.05mm_HandSolder" V 4580 3200 50  0001 C CNN
F 3 "~" H 4650 3200 50  0001 C CNN
	1    4650 3200
	0    -1   -1   0   
$EndComp
$Comp
L Nuttali-rescue:R-Device R?
U 1 1 6031A38F
P 4650 4200
AR Path="/6031A38F" Ref="R?"  Part="1" 
AR Path="/6022DC9B/6031A38F" Ref="R12"  Part="1" 
F 0 "R12" H 4720 4246 50  0000 L CNN
F 1 "10k" H 4720 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0815_2038Metric_Pad1.20x4.05mm_HandSolder" V 4580 4200 50  0001 C CNN
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
L Nuttali-rescue:GND-power #PWR?
U 1 1 6032A748
P 4650 3700
AR Path="/6032A748" Ref="#PWR?"  Part="1" 
AR Path="/6022DC9B/6032A748" Ref="#PWR0153"  Part="1" 
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
$EndSCHEMATC
