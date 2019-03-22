EESchema Schematic File Version 4
EELAYER 26 0
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
L LM2577:lm2577t-15_NOPB U1
U 1 1 5C910CB5
P 4700 3150
F 0 "U1" H 5800 3537 60  0000 C CNN
F 1 "lm2577t-15_NOPB" H 5800 3431 60  0000 C CNN
F 2 "LM2577:lm2577t-15&slash_NOPB" H 5800 3390 60  0001 C CNN
F 3 "" H 4700 3150 60  0000 C CNN
	1    4700 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5C910D40
P 7400 3300
F 0 "C6" H 7515 3346 50  0000 L CNN
F 1 "220uF" H 7515 3255 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P2.50mm" H 7438 3150 50  0001 C CNN
F 3 "~" H 7400 3300 50  0001 C CNN
	1    7400 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3150 7000 3150
$Comp
L power:GND #PWR0101
U 1 1 5C910E0C
P 7400 3550
F 0 "#PWR0101" H 7400 3300 50  0001 C CNN
F 1 "GND" H 7405 3377 50  0000 C CNN
F 2 "" H 7400 3550 50  0001 C CNN
F 3 "" H 7400 3550 50  0001 C CNN
	1    7400 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3450 7400 3550
$Comp
L Device:L L1
U 1 1 5C910E52
P 7100 2600
F 0 "L1" H 7153 2646 50  0000 L CNN
F 1 "100uH" H 7153 2555 50  0000 L CNN
F 2 "Inductor_THT:L_Axial_L7.0mm_D3.3mm_P12.70mm_Horizontal_Fastron_MICC" H 7100 2600 50  0001 C CNN
F 3 "~" H 7100 2600 50  0001 C CNN
	1    7100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3250 7100 3250
Wire Wire Line
	7100 3250 7100 2750
Wire Wire Line
	7100 2450 7000 2450
Wire Wire Line
	7000 2450 7000 3150
Connection ~ 7000 3150
Wire Wire Line
	7000 3150 6900 3150
$Comp
L Device:R R1
U 1 1 5C91103D
P 4300 3400
F 0 "R1" H 4370 3446 50  0000 L CNN
F 1 "2.2k" H 4370 3355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4230 3400 50  0001 C CNN
F 3 "~" H 4300 3400 50  0001 C CNN
	1    4300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3150 4300 3150
Wire Wire Line
	4300 3150 4300 3250
$Comp
L Device:C C1
U 1 1 5C91111D
P 4300 3800
F 0 "C1" H 4415 3846 50  0000 L CNN
F 1 "330nF" H 4415 3755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 4338 3650 50  0001 C CNN
F 3 "~" H 4300 3800 50  0001 C CNN
	1    4300 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3650 4300 3550
$Comp
L power:GND #PWR0102
U 1 1 5C9111CD
P 4300 4000
F 0 "#PWR0102" H 4300 3750 50  0001 C CNN
F 1 "GND" H 4305 3827 50  0000 C CNN
F 2 "" H 4300 4000 50  0001 C CNN
F 3 "" H 4300 4000 50  0001 C CNN
	1    4300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4000 4300 3950
$Comp
L power:GND #PWR0103
U 1 1 5C91128C
P 7000 3400
F 0 "#PWR0103" H 7000 3150 50  0001 C CNN
F 1 "GND" H 7005 3227 50  0000 C CNN
F 2 "" H 7000 3400 50  0001 C CNN
F 3 "" H 7000 3400 50  0001 C CNN
	1    7000 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3350 7000 3350
Wire Wire Line
	7000 3350 7000 3400
Text Label 7150 3250 0    50   ~ 0
SW
Wire Wire Line
	7150 3250 7100 3250
Connection ~ 7100 3250
$Comp
L Device:R R3
U 1 1 5C911467
P 4700 3500
F 0 "R3" H 4770 3546 50  0000 L CNN
F 1 "2k" H 4770 3455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4630 3500 50  0001 C CNN
F 3 "~" H 4700 3500 50  0001 C CNN
	1    4700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3350 4700 3250
$Comp
L power:GND #PWR0104
U 1 1 5C911579
P 4700 3700
F 0 "#PWR0104" H 4700 3450 50  0001 C CNN
F 1 "GND" H 4705 3527 50  0000 C CNN
F 2 "" H 4700 3700 50  0001 C CNN
F 3 "" H 4700 3700 50  0001 C CNN
	1    4700 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3700 4700 3650
Text Label 4100 2700 0    50   ~ 0
SW
$Comp
L Device:R R2
U 1 1 5C9116BE
P 4650 2950
F 0 "R2" H 4720 2996 50  0000 L CNN
F 1 "18k" H 4720 2905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4580 2950 50  0001 C CNN
F 3 "~" H 4650 2950 50  0001 C CNN
	1    4650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3250 4650 3250
Wire Wire Line
	4650 3250 4650 3100
Connection ~ 4700 3250
Wire Wire Line
	4100 2700 4300 2700
Wire Wire Line
	4600 2700 4650 2700
Wire Wire Line
	4650 2700 4650 2800
$Comp
L Diode:1N5822 D2
U 1 1 5C911EF3
P 4450 2700
F 0 "D2" H 4450 2484 50  0000 C CNN
F 1 "1N5822" H 4450 2575 50  0000 C CNN
F 2 "Diode_THT:D_DO-34_SOD68_P7.62mm_Horizontal" H 4450 2525 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 4450 2700 50  0001 C CNN
	1    4450 2700
	-1   0    0    1   
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 5C9120E9
P 2750 3200
F 0 "J1" H 2805 3667 50  0000 C CNN
F 1 "USB_B_Micro" H 2805 3576 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Wuerth_614105150721_Vertical_CircularHoles" H 2900 3150 50  0001 C CNN
F 3 "~" H 2900 3150 50  0001 C CNN
	1    2750 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5C9121B3
P 2700 3650
F 0 "#PWR0105" H 2700 3400 50  0001 C CNN
F 1 "GND" H 2705 3477 50  0000 C CNN
F 2 "" H 2700 3650 50  0001 C CNN
F 3 "" H 2700 3650 50  0001 C CNN
	1    2700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3650 2650 3650
Wire Wire Line
	2650 3650 2650 3600
Wire Wire Line
	2700 3650 2750 3650
Wire Wire Line
	2750 3650 2750 3600
Connection ~ 2700 3650
Text Label 3150 3000 0    50   ~ 0
V_usb
Wire Wire Line
	3150 3000 3050 3000
Text Label 3150 3200 0    50   ~ 0
D+
Wire Wire Line
	3150 3200 3050 3200
Text Label 3150 3300 0    50   ~ 0
D-
Wire Wire Line
	3150 3300 3050 3300
Text Label 7500 3150 0    50   ~ 0
5v
$Comp
L Device:C C3
U 1 1 5C9139CC
P 4850 2500
F 0 "C3" H 4735 2454 50  0000 R CNN
F 1 "1000uF" H 4735 2545 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 4888 2350 50  0001 C CNN
F 3 "~" H 4850 2500 50  0001 C CNN
	1    4850 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 2700 4850 2700
Wire Wire Line
	4850 2700 4850 2650
Connection ~ 4650 2700
$Comp
L Device:C C4
U 1 1 5C913EF7
P 5300 2500
F 0 "C4" H 5185 2454 50  0000 R CNN
F 1 "0.1uF" H 5185 2545 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 5338 2350 50  0001 C CNN
F 3 "~" H 5300 2500 50  0001 C CNN
	1    5300 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 2650 5300 2700
Wire Wire Line
	5300 2700 4850 2700
Connection ~ 4850 2700
$Comp
L power:GND #PWR0106
U 1 1 5C914444
P 4850 2250
F 0 "#PWR0106" H 4850 2000 50  0001 C CNN
F 1 "GND" H 4855 2077 50  0000 C CNN
F 2 "" H 4850 2250 50  0001 C CNN
F 3 "" H 4850 2250 50  0001 C CNN
	1    4850 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 2350 4850 2250
$Comp
L power:GND #PWR0107
U 1 1 5C9149B9
P 5300 2250
F 0 "#PWR0107" H 5300 2000 50  0001 C CNN
F 1 "GND" H 5305 2077 50  0000 C CNN
F 2 "" H 5300 2250 50  0001 C CNN
F 3 "" H 5300 2250 50  0001 C CNN
	1    5300 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 2350 5300 2250
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5C9156E4
P 6050 2700
F 0 "J3" H 6023 2580 50  0000 R CNN
F 1 "Conn_01x02_Male" H 6023 2671 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6050 2700 50  0001 C CNN
F 3 "~" H 6050 2700 50  0001 C CNN
	1    6050 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 2700 5300 2700
Connection ~ 5300 2700
Wire Wire Line
	5850 2700 5850 2600
Connection ~ 5850 2700
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5C916305
P 6050 2350
F 0 "J2" H 6023 2230 50  0000 R CNN
F 1 "Conn_01x02_Male" H 6023 2321 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6050 2350 50  0001 C CNN
F 3 "~" H 6050 2350 50  0001 C CNN
	1    6050 2350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5C91633B
P 5800 2350
F 0 "#PWR0108" H 5800 2100 50  0001 C CNN
F 1 "GND" V 5805 2222 50  0000 R CNN
F 2 "" H 5800 2350 50  0001 C CNN
F 3 "" H 5800 2350 50  0001 C CNN
	1    5800 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 2350 5850 2350
Wire Wire Line
	5850 2250 5850 2350
Connection ~ 5850 2350
$Comp
L Diode:1N5822 D1
U 1 1 5C917381
P 3400 2100
F 0 "D1" H 3400 1884 50  0000 C CNN
F 1 "1N5822" H 3400 1975 50  0000 C CNN
F 2 "Diode_THT:D_DO-34_SOD68_P7.62mm_Horizontal" H 3400 1925 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 3400 2100 50  0001 C CNN
	1    3400 2100
	-1   0    0    1   
$EndComp
Text Label 3000 2100 0    50   ~ 0
V_usb
Wire Wire Line
	3250 2100 3000 2100
Text Label 3750 2100 0    50   ~ 0
5v
Wire Wire Line
	3750 2100 3550 2100
Wire Wire Line
	7500 3150 7400 3150
Connection ~ 7400 3150
$Comp
L Regulator_Linear:LM317L_TO92 U2
U 1 1 5C919627
P 5450 4750
F 0 "U2" H 5450 4992 50  0000 C CNN
F 1 "LM317L_TO92" H 5450 4901 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5450 4975 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/snvs775k/snvs775k.pdf" H 5450 4750 50  0001 C CNN
	1    5450 4750
	1    0    0    -1  
$EndComp
Text Label 4950 4750 0    50   ~ 0
5v
$Comp
L Device:C C2
U 1 1 5C919FA6
P 4800 5050
F 0 "C2" H 4915 5096 50  0000 L CNN
F 1 "10uF" H 4915 5005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 4838 4900 50  0001 C CNN
F 3 "~" H 4800 5050 50  0001 C CNN
	1    4800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4900 4800 4750
Wire Wire Line
	4800 4750 5150 4750
$Comp
L power:GND #PWR0109
U 1 1 5C91A902
P 4800 5300
F 0 "#PWR0109" H 4800 5050 50  0001 C CNN
F 1 "GND" H 4805 5127 50  0000 C CNN
F 2 "" H 4800 5300 50  0001 C CNN
F 3 "" H 4800 5300 50  0001 C CNN
	1    4800 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5300 4800 5200
$Comp
L Device:R R4
U 1 1 5C91B1E4
P 5900 4950
F 0 "R4" H 5970 4996 50  0000 L CNN
F 1 "220" H 5970 4905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5830 4950 50  0001 C CNN
F 3 "~" H 5900 4950 50  0001 C CNN
	1    5900 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4800 5900 4750
Wire Wire Line
	5900 4750 5750 4750
Wire Wire Line
	5900 5100 5600 5100
Wire Wire Line
	5450 5100 5450 5050
$Comp
L Device:R_POT RV1
U 1 1 5C91C5DF
P 5450 5350
F 0 "RV1" H 5380 5396 50  0000 R CNN
F 1 "5K" H 5380 5305 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Horizontal" H 5450 5350 50  0001 C CNN
F 3 "~" H 5450 5350 50  0001 C CNN
	1    5450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5200 5450 5100
Connection ~ 5450 5100
Wire Wire Line
	5600 5350 5600 5100
Connection ~ 5600 5100
Wire Wire Line
	5600 5100 5450 5100
$Comp
L power:GND #PWR0110
U 1 1 5C91DB9A
P 5450 5550
F 0 "#PWR0110" H 5450 5300 50  0001 C CNN
F 1 "GND" H 5455 5377 50  0000 C CNN
F 2 "" H 5450 5550 50  0001 C CNN
F 3 "" H 5450 5550 50  0001 C CNN
	1    5450 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5550 5450 5500
$Comp
L Device:C C5
U 1 1 5C91E736
P 6200 5000
F 0 "C5" H 6315 5046 50  0000 L CNN
F 1 "100nF" H 6315 4955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 6238 4850 50  0001 C CNN
F 3 "~" H 6200 5000 50  0001 C CNN
	1    6200 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4850 6200 4750
Wire Wire Line
	6200 4750 5900 4750
Connection ~ 5900 4750
$Comp
L power:GND #PWR0111
U 1 1 5C91F38E
P 6200 5200
F 0 "#PWR0111" H 6200 4950 50  0001 C CNN
F 1 "GND" H 6205 5027 50  0000 C CNN
F 2 "" H 6200 5200 50  0001 C CNN
F 3 "" H 6200 5200 50  0001 C CNN
	1    6200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5200 6200 5150
$Comp
L Connector:Conn_01x03_Female J5
U 1 1 5C920637
P 7350 4250
F 0 "J5" H 7377 4276 50  0000 L CNN
F 1 "Conn_01x03_Female" H 7377 4185 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7350 4250 50  0001 C CNN
F 3 "~" H 7350 4250 50  0001 C CNN
	1    7350 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5C920685
P 7100 4400
F 0 "#PWR0112" H 7100 4150 50  0001 C CNN
F 1 "GND" H 7105 4227 50  0000 C CNN
F 2 "" H 7100 4400 50  0001 C CNN
F 3 "" H 7100 4400 50  0001 C CNN
	1    7100 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4350 7100 4350
Wire Wire Line
	7100 4350 7100 4400
Text Label 7000 4150 0    50   ~ 0
D+
Text Label 7000 4250 0    50   ~ 0
D-
Wire Wire Line
	7150 4250 7000 4250
Wire Wire Line
	7150 4150 7000 4150
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5C923253
P 7200 4850
F 0 "J4" H 7173 4730 50  0000 R CNN
F 1 "Conn_01x02_Male" H 7173 4821 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7200 4850 50  0001 C CNN
F 3 "~" H 7200 4850 50  0001 C CNN
	1    7200 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	7000 4750 6200 4750
Connection ~ 6200 4750
Wire Wire Line
	7000 4850 7000 4750
Connection ~ 7000 4750
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5C925811
P 6250 4050
F 0 "J6" H 6223 3930 50  0000 R CNN
F 1 "Conn_01x02_Male" H 6223 4021 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6250 4050 50  0001 C CNN
F 3 "~" H 6250 4050 50  0001 C CNN
	1    6250 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 4050 5850 4050
Wire Wire Line
	6050 3950 6050 4050
Connection ~ 6050 4050
Text Label 5900 4000 0    50   ~ 0
5v
Wire Wire Line
	5900 4000 5850 4000
Wire Wire Line
	5850 4000 5850 4050
$EndSCHEMATC
