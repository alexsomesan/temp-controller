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
L parts:OLED-0.96 M1
U 1 1 610075DE
P 1450 6500
F 0 "M1" V 1450 6500 50  0000 C CNN
F 1 "OLED-0.96" V 1076 6558 50  0000 C CNN
F 2 "parts:OLED-0.96" H 1450 6500 50  0001 C CNN
F 3 "" H 1450 6500 50  0001 C CNN
	1    1450 6500
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR04
U 1 1 61009F64
P 2650 6250
F 0 "#PWR04" H 2650 6100 50  0001 C CNN
F 1 "+3V3" H 2650 6400 50  0000 C CNN
F 2 "" H 2650 6250 50  0001 C CNN
F 3 "" H 2650 6250 50  0001 C CNN
	1    2650 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6100A1FD
P 2450 6250
F 0 "#PWR03" H 2450 6000 50  0001 C CNN
F 1 "GND" H 2450 6100 50  0000 C CNN
F 2 "" H 2450 6250 50  0001 C CNN
F 3 "" H 2450 6250 50  0001 C CNN
	1    2450 6250
	-1   0    0    1   
$EndComp
Text GLabel 2350 6600 2    50   Input ~ 0
OLED_SCL
Text GLabel 2350 6700 2    50   Input ~ 0
OLED_SDA
Wire Wire Line
	2650 6250 2650 6400
Wire Wire Line
	2650 6400 1850 6400
Wire Wire Line
	2450 6300 2450 6250
Wire Wire Line
	1850 6600 2150 6600
Wire Wire Line
	2350 6700 1900 6700
$Comp
L Device:R R1
U 1 1 6100E731
P 1900 6900
F 0 "R1" H 1970 6946 50  0000 L CNN
F 1 "4.7k" H 1970 6855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1830 6900 50  0001 C CNN
F 3 "~" H 1900 6900 50  0001 C CNN
	1    1900 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6100FB66
P 2150 6900
F 0 "R3" H 2220 6946 50  0000 L CNN
F 1 "4.7k" H 2220 6855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 2080 6900 50  0001 C CNN
F 3 "~" H 2150 6900 50  0001 C CNN
	1    2150 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6750 2150 6600
Connection ~ 2150 6600
Wire Wire Line
	2150 6600 2350 6600
Wire Wire Line
	1900 6750 1900 6700
Connection ~ 1900 6700
Wire Wire Line
	1900 6700 1850 6700
Wire Wire Line
	1900 7050 1900 7100
Wire Wire Line
	1900 7100 2150 7100
Wire Wire Line
	2950 7100 2950 6400
Wire Wire Line
	2950 6400 2650 6400
Connection ~ 2650 6400
Wire Wire Line
	2150 7050 2150 7100
Connection ~ 2150 7100
Wire Wire Line
	2150 7100 2950 7100
$Comp
L Relay:FINDER-36.11 U2
U 1 1 61016D14
P 9900 4950
F 0 "U2" H 9900 4950 50  0000 C CNN
F 1 "relay" H 9900 5374 50  0000 C CNN
F 2 "Relay_THT:Relay_SPDT_Finder_36.11" H 9900 4800 50  0001 C CNN
F 3 "https://www.tme.eu/Document/5400960b7d223c83e77b85a5a6a5271b/S36EN.pdf" H 9900 4950 50  0001 C CNN
	1    9900 4950
	1    0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR08
U 1 1 610175CE
P 8850 4600
F 0 "#PWR08" H 8850 4450 50  0001 C CNN
F 1 "+3V3" H 8865 4773 50  0000 C CNN
F 2 "" H 8850 4600 50  0001 C CNN
F 3 "" H 8850 4600 50  0001 C CNN
	1    8850 4600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:AO3400A Q1
U 1 1 61018CC5
P 9200 5550
F 0 "Q1" H 9405 5596 50  0000 L CNN
F 1 "AO3400A" H 9405 5505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9400 5475 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 9200 5550 50  0001 L CNN
	1    9200 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 6101CF3E
P 9300 6000
F 0 "#PWR07" H 9300 5750 50  0001 C CNN
F 1 "GND" H 9305 5827 50  0000 C CNN
F 2 "" H 9300 6000 50  0001 C CNN
F 3 "" H 9300 6000 50  0001 C CNN
	1    9300 6000
	1    0    0    -1  
$EndComp
Text GLabel 8850 5550 0    50   Input ~ 0
REL_SW
Wire Wire Line
	8850 5550 9000 5550
$Comp
L Device:R R4
U 1 1 6101FDE5
P 9000 5750
F 0 "R4" H 9070 5796 50  0000 L CNN
F 1 "10k" H 9070 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 8930 5750 50  0001 C CNN
F 3 "~" H 9000 5750 50  0001 C CNN
	1    9000 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5600 9000 5550
Connection ~ 9000 5550
Wire Wire Line
	9300 5750 9300 5950
Wire Wire Line
	9000 5900 9000 5950
Wire Wire Line
	9000 5950 9300 5950
Connection ~ 9300 5950
Wire Wire Line
	9300 5950 9300 6000
$Comp
L Device:D D1
U 1 1 61022CF9
P 8850 4950
F 0 "D1" V 8896 4870 50  0000 R CNN
F 1 "D" V 8805 4870 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 8850 4950 50  0001 C CNN
F 3 "~" H 8850 4950 50  0001 C CNN
	1    8850 4950
	0    1    1    0   
$EndComp
Text GLabel 10350 4550 2    50   UnSpc ~ 0
LOAD_A
Text GLabel 10350 5400 2    50   UnSpc ~ 0
LOAD_B
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 6103B252
P 11050 1900
F 0 "J2" H 10950 2000 50  0000 C CNN
F 1 "LOAD" H 10968 1666 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 11050 1900 50  0001 C CNN
F 3 "~" H 11050 1900 50  0001 C CNN
	1    11050 1900
	1    0    0    1   
$EndComp
Text GLabel 10650 1800 0    50   UnSpc ~ 0
LOAD_A
Text GLabel 10650 1900 0    50   UnSpc ~ 0
LOAD_B
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 61043486
P 8300 1650
F 0 "J1" H 8218 1325 50  0000 C CNN
F 1 "Conn_01x03" H 8218 1416 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 8300 1650 50  0001 C CNN
F 3 "~" H 8300 1650 50  0001 C CNN
	1    8300 1650
	-1   0    0    1   
$EndComp
Text GLabel 9150 1650 2    50   BiDi ~ 0
TEMP_SENSE
Wire Wire Line
	8500 1650 8900 1650
$Comp
L power:GND #PWR02
U 1 1 61046958
P 8650 1900
F 0 "#PWR02" H 8650 1650 50  0001 C CNN
F 1 "GND" H 8655 1727 50  0000 C CNN
F 2 "" H 8650 1900 50  0001 C CNN
F 3 "" H 8650 1900 50  0001 C CNN
	1    8650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1900 8650 1750
Wire Wire Line
	8650 1750 8500 1750
$Comp
L power:+3V3 #PWR01
U 1 1 61047E5E
P 8650 1200
F 0 "#PWR01" H 8650 1050 50  0001 C CNN
F 1 "+3V3" H 8665 1373 50  0000 C CNN
F 2 "" H 8650 1200 50  0001 C CNN
F 3 "" H 8650 1200 50  0001 C CNN
	1    8650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1550 8650 1550
Wire Wire Line
	8650 1550 8650 1250
$Comp
L Device:R R2
U 1 1 6104A46A
P 8900 1400
F 0 "R2" H 8970 1446 50  0000 L CNN
F 1 "4.7k" H 8970 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 8830 1400 50  0001 C CNN
F 3 "~" H 8900 1400 50  0001 C CNN
	1    8900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1550 8900 1650
Connection ~ 8900 1650
Wire Wire Line
	8900 1650 9150 1650
Wire Wire Line
	8900 1250 8650 1250
Connection ~ 8650 1250
Wire Wire Line
	8650 1250 8650 1200
$Comp
L Switch:SW_Push SW1
U 1 1 61055271
P 4950 6550
F 0 "SW1" H 4950 6835 50  0000 C CNN
F 1 "UP_SET" H 4950 6744 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 4950 6750 50  0001 C CNN
F 3 "~" H 4950 6750 50  0001 C CNN
	1    4950 6550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 610564AD
P 5550 6550
F 0 "SW2" H 5550 6835 50  0000 C CNN
F 1 "DOWN_SET" H 5550 6744 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 5550 6750 50  0001 C CNN
F 3 "~" H 5550 6750 50  0001 C CNN
	1    5550 6550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 61068FC4
P 5250 6900
F 0 "#PWR09" H 5250 6650 50  0001 C CNN
F 1 "GND" H 5255 6727 50  0000 C CNN
F 2 "" H 5250 6900 50  0001 C CNN
F 3 "" H 5250 6900 50  0001 C CNN
	1    5250 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 61069439
P 4600 6700
F 0 "R5" H 4670 6746 50  0000 L CNN
F 1 "10k" H 4670 6655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4530 6700 50  0001 C CNN
F 3 "~" H 4600 6700 50  0001 C CNN
	1    4600 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 61069915
P 5900 6700
F 0 "R6" H 5750 6750 50  0000 L CNN
F 1 "10k" H 5700 6650 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 5830 6700 50  0001 C CNN
F 3 "~" H 5900 6700 50  0001 C CNN
	1    5900 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR011
U 1 1 61071231
P 5250 6450
F 0 "#PWR011" H 5250 6300 50  0001 C CNN
F 1 "+3V3" H 5265 6623 50  0000 C CNN
F 2 "" H 5250 6450 50  0001 C CNN
F 3 "" H 5250 6450 50  0001 C CNN
	1    5250 6450
	1    0    0    -1  
$EndComp
$Comp
L parts:DC-DC U3
U 1 1 610AC5CA
P 9400 3250
F 0 "U3" H 9400 3250 50  0000 C CNN
F 1 "DC-DC" H 9400 3524 50  0000 C CNN
F 2 "parts:DC-DC" H 9400 3250 50  0001 C CNN
F 3 "" H 9400 3250 50  0001 C CNN
	1    9400 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR012
U 1 1 610AD4BA
P 10000 3050
F 0 "#PWR012" H 10000 2900 50  0001 C CNN
F 1 "+3V3" H 10000 3200 50  0000 C CNN
F 2 "" H 10000 3050 50  0001 C CNN
F 3 "" H 10000 3050 50  0001 C CNN
	1    10000 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 610ADD0F
P 9800 3050
F 0 "#PWR013" H 9800 2800 50  0001 C CNN
F 1 "GND" H 9800 2900 50  0000 C CNN
F 2 "" H 9800 3050 50  0001 C CNN
F 3 "" H 9800 3050 50  0001 C CNN
	1    9800 3050
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 610D108E
P 10450 800
F 0 "H1" H 10550 846 50  0000 L CNN
F 1 "MountingHole" H 10550 755 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 10450 800 50  0001 C CNN
F 3 "~" H 10450 800 50  0001 C CNN
	1    10450 800 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 610D5B67
P 10450 1000
F 0 "H2" H 10550 1046 50  0000 L CNN
F 1 "MountingHole" H 10550 955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 10450 1000 50  0001 C CNN
F 3 "~" H 10450 1000 50  0001 C CNN
	1    10450 1000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 610D618D
P 10450 1200
F 0 "H3" H 10550 1246 50  0000 L CNN
F 1 "MountingHole" H 10550 1155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 10450 1200 50  0001 C CNN
F 3 "~" H 10450 1200 50  0001 C CNN
	1    10450 1200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 610D67AD
P 10450 1400
F 0 "H4" H 10550 1446 50  0000 L CNN
F 1 "MountingHole" H 10550 1355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 10450 1400 50  0001 C CNN
F 3 "~" H 10450 1400 50  0001 C CNN
	1    10450 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6450 5250 6550
Wire Wire Line
	4750 6550 4600 6550
Wire Wire Line
	4600 6850 5250 6850
Wire Wire Line
	5250 6900 5250 6850
Connection ~ 5250 6850
Wire Wire Line
	5250 6850 5900 6850
$Comp
L parts:ATmega328P-AU-complete U1
U 1 1 61176B03
P 4350 3200
F 0 "U1" H 4350 3200 50  0000 C CNN
F 1 "ATmega328P-AU-complete" V 3900 2350 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 4350 3200 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8025-8-bit-AVR-Microcontroller-ATmega48P-88P-168P_Datasheet.pdf" H 4350 3200 50  0001 C CNN
	1    4350 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR016
U 1 1 61177193
P 4400 1500
F 0 "#PWR016" H 4400 1350 50  0001 C CNN
F 1 "+3V3" H 4415 1673 50  0000 C CNN
F 2 "" H 4400 1500 50  0001 C CNN
F 3 "" H 4400 1500 50  0001 C CNN
	1    4400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1700 4350 1600
Wire Wire Line
	4350 1600 4400 1600
Wire Wire Line
	4450 1600 4450 1700
Wire Wire Line
	4400 1500 4400 1600
Connection ~ 4400 1600
Wire Wire Line
	4400 1600 4450 1600
Wire Wire Line
	4250 4700 4250 4800
Wire Wire Line
	4250 4800 4350 4800
Wire Wire Line
	4450 4800 4450 4700
Wire Wire Line
	4350 4700 4350 4800
Connection ~ 4350 4800
Wire Wire Line
	4350 4800 4450 4800
$Comp
L power:GND #PWR015
U 1 1 611804E6
P 4350 4850
F 0 "#PWR015" H 4350 4600 50  0001 C CNN
F 1 "GND" H 4355 4677 50  0000 C CNN
F 2 "" H 4350 4850 50  0001 C CNN
F 3 "" H 4350 4850 50  0001 C CNN
	1    4350 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4850 4350 4800
$Comp
L Device:Crystal Y1
U 1 1 611836C4
P 5550 2650
F 0 "Y1" V 5596 2519 50  0000 R CNN
F 1 "8Mhz" V 5505 2519 50  0000 R CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 5550 2650 50  0001 C CNN
F 3 "~" H 5550 2650 50  0001 C CNN
	1    5550 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 2600 5300 2500
Wire Wire Line
	4950 2600 5300 2600
Wire Wire Line
	4950 2700 5300 2700
Wire Wire Line
	5300 2700 5300 2800
$Comp
L Device:C C4
U 1 1 6118A635
P 6050 2500
F 0 "C4" V 6150 2400 50  0000 C CNN
F 1 "12-22pf" V 5900 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 6088 2350 50  0001 C CNN
F 3 "~" H 6050 2500 50  0001 C CNN
	1    6050 2500
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 6118B6A2
P 6050 2800
F 0 "C5" V 5950 2900 50  0000 C CNN
F 1 "12-22pf" V 6200 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 6088 2650 50  0001 C CNN
F 3 "~" H 6050 2800 50  0001 C CNN
	1    6050 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 2500 6300 2500
Wire Wire Line
	6300 2500 6300 2650
Wire Wire Line
	6300 2800 6200 2800
Wire Wire Line
	6500 2700 6500 2650
Wire Wire Line
	6500 2650 6300 2650
Connection ~ 6300 2650
Wire Wire Line
	6300 2650 6300 2800
$Comp
L Device:R R7
U 1 1 61198DE6
P 2900 1800
F 0 "R7" H 2970 1846 50  0000 L CNN
F 1 "10k" H 2970 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 2830 1800 50  0001 C CNN
F 3 "~" H 2900 1800 50  0001 C CNN
	1    2900 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR06
U 1 1 6119B5AB
P 2900 1600
F 0 "#PWR06" H 2900 1450 50  0001 C CNN
F 1 "+3V3" H 2915 1773 50  0000 C CNN
F 2 "" H 2900 1600 50  0001 C CNN
F 3 "" H 2900 1600 50  0001 C CNN
	1    2900 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1600 2900 1650
Text GLabel 3100 1950 2    50   Input ~ 0
RST
Wire Wire Line
	3100 1950 2900 1950
$Comp
L power:GND #PWR017
U 1 1 6119396B
P 6500 2700
F 0 "#PWR017" H 6500 2450 50  0001 C CNN
F 1 "GND" H 6505 2527 50  0000 C CNN
F 2 "" H 6500 2700 50  0001 C CNN
F 3 "" H 6500 2700 50  0001 C CNN
	1    6500 2700
	1    0    0    -1  
$EndComp
Connection ~ 2900 1950
Text GLabel 2400 1950 0    50   Input ~ 0
PRG_DTR
$Comp
L Device:C Crst1
U 1 1 611C0331
P 2650 1950
F 0 "Crst1" V 2398 1950 50  0000 C CNN
F 1 "0.1uF" V 2489 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 2688 1800 50  0001 C CNN
F 3 "~" H 2650 1950 50  0001 C CNN
	1    2650 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 1950 2500 1950
Wire Wire Line
	2800 1950 2900 1950
Text GLabel 5150 3500 2    50   Input ~ 0
RST
Wire Wire Line
	5150 3500 4950 3500
$Comp
L Device:C Cp1
U 1 1 611CA676
P 2750 4400
F 0 "Cp1" V 2498 4400 50  0000 C CNN
F 1 "0.1uF" V 2589 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 2788 4250 50  0001 C CNN
F 3 "~" H 2750 4400 50  0001 C CNN
	1    2750 4400
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 611CAD3A
P 2500 4300
F 0 "#PWR05" H 2500 4150 50  0001 C CNN
F 1 "+3V3" H 2515 4473 50  0000 C CNN
F 2 "" H 2500 4300 50  0001 C CNN
F 3 "" H 2500 4300 50  0001 C CNN
	1    2500 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 611CB110
P 3000 4450
F 0 "#PWR014" H 3000 4200 50  0001 C CNN
F 1 "GND" H 3005 4277 50  0000 C CNN
F 2 "" H 3000 4450 50  0001 C CNN
F 3 "" H 3000 4450 50  0001 C CNN
	1    3000 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4300 2500 4400
Wire Wire Line
	2500 4400 2600 4400
Wire Wire Line
	2900 4400 3000 4400
Wire Wire Line
	3000 4400 3000 4450
Text GLabel 5150 3400 2    50   Input ~ 0
OLED_SCL
Text GLabel 5150 3300 2    50   Input ~ 0
OLED_SDA
Wire Wire Line
	5150 3400 4950 3400
Wire Wire Line
	5150 3300 4950 3300
Text GLabel 5150 2400 2    50   BiDi ~ 0
TEMP_SENSE
Text GLabel 5150 2300 2    50   Output ~ 0
REL_SW
Text GLabel 5150 4200 2    50   Input ~ 0
UP_SET
Text GLabel 5150 4300 2    50   Input ~ 0
DOWN_SET
$Comp
L Connector_Generic:Conn_01x05 J4
U 1 1 61209F29
P 3100 3350
F 0 "J4" H 3180 3392 50  0000 L CNN
F 1 "PRG" H 3180 3301 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x05_P1.27mm_Vertical" H 3100 3350 50  0001 C CNN
F 3 "~" H 3100 3350 50  0001 C CNN
	1    3100 3350
	1    0    0    -1  
$EndComp
Text GLabel 2750 3450 0    50   Input ~ 0
PRG_TX
Text GLabel 2750 3550 0    50   Input ~ 0
PRG_RX
Text GLabel 2750 3250 0    50   Input ~ 0
VCC
Text GLabel 2750 3150 0    50   Input ~ 0
GND
Text GLabel 2750 3350 0    50   Input ~ 0
PRG_DTR
Wire Wire Line
	2750 3450 2900 3450
Wire Wire Line
	2900 3250 2750 3250
Wire Wire Line
	2750 3150 2900 3150
Text GLabel 4700 4800 2    50   Input ~ 0
GND
Wire Wire Line
	4700 4800 4450 4800
Connection ~ 4450 4800
Text GLabel 4750 1600 2    50   Input ~ 0
VCC
Wire Wire Line
	4750 1600 4450 1600
Connection ~ 4450 1600
Text GLabel 5150 3800 2    50   Input ~ 0
PRG_TX
Wire Wire Line
	5150 3800 4950 3800
Text GLabel 5150 3700 2    50   Input ~ 0
PRG_RX
Wire Wire Line
	5150 3700 4950 3700
Wire Wire Line
	1850 6300 2450 6300
Wire Wire Line
	5300 2500 5550 2500
Wire Wire Line
	5300 2800 5550 2800
Connection ~ 5550 2800
Wire Wire Line
	5550 2800 5900 2800
Connection ~ 5550 2500
Wire Wire Line
	5550 2500 5900 2500
Wire Wire Line
	5750 6550 5900 6550
Wire Wire Line
	5350 6550 5250 6550
Wire Wire Line
	5150 6550 5250 6550
Connection ~ 5250 6550
Wire Wire Line
	10850 1800 10650 1800
Wire Wire Line
	10850 1900 10650 1900
Wire Wire Line
	5150 2400 4950 2400
Text GLabel 4450 6550 0    50   Output ~ 0
DOWN_SET
Text GLabel 6150 6550 2    50   Output ~ 0
UP_SET
Connection ~ 5900 6550
Wire Wire Line
	5900 6550 6150 6550
Connection ~ 4600 6550
Wire Wire Line
	4450 6550 4600 6550
Wire Wire Line
	2750 3550 2900 3550
Wire Wire Line
	2900 3350 2750 3350
Text Label 9000 3300 0    50   ~ 0
IN+
Text Label 9000 3200 0    50   ~ 0
IN-
Wire Wire Line
	9000 3200 9000 3150
Wire Wire Line
	9000 3150 9050 3150
Wire Wire Line
	9000 3300 9000 3350
Wire Wire Line
	9000 3350 9050 3350
Wire Wire Line
	9750 3150 9800 3150
Wire Wire Line
	9800 3150 9800 3050
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 610B5C42
P 8750 3300
F 0 "J3" H 8800 3400 50  0000 C CNN
F 1 "PWR" H 8800 3100 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 8750 3300 50  0001 C CNN
F 3 "~" H 8750 3300 50  0001 C CNN
	1    8750 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 3050 10000 3350
Wire Wire Line
	10000 3350 9750 3350
Wire Wire Line
	8950 3200 9000 3200
Wire Wire Line
	8950 3300 9000 3300
Wire Wire Line
	5150 4200 4950 4200
Wire Wire Line
	5150 4300 4950 4300
Wire Wire Line
	5150 2300 4950 2300
Wire Wire Line
	8850 4600 8850 4800
Wire Wire Line
	9300 5350 9300 5300
Wire Wire Line
	9300 5300 8850 5300
Wire Wire Line
	8850 5300 8850 5100
Wire Wire Line
	9700 5250 9700 5300
Wire Wire Line
	9700 5300 9300 5300
Connection ~ 9300 5300
Wire Wire Line
	9700 4650 9700 4600
Wire Wire Line
	9700 4600 8850 4600
Connection ~ 8850 4600
Wire Wire Line
	10350 4550 10100 4550
Wire Wire Line
	10100 4550 10100 4650
Wire Wire Line
	10350 5400 10200 5400
Wire Wire Line
	10200 5400 10200 5250
$EndSCHEMATC
