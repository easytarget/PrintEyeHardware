EESchema Schematic File Version 4
LIBS:EyeDrop-cache
EELAYER 29 0
EELAYER END
$Descr User 7874 6299
encoding utf-8
Sheet 1 1
Title "Arduino 'Eye' temp display for RepRap firmware"
Date "2019-06-28"
Rev "v0.01"
Comp "Owen Carter"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L my-hobbylib:SH1106_I2C_OLED OLED2
U 1 1 5C548570
P 3250 1350
F 0 "OLED2" H 3200 850 50  0000 L CNN
F 1 "SH1106_I2C_OLED" H 2950 1300 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x04_P1.27mm_Vertical" H 3150 1650 50  0001 C CNN
F 3 "" H 3150 1650 50  0001 C CNN
	1    3250 1350
	-1   0    0    1   
$EndComp
Text GLabel 1900 3200 2    50   Output ~ 0
GND
Text GLabel 3700 2150 2    50   Input ~ 0
GND
Wire Wire Line
	3350 2150 3350 1950
$Comp
L Connector:Conn_01x04_Female CONN1
U 1 1 5C54D33E
P 1400 4650
F 0 "CONN1" H 1650 4700 50  0000 L CNN
F 1 "Duet" H 1650 4600 50  0000 L CNN
F 2 "" H 1400 4650 50  0001 C CNN
F 3 "~" H 1400 4650 50  0001 C CNN
F 4 "5v" H 1550 4650 50  0000 C CNN "Field4"
F 5 "0v" H 1550 4750 50  0000 C CNN "Field5"
F 6 "RX" H 1550 4450 50  0000 C CNN "Field6"
F 7 "TX" H 1550 4550 50  0000 C CNN "Field7"
	1    1400 4650
	-1   0    0    -1  
$EndComp
Text GLabel 1900 3400 2    50   Output ~ 0
5v
Text GLabel 3700 2050 2    50   Input ~ 0
3v3
$Comp
L my-hobbylib:SH1106_I2C_OLED OLED1
U 1 1 5D168B9C
P 1500 1350
F 0 "OLED1" H 1450 850 50  0000 L CNN
F 1 "SH1106_I2C_OLED" H 1200 1300 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x04_P1.27mm_Vertical" H 1400 1650 50  0001 C CNN
F 3 "" H 1400 1650 50  0001 C CNN
	1    1500 1350
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 5D16E4E1
P 1450 3500
F 0 "J1" H 1900 3350 50  0000 C CNN
F 1 "FTDI" H 1900 3450 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x06_P1.27mm_Horizontal" H 1450 3500 50  0001 C CNN
F 3 "~" H 1450 3500 50  0001 C CNN
F 4 "BLACK" H 1450 3050 50  0000 C CNN "Field5"
F 5 "GND" H 1600 3200 50  0000 C CNN "Field6"
F 6 "CTS" H 1600 3300 50  0000 C CNN "Field7"
F 7 "VCC" H 1600 3400 50  0000 C CNN "Field8"
F 8 "TX" H 1600 3500 50  0000 C CNN "Field9"
F 9 "RX" H 1600 3600 50  0000 C CNN "Field10"
F 10 "RTS" H 1600 3700 50  0000 C CNN "Field11"
F 11 "GREEN" H 1450 3850 50  0000 C CNN "Field4"
	1    1450 3500
	-1   0    0    1   
$EndComp
Text GLabel 1950 2150 2    50   Input ~ 0
GND
Wire Wire Line
	1600 2150 1600 1950
Wire Wire Line
	1950 2150 1600 2150
Text GLabel 1950 2050 2    50   Input ~ 0
3v3
Wire Wire Line
	3700 2150 3350 2150
Wire Wire Line
	3700 2050 3550 2050
Wire Wire Line
	3550 2050 3550 1950
Wire Wire Line
	1950 2050 1800 2050
Wire Wire Line
	1800 2050 1800 1950
Text GLabel 1950 2250 2    50   BiDi ~ 0
SCL1
Text GLabel 3700 2250 2    50   BiDi ~ 0
SCL2
Text GLabel 1950 2350 2    50   BiDi ~ 0
SDA1
Text GLabel 3700 2350 2    50   BiDi ~ 0
SDA2
Wire Wire Line
	3700 2250 3150 2250
Wire Wire Line
	3150 2250 3150 1950
Wire Wire Line
	3700 2350 2950 2350
Wire Wire Line
	2950 2350 2950 1950
Wire Wire Line
	1950 2350 1200 2350
Wire Wire Line
	1200 2350 1200 1950
Wire Wire Line
	1950 2250 1400 2250
Wire Wire Line
	1400 2250 1400 1950
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U2
U 1 1 5D1815C8
P 4150 3550
F 0 "U2" H 4150 3792 50  0000 C CNN
F 1 "LD33V" H 4150 3701 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4150 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 4150 3550 50  0001 C CNN
	1    4150 3550
	1    0    0    -1  
$EndComp
Text GLabel 4800 3550 2    50   Output ~ 0
3v3
Text GLabel 3400 3550 0    50   Input ~ 0
5v
Text GLabel 3450 4050 0    50   Input ~ 0
GND
Wire Wire Line
	4150 3850 4150 4050
$Comp
L Device:CP C3
U 1 1 5D19694F
P 3750 3800
F 0 "C3" H 3450 3850 50  0000 L CNN
F 1 "330nF" H 3350 3750 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 3788 3650 50  0001 C CNN
F 3 "~" H 3750 3800 50  0001 C CNN
	1    3750 3800
	1    0    0    -1  
$EndComp
Text GLabel 6400 4100 0    50   Input ~ 0
GND
Text GLabel 5700 800  0    50   Input ~ 0
3v3
Wire Wire Line
	6500 800  6500 900 
Wire Wire Line
	6400 4100 6500 4100
Wire Wire Line
	6500 4100 6500 3900
Text GLabel 5700 2300 0    50   BiDi ~ 0
SDA1
Text GLabel 5700 2400 0    50   BiDi ~ 0
SCL1
Text GLabel 5700 2500 0    50   BiDi ~ 0
SDA2
Text GLabel 5700 2600 0    50   BiDi ~ 0
SCL2
Wire Wire Line
	5900 2600 5700 2600
Wire Wire Line
	5900 2500 5700 2500
Wire Wire Line
	5900 2400 5700 2400
Wire Wire Line
	5900 2300 5700 2300
$Comp
L Device:C C2
U 1 1 5D1BF80F
P 5100 2050
F 0 "C2" V 5200 2200 50  0000 C CNN
F 1 "22pF" V 5300 2200 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L12.0mm_D10.5mm_P15.00mm_Horizontal" H 5138 1900 50  0001 C CNN
F 3 "~" H 5100 2050 50  0001 C CNN
	1    5100 2050
	0    -1   1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5D1C0606
P 5100 1650
F 0 "C1" V 4900 1800 50  0000 C CNN
F 1 "22pF" V 5000 1800 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L12.0mm_D10.5mm_P15.00mm_Horizontal" H 5138 1500 50  0001 C CNN
F 3 "~" H 5100 1650 50  0001 C CNN
	1    5100 1650
	0    -1   1    0   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5D1C6EA4
P 5550 1850
F 0 "Y1" V 5596 1719 50  0000 R CNN
F 1 "16MHz" V 5505 1719 50  0000 R CNN
F 2 "Crystal:Crystal_DS26_D2.0mm_L6.0mm_Horizontal" H 5550 1850 50  0001 C CNN
F 3 "~" H 5550 1850 50  0001 C CNN
	1    5550 1850
	0    1    -1   0   
$EndComp
Wire Wire Line
	5750 1800 5900 1800
Wire Wire Line
	5900 1900 5750 1900
Wire Wire Line
	4950 1650 4900 1650
Wire Wire Line
	4900 1650 4900 1850
Text GLabel 4800 1850 0    50   Input ~ 0
GND
Wire Wire Line
	6500 800  6400 800 
Wire Wire Line
	6400 800  6400 900 
Text GLabel 5700 2900 0    50   Input ~ 0
RX
Text GLabel 5650 3000 0    50   Output ~ 0
TX
Text GLabel 4800 2800 0    50   Input ~ 0
RTS
Wire Wire Line
	5700 2900 5900 2900
Wire Wire Line
	5650 3000 5900 3000
Text GLabel 1850 3500 2    50   Input ~ 0
TX
Text GLabel 1900 3600 2    50   Output ~ 0
RX
Text GLabel 1850 3700 2    50   Input ~ 0
RTS
Wire Wire Line
	1650 3200 1900 3200
Wire Wire Line
	1650 3400 1900 3400
Wire Wire Line
	1650 3500 1850 3500
Wire Wire Line
	1650 3600 1900 3600
Wire Wire Line
	1650 3700 1850 3700
$Comp
L Connector:Conn_01x06_Female CONN2
U 1 1 5D24BA3F
P 2250 4850
F 0 "CONN2" H 2700 4600 50  0000 C CNN
F 1 "FTDI" H 2650 4700 50  0000 C CNN
F 2 "" H 2250 4850 50  0001 C CNN
F 3 "~" H 2250 4850 50  0001 C CNN
F 4 "BLACK" H 2300 4450 50  0000 C CNN "Field5"
F 5 "GND" H 2400 4550 50  0000 C CNN "Field6"
F 6 "CTS" H 2400 4650 50  0000 C CNN "Field7"
F 7 "VCC" H 2400 4750 50  0000 C CNN "Field8"
F 8 "TX" H 2400 4850 50  0000 C CNN "Field9"
F 9 "RX" H 2400 4950 50  0000 C CNN "Field10"
F 10 "RTS" H 2400 5050 50  0000 C CNN "Field11"
F 11 "GREEN" H 2300 5150 50  0000 C CNN "Field4"
	1    2250 4850
	1    0    0    1   
$EndComp
Wire Wire Line
	1600 4550 2050 4550
Wire Wire Line
	1600 4650 2050 4750
Wire Wire Line
	1600 4750 2050 4850
Wire Wire Line
	1600 4850 2050 4950
NoConn ~ 2050 5050
NoConn ~ 2050 4650
NoConn ~ 5900 3600
NoConn ~ 5900 3500
NoConn ~ 5900 3400
NoConn ~ 5900 3300
NoConn ~ 5900 3200
NoConn ~ 5900 3100
NoConn ~ 5900 2200
NoConn ~ 5900 2100
NoConn ~ 5900 1700
NoConn ~ 5900 1600
NoConn ~ 5900 1500
NoConn ~ 5900 1400
NoConn ~ 5900 1300
NoConn ~ 5900 1200
NoConn ~ 7100 1200
Wire Notes Line style dash_dot
	850  4300 2850 4300
Wire Notes Line
	2850 4300 2850 5450
Wire Notes Line
	2850 5450 850  5450
Wire Notes Line
	850  5450 850  4300
Text Notes 900  5400 0    118  ~ 0
Duet\nAdapter Cable
Text Notes 1100 850  2    118  ~ 0
Left
Text Notes 2950 850  2    118  ~ 0
Right
Text Notes 3450 3250 2    118  ~ 0
Power
Text Notes 5500 1100 2    118  ~ 0
CPU
Text Notes 1700 2900 2    118  ~ 0
Duet/FTDI
$Comp
L MCU_Microchip_ATmega:ATmega328-PU U1
U 1 1 5D187C47
P 6500 2400
F 0 "U1" H 6250 2600 50  0000 R CNN
F 1 "ATmega328-PU" H 6650 2450 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 6500 2400 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 6500 2400 50  0001 C CNN
	1    6500 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6400 800  5700 800 
Connection ~ 6400 800 
Wire Wire Line
	4800 1850 4900 1850
Connection ~ 4900 1850
Wire Wire Line
	4900 1850 4900 2050
$Comp
L Device:CP C4
U 1 1 5D1973B2
P 4550 3800
F 0 "C4" H 4668 3846 50  0000 L CNN
F 1 "100nF" H 4668 3755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 4588 3650 50  0001 C CNN
F 3 "~" H 4550 3800 50  0001 C CNN
	1    4550 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4050 3750 4050
Wire Wire Line
	3750 3950 3750 4050
Connection ~ 3750 4050
Wire Wire Line
	3750 4050 4150 4050
Wire Wire Line
	4150 4050 4550 4050
Wire Wire Line
	4550 4050 4550 3950
Connection ~ 4150 4050
Wire Wire Line
	4450 3550 4550 3550
Wire Wire Line
	4550 3550 4550 3650
Connection ~ 4550 3550
Wire Wire Line
	4550 3550 4800 3550
Wire Wire Line
	3850 3550 3750 3550
Wire Wire Line
	3750 3650 3750 3550
Connection ~ 3750 3550
Wire Wire Line
	3750 3550 3400 3550
NoConn ~ 1650 3300
$Comp
L Device:CP C5
U 1 1 5D3BA784
P 5100 2800
F 0 "C5" V 5250 2600 50  0000 L CNN
F 1 "100nF" V 5350 2550 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 5138 2650 50  0001 C CNN
F 3 "~" H 5100 2800 50  0001 C CNN
	1    5100 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 2800 4800 2800
Wire Wire Line
	4900 2050 4950 2050
Wire Wire Line
	5250 1650 5550 1650
Wire Wire Line
	5750 1650 5750 1800
Wire Wire Line
	5750 1900 5750 2050
Wire Wire Line
	5750 2050 5550 2050
Wire Wire Line
	5550 2000 5550 2050
Connection ~ 5550 2050
Wire Wire Line
	5550 2050 5250 2050
Wire Wire Line
	5550 1700 5550 1650
Connection ~ 5550 1650
Wire Wire Line
	5550 1650 5750 1650
$Comp
L Device:R R1
U 1 1 5D3DEC57
P 5100 2600
F 0 "R1" V 4900 2500 50  0000 C CNN
F 1 "10K" V 5000 2500 50  0000 C CNN
F 2 "" V 5030 2600 50  0001 C CNN
F 3 "~" H 5100 2600 50  0001 C CNN
	1    5100 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 2700 5900 2700
Text GLabel 4800 2600 0    50   Input ~ 0
3v3
Wire Wire Line
	4800 2600 4950 2600
Wire Wire Line
	5250 2800 5300 2800
Wire Wire Line
	5300 2800 5300 2700
Wire Wire Line
	5300 2600 5250 2600
Connection ~ 5300 2700
Wire Wire Line
	5300 2700 5300 2600
$EndSCHEMATC
