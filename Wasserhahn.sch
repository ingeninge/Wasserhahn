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
L RF_Module:ESP-WROOM-02 U1
U 1 1 5EA08ECA
P 3950 2900
F 0 "U1" H 3950 3050 50  0000 C CNN
F 1 "ESP-WROOM-02" H 4300 3550 50  0000 C CNN
F 2 "RF_Module:ESP-WROOM-02" H 4550 2350 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/0c-esp-wroom-02_datasheet_en.pdf" H 4000 4400 50  0001 C CNN
	1    3950 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5EA0991F
P 2150 2700
F 0 "C2" H 2265 2746 50  0000 L CNN
F 1 "100nF" H 2265 2655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 2188 2550 50  0001 C CNN
F 3 "~" H 2150 2700 50  0001 C CNN
	1    2150 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5EA0A058
P 2750 2750
F 0 "C3" H 2865 2796 50  0000 L CNN
F 1 "100nF" H 2865 2705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 2788 2600 50  0001 C CNN
F 3 "~" H 2750 2750 50  0001 C CNN
	1    2750 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5EA0A2EA
P 4850 1600
F 0 "R5" H 4920 1646 50  0000 L CNN
F 1 "10K" H 4920 1555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4780 1600 50  0001 C CNN
F 3 "~" H 4850 1600 50  0001 C CNN
	1    4850 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5EA0A543
P 5400 1600
F 0 "R6" H 5470 1646 50  0000 L CNN
F 1 "10K" H 5470 1555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5330 1600 50  0001 C CNN
F 3 "~" H 5400 1600 50  0001 C CNN
	1    5400 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5EA0A7EB
P 2750 1800
F 0 "R4" H 2820 1846 50  0000 L CNN
F 1 "10K" H 2820 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2680 1800 50  0001 C CNN
F 3 "~" H 2750 1800 50  0001 C CNN
	1    2750 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5EA0AB3D
P 2000 1800
F 0 "R3" H 2070 1846 50  0000 L CNN
F 1 "10K" H 2070 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1930 1800 50  0001 C CNN
F 3 "~" H 2000 1800 50  0001 C CNN
	1    2000 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5EA0AEA7
P 5900 1600
F 0 "R7" H 5970 1646 50  0000 L CNN
F 1 "10K" H 5970 1555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5830 1600 50  0001 C CNN
F 3 "~" H 5900 1600 50  0001 C CNN
	1    5900 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5EA0B37E
P 1400 2800
F 0 "C4" H 1518 2846 50  0000 L CNN
F 1 "10µF" H 1518 2755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1438 2650 50  0001 C CNN
F 3 "~" H 1400 2800 50  0001 C CNN
	1    1400 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J4
U 1 1 5EA0BB56
P 1450 1400
F 0 "J4" H 1342 1785 50  0000 C CNN
F 1 "PRGM_ADAPTER" H 1342 1694 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 1450 1400 50  0001 C CNN
F 3 "~" H 1450 1400 50  0001 C CNN
	1    1450 1400
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J5
U 1 1 5EA0C29C
P 6350 2000
F 0 "J5" H 6400 2217 50  0000 C CNN
F 1 "Boot/PRGM" H 6400 2126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 6350 2000 50  0001 C CNN
F 3 "~" H 6350 2000 50  0001 C CNN
	1    6350 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5EA0CE6C
P 5750 2900
F 0 "J3" H 5722 2874 50  0000 R CNN
F 1 "ToRelais" H 5722 2783 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5750 2900 50  0001 C CNN
F 3 "~" H 5750 2900 50  0001 C CNN
	1    5750 2900
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5EA0FC08
P 5300 2500
F 0 "R1" V 5200 2500 50  0000 C CNN
F 1 "220" V 5100 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5230 2500 50  0001 C CNN
F 3 "~" H 5300 2500 50  0001 C CNN
	1    5300 2500
	0    1    -1   0   
$EndComp
Wire Wire Line
	2750 3500 2750 2900
Wire Wire Line
	2150 2850 2150 3500
Wire Wire Line
	2150 3500 2750 3500
Connection ~ 2750 3500
Wire Wire Line
	2150 2550 2150 2300
Wire Wire Line
	2150 2300 3950 2300
Connection ~ 3950 2300
Wire Wire Line
	1850 3500 2000 3500
Connection ~ 2150 3500
Wire Wire Line
	3400 3000 3450 3000
Wire Wire Line
	3250 3100 3450 3100
Wire Wire Line
	1400 2950 1400 3500
Wire Wire Line
	1400 3500 1850 3500
Connection ~ 1850 3500
Wire Wire Line
	1400 2650 1400 2300
Wire Wire Line
	1400 2300 2150 2300
Connection ~ 2150 2300
Wire Wire Line
	1650 1200 2000 1200
Wire Wire Line
	3950 1200 3950 2300
Wire Wire Line
	1650 1300 3400 1300
Wire Wire Line
	3400 1300 3400 3000
Wire Wire Line
	1650 1400 3250 1400
Wire Wire Line
	3250 1400 3250 3100
Wire Wire Line
	4450 2900 5550 2900
Wire Wire Line
	4450 3000 5550 3000
Wire Wire Line
	5550 3100 5550 3500
Wire Wire Line
	5550 3500 3950 3500
Connection ~ 3950 3500
Wire Wire Line
	5550 2800 5550 2300
Wire Wire Line
	5550 2300 3950 2300
Wire Wire Line
	3950 1200 4550 1200
Connection ~ 3950 1200
Wire Wire Line
	4700 2700 4450 2700
Wire Wire Line
	5000 2800 4450 2800
Wire Wire Line
	2750 1950 2750 2100
Wire Wire Line
	2750 1650 2750 1200
Connection ~ 2750 1200
Wire Wire Line
	2000 1650 2000 1200
$Comp
L Device:C C1
U 1 1 5EA6B437
P 2000 3000
F 0 "C1" H 2200 3050 50  0000 L CNN
F 1 "100nF" H 2200 2950 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 2038 2850 50  0001 C CNN
F 3 "~" H 2000 3000 50  0001 C CNN
	1    2000 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3150 2000 3500
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5EA7322E
P 9200 1100
F 0 "J1" H 9280 1092 50  0000 L CNN
F 1 "Mains" H 9280 1001 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 9200 1100 50  0001 C CNN
F 3 "~" H 9200 1100 50  0001 C CNN
	1    9200 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J2
U 1 1 5EA73B80
P 9300 2300
F 0 "J2" H 9380 2292 50  0000 L CNN
F 1 "Ball_Valve_Contacts" H 9380 2201 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-4-5.0-H_1x04_P5.00mm_Horizontal" H 9300 2300 50  0001 C CNN
F 3 "~" H 9300 2300 50  0001 C CNN
	1    9300 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3500 6650 3500
Wire Wire Line
	9100 3500 9100 2500
Connection ~ 5550 3500
Wire Wire Line
	9100 2300 8800 2300
Wire Wire Line
	8800 2300 8800 3500
Connection ~ 8800 3500
Wire Wire Line
	8800 3500 9100 3500
Wire Wire Line
	9100 2200 5400 2200
Wire Wire Line
	5000 2200 5000 2800
Wire Wire Line
	9100 2400 4850 2400
Wire Wire Line
	4700 2400 4700 2700
$Comp
L Converter_ACDC:HLK-PM01 PS1
U 1 1 5EA78947
P 8400 1100
F 0 "PS1" H 8400 1425 50  0000 C CNN
F 1 "HLK-PM01/TSP-03" H 8400 1334 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_HiLink_HLK-PMxx" H 8400 800 50  0001 C CNN
F 3 "http://www.hlktech.net/product_detail.php?ProId=54" H 8800 750 50  0001 C CNN
	1    8400 1100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8800 1000 9000 1000
Wire Wire Line
	9000 1000 9000 1100
Wire Wire Line
	9000 1200 8800 1200
Wire Wire Line
	8000 1200 8000 3500
Connection ~ 8000 3500
Wire Wire Line
	8000 3500 8800 3500
Wire Wire Line
	4700 1000 4700 1200
Wire Wire Line
	1650 1500 1850 1500
Text Label 2450 1200 0    50   ~ 0
VCC3V3
Text Label 7000 3500 0    50   ~ 0
GND
$Comp
L Device:R R2
U 1 1 5EAA2734
P 3050 2600
F 0 "R2" V 3150 2600 50  0000 C CNN
F 1 "220" V 2934 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2980 2600 50  0001 C CNN
F 3 "~" H 3050 2600 50  0001 C CNN
	1    3050 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 1450 5900 1000
Wire Wire Line
	1850 1500 1850 3500
Wire Wire Line
	5900 1000 5400 1000
Wire Wire Line
	4450 2500 5150 2500
Wire Wire Line
	5450 2500 5900 2500
Wire Wire Line
	5900 2500 5900 2000
Connection ~ 2000 1200
Wire Wire Line
	2000 1200 2750 1200
Wire Wire Line
	2750 1200 3100 1200
Connection ~ 2000 3500
Wire Wire Line
	2000 3500 2150 3500
Wire Wire Line
	2750 3500 3950 3500
Wire Wire Line
	6650 2000 6650 2100
Wire Wire Line
	6650 2100 6650 3500
Connection ~ 6650 2100
Connection ~ 6650 3500
Wire Wire Line
	6650 3500 8000 3500
Wire Wire Line
	6150 2000 5900 2000
Connection ~ 5900 2000
Wire Wire Line
	5900 2000 5900 1750
Text Label 8300 2200 0    50   ~ 0
Input_Open
Text Label 8300 2400 0    50   ~ 0
Input_Close
Text Label 5100 2900 0    50   ~ 0
Output_Open
Text Label 5100 3000 0    50   ~ 0
Output_Close
Wire Wire Line
	4850 1750 4850 2400
Connection ~ 4850 2400
Wire Wire Line
	4850 2400 4700 2400
Wire Wire Line
	4850 1450 4850 1000
Connection ~ 4850 1000
Wire Wire Line
	4850 1000 4700 1000
Wire Wire Line
	5400 1450 5400 1000
Connection ~ 5400 1000
Wire Wire Line
	5400 1000 4850 1000
Wire Wire Line
	5400 1750 5400 2200
Connection ~ 5400 2200
Wire Wire Line
	5400 2200 5000 2200
Wire Wire Line
	6150 2100 2750 2100
Connection ~ 2750 2100
Wire Wire Line
	2750 2100 2750 2500
Wire Wire Line
	2000 1950 2000 2850
Wire Wire Line
	3450 2600 3200 2600
Wire Wire Line
	2900 2600 2900 2500
Wire Wire Line
	2900 2500 2750 2500
Connection ~ 2750 2500
Wire Wire Line
	2750 2500 2750 2600
$Comp
L Device:R R9
U 1 1 5EC1253C
P 3100 1800
F 0 "R9" H 3170 1846 50  0000 L CNN
F 1 "10K" H 3170 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3030 1800 50  0001 C CNN
F 3 "~" H 3100 1800 50  0001 C CNN
	1    3100 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2500 3100 2500
Wire Wire Line
	3100 2500 3100 1950
Wire Wire Line
	3100 1650 3100 1200
Connection ~ 3100 1200
Wire Wire Line
	3100 1200 3950 1200
$Comp
L Device:R R8
U 1 1 5EC16764
P 4550 1600
F 0 "R8" H 4620 1646 50  0000 L CNN
F 1 "10K" H 4620 1555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4480 1600 50  0001 C CNN
F 3 "~" H 4550 1600 50  0001 C CNN
	1    4550 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2600 4550 2600
Wire Wire Line
	4550 2600 4550 1750
Wire Wire Line
	4550 1450 4550 1200
Connection ~ 4550 1200
Wire Wire Line
	4550 1200 4700 1200
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5EC1D020
P 7500 1300
F 0 "J6" V 7372 1380 50  0000 L CNN
F 1 "Open to flash" V 7463 1380 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 7500 1300 50  0001 C CNN
F 3 "~" H 7500 1300 50  0001 C CNN
	1    7500 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 1000 7500 1000
Wire Wire Line
	7500 1000 7500 1100
Wire Wire Line
	7400 1100 7400 1000
Wire Wire Line
	7400 1000 5900 1000
Connection ~ 5900 1000
$EndSCHEMATC
