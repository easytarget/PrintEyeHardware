EESchema Schematic File Version 4
LIBS:PrintEye-cache
EELAYER 30 0
EELAYER END
$Descr User 7874 6299
encoding utf-8
Sheet 1 1
Title "Arduino 'Eye' temp display for RepRap firmware"
Date "2019-09-03"
Rev "v0.01"
Comp "Owen Carter"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L OLEDs:SSD1315-096 OLED2
U 1 1 5C548570
P 3000 1200
F 0 "OLED2" H 2850 1350 50  0000 L CNN
F 1 "SSD1315_I2C_OLED" H 2650 1150 50  0000 L CNN
F 2 "PrintEyeHardware:SSD1315-I2C-OLED" H 2900 1500 50  0001 C CNN
F 3 "" H 2900 1500 50  0001 C CNN
	1    3000 1200
	1    0    0    -1  
$EndComp
Text GLabel 1650 3200 2    50   Output ~ 0
GND
Text GLabel 3350 2350 2    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x04_Female #CONN1
U 1 1 5C54D33E
P 1300 4900
F 0 "#CONN1" H 1550 5000 50  0000 L CNN
F 1 "Duet" H 1600 4900 50  0000 L CNN
F 2 "" H 1300 4900 50  0001 C CNN
F 3 "~" H 1300 4900 50  0001 C CNN
F 4 "5v" H 1450 4900 50  0000 C CNN "Field4"
F 5 "0v" H 1450 5000 50  0000 C CNN "Field5"
F 6 "UTXD0" H 1450 4700 50  0000 C CNN "Field6"
F 7 "URXD0" H 1450 4800 50  0000 C CNN "Field7"
	1    1300 4900
	-1   0    0    -1  
$EndComp
Text GLabel 1650 3400 2    50   Output ~ 0
5v
Text GLabel 3350 2250 2    50   Input ~ 0
5v
$Comp
L OLEDs:SSD1315-096 OLED1
U 1 1 5D168B9C
P 1300 1200
F 0 "OLED1" H 1150 1350 50  0000 L CNN
F 1 "SSD1315_I2C_OLED" H 1000 1150 50  0000 L CNN
F 2 "PrintEyeHardware:SSD1315-I2C-OLED" H 1200 1500 50  0001 C CNN
F 3 "" H 1200 1500 50  0001 C CNN
	1    1300 1200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 5D16E4E1
P 1200 3500
F 0 "J1" H 1650 3350 50  0000 C CNN
F 1 "FTDI" H 1650 3450 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x06_P1.27mm_Vertical" H 1200 3500 50  0001 C CNN
F 3 "~" H 1200 3500 50  0001 C CNN
F 4 "BLACK" H 1200 3050 50  0000 C CNN "Field5"
F 5 "GND" H 1350 3200 50  0000 C CNN "Field6"
F 6 "CTS" H 1350 3300 50  0000 C CNN "Field7"
F 7 "VCC" H 1350 3400 50  0000 C CNN "Field8"
F 8 "RX" H 1350 3500 50  0000 C CNN "Field9"
F 9 "TX" H 1350 3600 50  0000 C CNN "Field10"
F 10 "RTS" H 1350 3700 50  0000 C CNN "Field11"
F 11 "GREEN" H 1200 3850 50  0000 C CNN "Field4"
	1    1200 3500
	-1   0    0    1   
$EndComp
Text GLabel 1650 2350 2    50   Input ~ 0
GND
Text GLabel 1650 2250 2    50   Input ~ 0
5v
Text GLabel 1650 2150 2    50   BiDi ~ 0
SCK1
Text GLabel 3350 2150 2    50   BiDi ~ 0
SCK2
Text GLabel 1650 2050 2    50   BiDi ~ 0
SDA1
Text GLabel 3350 2050 2    50   BiDi ~ 0
SDA2
Text GLabel 6550 4300 0    50   Input ~ 0
GND
Text GLabel 5850 700  0    50   Input ~ 0
5v
Wire Wire Line
	6650 700  6650 1100
Wire Wire Line
	6550 4300 6650 4300
Wire Wire Line
	6650 4300 6650 4100
Text GLabel 5850 2500 0    50   BiDi ~ 0
SDA1
Text GLabel 5850 2600 0    50   BiDi ~ 0
SCK1
Text GLabel 5850 2700 0    50   BiDi ~ 0
SDA2
Text GLabel 5850 2800 0    50   BiDi ~ 0
SCK2
Wire Wire Line
	6050 2800 5850 2800
Wire Wire Line
	6050 2700 5850 2700
Wire Wire Line
	6050 2600 5850 2600
Wire Wire Line
	6050 2500 5850 2500
$Comp
L Device:C C2
U 1 1 5D1BF80F
P 5250 2250
F 0 "C2" V 5350 2400 50  0000 C CNN
F 1 "22pF" V 5450 2400 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 5288 2100 50  0001 C CNN
F 3 "~" H 5250 2250 50  0001 C CNN
	1    5250 2250
	0    -1   1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5D1C0606
P 5250 1850
F 0 "C1" V 5050 2000 50  0000 C CNN
F 1 "22pF" V 5150 2000 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 5288 1700 50  0001 C CNN
F 3 "~" H 5250 1850 50  0001 C CNN
	1    5250 1850
	0    -1   1    0   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5D1C6EA4
P 5700 2050
F 0 "Y1" V 5746 1919 50  0000 R CNN
F 1 "16MHz" V 5655 1919 50  0000 R CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 5700 2050 50  0001 C CNN
F 3 "~" H 5700 2050 50  0001 C CNN
	1    5700 2050
	0    1    -1   0   
$EndComp
Wire Wire Line
	5900 2000 6050 2000
Wire Wire Line
	6050 2100 5900 2100
Wire Wire Line
	5100 1850 5050 1850
Wire Wire Line
	5050 1850 5050 2050
Text GLabel 4950 2050 0    50   Input ~ 0
GND
Wire Wire Line
	6650 700  6550 700 
Wire Wire Line
	6550 700  6550 1100
Text GLabel 5850 3100 0    50   Input ~ 0
RX
Text GLabel 5800 3200 0    50   Output ~ 0
TX
Text GLabel 4950 3000 0    50   Input ~ 0
RTS
Wire Wire Line
	5850 3100 6050 3100
Wire Wire Line
	5800 3200 6050 3200
Text GLabel 1650 3500 2    50   Output ~ 0
RX-3v3
Text GLabel 1600 3600 2    50   Input ~ 0
TX-3v3
Text GLabel 1600 3700 2    50   Input ~ 0
RTS
Wire Wire Line
	1400 3200 1650 3200
Wire Wire Line
	1400 3400 1650 3400
Wire Wire Line
	1400 3500 1650 3500
Wire Wire Line
	1400 3600 1600 3600
Wire Wire Line
	1400 3700 1600 3700
$Comp
L Connector:Conn_01x06_Female #CONN2
U 1 1 5D24BA3F
P 2150 5100
F 0 "#CONN2" H 2600 4800 50  0000 C CNN
F 1 "FTDI" H 2550 4900 50  0000 C CNN
F 2 "" H 2150 5100 50  0001 C CNN
F 3 "~" H 2150 5100 50  0001 C CNN
F 4 "BLACK" H 2200 4700 50  0000 C CNN "Field5"
F 5 "GND" H 2300 4800 50  0000 C CNN "Field6"
F 6 "CTS" H 2300 4900 50  0000 C CNN "Field7"
F 7 "VCC" H 2300 5000 50  0000 C CNN "Field8"
F 8 "RX" H 2300 5100 50  0000 C CNN "Field9"
F 9 "TX" H 2300 5200 50  0000 C CNN "Field10"
F 10 "RTS" H 2300 5300 50  0000 C CNN "Field11"
F 11 "GREEN" H 2200 5400 50  0000 C CNN "Field4"
	1    2150 5100
	1    0    0    1   
$EndComp
Wire Wire Line
	1500 4800 1950 4800
Wire Wire Line
	1500 5100 1950 5100
NoConn ~ 1950 5300
NoConn ~ 1950 4900
NoConn ~ 6050 3800
NoConn ~ 6050 3700
NoConn ~ 6050 3600
NoConn ~ 6050 3500
NoConn ~ 6050 3400
NoConn ~ 6050 3300
NoConn ~ 6050 2400
NoConn ~ 6050 2300
NoConn ~ 6050 1900
NoConn ~ 6050 1800
NoConn ~ 6050 1700
NoConn ~ 6050 1400
NoConn ~ 7250 1400
Wire Notes Line style dash_dot
	750  4550 2750 4550
Wire Notes Line
	2750 4550 2750 5700
Wire Notes Line
	2750 5700 750  5700
Wire Notes Line
	750  5700 750  4550
Text Notes 800  5650 0    118  ~ 0
Duet\nAdapter Cable
Text Notes 1000 800  2    118  ~ 0
Left
Text Notes 2850 800  2    118  ~ 0
Right
Text Notes 6300 1000 2    118  ~ 0
CPU
Text Notes 1700 2900 2    118  ~ 0
Duet/FTDI
Wire Wire Line
	6550 700  5850 700 
Connection ~ 6550 700 
Wire Wire Line
	4950 2050 5050 2050
Connection ~ 5050 2050
Wire Wire Line
	5050 2050 5050 2250
NoConn ~ 1400 3300
$Comp
L Device:CP C5
U 1 1 5D3BA784
P 5250 3000
F 0 "C5" V 5400 2800 50  0000 L CNN
F 1 "100nF" V 5500 2750 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 5288 2850 50  0001 C CNN
F 3 "~" H 5250 3000 50  0001 C CNN
	1    5250 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3000 4950 3000
Wire Wire Line
	5050 2250 5100 2250
Wire Wire Line
	5400 1850 5700 1850
Wire Wire Line
	5900 1850 5900 2000
Wire Wire Line
	5900 2100 5900 2250
Wire Wire Line
	5900 2250 5700 2250
Wire Wire Line
	5700 2200 5700 2250
Connection ~ 5700 2250
Wire Wire Line
	5700 2250 5400 2250
Wire Wire Line
	5700 1900 5700 1850
Connection ~ 5700 1850
Wire Wire Line
	5700 1850 5900 1850
$Comp
L Device:R R1
U 1 1 5D3DEC57
P 5250 2800
F 0 "R1" V 5050 2700 50  0000 C CNN
F 1 "10K" V 5150 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5180 2800 50  0001 C CNN
F 3 "~" H 5250 2800 50  0001 C CNN
	1    5250 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 2900 6050 2900
Text GLabel 4950 2800 0    50   Input ~ 0
5v
Wire Wire Line
	4950 2800 5100 2800
Wire Wire Line
	5400 3000 5450 3000
Wire Wire Line
	5450 3000 5450 2900
Wire Wire Line
	5450 2800 5400 2800
Connection ~ 5450 2900
Wire Wire Line
	5450 2900 5450 2800
Wire Wire Line
	1500 5000 1950 5200
Wire Wire Line
	1500 4900 1950 5000
$Comp
L Device:R R2
U 1 1 5D1C3CA2
P 2650 3350
F 0 "R2" H 2720 3396 50  0000 L CNN
F 1 "4K7" H 2720 3305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2580 3350 50  0001 C CNN
F 3 "~" H 2650 3350 50  0001 C CNN
	1    2650 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D1C4212
P 2650 3850
F 0 "R3" H 2720 3896 50  0000 L CNN
F 1 "10K" H 2720 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2580 3850 50  0001 C CNN
F 3 "~" H 2650 3850 50  0001 C CNN
	1    2650 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D1C4985
P 4000 3000
F 0 "R4" H 4070 3046 50  0000 L CNN
F 1 "10K" H 4070 2955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3930 3000 50  0001 C CNN
F 3 "~" H 4000 3000 50  0001 C CNN
	1    4000 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5D1C4EA1
P 4000 3900
F 0 "R5" H 4070 3946 50  0000 L CNN
F 1 "10K" H 4070 3855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3930 3900 50  0001 C CNN
F 3 "~" H 4000 3900 50  0001 C CNN
	1    4000 3900
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7000 Q1
U 1 1 5D1C5646
P 3700 3150
F 0 "Q1" V 3951 3150 50  0000 C CNN
F 1 "2N7000" V 4042 3150 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 3900 3075 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 3700 3150 50  0001 L CNN
	1    3700 3150
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q2
U 1 1 5D1C634D
P 3700 4050
F 0 "Q2" V 3951 4050 50  0000 C CNN
F 1 "2N7000" V 4042 4050 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 3900 3975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 3700 4050 50  0001 L CNN
	1    3700 4050
	0    1    1    0   
$EndComp
Text GLabel 2550 3100 0    50   Input ~ 0
5v
Text GLabel 2550 4100 0    50   Input ~ 0
GND
Text GLabel 2750 3600 2    50   Input ~ 0
3v3
Wire Wire Line
	2550 4100 2650 4100
Wire Wire Line
	2650 4000 2650 4100
Wire Wire Line
	2650 3700 2650 3600
Wire Wire Line
	2650 3200 2650 3100
Wire Wire Line
	2650 3100 2550 3100
Wire Wire Line
	2650 3600 2750 3600
Connection ~ 2650 3600
Wire Wire Line
	2650 3600 2650 3500
Text GLabel 4100 3250 2    50   Output ~ 0
RX
Text GLabel 3600 2850 0    50   Input ~ 0
3v3
Text GLabel 3400 3250 0    50   Input ~ 0
RX-3v3
Text GLabel 3400 4150 0    50   Output ~ 0
TX-3v3
Text GLabel 3600 3750 0    50   Input ~ 0
3v3
Wire Wire Line
	3400 3250 3500 3250
Wire Wire Line
	3600 2850 3700 2850
Wire Wire Line
	3700 2850 3700 2950
Wire Wire Line
	4000 3150 4000 3250
Wire Wire Line
	4000 3250 4100 3250
Wire Wire Line
	4000 3250 3900 3250
Connection ~ 4000 3250
Text GLabel 4100 2750 2    50   Input ~ 0
5v
Text GLabel 4100 3650 2    50   Input ~ 0
5v
Wire Wire Line
	4000 3750 4000 3650
Wire Wire Line
	4000 3650 4100 3650
Wire Wire Line
	4000 2850 4000 2750
Wire Wire Line
	4000 2750 4100 2750
Wire Wire Line
	3600 3750 3700 3750
Wire Wire Line
	3700 3750 3700 3850
Wire Wire Line
	3900 4150 4000 4150
Wire Wire Line
	4000 4150 4000 4050
Wire Wire Line
	3400 4150 3500 4150
Text GLabel 4100 4150 2    50   Input ~ 0
TX
Wire Wire Line
	4000 4150 4100 4150
Connection ~ 4000 4150
Text Notes 2350 2850 0    118  ~ 0
Level\nConversion
$Comp
L MCU_Microchip_ATmega:ATmega328-PU U1
U 1 1 5D187C47
P 6650 2600
F 0 "U1" H 6400 2800 50  0000 R CNN
F 1 "ATmega328-PU" H 6800 2650 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 6650 2600 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 6650 2600 50  0001 C CNN
	1    6650 2600
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5D3DDC60
P 4650 1500
F 0 "J2" H 4800 1400 50  0000 C CNN
F 1 "Pause Button" H 5000 1500 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 4650 1500 50  0001 C CNN
F 3 "~" H 4650 1500 50  0001 C CNN
	1    4650 1500
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5D3DE9B9
P 4650 1050
F 0 "J3" H 4800 950 50  0000 C CNN
F 1 "Activity LED" H 4950 1050 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 4650 1050 50  0001 C CNN
F 3 "~" H 4650 1050 50  0001 C CNN
	1    4650 1050
	-1   0    0    1   
$EndComp
Text GLabel 4900 1050 2    50   Input ~ 0
GND
$Comp
L Device:R R6
U 1 1 5D3F4318
P 5500 1200
F 0 "R6" H 5350 1150 50  0000 C CNN
F 1 "120R" H 5300 1250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5430 1200 50  0001 C CNN
F 3 "~" H 5500 1200 50  0001 C CNN
	1    5500 1200
	-1   0    0    1   
$EndComp
Text GLabel 4900 1500 2    50   Input ~ 0
GND
Wire Wire Line
	4850 1050 4900 1050
Wire Wire Line
	4850 1500 4900 1500
Wire Wire Line
	4850 1400 5350 1400
Wire Wire Line
	5500 1500 6050 1500
Wire Wire Line
	5500 950  5500 1050
Wire Wire Line
	4850 950  5500 950 
Wire Wire Line
	5500 1350 5500 1500
Wire Wire Line
	5350 1600 6050 1600
Wire Wire Line
	5350 1400 5350 1600
Wire Wire Line
	1650 2250 1200 2250
Wire Wire Line
	1200 2250 1200 2000
Wire Wire Line
	1650 2350 1000 2350
Wire Wire Line
	1000 2350 1000 2000
Wire Wire Line
	1650 2150 1400 2150
Wire Wire Line
	1400 2150 1400 2000
Wire Wire Line
	1650 2050 1600 2050
Wire Wire Line
	1600 2050 1600 2000
Wire Wire Line
	2700 2000 2700 2350
Wire Wire Line
	2700 2350 3350 2350
Wire Wire Line
	2900 2000 2900 2250
Wire Wire Line
	2900 2250 3350 2250
Wire Wire Line
	3100 2000 3100 2150
Wire Wire Line
	3100 2150 3350 2150
Wire Wire Line
	3300 2000 3300 2050
Wire Wire Line
	3300 2050 3350 2050
$EndSCHEMATC
