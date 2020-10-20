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
L Interface_USB:STUSB4500QTR U1
U 1 1 5F8E4AF3
P 5100 3550
F 0 "U1" H 5300 2650 50  0000 C CNN
F 1 "STUSB4500QTR" H 5550 2550 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.7x2.7mm" H 5100 3550 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/stusb4500.pdf" H 5100 3550 50  0001 C CNN
	1    5100 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5F8EEA73
P 9350 5500
F 0 "J4" H 9430 5492 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 9430 5401 50  0000 L CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-2_1x02_P2.54mm_Horizontal" H 9350 5500 50  0001 C CNN
F 3 "~" H 9350 5500 50  0001 C CNN
	1    9350 5500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 5F8F7886
P 9350 4950
F 0 "J3" H 9378 4926 50  0000 L CNN
F 1 "STEMMA_I2C_QT" H 9378 4835 50  0000 L CNN
F 2 "Connector_JST:JST_SH_SM04B-SRSS-TB_1x04-1MP_P1.00mm_Horizontal" H 9350 4950 50  0001 C CNN
F 3 "~" H 9350 4950 50  0001 C CNN
	1    9350 4950
	1    0    0    -1  
$EndComp
Text GLabel 9150 4250 0    50   Input ~ 0
GND
Text GLabel 9150 4350 0    50   Input ~ 0
VCC
Text GLabel 9150 4450 0    50   Input ~ 0
SDA
Text GLabel 9150 4550 0    50   Input ~ 0
SCL
Text GLabel 9150 4850 0    50   Input ~ 0
GND
Text GLabel 9150 4950 0    50   Input ~ 0
VCC
Text GLabel 9150 5050 0    50   Input ~ 0
SDA
Text GLabel 9150 5150 0    50   Input ~ 0
SCL
Text GLabel 10150 3550 3    50   Input ~ 0
SDA
Text GLabel 10300 3550 3    50   Input ~ 0
SCL
$Comp
L Device:R_Small R5
U 1 1 5F8FBCE8
P 10150 3300
F 0 "R5" H 10000 3350 50  0000 L CNN
F 1 "10k" H 9950 3250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 10150 3300 50  0001 C CNN
F 3 "~" H 10150 3300 50  0001 C CNN
	1    10150 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5F8FBF44
P 10300 3300
F 0 "R6" H 10359 3346 50  0000 L CNN
F 1 "10k" H 10359 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 10300 3300 50  0001 C CNN
F 3 "~" H 10300 3300 50  0001 C CNN
	1    10300 3300
	1    0    0    -1  
$EndComp
Text GLabel 10150 3050 1    50   Input ~ 0
VCC
Text GLabel 10300 3050 1    50   Input ~ 0
VCC
Wire Wire Line
	10150 3200 10150 3050
Wire Wire Line
	10300 3050 10300 3200
Wire Wire Line
	10150 3400 10150 3550
Wire Wire Line
	10300 3400 10300 3550
Text GLabel 9150 5600 0    50   Input ~ 0
GND
Text GLabel 4500 3950 0    50   Input ~ 0
SDA
Text GLabel 4500 3850 0    50   Input ~ 0
SCL
Text GLabel 5100 4450 3    50   Input ~ 0
GND
Text GLabel 1250 4200 0    50   Input ~ 0
GND
Wire Wire Line
	1150 4050 1300 4050
Wire Wire Line
	1300 4050 1450 4050
Connection ~ 1300 4050
Text GLabel 2050 2750 2    50   Input ~ 0
CC1
Text GLabel 2050 2850 2    50   Input ~ 0
CC2
Text GLabel 4500 3050 0    50   Input ~ 0
CC1
Text GLabel 4500 3150 0    50   Input ~ 0
CC1
Text GLabel 4500 3350 0    50   Input ~ 0
CC2
Text GLabel 4500 3450 0    50   Input ~ 0
CC2
Text GLabel 9600 3050 1    50   Input ~ 0
VBUS
Text GLabel 9600 3550 3    50   Input ~ 0
GND
$Comp
L Device:C_Small C4
U 1 1 5F8FFA78
P 9600 3300
F 0 "C4" H 9692 3346 50  0000 L CNN
F 1 "4.7u" H 9692 3255 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9600 3300 50  0001 C CNN
F 3 "~" H 9600 3300 50  0001 C CNN
	1    9600 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Small D3
U 1 1 5F9021ED
P 8350 3300
F 0 "D3" V 8304 3370 50  0000 L CNN
F 1 "ESDA25P35" V 8395 3370 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8350 3300 50  0001 C CNN
F 3 "~" V 8350 3300 50  0001 C CNN
	1    8350 3300
	0    1    1    0   
$EndComp
Text GLabel 8350 3050 1    50   Input ~ 0
VBUS
Text GLabel 8350 3550 3    50   Input ~ 0
GND
$Comp
L power:GND #PWR0102
U 1 1 5F904740
P 1300 4250
F 0 "#PWR0102" H 1300 4000 50  0001 C CNN
F 1 "GND" H 1305 4077 50  0000 C CNN
F 2 "" H 1300 4250 50  0001 C CNN
F 3 "" H 1300 4250 50  0001 C CNN
	1    1300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4200 1300 4200
Wire Wire Line
	1300 4050 1300 4200
Wire Wire Line
	1300 4200 1300 4250
Connection ~ 1300 4200
$Comp
L Device:R_Small R8
U 1 1 5F905575
P 4000 3650
F 0 "R8" V 3804 3650 50  0000 C CNN
F 1 "1k" V 3895 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4000 3650 50  0001 C CNN
F 3 "~" H 4000 3650 50  0001 C CNN
	1    4000 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3650 4500 3650
Text GLabel 3800 3650 0    50   Input ~ 0
VBUS
Wire Wire Line
	3800 3650 3900 3650
Text GLabel 7300 3100 1    50   Input ~ 0
CC1
Text GLabel 7900 3100 1    50   Input ~ 0
CC2
Text GLabel 7600 3650 3    50   Input ~ 0
GND
Text GLabel 4500 4150 0    50   Input ~ 0
GND
Text GLabel 4500 4250 0    50   Input ~ 0
GND
Text GLabel 4500 4050 0    50   Input ~ 0
ALERT
Text GLabel 4500 2850 0    50   Input ~ 0
GND
Text GLabel 5000 2650 1    50   Input ~ 0
VBUS
Text GLabel 5700 3250 2    50   Input ~ 0
VBUS_EN_SNK
Text GLabel 5700 3450 2    50   Input ~ 0
PDO2
Text GLabel 5700 3550 2    50   Input ~ 0
PDO3
Text GLabel 5700 3650 2    50   Input ~ 0
DISCH
Text GLabel 5700 4050 2    50   Input ~ 0
ATTACH
Text GLabel 5700 4150 2    50   Input ~ 0
GPIO
Text GLabel 9150 5500 0    50   Input ~ 0
VSNK
$Comp
L Makeristic-KiCad-Library:STL6P3LLH6 Q1
U 1 1 5F9100E9
P 8650 1600
F 0 "Q1" V 9431 1652 50  0000 C CNN
F 1 "STL6P3LLH6" V 9340 1652 50  0000 C CNN
F 2 "Makeristic-KiCad-Library:STL6P3LLH6" H 8650 2200 50  0001 L CNN
F 3 "https://www.st.com/resource/en/datasheet/stl6p3llh6.pdf" H 8650 2300 50  0001 L CNN
F 4 "No" H 8650 2400 50  0001 L CNN "automotive"
F 5 "Trans" H 8650 2500 50  0001 L CNN "category"
F 6 "6A" H 8650 2600 50  0001 L CNN "continuous drain current"
F 7 "False" H 8650 2700 50  0001 L CNN "depletion mode"
F 8 "Discrete Semiconductors" H 8650 2800 50  0001 L CNN "device class L1"
F 9 "Transistors" H 8650 2900 50  0001 L CNN "device class L2"
F 10 "MOSFETs" H 8650 3000 50  0001 L CNN "device class L3"
F 11 "MOSFET P-CH 30V 6A POWERFLAT" H 8650 3100 50  0001 L CNN "digikey description"
F 12 "497-15315-1-ND" H 8650 3200 50  0001 L CNN "digikey part number"
F 13 "30V" H 8650 3300 50  0001 L CNN "drain to source breakdown voltage"
F 14 "24mΩ" H 8650 3400 50  0001 L CNN "drain to source resistance"
F 15 "30V" H 8650 3500 50  0001 L CNN "drain to source voltage"
F 16 "12nC @ 4.5V" H 8650 3600 50  0001 L CNN "gate charge at vgs"
F 17 "20V" H 8650 3700 50  0001 L CNN "gate to source voltage"
F 18 "0.9mm" H 8650 3800 50  0001 L CNN "height"
F 19 "1450pF @ 25V" H 8650 3900 50  0001 L CNN "input capacitace at vds"
F 20 "Yes" H 8650 4000 50  0001 L CNN "lead free"
F 21 "20777c49329fd6c3" H 8650 4100 50  0001 L CNN "library id"
F 22 "STMicroelectronics" H 8650 4200 50  0001 L CNN "manufacturer"
F 23 "1.1V" H 8650 4300 50  0001 L CNN "max forward diode voltage"
F 24 "+150°C" H 8650 4400 50  0001 L CNN "max junction temp"
F 25 "MOSFET POWER MOSFET" H 8650 4500 50  0001 L CNN "mouser description"
F 26 "511-STL6P3LLH6" H 8650 4600 50  0001 L CNN "mouser part number"
F 27 "1" H 8650 4700 50  0001 L CNN "number of P channels"
F 28 "1" H 8650 4800 50  0001 L CNN "number of channels"
F 29 "PowerFLAT" H 8650 4900 50  0001 L CNN "package"
F 30 "2.9W" H 8650 5000 50  0001 L CNN "power dissipation"
F 31 "24A" H 8650 5100 50  0001 L CNN "pulse drain current"
F 32 "6.5nC" H 8650 5200 50  0001 L CNN "reverse recovery charge"
F 33 "15ns" H 8650 5300 50  0001 L CNN "reverse recovery time"
F 34 "Yes" H 8650 5400 50  0001 L CNN "rohs"
F 35 "+150°C" H 8650 5500 50  0001 L CNN "temperature range high"
F 36 "1V" H 8650 5600 50  0001 L CNN "threshold vgs min"
F 37 "24ns" H 8650 5700 50  0001 L CNN "turn off delay time"
F 38 "15ns" H 8650 5800 50  0001 L CNN "turn on delay time"
	1    8650 1600
	0    1    -1   0   
$EndComp
Text GLabel 8450 1000 0    50   Input ~ 0
VBUS
Text GLabel 8450 1100 0    50   Input ~ 0
VBUS
Text GLabel 8450 1200 0    50   Input ~ 0
VBUS
Text GLabel 9050 1200 2    50   Input ~ 0
VSNK
Text GLabel 8500 2150 0    50   Input ~ 0
VBUS_EN_SNK
Text GLabel 8500 1550 0    50   Input ~ 0
VBUS
$Comp
L Device:R_Small R1
U 1 1 5F924C4B
P 8550 1700
F 0 "R1" H 8400 1750 50  0000 L CNN
F 1 "100k" H 8300 1650 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 8550 1700 50  0001 C CNN
F 3 "~" H 8550 1700 50  0001 C CNN
	1    8550 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5F9250DE
P 8550 2000
F 0 "R3" H 8400 2050 50  0000 L CNN
F 1 "22k" H 8350 1950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 8550 2000 50  0001 C CNN
F 3 "~" H 8550 2000 50  0001 C CNN
	1    8550 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5F925808
P 9150 1850
F 0 "C1" V 8921 1850 50  0000 C CNN
F 1 "100n" V 9012 1850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9150 1850 50  0001 C CNN
F 3 "~" H 9150 1850 50  0001 C CNN
	1    9150 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 1550 8550 1600
Wire Wire Line
	8550 2100 8550 2150
Wire Wire Line
	8550 1800 8550 1850
$Comp
L Device:R_Small R2
U 1 1 5F926625
P 8800 1850
F 0 "R2" V 8604 1850 50  0000 C CNN
F 1 "100" V 8695 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 8800 1850 50  0001 C CNN
F 3 "~" H 8800 1850 50  0001 C CNN
	1    8800 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 1850 8650 1850
Connection ~ 8550 1850
Wire Wire Line
	8550 1850 8550 1900
Wire Wire Line
	8900 1850 9050 1850
Connection ~ 8650 1850
Wire Wire Line
	8650 1850 8700 1850
Text GLabel 9250 2150 0    50   Input ~ 0
DISCH
$Comp
L Device:R_Small R4
U 1 1 5F931215
P 9400 2000
F 0 "R4" H 9450 2050 50  0000 L CNN
F 1 "1k" H 9450 1950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 9400 2000 50  0001 C CNN
F 3 "~" H 9400 2000 50  0001 C CNN
	1    9400 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 1200 8950 1200
Wire Wire Line
	9250 1850 9400 1850
Wire Wire Line
	9400 1850 9400 1900
Wire Wire Line
	9400 2100 9400 2150
Wire Wire Line
	9400 2150 9250 2150
Wire Wire Line
	8500 1550 8550 1550
Wire Wire Line
	8550 2150 8500 2150
Text GLabel 9450 1550 2    50   Input ~ 0
VSNK
Wire Wire Line
	9400 1850 9400 1550
Wire Wire Line
	9400 1550 9450 1550
Connection ~ 9400 1850
$Comp
L Device:D_Small D4
U 1 1 5F939092
P 8950 3300
F 0 "D4" V 8904 3370 50  0000 L CNN
F 1 "ESDA25P35" V 8995 3370 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8950 3300 50  0001 C CNN
F 3 "~" V 8950 3300 50  0001 C CNN
	1    8950 3300
	0    1    1    0   
$EndComp
Text GLabel 8950 3550 3    50   Input ~ 0
GND
Text GLabel 8950 3050 1    50   Input ~ 0
VSNK
Wire Wire Line
	9600 3400 9600 3550
Wire Wire Line
	9600 3050 9600 3200
Wire Wire Line
	8950 3400 8950 3550
Wire Wire Line
	8950 3200 8950 3050
Wire Wire Line
	8350 3400 8350 3550
Wire Wire Line
	8350 3050 8350 3200
Text GLabel 5100 2650 1    50   Input ~ 0
VCC
$Comp
L Device:C_Small C3
U 1 1 5F952954
P 5750 2500
F 0 "C3" V 5979 2500 50  0000 C CNN
F 1 "1u" V 5888 2500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5750 2500 50  0001 C CNN
F 3 "~" H 5750 2500 50  0001 C CNN
	1    5750 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5F954AA4
P 5750 2150
F 0 "C2" V 5979 2150 50  0000 C CNN
F 1 "1u" V 5888 2150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5750 2150 50  0001 C CNN
F 3 "~" H 5750 2150 50  0001 C CNN
	1    5750 2150
	0    -1   -1   0   
$EndComp
Text GLabel 6000 2600 3    50   Input ~ 0
GND
Wire Wire Line
	6000 2600 6000 2500
Wire Wire Line
	6000 2500 5850 2500
Wire Wire Line
	6000 2500 6000 2150
Wire Wire Line
	6000 2150 5850 2150
Connection ~ 6000 2500
Wire Wire Line
	5650 2500 5400 2500
Wire Wire Line
	5400 2500 5400 2650
Wire Wire Line
	5300 2650 5300 2150
Wire Wire Line
	5300 2150 5650 2150
Text GLabel 5400 2000 1    50   Input ~ 0
VCC
Wire Wire Line
	5400 2000 5400 2500
Connection ~ 5400 2500
$Comp
L Device:R_Small R7
U 1 1 5F95A42A
P 10600 3300
F 0 "R7" H 10659 3346 50  0000 L CNN
F 1 "10k" H 10659 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 10600 3300 50  0001 C CNN
F 3 "~" H 10600 3300 50  0001 C CNN
	1    10600 3300
	1    0    0    -1  
$EndComp
Text GLabel 10600 3050 1    50   Input ~ 0
VCC
Wire Wire Line
	10600 3050 10600 3200
Wire Wire Line
	10600 3400 10600 3550
Text GLabel 10600 3550 3    50   Input ~ 0
ALERT
NoConn ~ 5700 3950
Wire Wire Line
	8650 1500 8650 1850
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5F8F6DC9
P 9350 4350
F 0 "J2" H 9378 4326 50  0000 L CNN
F 1 "STEMMA_I2C_QT" H 9378 4235 50  0000 L CNN
F 2 "Connector_JST:JST_SH_SM04B-SRSS-TB_1x04-1MP_P1.00mm_Horizontal" H 9350 4350 50  0001 C CNN
F 3 "~" H 9350 4350 50  0001 C CNN
	1    9350 4350
	1    0    0    -1  
$EndComp
$Comp
L LED:ASMB-MTB0-0A3A2 D5
U 1 1 5F96F7F2
P 7050 4500
F 0 "D5" V 7096 4120 50  0000 R CNN
F 1 "ASMB-MTB0-0A3A2" V 7005 4120 50  0000 R CNN
F 2 "LED_SMD:LED_Avago_PLCC4_3.2x2.8mm_CW" H 7050 5000 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-4186EN" H 7050 4050 50  0001 C CNN
	1    7050 4500
	0    -1   -1   0   
$EndComp
Text GLabel 7250 5150 3    50   Input ~ 0
GND
Wire Wire Line
	7250 4800 7250 4700
Wire Wire Line
	7250 5000 7250 5150
$Comp
L Device:R_Small R9
U 1 1 5F975A26
P 6850 4900
F 0 "R9" H 6900 4950 50  0000 L CNN
F 1 "5.1k" H 6900 4850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6850 4900 50  0001 C CNN
F 3 "~" H 6850 4900 50  0001 C CNN
	1    6850 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4700 6850 4800
Wire Wire Line
	7050 4800 7050 4700
Text GLabel 7050 5150 3    50   Input ~ 0
PDO2
Text GLabel 6850 5150 3    50   Input ~ 0
PDO3
Wire Wire Line
	6850 5150 6850 5000
Wire Wire Line
	7050 5000 7050 5150
Text GLabel 7050 4300 1    50   Input ~ 0
VSNK
$Comp
L Device:R_Small R10
U 1 1 5F97B3AF
P 7050 4900
F 0 "R10" H 7100 4950 50  0000 L CNN
F 1 "5.1k" H 7100 4850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7050 4900 50  0001 C CNN
F 3 "~" H 7050 4900 50  0001 C CNN
	1    7050 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5F97BB57
P 7250 4900
F 0 "R11" H 7300 4950 50  0000 L CNN
F 1 "5.1k" H 7300 4850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7250 4900 50  0001 C CNN
F 3 "~" H 7250 4900 50  0001 C CNN
	1    7250 4900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5F98010E
P 5600 5800
F 0 "H1" H 5700 5849 50  0000 L CNN
F 1 "MountingHole_Pad" H 5700 5758 50  0000 L CNN
F 2 "Makeristic-KiCad-Library:MountingHole_2.7mm_M2.5_Pad_Small" H 5600 5800 50  0001 C CNN
F 3 "~" H 5600 5800 50  0001 C CNN
	1    5600 5800
	1    0    0    -1  
$EndComp
Text GLabel 5600 5900 3    50   Input ~ 0
GND
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5F981FF6
P 5800 6100
F 0 "H2" H 5900 6149 50  0000 L CNN
F 1 "MountingHole_Pad" H 5900 6058 50  0000 L CNN
F 2 "Makeristic-KiCad-Library:MountingHole_2.7mm_M2.5_Pad_Small" H 5800 6100 50  0001 C CNN
F 3 "~" H 5800 6100 50  0001 C CNN
	1    5800 6100
	1    0    0    -1  
$EndComp
Text GLabel 5800 6200 3    50   Input ~ 0
GND
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5F983285
P 5600 6450
F 0 "H3" H 5700 6499 50  0000 L CNN
F 1 "MountingHole_Pad" H 5700 6408 50  0000 L CNN
F 2 "Makeristic-KiCad-Library:MountingHole_2.7mm_M2.5_Pad_Small" H 5600 6450 50  0001 C CNN
F 3 "~" H 5600 6450 50  0001 C CNN
	1    5600 6450
	1    0    0    -1  
$EndComp
Text GLabel 5600 6550 3    50   Input ~ 0
GND
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5F9848E8
P 5800 6700
F 0 "H4" H 5900 6749 50  0000 L CNN
F 1 "MountingHole_Pad" H 5900 6658 50  0000 L CNN
F 2 "Makeristic-KiCad-Library:MountingHole_2.7mm_M2.5_Pad_Small" H 5800 6700 50  0001 C CNN
F 3 "~" H 5800 6700 50  0001 C CNN
	1    5800 6700
	1    0    0    -1  
$EndComp
Text GLabel 5800 6800 3    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 5F98700A
P 3800 5400
F 0 "J5" H 3828 5376 50  0000 L CNN
F 1 "Conn_01x04_Female" H 3828 5285 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3800 5400 50  0001 C CNN
F 3 "~" H 3800 5400 50  0001 C CNN
	1    3800 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J6
U 1 1 5F987A24
P 3800 6050
F 0 "J6" H 3828 6026 50  0000 L CNN
F 1 "Conn_01x04_Female" H 3828 5935 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3800 6050 50  0001 C CNN
F 3 "~" H 3800 6050 50  0001 C CNN
	1    3800 6050
	1    0    0    -1  
$EndComp
Text GLabel 3600 5300 0    50   Input ~ 0
VCC
Text GLabel 3600 5400 0    50   Input ~ 0
VSNK
Text GLabel 3600 5500 0    50   Input ~ 0
GND
Text GLabel 3600 5600 0    50   Input ~ 0
ATTACH
Text GLabel 3600 6050 0    50   Input ~ 0
SCL
Text GLabel 3600 6150 0    50   Input ~ 0
SDA
Text GLabel 3600 6250 0    50   Input ~ 0
ALERT
Text GLabel 3600 5950 0    50   Input ~ 0
GPIO
$Comp
L Connector:USB_C_Receptacle_USB2.0 J1
U 1 1 5F8E62E1
P 1450 3150
F 0 "J1" H 1450 4050 50  0000 C CNN
F 1 "USB_C_Receptacle" H 1450 3950 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_XKB_U262-16XN-4BVC11" H 1600 3150 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1600 3150 50  0001 C CNN
	1    1450 3150
	1    0    0    -1  
$EndComp
NoConn ~ 2050 3750
NoConn ~ 2050 3650
NoConn ~ 2050 3350
NoConn ~ 2050 3250
NoConn ~ 2050 3150
NoConn ~ 2050 3050
Wire Wire Line
	2150 2550 2250 2550
Connection ~ 2150 2550
Wire Wire Line
	2150 2550 2150 2450
Wire Wire Line
	2050 2550 2150 2550
$Comp
L power:VBUS #PWR0101
U 1 1 5F90365D
P 2150 2450
F 0 "#PWR0101" H 2150 2300 50  0001 C CNN
F 1 "VBUS" H 2165 2623 50  0000 C CNN
F 2 "" H 2150 2450 50  0001 C CNN
F 3 "" H 2150 2450 50  0001 C CNN
	1    2150 2450
	1    0    0    -1  
$EndComp
Text GLabel 2250 2550 2    50   Input ~ 0
VBUS
Wire Wire Line
	7600 3500 7600 3650
$Comp
L Diode:BAT54AW D1
U 1 1 5F9F9116
P 7600 3300
F 0 "D1" H 7600 3525 50  0000 C CNN
F 1 "ESDA25W" H 7600 3434 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 7675 3425 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54W_SER.pdf" H 7480 3300 50  0001 C CNN
	1    7600 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3100 7300 3300
Wire Wire Line
	7900 3100 7900 3300
$EndSCHEMATC
