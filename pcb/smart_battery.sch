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
$Comp
L Connector_Generic:Conn_01x16 J5
U 1 1 5D375C76
P 9050 1750
F 0 "J5" H 8969 725 50  0000 C CNN
F 1 "feather long" H 8969 816 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 9050 1750 50  0001 C CNN
F 3 "~" H 9050 1750 50  0001 C CNN
	1    9050 1750
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J6
U 1 1 5D375CC4
P 9450 1950
F 0 "J6" H 9370 1125 50  0000 C CNN
F 1 "feather short" H 9370 1216 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 9450 1950 50  0001 C CNN
F 3 "~" H 9450 1950 50  0001 C CNN
	1    9450 1950
	-1   0    0    1   
$EndComp
Text Label 8650 950  0    50   ~ 0
~RST
Text Label 8650 1950 0    50   ~ 0
SCK
Text Label 8650 2050 0    50   ~ 0
MOSI
Text Label 8650 2150 0    50   ~ 0
MISO
Text Label 8650 2450 0    50   ~ 0
FREE
Text Label 9900 1950 2    50   ~ 0
CS
Wire Wire Line
	8650 950  8850 950 
Wire Wire Line
	8650 1950 8850 1950
Wire Wire Line
	8650 2050 8850 2050
Wire Wire Line
	8650 2150 8850 2150
Wire Wire Line
	8650 2450 8850 2450
Wire Wire Line
	9650 1950 9900 1950
$Comp
L power:+3.3V #PWR01
U 1 1 5D37877D
P 8500 950
F 0 "#PWR01" H 8500 800 50  0001 C CNN
F 1 "+3.3V" H 8515 1123 50  0000 C CNN
F 2 "" H 8500 950 50  0001 C CNN
F 3 "" H 8500 950 50  0001 C CNN
	1    8500 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D3787E4
P 8500 1350
F 0 "#PWR02" H 8500 1100 50  0001 C CNN
F 1 "GND" H 8505 1177 50  0000 C CNN
F 2 "" H 8500 1350 50  0001 C CNN
F 3 "" H 8500 1350 50  0001 C CNN
	1    8500 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 950  8500 1050
Wire Wire Line
	8500 1050 8850 1050
Wire Wire Line
	8500 1350 8500 1250
Wire Wire Line
	8500 1250 8850 1250
$Comp
L Connector_Generic:Conn_01x16 J3
U 1 1 600B881E
P 6650 1800
F 0 "J3" H 6569 775 50  0000 C CNN
F 1 "feather long" H 6569 866 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 6650 1800 50  0001 C CNN
F 3 "~" H 6650 1800 50  0001 C CNN
	1    6650 1800
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J4
U 1 1 600B8825
P 7050 2000
F 0 "J4" H 6970 1175 50  0000 C CNN
F 1 "feather short" H 6970 1266 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 7050 2000 50  0001 C CNN
F 3 "~" H 7050 2000 50  0001 C CNN
	1    7050 2000
	-1   0    0    1   
$EndComp
Text Label 6250 1000 0    50   ~ 0
~RST
Wire Wire Line
	6250 1000 6450 1000
$Comp
L power:+3.3V #PWR?
U 1 1 600B8860
P 6100 1000
F 0 "#PWR?" H 6100 850 50  0001 C CNN
F 1 "+3.3V" H 6115 1173 50  0000 C CNN
F 2 "" H 6100 1000 50  0001 C CNN
F 3 "" H 6100 1000 50  0001 C CNN
	1    6100 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 600B8866
P 6100 1400
F 0 "#PWR?" H 6100 1150 50  0001 C CNN
F 1 "GND" H 6105 1227 50  0000 C CNN
F 2 "" H 6100 1400 50  0001 C CNN
F 3 "" H 6100 1400 50  0001 C CNN
	1    6100 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1000 6100 1100
Wire Wire Line
	6100 1100 6450 1100
Wire Wire Line
	6100 1400 6100 1300
Wire Wire Line
	6100 1300 6450 1300
$Comp
L Connector_Generic:Conn_01x16 J1
U 1 1 600BA5EE
P 4200 1850
F 0 "J1" H 4119 825 50  0000 C CNN
F 1 "feather long" H 4119 916 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 4200 1850 50  0001 C CNN
F 3 "~" H 4200 1850 50  0001 C CNN
	1    4200 1850
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J2
U 1 1 600BA5F5
P 4600 2050
F 0 "J2" H 4520 1225 50  0000 C CNN
F 1 "feather short" H 4520 1316 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 4600 2050 50  0001 C CNN
F 3 "~" H 4600 2050 50  0001 C CNN
	1    4600 2050
	-1   0    0    1   
$EndComp
Text Label 3800 1050 0    50   ~ 0
~RST
Text Label 3800 1250 0    50   ~ 0
AREF
Text Label 3800 1450 0    50   ~ 0
A0
Text Label 3800 1550 0    50   ~ 0
A1
Text Label 3800 1650 0    50   ~ 0
A2
Text Label 3800 1750 0    50   ~ 0
A3
Text Label 3800 1850 0    50   ~ 0
A4
Text Label 3800 1950 0    50   ~ 0
A5
Text Label 3800 2050 0    50   ~ 0
SCK
Text Label 3800 2150 0    50   ~ 0
MOSI
Text Label 3800 2250 0    50   ~ 0
MISO
Text Label 3800 2350 0    50   ~ 0
RX
Text Label 3800 2450 0    50   ~ 0
TX
Text Label 5050 1450 2    50   ~ 0
VBAT
Text Label 5050 1550 2    50   ~ 0
EN
Text Label 5050 1650 2    50   ~ 0
VUSB
Text Label 5050 1750 2    50   ~ 0
13
Text Label 5050 1850 2    50   ~ 0
12
Text Label 5050 1950 2    50   ~ 0
11
Text Label 5050 2050 2    50   ~ 0
10
Text Label 5050 2150 2    50   ~ 0
9
Text Label 5050 2250 2    50   ~ 0
6
Text Label 5050 2350 2    50   ~ 0
5
Text Label 5050 2450 2    50   ~ 0
SCL
Text Label 5050 2550 2    50   ~ 0
SDA
Wire Wire Line
	3800 1050 4000 1050
Wire Wire Line
	3800 1250 4000 1250
Wire Wire Line
	3800 1450 4000 1450
Wire Wire Line
	3800 1550 4000 1550
Wire Wire Line
	3800 1650 4000 1650
Wire Wire Line
	3800 1750 4000 1750
Wire Wire Line
	3800 1850 4000 1850
Wire Wire Line
	3800 1950 4000 1950
Wire Wire Line
	3800 2050 4000 2050
Wire Wire Line
	3800 2150 4000 2150
Wire Wire Line
	3800 2250 4000 2250
Wire Wire Line
	3800 2350 4000 2350
Wire Wire Line
	3800 2450 4000 2450
Wire Wire Line
	4800 1450 5050 1450
Wire Wire Line
	4800 1550 5050 1550
Wire Wire Line
	4800 1750 5050 1750
Wire Wire Line
	4800 1850 5050 1850
Wire Wire Line
	4800 1950 5050 1950
Wire Wire Line
	4800 2050 5050 2050
Wire Wire Line
	4800 2150 5050 2150
Wire Wire Line
	4800 2250 5050 2250
Wire Wire Line
	4800 2350 5050 2350
$Comp
L power:+3.3V #PWR?
U 1 1 600BA630
P 3650 1050
F 0 "#PWR?" H 3650 900 50  0001 C CNN
F 1 "+3.3V" H 3665 1223 50  0000 C CNN
F 2 "" H 3650 1050 50  0001 C CNN
F 3 "" H 3650 1050 50  0001 C CNN
	1    3650 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 600BA636
P 3650 1450
F 0 "#PWR?" H 3650 1200 50  0001 C CNN
F 1 "GND" H 3655 1277 50  0000 C CNN
F 2 "" H 3650 1450 50  0001 C CNN
F 3 "" H 3650 1450 50  0001 C CNN
	1    3650 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1050 3650 1150
Wire Wire Line
	3650 1150 4000 1150
Wire Wire Line
	3650 1450 3650 1350
Wire Wire Line
	3650 1350 4000 1350
$Comp
L Connector_Generic:Conn_01x16 J7
U 1 1 600BEE02
P 4200 4400
F 0 "J7" H 4119 3375 50  0000 C CNN
F 1 "feather long" H 4119 3466 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 4200 4400 50  0001 C CNN
F 3 "~" H 4200 4400 50  0001 C CNN
	1    4200 4400
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J8
U 1 1 600BEE09
P 4600 4600
F 0 "J8" H 4520 3775 50  0000 C CNN
F 1 "feather short" H 4520 3866 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 4600 4600 50  0001 C CNN
F 3 "~" H 4600 4600 50  0001 C CNN
	1    4600 4600
	-1   0    0    1   
$EndComp
Text Label 3800 3600 0    50   ~ 0
~RST
Wire Wire Line
	3800 3600 4000 3600
$Comp
L power:+3.3V #PWR?
U 1 1 600BEE44
P 3650 3600
F 0 "#PWR?" H 3650 3450 50  0001 C CNN
F 1 "+3.3V" H 3665 3773 50  0000 C CNN
F 2 "" H 3650 3600 50  0001 C CNN
F 3 "" H 3650 3600 50  0001 C CNN
	1    3650 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 600BEE4A
P 3650 4000
F 0 "#PWR?" H 3650 3750 50  0001 C CNN
F 1 "GND" H 3655 3827 50  0000 C CNN
F 2 "" H 3650 4000 50  0001 C CNN
F 3 "" H 3650 4000 50  0001 C CNN
	1    3650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3600 3650 3700
Wire Wire Line
	3650 3700 4000 3700
Wire Wire Line
	3650 4000 3650 3900
Wire Wire Line
	3650 3900 4000 3900
$Comp
L Connector_Generic:Conn_01x16 J9
U 1 1 600C6BA0
P 6750 4350
F 0 "J9" H 6669 3325 50  0000 C CNN
F 1 "feather long" H 6669 3416 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 6750 4350 50  0001 C CNN
F 3 "~" H 6750 4350 50  0001 C CNN
	1    6750 4350
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J10
U 1 1 600C6BA7
P 7150 4550
F 0 "J10" H 7070 3725 50  0000 C CNN
F 1 "feather short" H 7070 3816 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 7150 4550 50  0001 C CNN
F 3 "~" H 7150 4550 50  0001 C CNN
	1    7150 4550
	-1   0    0    1   
$EndComp
Text Label 6350 3550 0    50   ~ 0
~RST
Wire Wire Line
	6350 3550 6550 3550
$Comp
L power:+3.3V #PWR?
U 1 1 600C6BE2
P 6200 3550
F 0 "#PWR?" H 6200 3400 50  0001 C CNN
F 1 "+3.3V" H 6215 3723 50  0000 C CNN
F 2 "" H 6200 3550 50  0001 C CNN
F 3 "" H 6200 3550 50  0001 C CNN
	1    6200 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 600C6BE8
P 6200 3950
F 0 "#PWR?" H 6200 3700 50  0001 C CNN
F 1 "GND" H 6205 3777 50  0000 C CNN
F 2 "" H 6200 3950 50  0001 C CNN
F 3 "" H 6200 3950 50  0001 C CNN
	1    6200 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3550 6200 3650
Wire Wire Line
	6200 3650 6550 3650
Wire Wire Line
	6200 3950 6200 3850
Wire Wire Line
	6200 3850 6550 3850
$Comp
L power:+5V #PWR?
U 1 1 600E4154
P 5150 1650
F 0 "#PWR?" H 5150 1500 50  0001 C CNN
F 1 "+5V" H 5165 1823 50  0000 C CNN
F 2 "" H 5150 1650 50  0001 C CNN
F 3 "" H 5150 1650 50  0001 C CNN
	1    5150 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1650 5150 1650
Text Notes 4400 1100 0    50   ~ 0
M0 Data Logger
Text Notes 9300 1050 0    50   ~ 0
Ethernet
Text Notes 6950 1050 0    50   ~ 0
Power Relay
Text Notes 4600 3600 0    50   ~ 0
Latching Solar
Text Notes 7100 3550 0    50   ~ 0
Latching Battery
NoConn ~ 4000 2550
NoConn ~ 8850 1450
NoConn ~ 8850 1550
NoConn ~ 8850 1650
NoConn ~ 8850 1750
NoConn ~ 8850 1850
NoConn ~ 8850 2250
NoConn ~ 8850 2350
NoConn ~ 9650 2450
NoConn ~ 9650 2350
NoConn ~ 9650 2250
NoConn ~ 9650 2150
NoConn ~ 9650 2050
NoConn ~ 9650 1850
NoConn ~ 9650 1750
NoConn ~ 9650 1650
NoConn ~ 9650 1550
NoConn ~ 9650 1450
NoConn ~ 9650 1350
NoConn ~ 8850 1150
NoConn ~ 6450 1200
NoConn ~ 6450 1500
NoConn ~ 6450 1600
NoConn ~ 6450 1900
NoConn ~ 6450 2000
NoConn ~ 6450 2100
NoConn ~ 6450 2200
NoConn ~ 6450 2300
NoConn ~ 6450 2400
NoConn ~ 6450 2500
NoConn ~ 7250 2500
NoConn ~ 7250 2400
NoConn ~ 7250 2300
NoConn ~ 7250 2200
NoConn ~ 7250 2100
NoConn ~ 7250 2000
NoConn ~ 7250 1900
NoConn ~ 7250 1800
NoConn ~ 7250 1700
NoConn ~ 7250 1600
NoConn ~ 7250 1500
NoConn ~ 7250 1400
NoConn ~ 8850 1350
Text Label 6300 1400 0    50   ~ 0
HTEN
Wire Wire Line
	6300 1400 6450 1400
Text Label 3750 4400 0    50   ~ 0
SUSET
NoConn ~ 4000 4700
NoConn ~ 4000 4800
NoConn ~ 4000 4900
NoConn ~ 4000 5000
NoConn ~ 4000 5100
NoConn ~ 4000 4200
NoConn ~ 4000 4100
NoConn ~ 4000 4000
NoConn ~ 4800 4000
NoConn ~ 4800 4100
NoConn ~ 4800 4200
NoConn ~ 4800 4300
NoConn ~ 4800 4400
NoConn ~ 4800 4500
NoConn ~ 4800 4600
NoConn ~ 4800 4700
NoConn ~ 4800 4800
NoConn ~ 4800 4900
NoConn ~ 4800 5000
NoConn ~ 4800 5100
NoConn ~ 4000 3800
NoConn ~ 6550 3950
NoConn ~ 6550 4050
NoConn ~ 6550 4150
Text Label 6350 4250 0    50   ~ 0
PSET
Wire Wire Line
	6350 4250 6550 4250
Text Label 6350 4350 0    50   ~ 0
PUSET
Wire Wire Line
	6350 4350 6550 4350
NoConn ~ 6550 4650
NoConn ~ 6550 4750
NoConn ~ 6550 4850
NoConn ~ 6550 4950
NoConn ~ 6550 5050
NoConn ~ 7350 5050
NoConn ~ 7350 4950
NoConn ~ 7350 4850
NoConn ~ 7350 4750
NoConn ~ 7350 4650
NoConn ~ 7350 4550
NoConn ~ 7350 4450
NoConn ~ 7350 4350
NoConn ~ 7350 4250
NoConn ~ 7350 4150
NoConn ~ 7350 4050
NoConn ~ 7350 3950
$Comp
L Regulator_Linear:LM317_3PinPackage U?
U 1 1 6025DD67
P 9150 4500
F 0 "U?" H 9150 4742 50  0000 C CNN
F 1 "LM317_3PinPackage" H 9150 4651 50  0000 C CNN
F 2 "" H 9150 4750 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 9150 4500 50  0001 C CNN
	1    9150 4500
	1    0    0    -1  
$EndComp
$Comp
L eec:LTC4151CS-2PBF U1Batt
U 1 1 600DF30E
P 1500 6250
F 0 "U1Batt" H 2000 6515 50  0000 C CNN
F 1 "LTC4151CS-2PBF" H 2000 6424 50  0000 C CNN
F 2 "Linear_Technology-LTC4151CS-2PBF-*" H 1500 6650 50  0001 L CNN
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
$Comp
L mp930:MP930-0.075-1 RP1
U 1 1 600DF7C9
P 2750 5750
F 0 "RP1" V 3054 5828 50  0000 L CNN
F 1 "MP930-0.02-1" V 3145 5828 50  0000 L CNN
F 2 "Caddock-MP930-0-0-*" H 2750 6150 50  0001 L CNN
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
Wire Wire Line
	2500 6350 2750 6350
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
L power:+48V #PWR?
U 1 1 600F051E
P 2750 5750
F 0 "#PWR?" H 2750 5600 50  0001 C CNN
F 1 "+48V" H 2765 5923 50  0000 C CNN
F 2 "" H 2750 5750 50  0001 C CNN
F 3 "" H 2750 5750 50  0001 C CNN
	1    2750 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5750 2750 5850
Connection ~ 2750 5850
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
L power:+48V #PWR?
U 1 1 6010851E
P 1450 7250
F 0 "#PWR?" H 1450 7100 50  0001 C CNN
F 1 "+48V" H 1465 7423 50  0000 C CNN
F 2 "" H 1450 7250 50  0001 C CNN
F 3 "" H 1450 7250 50  0001 C CNN
	1    1450 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7250 1500 7250
$Comp
L power:+48V #PWR?
U 1 1 6010A445
P 1300 6400
F 0 "#PWR?" H 1300 6250 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 6010E50A
P 1100 6550
F 0 "#PWR?" H 1100 6300 50  0001 C CNN
F 1 "GND" H 1105 6377 50  0000 C CNN
F 2 "" H 1100 6550 50  0001 C CNN
F 3 "" H 1100 6550 50  0001 C CNN
	1    1100 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6550 1500 6550
$Comp
L power:GND #PWR?
U 1 1 60110803
P 2600 7250
F 0 "#PWR?" H 2600 7000 50  0001 C CNN
F 1 "GND" H 2605 7077 50  0000 C CNN
F 2 "" H 2600 7250 50  0001 C CNN
F 3 "" H 2600 7250 50  0001 C CNN
	1    2600 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 7250 2500 7250
$Comp
L eec:LTC4151CS-2PBF U2Solar
U 1 1 601178EA
P 1400 4200
F 0 "U2Solar" H 1900 4465 50  0000 C CNN
F 1 "LTC4151CS-2PBF" H 1900 4374 50  0000 C CNN
F 2 "Linear_Technology-LTC4151CS-2PBF-*" H 1400 4600 50  0001 L CNN
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
$Comp
L mp930:MP930-0.075-1 RP2
U 1 1 6011790A
P 2650 3700
F 0 "RP2" V 2954 3778 50  0000 L CNN
F 1 "MP930-0.02-1" V 3045 3778 50  0000 L CNN
F 2 "Caddock-MP930-0-0-*" H 2650 4100 50  0001 L CNN
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
Wire Wire Line
	2400 4300 2650 4300
Wire Wire Line
	2400 4200 2400 3800
Wire Wire Line
	2400 3800 2650 3800
NoConn ~ 2400 4500
NoConn ~ 2400 4600
NoConn ~ 2400 4700
NoConn ~ 2400 4800
NoConn ~ 2400 4900
NoConn ~ 2400 5000
Wire Wire Line
	2650 3700 2650 3800
Connection ~ 2650 3800
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
L power:GND #PWR?
U 1 1 60117939
P 1000 4500
F 0 "#PWR?" H 1000 4250 50  0001 C CNN
F 1 "GND" H 1005 4327 50  0000 C CNN
F 2 "" H 1000 4500 50  0001 C CNN
F 3 "" H 1000 4500 50  0001 C CNN
	1    1000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4500 1200 4500
$Comp
L power:GND #PWR?
U 1 1 60117940
P 2500 5200
F 0 "#PWR?" H 2500 4950 50  0001 C CNN
F 1 "GND" H 2505 5027 50  0000 C CNN
F 2 "" H 2500 5200 50  0001 C CNN
F 3 "" H 2500 5200 50  0001 C CNN
	1    2500 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5200 2400 5200
$Comp
L power:+24V #PWR?
U 1 1 6011ADED
P 2650 3700
F 0 "#PWR?" H 2650 3550 50  0001 C CNN
F 1 "+24V" H 2665 3873 50  0000 C CNN
F 2 "" H 2650 3700 50  0001 C CNN
F 3 "" H 2650 3700 50  0001 C CNN
	1    2650 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+24V #PWR?
U 1 1 6011AE9F
P 1350 5200
F 0 "#PWR?" H 1350 5050 50  0001 C CNN
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
P 5350 2300
F 0 "R1" H 5420 2346 50  0000 L CNN
F 1 "R2k" H 5420 2255 50  0000 L CNN
F 2 "" V 5280 2300 50  0001 C CNN
F 3 "~" H 5350 2300 50  0001 C CNN
	1    5350 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6011E72E
P 5600 2300
F 0 "R2" H 5670 2346 50  0000 L CNN
F 1 "R2k" H 5670 2255 50  0000 L CNN
F 2 "" V 5530 2300 50  0001 C CNN
F 3 "~" H 5600 2300 50  0001 C CNN
	1    5600 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6011E814
P 5450 2100
F 0 "#PWR?" H 5450 1950 50  0001 C CNN
F 1 "+3.3V" H 5465 2273 50  0000 C CNN
F 2 "" H 5450 2100 50  0001 C CNN
F 3 "" H 5450 2100 50  0001 C CNN
	1    5450 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2100 5350 2100
Wire Wire Line
	5350 2100 5350 2150
Wire Wire Line
	5450 2100 5600 2100
Wire Wire Line
	5600 2100 5600 2150
Connection ~ 5450 2100
Wire Wire Line
	4800 2450 5350 2450
Wire Wire Line
	5600 2550 5600 2450
Wire Wire Line
	4800 2550 5600 2550
$Comp
L power:+24V #PWR?
U 1 1 6012D930
P 6250 1700
F 0 "#PWR?" H 6250 1550 50  0001 C CNN
F 1 "+24V" H 6265 1873 50  0000 C CNN
F 2 "" H 6250 1700 50  0001 C CNN
F 3 "" H 6250 1700 50  0001 C CNN
	1    6250 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1700 6450 1700
Text Label 6250 1800 0    50   ~ 0
HTOUT
Wire Wire Line
	6250 1800 6450 1800
Wire Wire Line
	3750 4400 4000 4400
Text Label 3750 4300 0    50   ~ 0
SSET
Wire Wire Line
	4000 4300 3750 4300
$Comp
L power:+5V #PWR?
U 1 1 60141A92
P 3700 4500
F 0 "#PWR?" H 3700 4350 50  0001 C CNN
F 1 "+5V" H 3715 4673 50  0000 C CNN
F 2 "" H 3700 4500 50  0001 C CNN
F 3 "" H 3700 4500 50  0001 C CNN
	1    3700 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4500 4000 4500
Text Label 3750 4600 0    50   ~ 0
SOUT
Wire Wire Line
	3750 4600 4000 4600
$Comp
L power:+5V #PWR?
U 1 1 601491D1
P 6200 4450
F 0 "#PWR?" H 6200 4300 50  0001 C CNN
F 1 "+5V" H 6215 4623 50  0000 C CNN
F 2 "" H 6200 4450 50  0001 C CNN
F 3 "" H 6200 4450 50  0001 C CNN
	1    6200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4450 6550 4450
Text Label 6350 4550 0    50   ~ 0
POUT
Wire Wire Line
	6350 4550 6550 4550
$EndSCHEMATC