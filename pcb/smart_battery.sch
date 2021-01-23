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
L Connector_Generic:Conn_01x16 J1
U 1 1 5D375C76
P 9050 1750
F 0 "J1" H 8969 725 50  0000 C CNN
F 1 "feather long" H 8969 816 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 9050 1750 50  0001 C CNN
F 3 "~" H 9050 1750 50  0001 C CNN
	1    9050 1750
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J2
U 1 1 5D375CC4
P 9450 1950
F 0 "J2" H 9370 1125 50  0000 C CNN
F 1 "feather short" H 9370 1216 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 9450 1950 50  0001 C CNN
F 3 "~" H 9450 1950 50  0001 C CNN
	1    9450 1950
	-1   0    0    1   
$EndComp
Text Label 8650 950  0    50   ~ 0
~RST
Text Label 8650 1150 0    50   ~ 0
AREF
Text Label 8650 1350 0    50   ~ 0
A0
Text Label 8650 1450 0    50   ~ 0
A1
Text Label 8650 1550 0    50   ~ 0
A2
Text Label 8650 1650 0    50   ~ 0
A3
Text Label 8650 1750 0    50   ~ 0
A4
Text Label 8650 1850 0    50   ~ 0
A5
Text Label 8650 1950 0    50   ~ 0
SCK
Text Label 8650 2050 0    50   ~ 0
MOSI
Text Label 8650 2150 0    50   ~ 0
MISO
Text Label 8650 2250 0    50   ~ 0
RX
Text Label 8650 2350 0    50   ~ 0
TX
Text Label 8650 2450 0    50   ~ 0
FREE
Text Label 9900 1350 2    50   ~ 0
VBAT
Text Label 9900 1450 2    50   ~ 0
EN
Text Label 9900 1550 2    50   ~ 0
VUSB
Text Label 9900 1650 2    50   ~ 0
F6
Text Label 9900 1750 2    50   ~ 0
F5
Text Label 9900 1850 2    50   ~ 0
F4
Text Label 9900 1950 2    50   ~ 0
F3
Text Label 9900 2050 2    50   ~ 0
F2
Text Label 9900 2150 2    50   ~ 0
F1
Text Label 9900 2250 2    50   ~ 0
F0
Text Label 9900 2350 2    50   ~ 0
SCL
Text Label 9900 2450 2    50   ~ 0
SDA
Wire Wire Line
	8650 950  8850 950 
Wire Wire Line
	8650 1150 8850 1150
Wire Wire Line
	8650 1350 8850 1350
Wire Wire Line
	8650 1450 8850 1450
Wire Wire Line
	8650 1550 8850 1550
Wire Wire Line
	8650 1650 8850 1650
Wire Wire Line
	8650 1750 8850 1750
Wire Wire Line
	8650 1850 8850 1850
Wire Wire Line
	8650 1950 8850 1950
Wire Wire Line
	8650 2050 8850 2050
Wire Wire Line
	8650 2150 8850 2150
Wire Wire Line
	8650 2250 8850 2250
Wire Wire Line
	8650 2350 8850 2350
Wire Wire Line
	8650 2450 8850 2450
Wire Wire Line
	9650 1350 9900 1350
Wire Wire Line
	9650 1450 9900 1450
Wire Wire Line
	9650 1550 9900 1550
Wire Wire Line
	9650 1650 9900 1650
Wire Wire Line
	9650 1750 9900 1750
Wire Wire Line
	9650 1850 9900 1850
Wire Wire Line
	9650 1950 9900 1950
Wire Wire Line
	9650 2050 9900 2050
Wire Wire Line
	9650 2150 9900 2150
Wire Wire Line
	9650 2250 9900 2250
Wire Wire Line
	9650 2350 9900 2350
Wire Wire Line
	9650 2450 9900 2450
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
Wire Notes Line
	8300 550  8300 2600
Wire Notes Line
	8300 2600 10450 2600
$Comp
L Connector_Generic:Conn_01x16 J?
U 1 1 600B881E
P 6650 1800
F 0 "J?" H 6569 775 50  0000 C CNN
F 1 "feather long" H 6569 866 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 6650 1800 50  0001 C CNN
F 3 "~" H 6650 1800 50  0001 C CNN
	1    6650 1800
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J?
U 1 1 600B8825
P 7050 2000
F 0 "J?" H 6970 1175 50  0000 C CNN
F 1 "feather short" H 6970 1266 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 7050 2000 50  0001 C CNN
F 3 "~" H 7050 2000 50  0001 C CNN
	1    7050 2000
	-1   0    0    1   
$EndComp
Text Label 6250 1000 0    50   ~ 0
~RST
Text Label 6250 1200 0    50   ~ 0
AREF
Text Label 6250 1400 0    50   ~ 0
A0
Text Label 6250 1500 0    50   ~ 0
A1
Text Label 6250 1600 0    50   ~ 0
A2
Text Label 6250 1700 0    50   ~ 0
A3
Text Label 6250 1800 0    50   ~ 0
A4
Text Label 6250 1900 0    50   ~ 0
A5
Text Label 6250 2000 0    50   ~ 0
SCK
Text Label 6250 2100 0    50   ~ 0
MOSI
Text Label 6250 2200 0    50   ~ 0
MISO
Text Label 6250 2300 0    50   ~ 0
RX
Text Label 6250 2400 0    50   ~ 0
TX
Text Label 6250 2500 0    50   ~ 0
FREE
Text Label 7500 1400 2    50   ~ 0
VBAT
Text Label 7500 1500 2    50   ~ 0
EN
Text Label 7500 1600 2    50   ~ 0
VUSB
Text Label 7500 1700 2    50   ~ 0
F6
Text Label 7500 1800 2    50   ~ 0
F5
Text Label 7500 1900 2    50   ~ 0
F4
Text Label 7500 2000 2    50   ~ 0
F3
Text Label 7500 2100 2    50   ~ 0
F2
Text Label 7500 2200 2    50   ~ 0
F1
Text Label 7500 2300 2    50   ~ 0
F0
Text Label 7500 2400 2    50   ~ 0
SCL
Text Label 7500 2500 2    50   ~ 0
SDA
Wire Wire Line
	6250 1000 6450 1000
Wire Wire Line
	6250 1200 6450 1200
Wire Wire Line
	6250 1400 6450 1400
Wire Wire Line
	6250 1500 6450 1500
Wire Wire Line
	6250 1600 6450 1600
Wire Wire Line
	6250 1700 6450 1700
Wire Wire Line
	6250 1800 6450 1800
Wire Wire Line
	6250 1900 6450 1900
Wire Wire Line
	6250 2000 6450 2000
Wire Wire Line
	6250 2100 6450 2100
Wire Wire Line
	6250 2200 6450 2200
Wire Wire Line
	6250 2300 6450 2300
Wire Wire Line
	6250 2400 6450 2400
Wire Wire Line
	6250 2500 6450 2500
Wire Wire Line
	7250 1400 7500 1400
Wire Wire Line
	7250 1500 7500 1500
Wire Wire Line
	7250 1600 7500 1600
Wire Wire Line
	7250 1700 7500 1700
Wire Wire Line
	7250 1800 7500 1800
Wire Wire Line
	7250 1900 7500 1900
Wire Wire Line
	7250 2000 7500 2000
Wire Wire Line
	7250 2100 7500 2100
Wire Wire Line
	7250 2200 7500 2200
Wire Wire Line
	7250 2300 7500 2300
Wire Wire Line
	7250 2400 7500 2400
Wire Wire Line
	7250 2500 7500 2500
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
Wire Notes Line
	5900 600  5900 2650
Wire Notes Line
	5900 2650 8050 2650
$Comp
L Connector_Generic:Conn_01x16 J?
U 1 1 600BA5EE
P 4200 1850
F 0 "J?" H 4119 825 50  0000 C CNN
F 1 "feather long" H 4119 916 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 4200 1850 50  0001 C CNN
F 3 "~" H 4200 1850 50  0001 C CNN
	1    4200 1850
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J?
U 1 1 600BA5F5
P 4600 2050
F 0 "J?" H 4520 1225 50  0000 C CNN
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
Text Label 3800 2550 0    50   ~ 0
FREE
Text Label 5050 1450 2    50   ~ 0
VBAT
Text Label 5050 1550 2    50   ~ 0
EN
Text Label 5050 1650 2    50   ~ 0
VUSB
Text Label 5050 1750 2    50   ~ 0
F6
Text Label 5050 1850 2    50   ~ 0
F5
Text Label 5050 1950 2    50   ~ 0
F4
Text Label 5050 2050 2    50   ~ 0
F3
Text Label 5050 2150 2    50   ~ 0
F2
Text Label 5050 2250 2    50   ~ 0
F1
Text Label 5050 2350 2    50   ~ 0
F0
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
	3800 2550 4000 2550
Wire Wire Line
	4800 1450 5050 1450
Wire Wire Line
	4800 1550 5050 1550
Wire Wire Line
	4800 1650 5050 1650
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
Wire Wire Line
	4800 2450 5050 2450
Wire Wire Line
	4800 2550 5050 2550
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
Wire Notes Line
	3450 650  3450 2700
Wire Notes Line
	3450 2700 5600 2700
$Comp
L Connector_Generic:Conn_01x16 J?
U 1 1 600BEE02
P 4200 4400
F 0 "J?" H 4119 3375 50  0000 C CNN
F 1 "feather long" H 4119 3466 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 4200 4400 50  0001 C CNN
F 3 "~" H 4200 4400 50  0001 C CNN
	1    4200 4400
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J?
U 1 1 600BEE09
P 4600 4600
F 0 "J?" H 4520 3775 50  0000 C CNN
F 1 "feather short" H 4520 3866 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 4600 4600 50  0001 C CNN
F 3 "~" H 4600 4600 50  0001 C CNN
	1    4600 4600
	-1   0    0    1   
$EndComp
Text Label 3800 3600 0    50   ~ 0
~RST
Text Label 3800 3800 0    50   ~ 0
AREF
Text Label 3800 4000 0    50   ~ 0
A0
Text Label 3800 4100 0    50   ~ 0
A1
Text Label 3800 4200 0    50   ~ 0
A2
Text Label 3800 4300 0    50   ~ 0
A3
Text Label 3800 4400 0    50   ~ 0
A4
Text Label 3800 4500 0    50   ~ 0
A5
Text Label 3800 4600 0    50   ~ 0
SCK
Text Label 3800 4700 0    50   ~ 0
MOSI
Text Label 3800 4800 0    50   ~ 0
MISO
Text Label 3800 4900 0    50   ~ 0
RX
Text Label 3800 5000 0    50   ~ 0
TX
Text Label 3800 5100 0    50   ~ 0
FREE
Text Label 5050 4000 2    50   ~ 0
VBAT
Text Label 5050 4100 2    50   ~ 0
EN
Text Label 5050 4200 2    50   ~ 0
VUSB
Text Label 5050 4300 2    50   ~ 0
F6
Text Label 5050 4400 2    50   ~ 0
F5
Text Label 5050 4500 2    50   ~ 0
F4
Text Label 5050 4600 2    50   ~ 0
F3
Text Label 5050 4700 2    50   ~ 0
F2
Text Label 5050 4800 2    50   ~ 0
F1
Text Label 5050 4900 2    50   ~ 0
F0
Text Label 5050 5000 2    50   ~ 0
SCL
Text Label 5050 5100 2    50   ~ 0
SDA
Wire Wire Line
	3800 3600 4000 3600
Wire Wire Line
	3800 3800 4000 3800
Wire Wire Line
	3800 4000 4000 4000
Wire Wire Line
	3800 4100 4000 4100
Wire Wire Line
	3800 4200 4000 4200
Wire Wire Line
	3800 4300 4000 4300
Wire Wire Line
	3800 4400 4000 4400
Wire Wire Line
	3800 4500 4000 4500
Wire Wire Line
	3800 4600 4000 4600
Wire Wire Line
	3800 4700 4000 4700
Wire Wire Line
	3800 4800 4000 4800
Wire Wire Line
	3800 4900 4000 4900
Wire Wire Line
	3800 5000 4000 5000
Wire Wire Line
	3800 5100 4000 5100
Wire Wire Line
	4800 4000 5050 4000
Wire Wire Line
	4800 4100 5050 4100
Wire Wire Line
	4800 4200 5050 4200
Wire Wire Line
	4800 4300 5050 4300
Wire Wire Line
	4800 4400 5050 4400
Wire Wire Line
	4800 4500 5050 4500
Wire Wire Line
	4800 4600 5050 4600
Wire Wire Line
	4800 4700 5050 4700
Wire Wire Line
	4800 4800 5050 4800
Wire Wire Line
	4800 4900 5050 4900
Wire Wire Line
	4800 5000 5050 5000
Wire Wire Line
	4800 5100 5050 5100
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
Wire Notes Line
	3450 3200 3450 5250
Wire Notes Line
	3450 5250 5600 5250
$Comp
L Connector_Generic:Conn_01x16 J?
U 1 1 600C6BA0
P 6750 4350
F 0 "J?" H 6669 3325 50  0000 C CNN
F 1 "feather long" H 6669 3416 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 6750 4350 50  0001 C CNN
F 3 "~" H 6750 4350 50  0001 C CNN
	1    6750 4350
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J?
U 1 1 600C6BA7
P 7150 4550
F 0 "J?" H 7070 3725 50  0000 C CNN
F 1 "feather short" H 7070 3816 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 7150 4550 50  0001 C CNN
F 3 "~" H 7150 4550 50  0001 C CNN
	1    7150 4550
	-1   0    0    1   
$EndComp
Text Label 6350 3550 0    50   ~ 0
~RST
Text Label 6350 3750 0    50   ~ 0
AREF
Text Label 6350 3950 0    50   ~ 0
A0
Text Label 6350 4050 0    50   ~ 0
A1
Text Label 6350 4150 0    50   ~ 0
A2
Text Label 6350 4250 0    50   ~ 0
A3
Text Label 6350 4350 0    50   ~ 0
A4
Text Label 6350 4450 0    50   ~ 0
A5
Text Label 6350 4550 0    50   ~ 0
SCK
Text Label 6350 4650 0    50   ~ 0
MOSI
Text Label 6350 4750 0    50   ~ 0
MISO
Text Label 6350 4850 0    50   ~ 0
RX
Text Label 6350 4950 0    50   ~ 0
TX
Text Label 6350 5050 0    50   ~ 0
FREE
Text Label 7600 3950 2    50   ~ 0
VBAT
Text Label 7600 4050 2    50   ~ 0
EN
Text Label 7600 4150 2    50   ~ 0
VUSB
Text Label 7600 4250 2    50   ~ 0
F6
Text Label 7600 4350 2    50   ~ 0
F5
Text Label 7600 4450 2    50   ~ 0
F4
Text Label 7600 4550 2    50   ~ 0
F3
Text Label 7600 4650 2    50   ~ 0
F2
Text Label 7600 4750 2    50   ~ 0
F1
Text Label 7600 4850 2    50   ~ 0
F0
Text Label 7600 4950 2    50   ~ 0
SCL
Text Label 7600 5050 2    50   ~ 0
SDA
Wire Wire Line
	6350 3550 6550 3550
Wire Wire Line
	6350 3750 6550 3750
Wire Wire Line
	6350 3950 6550 3950
Wire Wire Line
	6350 4050 6550 4050
Wire Wire Line
	6350 4150 6550 4150
Wire Wire Line
	6350 4250 6550 4250
Wire Wire Line
	6350 4350 6550 4350
Wire Wire Line
	6350 4450 6550 4450
Wire Wire Line
	6350 4550 6550 4550
Wire Wire Line
	6350 4650 6550 4650
Wire Wire Line
	6350 4750 6550 4750
Wire Wire Line
	6350 4850 6550 4850
Wire Wire Line
	6350 4950 6550 4950
Wire Wire Line
	6350 5050 6550 5050
Wire Wire Line
	7350 3950 7600 3950
Wire Wire Line
	7350 4050 7600 4050
Wire Wire Line
	7350 4150 7600 4150
Wire Wire Line
	7350 4250 7600 4250
Wire Wire Line
	7350 4350 7600 4350
Wire Wire Line
	7350 4450 7600 4450
Wire Wire Line
	7350 4550 7600 4550
Wire Wire Line
	7350 4650 7600 4650
Wire Wire Line
	7350 4750 7600 4750
Wire Wire Line
	7350 4850 7600 4850
Wire Wire Line
	7350 4950 7600 4950
Wire Wire Line
	7350 5050 7600 5050
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
Wire Notes Line
	6000 3150 6000 5200
Wire Notes Line
	6000 5200 8150 5200
$EndSCHEMATC
