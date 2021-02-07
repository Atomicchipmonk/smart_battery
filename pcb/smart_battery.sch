EESchema Schematic File Version 4
LIBS:smart_battery-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
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
Text Label 8200 1150 0    50   ~ 0
~RST
Text Label 8150 2150 0    50   ~ 0
SCK
Text Label 8150 2250 0    50   ~ 0
MOSI
Text Label 8150 2350 0    50   ~ 0
MISO
Text Label 9900 2050 2    50   ~ 0
ENCS
$Comp
L power:GND #PWR02
U 1 1 5D3787E4
P 9750 2800
F 0 "#PWR02" H 9750 2550 50  0001 C CNN
F 1 "GND" H 9755 2627 50  0000 C CNN
F 2 "" H 9750 2800 50  0001 C CNN
F 3 "" H 9750 2800 50  0001 C CNN
	1    9750 2800
	1    0    0    -1  
$EndComp
Text Label 5450 1050 0    50   ~ 0
~RST
$Comp
L power:+3.3V #PWR027
U 1 1 600B8860
P 6950 900
F 0 "#PWR027" H 6950 750 50  0001 C CNN
F 1 "+3.3V" H 6965 1073 50  0000 C CNN
F 2 "" H 6950 900 50  0001 C CNN
F 3 "" H 6950 900 50  0001 C CNN
	1    6950 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 600B8866
P 7000 2650
F 0 "#PWR028" H 7000 2400 50  0001 C CNN
F 1 "GND" H 7005 2477 50  0000 C CNN
F 2 "" H 7000 2650 50  0001 C CNN
F 3 "" H 7000 2650 50  0001 C CNN
	1    7000 2650
	1    0    0    -1  
$EndComp
Text Label 2400 1050 0    50   ~ 0
~RST
Text Label 2350 1350 0    50   ~ 0
AREF
Text Label 2350 1450 0    50   ~ 0
THHTR
Text Label 2350 1550 0    50   ~ 0
THBAT
Text Label 2350 1650 0    50   ~ 0
VSSO
Text Label 2350 1750 0    50   ~ 0
VSPO
Text Label 2350 1850 0    50   ~ 0
A4
Text Label 2350 1950 0    50   ~ 0
A5
Text Label 2350 2050 0    50   ~ 0
SCK
Text Label 2350 2150 0    50   ~ 0
MOSI
Text Label 2350 2250 0    50   ~ 0
MISO
Text Label 2350 2350 0    50   ~ 0
RX
Text Label 2350 2450 0    50   ~ 0
TX
Text Label 4700 1000 2    50   ~ 0
VBAT
Text Label 2500 1150 2    50   ~ 0
EN
Text Label 4700 1100 2    50   ~ 0
VUSB
Text Label 4650 1600 2    50   ~ 0
VPIN
Text Label 4700 1700 2    50   ~ 0
HTEN
Text Label 4700 1800 2    50   ~ 0
SSET
Text Label 4700 1900 2    50   ~ 0
ENCS
Text Label 4750 2000 2    50   ~ 0
PUSET
Text Label 4700 2100 2    50   ~ 0
PSET
Text Label 4750 2200 2    50   ~ 0
SUSET
Text Label 4650 2300 2    50   ~ 0
SCL
Text Label 4650 2400 2    50   ~ 0
SDA
$Comp
L power:+3.3V #PWR014
U 1 1 600BA630
P 4600 900
F 0 "#PWR014" H 4600 750 50  0001 C CNN
F 1 "+3.3V" H 4615 1073 50  0000 C CNN
F 2 "" H 4600 900 50  0001 C CNN
F 3 "" H 4600 900 50  0001 C CNN
	1    4600 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 600BA636
P 4550 2600
F 0 "#PWR015" H 4550 2350 50  0001 C CNN
F 1 "GND" H 4555 2427 50  0000 C CNN
F 2 "" H 4550 2600 50  0001 C CNN
F 3 "" H 4550 2600 50  0001 C CNN
	1    4550 2600
	1    0    0    -1  
$EndComp
Text Label 5900 3400 0    50   ~ 0
~RST
Text Label 7500 4500 0    50   ~ 0
PSET
Text Label 7500 4400 0    50   ~ 0
PUSET
$Comp
L eec:LTC4151CS-2PBF U1Batt1
U 1 1 600DF30E
P 1500 6250
F 0 "U1Batt1" H 2000 6515 50  0000 C CNN
F 1 "LTC4151CS-2PBF" H 2000 6424 50  0000 C CNN
F 2 "eec:Linear_Technology-LTC4151CS-2PBF-Level_B" H 1500 6650 50  0001 L CNN
F 3 "http://cds.linear.com/docs/en/datasheet/4151fd.pdf" H 1500 6750 50  0001 L CNN
F 4 "1" H 1500 6850 50  0001 L CNN "Channels "
F 5 "Manufacturer URL" H 1500 6950 50  0001 L CNN "Component Link 1 Description"
F 6 "http://www.linear.com/" H 1500 7050 50  0001 L CNN "Component Link 1 URL"
F 7 "Package Specification" H 1500 7150 50  0001 L CNN "Component Link 3 Description"
F 8 "http://cds.linear.com/docs/en/packaging/S16%2005-08-1610%20Rev%20G.pdf" H 1500 7250 50  0001 L CNN "Component Link 3 URL"
F 9 "Rev. D" H 1500 7350 50  0001 L CNN "Datasheet Version"
F 10 "1.2" H 1500 7450 50  0001 L CNN "Is mA Typical"
F 11 "LTC4151" H 1500 7550 50  0001 L CNN "Linear Technology Part Number"
F 12 "Surface Mount" H 1500 7650 50  0001 L CNN "Mounting Technology"
F 13 "16-Lead Plastic Small Outline, Body 9.9 x 3.9 mm, Pitch 1.27 mm" H 1500 7750 50  0001 L CNN "Package Description"
F 14 "Rev G" H 1500 7850 50  0001 L CNN "Package Version"
F 15 "CSA" H 1500 7950 50  0001 L CNN "Type"
F 16 "80" H 1500 8050 50  0001 L CNN "Vs Max V"
F 17 "7" H 1500 8150 50  0001 L CNN "Vs Min V"
F 18 "IC" H 1500 8250 50  0001 L CNN "category"
F 19 "1422219" H 1500 8350 50  0001 L CNN "ciiva ids"
F 20 "17f8ba209de9ce53" H 1500 8450 50  0001 L CNN "library id"
F 21 "Linear Technology" H 1500 8550 50  0001 L CNN "manufacturer"
F 22 "LT-S-16" H 1500 8650 50  0001 L CNN "package"
F 23 "1378745002" H 1500 8750 50  0001 L CNN "release date"
F 24 "No" H 1500 8850 50  0001 L CNN "rohs"
F 25 "011ACA5A-62DD-4C61-91D8-85E46D25C1B3" H 1500 8950 50  0001 L CNN "vault revision"
F 26 "yes" H 1500 9050 50  0001 L CNN "imported"
	1    1500 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6350 2650 6350
Wire Wire Line
	2500 6250 2500 5850
Wire Wire Line
	2500 5850 2750 5850
NoConn ~ 2500 6550
NoConn ~ 2500 6650
NoConn ~ 2500 6750
NoConn ~ 2500 6850
NoConn ~ 2500 6950
NoConn ~ 2500 7050
$Comp
L power:+48V #PWR013
U 1 1 600F051E
P 2750 5750
F 0 "#PWR013" H 2750 5600 50  0001 C CNN
F 1 "+48V" H 2765 5923 50  0000 C CNN
F 2 "" H 2750 5750 50  0001 C CNN
F 3 "" H 2750 5750 50  0001 C CNN
	1    2750 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5750 2750 5850
Text Label 1350 6750 2    50   ~ 0
SCL
Text Label 1350 6850 2    50   ~ 0
SDA
Wire Wire Line
	1350 6750 1500 6750
Wire Wire Line
	1350 6850 1450 6850
Wire Wire Line
	1450 6850 1450 6950
Wire Wire Line
	1450 6950 1500 6950
Connection ~ 1450 6850
Wire Wire Line
	1450 6850 1500 6850
$Comp
L power:+48V #PWR08
U 1 1 6010851E
P 1450 7250
F 0 "#PWR08" H 1450 7100 50  0001 C CNN
F 1 "+48V" H 1465 7423 50  0000 C CNN
F 2 "" H 1450 7250 50  0001 C CNN
F 3 "" H 1450 7250 50  0001 C CNN
	1    1450 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7250 1500 7250
$Comp
L power:+48V #PWR05
U 1 1 6010A445
P 1300 6400
F 0 "#PWR05" H 1300 6250 50  0001 C CNN
F 1 "+48V" H 1315 6573 50  0000 C CNN
F 2 "" H 1300 6400 50  0001 C CNN
F 3 "" H 1300 6400 50  0001 C CNN
	1    1300 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 6400 1300 6450
Wire Wire Line
	1300 6450 1500 6450
$Comp
L power:GND #PWR03
U 1 1 6010E50A
P 1100 6550
F 0 "#PWR03" H 1100 6300 50  0001 C CNN
F 1 "GND" H 1105 6377 50  0000 C CNN
F 2 "" H 1100 6550 50  0001 C CNN
F 3 "" H 1100 6550 50  0001 C CNN
	1    1100 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6550 1500 6550
$Comp
L power:GND #PWR011
U 1 1 60110803
P 2600 7250
F 0 "#PWR011" H 2600 7000 50  0001 C CNN
F 1 "GND" H 2605 7077 50  0000 C CNN
F 2 "" H 2600 7250 50  0001 C CNN
F 3 "" H 2600 7250 50  0001 C CNN
	1    2600 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 7250 2500 7250
$Comp
L eec:LTC4151CS-2PBF U2Solar1
U 1 1 601178EA
P 1400 4200
F 0 "U2Solar1" H 1900 4465 50  0000 C CNN
F 1 "LTC4151CS-2PBF" H 1900 4374 50  0000 C CNN
F 2 "eec:Linear_Technology-LTC4151CS-2PBF-Level_B" H 1400 4600 50  0001 L CNN
F 3 "http://cds.linear.com/docs/en/datasheet/4151fd.pdf" H 1400 4700 50  0001 L CNN
F 4 "1" H 1400 4800 50  0001 L CNN "Channels "
F 5 "Manufacturer URL" H 1400 4900 50  0001 L CNN "Component Link 1 Description"
F 6 "http://www.linear.com/" H 1400 5000 50  0001 L CNN "Component Link 1 URL"
F 7 "Package Specification" H 1400 5100 50  0001 L CNN "Component Link 3 Description"
F 8 "http://cds.linear.com/docs/en/packaging/S16%2005-08-1610%20Rev%20G.pdf" H 1400 5200 50  0001 L CNN "Component Link 3 URL"
F 9 "Rev. D" H 1400 5300 50  0001 L CNN "Datasheet Version"
F 10 "1.2" H 1400 5400 50  0001 L CNN "Is mA Typical"
F 11 "LTC4151" H 1400 5500 50  0001 L CNN "Linear Technology Part Number"
F 12 "Surface Mount" H 1400 5600 50  0001 L CNN "Mounting Technology"
F 13 "16-Lead Plastic Small Outline, Body 9.9 x 3.9 mm, Pitch 1.27 mm" H 1400 5700 50  0001 L CNN "Package Description"
F 14 "Rev G" H 1400 5800 50  0001 L CNN "Package Version"
F 15 "CSA" H 1400 5900 50  0001 L CNN "Type"
F 16 "80" H 1400 6000 50  0001 L CNN "Vs Max V"
F 17 "7" H 1400 6100 50  0001 L CNN "Vs Min V"
F 18 "IC" H 1400 6200 50  0001 L CNN "category"
F 19 "1422219" H 1400 6300 50  0001 L CNN "ciiva ids"
F 20 "17f8ba209de9ce53" H 1400 6400 50  0001 L CNN "library id"
F 21 "Linear Technology" H 1400 6500 50  0001 L CNN "manufacturer"
F 22 "LT-S-16" H 1400 6600 50  0001 L CNN "package"
F 23 "1378745002" H 1400 6700 50  0001 L CNN "release date"
F 24 "No" H 1400 6800 50  0001 L CNN "rohs"
F 25 "011ACA5A-62DD-4C61-91D8-85E46D25C1B3" H 1400 6900 50  0001 L CNN "vault revision"
F 26 "yes" H 1400 7000 50  0001 L CNN "imported"
	1    1400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4200 2400 3800
NoConn ~ 2400 4500
NoConn ~ 2400 4600
NoConn ~ 2400 4700
NoConn ~ 2400 4800
NoConn ~ 2400 4900
NoConn ~ 2400 5000
Text Label 1250 4700 2    50   ~ 0
SCL
Text Label 1250 4800 2    50   ~ 0
SDA
Wire Wire Line
	1250 4700 1400 4700
Wire Wire Line
	1250 4800 1350 4800
Wire Wire Line
	1350 4800 1350 4900
Wire Wire Line
	1350 4900 1400 4900
Connection ~ 1350 4800
Wire Wire Line
	1350 4800 1400 4800
Wire Wire Line
	1350 5200 1400 5200
Wire Wire Line
	1200 4400 1400 4400
$Comp
L power:GND #PWR01
U 1 1 60117939
P 1000 4500
F 0 "#PWR01" H 1000 4250 50  0001 C CNN
F 1 "GND" H 1005 4327 50  0000 C CNN
F 2 "" H 1000 4500 50  0001 C CNN
F 3 "" H 1000 4500 50  0001 C CNN
	1    1000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4500 1200 4500
$Comp
L power:GND #PWR010
U 1 1 60117940
P 2500 5200
F 0 "#PWR010" H 2500 4950 50  0001 C CNN
F 1 "GND" H 2505 5027 50  0000 C CNN
F 2 "" H 2500 5200 50  0001 C CNN
F 3 "" H 2500 5200 50  0001 C CNN
	1    2500 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5200 2400 5200
$Comp
L power:+24V #PWR012
U 1 1 6011ADED
P 2650 3700
F 0 "#PWR012" H 2650 3550 50  0001 C CNN
F 1 "+24V" H 2665 3873 50  0000 C CNN
F 2 "" H 2650 3700 50  0001 C CNN
F 3 "" H 2650 3700 50  0001 C CNN
	1    2650 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR06
U 1 1 6011AE9F
P 1350 5200
F 0 "#PWR06" H 1350 5050 50  0001 C CNN
F 1 "+24V" H 1365 5373 50  0000 C CNN
F 2 "" H 1350 5200 50  0001 C CNN
F 3 "" H 1350 5200 50  0001 C CNN
	1    1350 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4400 1200 4500
Connection ~ 1200 4500
Wire Wire Line
	1200 4500 1400 4500
$Comp
L Device:R R1
U 1 1 6011E672
P 4900 2150
F 0 "R1" H 4970 2196 50  0000 L CNN
F 1 "R2k" H 4970 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4830 2150 50  0001 C CNN
F 3 "~" H 4900 2150 50  0001 C CNN
	1    4900 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6011E72E
P 5150 2150
F 0 "R2" H 5220 2196 50  0000 L CNN
F 1 "R2k" H 5220 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5080 2150 50  0001 C CNN
F 3 "~" H 5150 2150 50  0001 C CNN
	1    5150 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR026
U 1 1 6011E814
P 5000 1950
F 0 "#PWR026" H 5000 1800 50  0001 C CNN
F 1 "+3.3V" H 5015 2123 50  0000 C CNN
F 2 "" H 5000 1950 50  0001 C CNN
F 3 "" H 5000 1950 50  0001 C CNN
	1    5000 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1950 4900 1950
Wire Wire Line
	4900 1950 4900 2000
Wire Wire Line
	5000 1950 5150 1950
Wire Wire Line
	5150 1950 5150 2000
Connection ~ 5000 1950
Wire Wire Line
	5150 2400 5150 2300
$Comp
L power:+5V #PWR029
U 1 1 601491D1
P 7600 3500
F 0 "#PWR029" H 7600 3350 50  0001 C CNN
F 1 "+5V" H 7615 3673 50  0000 C CNN
F 2 "" H 7600 3500 50  0001 C CNN
F 3 "" H 7600 3500 50  0001 C CNN
	1    7600 3500
	-1   0    0    1   
$EndComp
Text Label 7500 3400 0    50   ~ 0
POUT
$Comp
L power:GND #PWR04
U 1 1 6015681A
P 1200 4150
F 0 "#PWR04" H 1200 3900 50  0001 C CNN
F 1 "GND" H 1205 3977 50  0000 C CNN
F 2 "" H 1200 4150 50  0001 C CNN
F 3 "" H 1200 4150 50  0001 C CNN
	1    1200 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4200 1350 4200
Wire Wire Line
	1350 4200 1350 4150
Wire Wire Line
	1350 4150 1200 4150
$Comp
L power:GND #PWR07
U 1 1 6015AA91
P 1400 5950
F 0 "#PWR07" H 1400 5700 50  0001 C CNN
F 1 "GND" H 1405 5777 50  0000 C CNN
F 2 "" H 1400 5950 50  0001 C CNN
F 3 "" H 1400 5950 50  0001 C CNN
	1    1400 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6250 1500 5950
Wire Wire Line
	1500 5950 1400 5950
$Comp
L Connector_Generic:Conn_01x05 J11
U 1 1 60127D8D
P 8100 5650
F 0 "J11" H 8180 5692 50  0000 L CNN
F 1 "Conn_01x05_RTC" H 8180 5601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 8100 5650 50  0001 C CNN
F 3 "~" H 8100 5650 50  0001 C CNN
	1    8100 5650
	1    0    0    -1  
$EndComp
Text Label 7750 5550 0    50   ~ 0
VPIN
Text Label 7750 5650 0    50   ~ 0
SDA
Text Label 7750 5750 0    50   ~ 0
SCL
NoConn ~ 7900 5850
$Comp
L power:GND #PWR031
U 1 1 6012C796
P 7600 5450
F 0 "#PWR031" H 7600 5200 50  0001 C CNN
F 1 "GND" H 7605 5277 50  0000 C CNN
F 2 "" H 7600 5450 50  0001 C CNN
F 3 "" H 7600 5450 50  0001 C CNN
	1    7600 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5450 7900 5450
Wire Wire Line
	7750 5550 7900 5550
Wire Wire Line
	7750 5650 7900 5650
Wire Wire Line
	7750 5750 7900 5750
$Comp
L Device:R R3
U 1 1 6013ECC6
P 900 1350
F 0 "R3" H 970 1396 50  0000 L CNN
F 1 "R10k" H 970 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 830 1350 50  0001 C CNN
F 3 "~" H 900 1350 50  0001 C CNN
	1    900  1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6013ED4E
P 1200 1350
F 0 "R4" H 1270 1396 50  0000 L CNN
F 1 "R10k" H 1270 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1130 1350 50  0001 C CNN
F 3 "~" H 1200 1350 50  0001 C CNN
	1    1200 1350
	1    0    0    -1  
$EndComp
Text Label 900  1000 0    50   ~ 0
VPIN
Wire Wire Line
	900  1000 900  1050
Wire Wire Line
	900  1050 1200 1050
Wire Wire Line
	1200 1050 1200 1200
Connection ~ 900  1050
Wire Wire Line
	900  1050 900  1200
$Comp
L Connector:Conn_01x02_Male J12
U 1 1 60148FF6
P 700 1750
F 0 "J12" H 806 1928 50  0000 C CNN
F 1 "Conn_HtrTh" H 806 1837 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 700 1750 50  0001 C CNN
F 3 "~" H 700 1750 50  0001 C CNN
	1    700  1750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J13
U 1 1 60149078
P 1400 1850
F 0 "J13" H 1373 1730 50  0000 R CNN
F 1 "Conn_BattTh" H 1373 1821 50  0000 R CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 1400 1850 50  0001 C CNN
F 3 "~" H 1400 1850 50  0001 C CNN
	1    1400 1850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 60149136
P 1050 2000
F 0 "#PWR09" H 1050 1750 50  0001 C CNN
F 1 "GND" H 1055 1827 50  0000 C CNN
F 2 "" H 1050 2000 50  0001 C CNN
F 3 "" H 1050 2000 50  0001 C CNN
	1    1050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1850 900  2000
Wire Wire Line
	900  2000 1050 2000
Wire Wire Line
	1200 1850 1200 2000
Wire Wire Line
	1200 2000 1050 2000
Connection ~ 1050 2000
Text Label 1200 1600 0    50   ~ 0
THBAT
Text Label 900  1600 0    50   ~ 0
THHTR
Wire Wire Line
	900  1500 900  1750
Wire Wire Line
	1200 1500 1200 1750
Text Label 7000 1750 0    50   ~ 0
HTEN
$Comp
L Regulator_Linear:SPX3819M5-L-3-3 U1
U 1 1 60178915
P 9100 3450
F 0 "U1" H 9100 3792 50  0000 C CNN
F 1 "SPX3819M5-L-3-3" H 9100 3701 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 9100 3775 50  0001 C CNN
F 3 "https://www.exar.com/content/document.ashx?id=22106&languageid=1033&type=Datasheet&partnumber=SPX3819&filename=SPX3819.pdf&part=SPX3819" H 9100 3450 50  0001 C CNN
	1    9100 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 60178A97
P 9100 3750
F 0 "#PWR033" H 9100 3500 50  0001 C CNN
F 1 "GND" H 9105 3577 50  0000 C CNN
F 2 "" H 9100 3750 50  0001 C CNN
F 3 "" H 9100 3750 50  0001 C CNN
	1    9100 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60178C04
P 9550 3600
F 0 "C2" H 9665 3646 50  0000 L CNN
F 1 "C10uF" H 9665 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9588 3450 50  0001 C CNN
F 3 "~" H 9550 3600 50  0001 C CNN
	1    9550 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60178CA6
P 9900 3600
F 0 "C3" H 10015 3646 50  0000 L CNN
F 1 "C1uF" H 10015 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9938 3450 50  0001 C CNN
F 3 "~" H 9900 3600 50  0001 C CNN
	1    9900 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 60178D25
P 9550 3850
F 0 "#PWR034" H 9550 3600 50  0001 C CNN
F 1 "GND" H 9555 3677 50  0000 C CNN
F 2 "" H 9550 3850 50  0001 C CNN
F 3 "" H 9550 3850 50  0001 C CNN
	1    9550 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 3850 9550 3750
Wire Wire Line
	9550 3750 9900 3750
Connection ~ 9550 3750
Wire Wire Line
	9400 3350 9550 3350
Wire Wire Line
	9550 3350 9550 3450
Wire Wire Line
	9550 3350 9900 3350
Wire Wire Line
	9900 3350 9900 3450
Connection ~ 9550 3350
Text Label 10000 3350 0    50   ~ 0
Eth3.3
Wire Wire Line
	10000 3350 9900 3350
Connection ~ 9900 3350
Text Label 9700 1050 0    50   ~ 0
Eth3.3
NoConn ~ 9400 3450
$Comp
L Device:R_Small R5
U 1 1 601A923F
P 8600 3550
F 0 "R5" V 8404 3550 50  0000 C CNN
F 1 "100K" V 8495 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8600 3550 50  0001 C CNN
F 3 "~" H 8600 3550 50  0001 C CNN
	1    8600 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 3200 8500 3350
Wire Wire Line
	8500 3350 8800 3350
Wire Wire Line
	8500 3350 8500 3550
Connection ~ 8500 3350
Wire Wire Line
	8700 3550 8700 3450
Wire Wire Line
	8700 3450 8800 3450
$Comp
L Device:C C1
U 1 1 601B844F
P 8500 3700
F 0 "C1" H 8615 3746 50  0000 L CNN
F 1 "C10uF" H 8615 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8538 3550 50  0001 C CNN
F 3 "~" H 8500 3700 50  0001 C CNN
	1    8500 3700
	1    0    0    -1  
$EndComp
Connection ~ 8500 3550
$Comp
L power:GND #PWR032
U 1 1 601B8538
P 8500 3850
F 0 "#PWR032" H 8500 3600 50  0001 C CNN
F 1 "GND" H 8505 3677 50  0000 C CNN
F 2 "" H 8500 3850 50  0001 C CNN
F 3 "" H 8500 3850 50  0001 C CNN
	1    8500 3850
	1    0    0    -1  
$EndComp
Text Label 8300 3200 0    50   ~ 0
POUT
Wire Wire Line
	8300 3200 8500 3200
$Comp
L Regulator_Switching:TSR_1-2450 PS1
U 1 1 601BDF5C
P 3600 7150
F 0 "PS1" H 3600 7517 50  0000 C CNN
F 1 "TSR_1-2450" H 3600 7426 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_TRACO_TSR-1_THT" H 3600 7000 50  0001 L CIN
F 3 "http://www.tracopower.com/products/tsr1.pdf" H 3600 7150 50  0001 C CNN
	1    3600 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 601C73D5
P 3600 7450
F 0 "#PWR018" H 3600 7200 50  0001 C CNN
F 1 "GND" H 3605 7277 50  0000 C CNN
F 2 "" H 3600 7450 50  0001 C CNN
F 3 "" H 3600 7450 50  0001 C CNN
	1    3600 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 7450 3600 7350
$Comp
L power:+5V #PWR019
U 1 1 601CCD37
P 4000 6950
F 0 "#PWR019" H 4000 6800 50  0001 C CNN
F 1 "+5V" H 4015 7123 50  0000 C CNN
F 2 "" H 4000 6950 50  0001 C CNN
F 3 "" H 4000 6950 50  0001 C CNN
	1    4000 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6950 4000 7050
$Comp
L TEC_2-2411:TEC_2-2411 PS2
U 1 1 601D750D
P 5000 6000
F 0 "PS2" H 6030 5746 50  0000 L CNN
F 1 "TEC_2-2411" H 6030 5655 50  0000 L CNN
F 2 "TEC_2:TEC24811" H 5000 6000 50  0001 L BNN
F 3 "" H 5000 6000 50  0001 L BNN
F 4 "https://www.mouser.co.uk/ProductDetail/TRACO-Power/TEC-2-2411?qs=55YtniHzbhC8puD1fVWd5Q%3D%3D" H 5000 6000 50  0001 L BNN "MOUSER_PRICE-STOCK"
F 5 "TEC 2-2411" H 5000 6000 50  0001 L BNN "MANUFACTURER_PART_NUMBER"
F 6 "mm" H 5000 6000 50  0001 L BNN "HEIGHT"
F 7 "495-TEC2-2411" H 5000 6000 50  0001 L BNN "MOUSER_PART_NUMBER"
F 8 "Traco Power" H 5000 6000 50  0001 L BNN "MANUFACTURER_NAME"
F 9 "Isolated DC/DC Converters 2W 18-36Vin 5V 400mA SIP8 Iso Reg" H 5000 6000 50  0001 L BNN "DESCRIPTION"
	1    5000 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 601D774F
P 5200 5600
F 0 "#PWR022" H 5200 5350 50  0001 C CNN
F 1 "GND" H 5205 5427 50  0000 C CNN
F 2 "" H 5200 5600 50  0001 C CNN
F 3 "" H 5200 5600 50  0001 C CNN
	1    5200 5600
	1    0    0    -1  
$EndComp
NoConn ~ 5000 6300
NoConn ~ 5000 6600
$Comp
L power:GND #PWR024
U 1 1 601E1E96
P 4900 6650
F 0 "#PWR024" H 4900 6400 50  0001 C CNN
F 1 "GND" H 4905 6477 50  0000 C CNN
F 2 "" H 4900 6650 50  0001 C CNN
F 3 "" H 4900 6650 50  0001 C CNN
	1    4900 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR023
U 1 1 601E1F27
P 4800 6400
F 0 "#PWR023" H 4800 6250 50  0001 C CNN
F 1 "+5V" H 4815 6573 50  0000 C CNN
F 2 "" H 4800 6400 50  0001 C CNN
F 3 "" H 4800 6400 50  0001 C CNN
	1    4800 6400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 6400 5000 6400
Wire Wire Line
	4900 6650 4900 6500
Wire Wire Line
	4900 6500 5000 6500
Text Label 3450 6500 0    50   ~ 0
A4
Wire Wire Line
	2400 3800 2650 3800
Wire Wire Line
	2650 3800 2650 3700
Wire Wire Line
	2650 4300 2550 4300
$Comp
L mp930:MP930-0.002-1 RP1
U 1 1 601F8C31
P 2650 3700
F 0 "RP1" V 2954 3778 50  0000 L CNN
F 1 "MP930-0.002-1" V 3045 3778 50  0000 L CNN
F 2 "mp930:Caddock-MP930-0-0-Recommended_Land_Pattern_" H 2650 4100 50  0001 L CNN
F 3 "http://www.caddock.com/Online_catalog/Mrktg_Lit/MP9000_Series.pdf" H 2650 4200 50  0001 L CNN
F 4 "No" H 2650 4300 50  0001 L CNN "automotive"
F 5 "Res" H 2650 4400 50  0001 L CNN "category"
F 6 "Thick Film" H 2650 4500 50  0001 L CNN "composition"
F 7 "Passive Components" H 2650 4600 50  0001 L CNN "device class L1"
F 8 "Resistors" H 2650 4700 50  0001 L CNN "device class L2"
F 9 "Through-Hole Resistors" H 2650 4800 50  0001 L CNN "device class L3"
F 10 "RES 0.075 OHM 30W 1% TO220" H 2650 4900 50  0001 L CNN "digikey description"
F 11 "MP930-0.075F-ND" H 2650 5000 50  0001 L CNN "digikey part number"
F 12 "20.58mm" H 2650 5100 50  0001 L CNN "height"
F 13 "Yes" H 2650 5200 50  0001 L CNN "lead free"
F 14 "7184e12c71dccc63" H 2650 5300 50  0001 L CNN "library id"
F 15 "Caddock" H 2650 5400 50  0001 L CNN "manufacturer"
F 16 "Thick Film Resistors - Through Hole 0.075 ohm 30W 1% TO-220 PKG PWR FILM" H 2650 5500 50  0001 L CNN "mouser description"
F 17 "684-MP930-0.075" H 2650 5600 50  0001 L CNN "mouser part number"
F 18 "TO-220-2" H 2650 5700 50  0001 L CNN "package"
F 19 "30W" H 2650 5800 50  0001 L CNN "power rating"
F 20 "0.075Ω" H 2650 5900 50  0001 L CNN "resistance"
F 21 "Yes" H 2650 6000 50  0001 L CNN "rohs"
F 22 "MP930" H 2650 6100 50  0001 L CNN "series"
F 23 "2.54mm" H 2650 6200 50  0001 L CNN "standoff height"
F 24 "0/+200ppm/°C" H 2650 6300 50  0001 L CNN "temperature coefficient"
F 25 "+150°C" H 2650 6400 50  0001 L CNN "temperature range high"
F 26 "-55°C" H 2650 6500 50  0001 L CNN "temperature range low"
F 27 "1%" H 2650 6600 50  0001 L CNN "tolerance"
F 28 "250V" H 2650 6700 50  0001 L CNN "voltage rating"
	1    2650 3700
	0    1    1    0   
$EndComp
Connection ~ 2650 3800
$Comp
L mp930:MP930-0.002-1 RP2
U 1 1 601F9011
P 2750 5750
F 0 "RP2" V 3054 5828 50  0000 L CNN
F 1 "MP930-0.002-1" V 3145 5828 50  0000 L CNN
F 2 "mp930:Caddock-MP930-0-0-Recommended_Land_Pattern_" H 2750 6150 50  0001 L CNN
F 3 "http://www.caddock.com/Online_catalog/Mrktg_Lit/MP9000_Series.pdf" H 2750 6250 50  0001 L CNN
F 4 "No" H 2750 6350 50  0001 L CNN "automotive"
F 5 "Res" H 2750 6450 50  0001 L CNN "category"
F 6 "Thick Film" H 2750 6550 50  0001 L CNN "composition"
F 7 "Passive Components" H 2750 6650 50  0001 L CNN "device class L1"
F 8 "Resistors" H 2750 6750 50  0001 L CNN "device class L2"
F 9 "Through-Hole Resistors" H 2750 6850 50  0001 L CNN "device class L3"
F 10 "RES 0.075 OHM 30W 1% TO220" H 2750 6950 50  0001 L CNN "digikey description"
F 11 "MP930-0.075F-ND" H 2750 7050 50  0001 L CNN "digikey part number"
F 12 "20.58mm" H 2750 7150 50  0001 L CNN "height"
F 13 "Yes" H 2750 7250 50  0001 L CNN "lead free"
F 14 "7184e12c71dccc63" H 2750 7350 50  0001 L CNN "library id"
F 15 "Caddock" H 2750 7450 50  0001 L CNN "manufacturer"
F 16 "Thick Film Resistors - Through Hole 0.075 ohm 30W 1% TO-220 PKG PWR FILM" H 2750 7550 50  0001 L CNN "mouser description"
F 17 "684-MP930-0.075" H 2750 7650 50  0001 L CNN "mouser part number"
F 18 "TO-220-2" H 2750 7750 50  0001 L CNN "package"
F 19 "30W" H 2750 7850 50  0001 L CNN "power rating"
F 20 "0.075Ω" H 2750 7950 50  0001 L CNN "resistance"
F 21 "Yes" H 2750 8050 50  0001 L CNN "rohs"
F 22 "MP930" H 2750 8150 50  0001 L CNN "series"
F 23 "2.54mm" H 2750 8250 50  0001 L CNN "standoff height"
F 24 "0/+200ppm/°C" H 2750 8350 50  0001 L CNN "temperature coefficient"
F 25 "+150°C" H 2750 8450 50  0001 L CNN "temperature range high"
F 26 "-55°C" H 2750 8550 50  0001 L CNN "temperature range low"
F 27 "1%" H 2750 8650 50  0001 L CNN "tolerance"
F 28 "250V" H 2750 8750 50  0001 L CNN "voltage rating"
	1    2750 5750
	0    1    1    0   
$EndComp
Connection ~ 2750 5850
Wire Wire Line
	4800 6100 5000 6100
Wire Wire Line
	2850 6350 2750 6350
Connection ~ 2750 6350
Text Label 4800 6100 0    50   ~ 0
BATPWR
Text Label 2850 6350 0    50   ~ 0
BATPWR
Text Label 2750 4300 0    50   ~ 0
SOLPWR
Wire Wire Line
	2750 4300 2650 4300
Connection ~ 2650 4300
Text Label 2950 7050 0    50   ~ 0
SOLPWR
Wire Wire Line
	2950 7050 3200 7050
$Comp
L Connector:Screw_Terminal_01x04 JP2
U 1 1 602F12FE
P 3400 5750
F 0 "JP2" H 3480 5742 50  0000 L CNN
F 1 "Batt_Screw" H 3480 5651 50  0000 L CNN
F 2 "" H 3400 5750 50  0001 C CNN
F 3 "~" H 3400 5750 50  0001 C CNN
	1    3400 5750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 JP1
U 1 1 60307790
P 3450 3850
F 0 "JP1" H 3530 3842 50  0000 L CNN
F 1 "Solar_Screw" H 3530 3751 50  0000 L CNN
F 2 "" H 3450 3850 50  0001 C CNN
F 3 "~" H 3450 3850 50  0001 C CNN
	1    3450 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5850 2900 5850
Wire Wire Line
	2900 5850 2900 5650
Wire Wire Line
	2900 5650 3200 5650
Wire Wire Line
	2650 6350 2650 6500
Wire Wire Line
	2650 6500 3200 6500
Wire Wire Line
	3200 6500 3200 5950
Connection ~ 2650 6350
Wire Wire Line
	2650 6350 2750 6350
$Comp
L power:GND #PWR0101
U 1 1 60317591
P 3050 5800
F 0 "#PWR0101" H 3050 5550 50  0001 C CNN
F 1 "GND" H 3055 5627 50  0000 C CNN
F 2 "" H 3050 5800 50  0001 C CNN
F 3 "" H 3050 5800 50  0001 C CNN
	1    3050 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 5800 3050 5750
Wire Wire Line
	3050 5750 3150 5750
Wire Wire Line
	3150 5750 3150 5850
Wire Wire Line
	3150 5850 3200 5850
Connection ~ 3150 5750
Wire Wire Line
	3150 5750 3200 5750
Wire Wire Line
	2650 3800 2950 3800
Wire Wire Line
	2950 3800 2950 3750
Wire Wire Line
	2950 3750 3250 3750
Wire Wire Line
	2550 4300 2550 4400
Wire Wire Line
	2550 4400 3250 4400
Wire Wire Line
	3250 4400 3250 4050
Connection ~ 2550 4300
Wire Wire Line
	2550 4300 2400 4300
$Comp
L power:GND #PWR0102
U 1 1 6033F71A
P 3100 3850
F 0 "#PWR0102" H 3100 3600 50  0001 C CNN
F 1 "GND" H 3105 3677 50  0000 C CNN
F 2 "" H 3100 3850 50  0001 C CNN
F 3 "" H 3100 3850 50  0001 C CNN
	1    3100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3850 3200 3850
Wire Wire Line
	3200 3850 3200 3950
Wire Wire Line
	3200 3950 3250 3950
Connection ~ 3200 3850
Wire Wire Line
	3200 3850 3250 3850
$Comp
L Transistor_BJT:MMBT5551L Q1
U 1 1 601F74BC
P 4300 5700
F 0 "Q1" H 4491 5746 50  0000 L CNN
F 1 "MMBT5551L" H 4491 5655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4500 5625 50  0001 L CIN
F 3 "www.onsemi.com/pub/Collateral/MMBT5550LT1-D.PDF" H 4300 5700 50  0001 L CNN
	1    4300 5700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT5551L Q2
U 1 1 601F767C
P 4100 6250
F 0 "Q2" H 4291 6296 50  0000 L CNN
F 1 "MMBT5551L" H 4291 6205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4300 6175 50  0001 L CIN
F 3 "www.onsemi.com/pub/Collateral/MMBT5550LT1-D.PDF" H 4100 6250 50  0001 L CNN
	1    4100 6250
	1    0    0    -1  
$EndComp
Text Label 3800 5300 0    50   ~ 0
BATPWR
Wire Wire Line
	3800 5300 3800 5350
Wire Wire Line
	3800 5350 4100 5350
$Comp
L Device:R R6
U 1 1 602110C3
P 4100 5500
F 0 "R6" H 4170 5546 50  0000 L CNN
F 1 "R68k" H 4170 5455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4030 5500 50  0001 C CNN
F 3 "~" H 4100 5500 50  0001 C CNN
	1    4100 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5650 4100 5700
Wire Wire Line
	4100 5700 4100 6050
Connection ~ 4100 5700
Wire Wire Line
	4100 6050 4200 6050
$Comp
L power:GND #PWR0103
U 1 1 6024E55B
P 4200 6500
F 0 "#PWR0103" H 4200 6250 50  0001 C CNN
F 1 "GND" H 4205 6327 50  0000 C CNN
F 2 "" H 4200 6500 50  0001 C CNN
F 3 "" H 4200 6500 50  0001 C CNN
	1    4200 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 6450 4200 6500
$Comp
L Device:R_Small R8
U 1 1 602A73D7
P 4500 6050
F 0 "R8" V 4304 6050 50  0000 C CNN
F 1 "15K" V 4395 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4500 6050 50  0001 C CNN
F 3 "~" H 4500 6050 50  0001 C CNN
	1    4500 6050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 602A7634
P 3650 6350
F 0 "R7" V 3454 6350 50  0000 C CNN
F 1 "5.1K" V 3545 6350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3650 6350 50  0001 C CNN
F 3 "~" H 3650 6350 50  0001 C CNN
	1    3650 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 6500 3550 6500
Wire Wire Line
	3550 6500 3550 6350
Wire Wire Line
	3750 6350 3900 6350
Wire Wire Line
	3900 6350 3900 6250
$Comp
L Device:R_Small R9
U 1 1 602B9960
P 4650 6200
F 0 "R9" V 4454 6200 50  0000 C CNN
F 1 "1K" V 4545 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4650 6200 50  0001 C CNN
F 3 "~" H 4650 6200 50  0001 C CNN
	1    4650 6200
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 5900 4400 6050
Wire Wire Line
	4600 6050 4600 6150
Wire Wire Line
	4600 6150 4550 6150
Wire Wire Line
	4550 6150 4550 6200
Wire Wire Line
	4750 6200 5000 6200
Wire Wire Line
	4100 5350 4400 5350
Wire Wire Line
	4400 5350 4400 5500
Connection ~ 4100 5350
$Comp
L power:+5V #PWR0104
U 1 1 601F6B4D
P 1350 2950
F 0 "#PWR0104" H 1350 2800 50  0001 C CNN
F 1 "+5V" H 1365 3123 50  0000 C CNN
F 2 "" H 1350 2950 50  0001 C CNN
F 3 "" H 1350 2950 50  0001 C CNN
	1    1350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3150 1350 3150
Wire Wire Line
	1350 3150 1350 2950
$Comp
L power:GND #PWR0105
U 1 1 602008F6
P 1400 3250
F 0 "#PWR0105" H 1400 3000 50  0001 C CNN
F 1 "GND" H 1405 3077 50  0000 C CNN
F 2 "" H 1400 3250 50  0001 C CNN
F 3 "" H 1400 3250 50  0001 C CNN
	1    1400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3250 1400 3250
Text Label 1250 3350 0    50   ~ 0
RX
Text Label 1250 3450 0    50   ~ 0
TX
Wire Wire Line
	1200 3350 1250 3350
Wire Wire Line
	1200 3450 1250 3450
$Comp
L Connector:Conn_01x04_Male JM1
U 1 1 601F67BE
P 1000 3250
F 0 "JM1" H 1106 3528 50  0000 C CNN
F 1 "RockBLOCK Modem" H 1106 3437 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 1000 3250 50  0001 C CNN
F 3 "~" H 1000 3250 50  0001 C CNN
	1    1000 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male JM2
U 1 1 6021EF56
P 9050 5150
F 0 "JM2" H 9156 5428 50  0000 C CNN
F 1 "I2C Connector" H 9156 5337 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 9050 5150 50  0001 C CNN
F 3 "~" H 9050 5150 50  0001 C CNN
	1    9050 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 60229670
P 9500 5000
F 0 "#PWR0106" H 9500 4850 50  0001 C CNN
F 1 "+5V" H 9515 5173 50  0000 C CNN
F 2 "" H 9500 5000 50  0001 C CNN
F 3 "" H 9500 5000 50  0001 C CNN
	1    9500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5050 9500 5050
Wire Wire Line
	9500 5050 9500 5000
$Comp
L power:GND #PWR0107
U 1 1 60233C1C
P 9550 5150
F 0 "#PWR0107" H 9550 4900 50  0001 C CNN
F 1 "GND" H 9555 4977 50  0000 C CNN
F 2 "" H 9550 5150 50  0001 C CNN
F 3 "" H 9550 5150 50  0001 C CNN
	1    9550 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5150 9550 5150
Text Label 9400 5250 2    50   ~ 0
SCL
Text Label 9400 5350 2    50   ~ 0
SDA
Wire Wire Line
	9250 5350 9400 5350
Wire Wire Line
	9250 5250 9400 5250
Wire Wire Line
	5200 5600 5000 5600
Wire Wire Line
	5000 5600 5000 6000
$Comp
L power:+5V #PWR0108
U 1 1 601FBCB3
P 7000 1150
F 0 "#PWR0108" H 7000 1000 50  0001 C CNN
F 1 "+5V" H 7015 1323 50  0000 C CNN
F 2 "" H 7000 1150 50  0001 C CNN
F 3 "" H 7000 1150 50  0001 C CNN
	1    7000 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 60285910
P 7550 3300
F 0 "#PWR0110" H 7550 3150 50  0001 C CNN
F 1 "+3.3V" H 7565 3473 50  0000 C CNN
F 2 "" H 7550 3300 50  0001 C CNN
F 3 "" H 7550 3300 50  0001 C CNN
	1    7550 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 602A5FC1
P 7500 5000
F 0 "#PWR0111" H 7500 4750 50  0001 C CNN
F 1 "GND" H 7505 4827 50  0000 C CNN
F 2 "" H 7500 5000 50  0001 C CNN
F 3 "" H 7500 5000 50  0001 C CNN
	1    7500 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 602BC196
P 9800 1250
F 0 "#PWR0113" H 9800 1100 50  0001 C CNN
F 1 "+5V" H 9815 1423 50  0000 C CNN
F 2 "" H 9800 1250 50  0001 C CNN
F 3 "" H 9800 1250 50  0001 C CNN
	1    9800 1250
	1    0    0    -1  
$EndComp
$Comp
L Adafruit:FEATHER_M0_BASIC_PROTO U10
U 1 1 60200C7D
P 3500 1750
F 0 "U10" H 3500 2917 50  0000 C CNN
F 1 "FEATHER_M0_ADALOGGER" H 3500 2826 50  0000 C CNN
F 2 "SMARTBATT:MODULE_FEATHER_M0_BASIC_PROTO" H 3500 1750 50  0001 L BNN
F 3 "" H 3500 1750 50  0001 L BNN
F 4 "Adafruit" H 3500 1750 50  0001 L BNN "MANUFACTURER"
F 5 "Manufacturer Recommendation" H 3500 1750 50  0001 L BNN "STANDARD"
	1    3500 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1050 2600 1050
Wire Wire Line
	4600 900  4450 900 
Wire Wire Line
	4450 2600 4550 2600
Wire Wire Line
	2350 1350 2600 1350
Wire Wire Line
	2350 1450 2600 1450
Wire Wire Line
	2350 1550 2600 1550
Wire Wire Line
	2350 1650 2600 1650
Wire Wire Line
	2350 1750 2600 1750
Wire Wire Line
	2350 1950 2600 1950
Wire Wire Line
	2350 1850 2600 1850
Wire Wire Line
	2350 2050 2600 2050
Wire Wire Line
	2350 2150 2600 2150
Wire Wire Line
	2350 2250 2600 2250
Wire Wire Line
	2350 2350 2600 2350
Wire Wire Line
	2350 2450 2600 2450
Wire Wire Line
	4700 1000 4450 1000
Wire Wire Line
	2500 1150 2600 1150
Wire Wire Line
	4750 2200 4450 2200
Wire Wire Line
	4700 2100 4450 2100
Wire Wire Line
	4750 2000 4450 2000
Wire Wire Line
	4700 1900 4450 1900
Wire Wire Line
	4700 1800 4450 1800
Wire Wire Line
	4700 1700 4450 1700
Wire Wire Line
	4650 1600 4450 1600
Wire Wire Line
	4450 2300 4900 2300
Wire Wire Line
	4450 2400 5150 2400
$Comp
L power:+5V #PWR0109
U 1 1 60226871
P 4800 1100
F 0 "#PWR0109" H 4800 950 50  0001 C CNN
F 1 "+5V" H 4815 1273 50  0000 C CNN
F 2 "" H 4800 1100 50  0001 C CNN
F 3 "" H 4800 1100 50  0001 C CNN
	1    4800 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1100 4800 1100
$Comp
L Adafruit:FEATHERWING_POWER_RELAY U11
U 1 1 6024B34D
P 6200 1800
F 0 "U11" H 6250 2967 50  0000 C CNN
F 1 "FEATHERWING_POWER_RELAY" H 6250 2876 50  0000 C CNN
F 2 "SMARTBATT:MODULE_FEATHER_M0_BASIC_PROTO" H 5950 2900 50  0001 L BNN
F 3 "" H 6800 1750 50  0001 L BNN
F 4 "Adafruit" H 5950 3100 50  0001 L BNN "MANUFACTURER"
F 5 "Manufacturer Recommendation" H 5950 3000 50  0001 L BNN "STANDARD"
	1    6200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1750 6900 1750
Wire Wire Line
	6900 2650 7000 2650
Wire Wire Line
	7000 1150 6900 1150
Wire Wire Line
	6950 900  6950 950 
Wire Wire Line
	6950 950  6900 950 
Wire Wire Line
	5450 1050 5600 1050
$Comp
L Adafruit:FEATHERWING_ETHERNET U12
U 1 1 602BBF46
P 8950 1900
F 0 "U12" H 9000 3067 50  0000 C CNN
F 1 "FEATHERWING_ETHERNET" H 9000 2976 50  0000 C CNN
F 2 "SMARTBATT:MODULE_FEATHER_M0_BASIC_PROTO" H 8700 3000 50  0001 L BNN
F 3 "" H 9550 1850 50  0001 L BNN
F 4 "Adafruit" H 8700 3200 50  0001 L BNN "MANUFACTURER"
F 5 "Manufacturer Recommendation" H 8700 3100 50  0001 L BNN "STANDARD"
	1    8950 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1150 8350 1150
Wire Wire Line
	9650 1050 9700 1050
NoConn ~ 9650 1150
NoConn ~ 6900 1050
Wire Wire Line
	9650 1250 9800 1250
Wire Wire Line
	8150 2350 8350 2350
Wire Wire Line
	8150 2250 8350 2250
Wire Wire Line
	8150 2150 8350 2150
Wire Wire Line
	9650 2750 9750 2750
Wire Wire Line
	9750 2750 9750 2800
Wire Wire Line
	9900 2050 9650 2050
NoConn ~ 5600 1150
NoConn ~ 5600 1350
NoConn ~ 5600 1450
NoConn ~ 5600 1550
NoConn ~ 5600 1650
NoConn ~ 5600 1750
NoConn ~ 5600 1850
NoConn ~ 5600 1950
NoConn ~ 5600 2050
NoConn ~ 5600 2150
NoConn ~ 5600 2250
NoConn ~ 5600 2350
NoConn ~ 5600 2450
NoConn ~ 6900 1650
NoConn ~ 6900 1850
NoConn ~ 6900 1950
NoConn ~ 6900 2050
NoConn ~ 6900 2150
NoConn ~ 6900 2250
NoConn ~ 6900 2350
NoConn ~ 6900 2450
NoConn ~ 8350 1250
NoConn ~ 8350 1450
NoConn ~ 8350 1550
NoConn ~ 8350 1650
NoConn ~ 8350 1750
NoConn ~ 8350 1850
NoConn ~ 8350 1950
NoConn ~ 8350 2050
NoConn ~ 9650 1750
NoConn ~ 9650 1850
NoConn ~ 9650 1950
NoConn ~ 9650 2150
NoConn ~ 9650 2250
NoConn ~ 9650 2350
NoConn ~ 9650 2450
NoConn ~ 9650 2550
NoConn ~ 8350 2450
NoConn ~ 8350 2550
$Comp
L Adafruit:FEATHERWING_MINI_RELAY U14
U 1 1 604FC206
P 6700 4150
F 0 "U14" H 6750 5317 50  0000 C CNN
F 1 "FEATHERWING_MINI_RELAY" H 6750 5226 50  0000 C CNN
F 2 "SMARTBATT:MODULE_FEATHER_M0_BASIC_PROTO" H 6450 5250 50  0001 L BNN
F 3 "" H 7300 4100 50  0001 L BNN
F 4 "Adafruit" H 6450 5450 50  0001 L BNN "MANUFACTURER"
F 5 "Manufacturer Recommendation" H 6450 5350 50  0001 L BNN "STANDARD"
	1    6700 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3400 6100 3400
Wire Wire Line
	7550 3300 7400 3300
Wire Wire Line
	7500 5000 7400 5000
Wire Wire Line
	7500 4400 7400 4400
Wire Wire Line
	7500 4500 7400 4500
Wire Wire Line
	7600 3500 7400 3500
Wire Wire Line
	7500 3400 7400 3400
Text Label 3900 3500 0    50   ~ 0
~RST
$Comp
L power:+5V #PWR0112
U 1 1 60564864
P 5600 3600
F 0 "#PWR0112" H 5600 3450 50  0001 C CNN
F 1 "+5V" H 5615 3773 50  0000 C CNN
F 2 "" H 5600 3600 50  0001 C CNN
F 3 "" H 5600 3600 50  0001 C CNN
	1    5600 3600
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0114
U 1 1 6056486B
P 5550 3400
F 0 "#PWR0114" H 5550 3250 50  0001 C CNN
F 1 "+3.3V" H 5565 3573 50  0000 C CNN
F 2 "" H 5550 3400 50  0001 C CNN
F 3 "" H 5550 3400 50  0001 C CNN
	1    5550 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 60564871
P 5500 5100
F 0 "#PWR0115" H 5500 4850 50  0001 C CNN
F 1 "GND" H 5505 4927 50  0000 C CNN
F 2 "" H 5500 5100 50  0001 C CNN
F 3 "" H 5500 5100 50  0001 C CNN
	1    5500 5100
	1    0    0    -1  
$EndComp
$Comp
L Adafruit:FEATHERWING_MINI_RELAY U13
U 1 1 60564879
P 4700 4250
F 0 "U13" H 4750 5417 50  0000 C CNN
F 1 "FEATHERWING_MINI_RELAY" H 4750 5326 50  0000 C CNN
F 2 "SMARTBATT:MODULE_FEATHER_M0_BASIC_PROTO" H 4450 5350 50  0001 L BNN
F 3 "" H 5300 4200 50  0001 L BNN
F 4 "Adafruit" H 4450 5550 50  0001 L BNN "MANUFACTURER"
F 5 "Manufacturer Recommendation" H 4450 5450 50  0001 L BNN "STANDARD"
	1    4700 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3500 4100 3500
Wire Wire Line
	5550 3400 5400 3400
Wire Wire Line
	5500 5100 5400 5100
Wire Wire Line
	5600 3600 5400 3600
Text Label 5600 4300 2    50   ~ 0
SSET
Wire Wire Line
	5600 4300 5400 4300
Text Label 5650 4700 2    50   ~ 0
SUSET
Wire Wire Line
	5650 4700 5400 4700
NoConn ~ 4100 3600
NoConn ~ 4100 3800
NoConn ~ 4100 3900
NoConn ~ 4100 4000
NoConn ~ 4100 4100
NoConn ~ 4100 4200
NoConn ~ 4100 4300
NoConn ~ 4100 4400
NoConn ~ 4100 4500
NoConn ~ 4100 4600
NoConn ~ 4100 4700
NoConn ~ 4100 4800
NoConn ~ 4100 4900
NoConn ~ 5400 4900
NoConn ~ 5400 4800
NoConn ~ 5400 4600
NoConn ~ 5400 4500
NoConn ~ 5400 4400
NoConn ~ 5400 4200
NoConn ~ 5400 4100
NoConn ~ 5400 3500
NoConn ~ 6100 3500
NoConn ~ 6100 3700
NoConn ~ 6100 3800
NoConn ~ 6100 3900
NoConn ~ 6100 4000
NoConn ~ 6100 4100
NoConn ~ 6100 4200
NoConn ~ 6100 4300
NoConn ~ 6100 4400
NoConn ~ 6100 4500
NoConn ~ 6100 4600
NoConn ~ 6100 4700
NoConn ~ 6100 4800
NoConn ~ 7400 4800
NoConn ~ 7400 4700
NoConn ~ 7400 4600
NoConn ~ 7400 4300
NoConn ~ 7400 4200
NoConn ~ 7400 4100
NoConn ~ 7400 4000
$EndSCHEMATC
