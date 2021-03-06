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
L Connector_Generic:Conn_01x04 J2
U 1 1 5ED62692
P 10550 5000
F 0 "J2" H 10630 4992 50  0000 L CNN
F 1 "Conn_01x04" H 10630 4901 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 10550 5000 50  0001 C CNN
F 3 "~" H 10550 5000 50  0001 C CNN
	1    10550 5000
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32L0:STM32L052K8Tx U3
U 1 1 5ED63203
P 7950 3100
F 0 "U3" H 7550 4050 50  0000 C CNN
F 1 "STM32L052K8Tx" H 8350 4050 50  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 7450 2200 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00108217.pdf" H 7950 3100 50  0001 C CNN
	1    7950 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0102
U 1 1 5ED694E7
P 7850 4100
F 0 "#PWR0102" H 7850 3850 50  0001 C CNN
F 1 "GNDD" H 7854 3945 50  0000 C CNN
F 2 "" H 7850 4100 50  0001 C CNN
F 3 "" H 7850 4100 50  0001 C CNN
	1    7850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4100 7850 4100
Connection ~ 7850 4100
$Comp
L power:GNDD #PWR0106
U 1 1 5ED6E812
P 3250 4900
F 0 "#PWR0106" H 3250 4650 50  0001 C CNN
F 1 "GNDD" H 3254 4745 50  0000 C CNN
F 2 "" H 3250 4900 50  0001 C CNN
F 3 "" H 3250 4900 50  0001 C CNN
	1    3250 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5ED6FFF8
P 3750 4700
F 0 "C2" H 3842 4746 50  0000 L CNN
F 1 "22uF" H 3842 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3750 4700 50  0001 C CNN
F 3 "~" H 3750 4700 50  0001 C CNN
	1    3750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4600 3750 4500
Wire Wire Line
	3750 4500 3650 4500
$Comp
L power:+3V3 #PWR0107
U 1 1 5ED70AC6
P 3750 4500
F 0 "#PWR0107" H 3750 4350 50  0001 C CNN
F 1 "+3V3" H 3765 4673 50  0000 C CNN
F 2 "" H 3750 4500 50  0001 C CNN
F 3 "" H 3750 4500 50  0001 C CNN
	1    3750 4500
	1    0    0    -1  
$EndComp
Connection ~ 3750 4500
$Comp
L Device:R_Small R1
U 1 1 5ED71256
P 800 5950
F 0 "R1" H 859 5996 50  0000 L CNN
F 1 "100k" H 859 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 800 5950 50  0001 C CNN
F 3 "~" H 800 5950 50  0001 C CNN
	1    800  5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5ED71C9E
P 800 6200
F 0 "R2" H 859 6246 50  0000 L CNN
F 1 "10k" H 859 6155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 800 6200 50  0001 C CNN
F 3 "~" H 800 6200 50  0001 C CNN
	1    800  6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  6050 800  6100
$Comp
L power:GNDD #PWR0109
U 1 1 5ED72894
P 800 6300
F 0 "#PWR0109" H 800 6050 50  0001 C CNN
F 1 "GNDD" H 804 6145 50  0000 C CNN
F 2 "" H 800 6300 50  0001 C CNN
F 3 "" H 800 6300 50  0001 C CNN
	1    800  6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  6050 1250 6050
Connection ~ 800  6050
Text GLabel 1250 6050 2    50   Input ~ 0
Vbat
Text GLabel 8900 2400 2    50   Input ~ 0
Vbat
Wire Wire Line
	8900 2400 8450 2400
$Comp
L power:+3V3 #PWR0110
U 1 1 5ED7391D
P 7850 2200
F 0 "#PWR0110" H 7850 2050 50  0001 C CNN
F 1 "+3V3" H 7865 2373 50  0000 C CNN
F 2 "" H 7850 2200 50  0001 C CNN
F 3 "" H 7850 2200 50  0001 C CNN
	1    7850 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2200 7950 2200
Connection ~ 7850 2200
Connection ~ 7950 2200
Wire Wire Line
	7950 2200 7850 2200
$Comp
L power:GNDD #PWR0111
U 1 1 5ED74ADE
P 7100 2800
F 0 "#PWR0111" H 7100 2550 50  0001 C CNN
F 1 "GNDD" H 7104 2645 50  0000 C CNN
F 2 "" H 7100 2800 50  0001 C CNN
F 3 "" H 7100 2800 50  0001 C CNN
	1    7100 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5ED765C2
P 9200 5100
F 0 "R6" H 9259 5146 50  0000 L CNN
F 1 "1k" H 9259 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9200 5100 50  0001 C CNN
F 3 "~" H 9200 5100 50  0001 C CNN
	1    9200 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0112
U 1 1 5ED774D0
P 8650 4700
F 0 "#PWR0112" H 8650 4550 50  0001 C CNN
F 1 "+3V3" H 8665 4873 50  0000 C CNN
F 2 "" H 8650 4700 50  0001 C CNN
F 3 "" H 8650 4700 50  0001 C CNN
	1    8650 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0113
U 1 1 5ED77C58
P 9550 6150
F 0 "#PWR0113" H 9550 5900 50  0001 C CNN
F 1 "GNDD" H 9554 5995 50  0000 C CNN
F 2 "" H 9550 6150 50  0001 C CNN
F 3 "" H 9550 6150 50  0001 C CNN
	1    9550 6150
	1    0    0    -1  
$EndComp
Text GLabel 8250 4900 0    50   Input ~ 0
RX
Text GLabel 8250 5300 0    50   Input ~ 0
TX
Text GLabel 8250 5100 0    50   Input ~ 0
DIR
$Comp
L Batmonitor-rescue:OLED128x64-Display_Oled U4
U 1 1 5ED7B2CE
P 9100 1050
F 0 "U4" H 10428 851 50  0000 L CNN
F 1 "OLED128x64" H 10428 760 50  0000 L CNN
F 2 "LIb:1.3 IIC display" H 9100 1050 50  0001 C CNN
F 3 "" H 9100 1050 50  0001 C CNN
	1    9100 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0114
U 1 1 5ED7C041
P 9100 1100
F 0 "#PWR0114" H 9100 950 50  0001 C CNN
F 1 "+3V3" H 9115 1273 50  0000 C CNN
F 2 "" H 9100 1100 50  0001 C CNN
F 3 "" H 9100 1100 50  0001 C CNN
	1    9100 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0115
U 1 1 5ED7C59F
P 9100 1200
F 0 "#PWR0115" H 9100 950 50  0001 C CNN
F 1 "GNDD" V 9104 1090 50  0000 R CNN
F 2 "" H 9100 1200 50  0001 C CNN
F 3 "" H 9100 1200 50  0001 C CNN
	1    9100 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 1300 8600 1300
Wire Wire Line
	9100 1400 8800 1400
Text GLabel 8550 1300 0    50   Input ~ 0
SCL
Text GLabel 8550 1400 0    50   Input ~ 0
SDA
$Comp
L Device:R_Small R4
U 1 1 5ED7E911
P 8600 950
F 0 "R4" H 8659 996 50  0000 L CNN
F 1 "10k" H 8659 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8600 950 50  0001 C CNN
F 3 "~" H 8600 950 50  0001 C CNN
	1    8600 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5ED7F2F4
P 8800 950
F 0 "R5" H 8859 996 50  0000 L CNN
F 1 "10k" H 8859 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8800 950 50  0001 C CNN
F 3 "~" H 8800 950 50  0001 C CNN
	1    8800 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 850  8700 850 
Wire Wire Line
	8600 1050 8600 1300
Connection ~ 8600 1300
Wire Wire Line
	8600 1300 8550 1300
Wire Wire Line
	8800 1050 8800 1400
Connection ~ 8800 1400
Wire Wire Line
	8800 1400 8550 1400
$Comp
L power:+3V3 #PWR0116
U 1 1 5ED81014
P 8700 850
F 0 "#PWR0116" H 8700 700 50  0001 C CNN
F 1 "+3V3" H 8715 1023 50  0000 C CNN
F 2 "" H 8700 850 50  0001 C CNN
F 3 "" H 8700 850 50  0001 C CNN
	1    8700 850 
	1    0    0    -1  
$EndComp
Connection ~ 8700 850 
Wire Wire Line
	8700 850  8600 850 
$Comp
L power:GND #PWR0119
U 1 1 5ED83A70
P 10350 5200
F 0 "#PWR0119" H 10350 4950 50  0001 C CNN
F 1 "GND" H 10355 5027 50  0000 C CNN
F 2 "" H 10350 5200 50  0001 C CNN
F 3 "" H 10350 5200 50  0001 C CNN
	1    10350 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5ED83F96
P 9550 5000
F 0 "R8" V 9354 5000 50  0000 C CNN
F 1 "100R" V 9445 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9550 5000 50  0001 C CNN
F 3 "~" H 9550 5000 50  0001 C CNN
	1    9550 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5ED84690
P 9900 5200
F 0 "R7" V 9704 5200 50  0000 C CNN
F 1 "100R" V 9795 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9900 5200 50  0001 C CNN
F 3 "~" H 9900 5200 50  0001 C CNN
	1    9900 5200
	0    1    1    0   
$EndComp
Connection ~ 9200 5000
Wire Wire Line
	9200 5000 9050 5000
Wire Wire Line
	9050 5200 9200 5200
Connection ~ 9200 5200
Wire Wire Line
	9200 5200 9650 5200
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5ED92DA8
P 850 6900
F 0 "J1" H 768 7117 50  0000 C CNN
F 1 "Alarm" H 768 7026 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 850 6900 50  0001 C CNN
F 3 "~" H 850 6900 50  0001 C CNN
	1    850  6900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1050 6900 1200 6900
Wire Wire Line
	9450 5000 9200 5000
Connection ~ 9650 5200
Wire Wire Line
	9650 5200 9800 5200
Wire Wire Line
	8450 2500 8900 2500
Text GLabel 8900 2500 2    50   Input ~ 0
+Ibat
Wire Wire Line
	8900 3300 8450 3300
Wire Wire Line
	8450 3400 8900 3400
Wire Wire Line
	8450 3600 8900 3600
Text GLabel 8900 3600 2    50   Input ~ 0
DIR
Text GLabel 8900 3400 2    50   Input ~ 0
RX
Text GLabel 8900 3300 2    50   Input ~ 0
TX
Wire Wire Line
	7350 3800 6900 3800
Wire Wire Line
	6900 3900 7350 3900
Text GLabel 6900 3800 0    50   Input ~ 0
SCL
Text GLabel 6900 3900 0    50   Input ~ 0
SDA
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J3
U 1 1 5ED7A763
P 6050 1300
F 0 "J3" H 6100 1717 50  0000 C CNN
F 1 "Prog" H 6100 1626 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 6050 1300 50  0001 C CNN
F 3 "~" H 6050 1300 50  0001 C CNN
	1    6050 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0125
U 1 1 5ED7BE6D
P 5850 1100
F 0 "#PWR0125" H 5850 950 50  0001 C CNN
F 1 "+3V3" H 5865 1273 50  0000 C CNN
F 2 "" H 5850 1100 50  0001 C CNN
F 3 "" H 5850 1100 50  0001 C CNN
	1    5850 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0126
U 1 1 5ED7C445
P 5850 1500
F 0 "#PWR0126" H 5850 1250 50  0001 C CNN
F 1 "GNDD" H 5854 1345 50  0000 C CNN
F 2 "" H 5850 1500 50  0001 C CNN
F 3 "" H 5850 1500 50  0001 C CNN
	1    5850 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1500 6400 1500
Text GLabel 6600 1500 2    50   Input ~ 0
RST
$Comp
L Device:C_Small C5
U 1 1 5ED7EBE6
P 6400 1600
F 0 "C5" H 6492 1646 50  0000 L CNN
F 1 "100nF" H 6492 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6400 1600 50  0001 C CNN
F 3 "~" H 6400 1600 50  0001 C CNN
	1    6400 1600
	1    0    0    -1  
$EndComp
Connection ~ 6400 1500
Wire Wire Line
	6400 1500 6600 1500
$Comp
L power:GNDD #PWR0127
U 1 1 5ED7F370
P 6400 1700
F 0 "#PWR0127" H 6400 1450 50  0001 C CNN
F 1 "GNDD" H 6404 1545 50  0000 C CNN
F 2 "" H 6400 1700 50  0001 C CNN
F 3 "" H 6400 1700 50  0001 C CNN
	1    6400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1100 6650 1100
Wire Wire Line
	6350 1200 6650 1200
Text GLabel 6650 1100 2    50   Input ~ 0
SWDIO
Text GLabel 6650 1200 2    50   Input ~ 0
SWDCLK
Text GLabel 6650 1300 2    50   Input ~ 0
SWOEXT
Wire Wire Line
	6650 1300 6350 1300
Wire Wire Line
	5850 1200 5850 1300
Wire Wire Line
	5850 1300 5700 1300
Wire Wire Line
	5700 1300 5700 1500
Wire Wire Line
	5700 1500 5850 1500
Connection ~ 5850 1300
Connection ~ 5850 1500
NoConn ~ 5850 1400
NoConn ~ 6350 1400
Wire Wire Line
	8900 3800 8450 3800
Wire Wire Line
	8450 3700 8900 3700
Text GLabel 8900 3700 2    50   Input ~ 0
SWDIO
Text GLabel 8900 3800 2    50   Input ~ 0
SWDCLK
$Comp
L Device:C_Small C6
U 1 1 5ED69EE8
P 4150 4700
F 0 "C6" H 4242 4746 50  0000 L CNN
F 1 "1uF" H 4242 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4150 4700 50  0001 C CNN
F 3 "~" H 4150 4700 50  0001 C CNN
	1    4150 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5ED6A280
P 4500 4700
F 0 "C7" H 4592 4746 50  0000 L CNN
F 1 "1uF" H 4592 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4500 4700 50  0001 C CNN
F 3 "~" H 4500 4700 50  0001 C CNN
	1    4500 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5ED6A547
P 4800 4700
F 0 "C8" H 4892 4746 50  0000 L CNN
F 1 "1uF" H 4892 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4800 4700 50  0001 C CNN
F 3 "~" H 4800 4700 50  0001 C CNN
	1    4800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4500 4150 4500
Wire Wire Line
	4800 4500 4800 4600
Wire Wire Line
	4800 4800 4500 4800
Connection ~ 4150 4800
Wire Wire Line
	4150 4800 3900 4800
Connection ~ 4500 4800
Wire Wire Line
	4500 4800 4150 4800
Wire Wire Line
	4150 4600 4150 4500
Connection ~ 4150 4500
Wire Wire Line
	4150 4500 4500 4500
Wire Wire Line
	4500 4600 4500 4500
Connection ~ 4500 4500
Wire Wire Line
	4500 4500 4800 4500
$Comp
L Transistor_FET:2N7002E Q1
U 1 1 5ED9226F
P 1150 7200
F 0 "Q1" H 1355 7246 50  0000 L CNN
F 1 "Sq2318AES" H 1355 7155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1350 7125 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30376.pdf" H 1150 7200 50  0001 L CNN
	1    1150 7200
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR01
U 1 1 5ED95DA0
P 1050 7400
F 0 "#PWR01" H 1050 7150 50  0001 C CNN
F 1 "GNDD" H 1054 7245 50  0000 C CNN
F 2 "" H 1050 7400 50  0001 C CNN
F 3 "" H 1050 7400 50  0001 C CNN
	1    1050 7400
	1    0    0    -1  
$EndComp
Text GLabel 8900 3500 2    50   Input ~ 0
Buzz
Wire Wire Line
	8900 3500 8450 3500
Text GLabel 1350 7200 2    50   Input ~ 0
Buzz
$Comp
L Device:R_Small R9
U 1 1 5ED9A554
P 1150 4500
F 0 "R9" H 1209 4546 50  0000 L CNN
F 1 "1R" H 1209 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 1150 4500 50  0001 C CNN
F 3 "~" H 1150 4500 50  0001 C CNN
	1    1150 4500
	0    1    1    0   
$EndComp
Connection ~ 9450 5390
Wire Wire Line
	9450 5390 9450 5400
Wire Wire Line
	9450 5000 9450 5390
Connection ~ 9650 5390
Wire Wire Line
	9650 5390 9650 5400
Wire Wire Line
	9650 5200 9650 5390
$Comp
L dk_TVS-Diodes:SM712_TCT D1
U 1 1 5ED65D94
P 9550 5750
F 0 "D1" V 9487 5948 60  0000 L CNN
F 1 "SM712_TCT" V 9593 5948 60  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9750 5950 60  0001 L CNN
F 3 "https://www.semtech.com/uploads/documents/sm712.pdf" H 9750 6050 60  0001 L CNN
F 4 "SM712CT-ND" H 9750 6150 60  0001 L CNN "Digi-Key_PN"
F 5 "SM712.TCT" H 9750 6250 60  0001 L CNN "MPN"
F 6 "Circuit Protection" H 9750 6350 60  0001 L CNN "Category"
F 7 "TVS - Diodes" H 9750 6450 60  0001 L CNN "Family"
F 8 "https://www.semtech.com/uploads/documents/sm712.pdf" H 9750 6550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/semtech-corporation/SM712.TCT/SM712CT-ND/1000976" H 9750 6650 60  0001 L CNN "DK_Detail_Page"
F 10 "TVS DIODE 12V/7V 26V/12V SOT23-3" H 9750 6750 60  0001 L CNN "Description"
F 11 "Semtech Corporation" H 9750 6850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9750 6950 60  0001 L CNN "Status"
	1    9550 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 6050 9550 6090
Connection ~ 9550 6090
Wire Wire Line
	9550 6090 9550 6150
$Comp
L Regulator_Linear:ADP7142AUJZ U1
U 1 1 5EDC576E
P 3250 4600
F 0 "U1" H 3250 4967 50  0000 C CNN
F 1 "ADP7142AUJZ" H 3250 4876 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5" H 3250 4200 50  0001 C CIN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADP7142.pdf" H 3250 4100 50  0001 C CNN
	1    3250 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4600 3650 4500
Connection ~ 3650 4500
$Comp
L power:GNDD #PWR0128
U 1 1 5EDDB4E2
P 3900 4900
F 0 "#PWR0128" H 3900 4650 50  0001 C CNN
F 1 "GNDD" H 3904 4745 50  0000 C CNN
F 2 "" H 3900 4900 50  0001 C CNN
F 3 "" H 3900 4900 50  0001 C CNN
	1    3900 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0129
U 1 1 5EDDB882
P 2300 5000
F 0 "#PWR0129" H 2300 4750 50  0001 C CNN
F 1 "GNDD" H 2304 4845 50  0000 C CNN
F 2 "" H 2300 5000 50  0001 C CNN
F 3 "" H 2300 5000 50  0001 C CNN
	1    2300 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4700 2850 4500
Connection ~ 2850 4500
Wire Wire Line
	1950 4550 1950 4500
Wire Wire Line
	2600 4500 2750 4500
Wire Wire Line
	3900 4900 3900 4800
Connection ~ 3900 4800
Wire Wire Line
	3900 4800 3750 4800
Wire Wire Line
	1250 4500 1350 4500
$Comp
L Device:D_Zener D2
U 1 1 5ED8FDF1
P 1350 4650
F 0 "D2" V 1304 4729 50  0000 L CNN
F 1 "SMZZ33-TP" V 1395 4729 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 1350 4650 50  0001 C CNN
F 3 "~" H 1350 4650 50  0001 C CNN
	1    1350 4650
	0    1    1    0   
$EndComp
Connection ~ 1350 4500
Connection ~ 9450 5000
Wire Wire Line
	10050 5200 10000 5200
$Comp
L power:+BATT #PWR0123
U 1 1 5EF2FCF4
P 1050 4500
F 0 "#PWR0123" H 1050 4350 50  0001 C CNN
F 1 "+BATT" H 1065 4673 50  0000 C CNN
F 2 "" H 1050 4500 50  0001 C CNN
F 3 "" H 1050 4500 50  0001 C CNN
	1    1050 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0108
U 1 1 5EF354C8
P 800 5850
F 0 "#PWR0108" H 800 5700 50  0001 C CNN
F 1 "+BATT" H 815 6023 50  0000 C CNN
F 2 "" H 800 5850 50  0001 C CNN
F 3 "" H 800 5850 50  0001 C CNN
	1    800  5850
	1    0    0    -1  
$EndComp
$Comp
L Interface_UART:MAX3078E U7
U 1 1 5EEFCC9B
P 8650 5100
F 0 "U7" H 8450 5500 50  0000 C CNN
F 1 "MAX3078E" H 8650 5100 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9700 4750 50  0001 C CIN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX3070E-MAX3079E.pdf" H 8650 5100 50  0001 C CNN
	1    8650 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 5000 9650 5000
Wire Wire Line
	10050 5200 10050 5100
Wire Wire Line
	10050 5100 10350 5100
$Comp
L power:GNDD #PWR011
U 1 1 5EF09F0F
P 8650 5500
F 0 "#PWR011" H 8650 5250 50  0001 C CNN
F 1 "GNDD" H 8654 5345 50  0000 C CNN
F 2 "" H 8650 5500 50  0001 C CNN
F 3 "" H 8650 5500 50  0001 C CNN
	1    8650 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5000 8250 5200
$Comp
L power:+BATT #PWR012
U 1 1 5EF0C637
P 10350 4900
F 0 "#PWR012" H 10350 4750 50  0001 C CNN
F 1 "+BATT" H 10365 5073 50  0000 C CNN
F 2 "" H 10350 4900 50  0001 C CNN
F 3 "" H 10350 4900 50  0001 C CNN
	1    10350 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4500 1950 4500
Text GLabel 7100 2400 0    50   Input ~ 0
RST
Wire Wire Line
	7350 2400 7100 2400
Wire Wire Line
	7350 2600 7100 2600
$Comp
L Device:R_Small R3
U 1 1 5ED745A8
P 7100 2700
F 0 "R3" H 7159 2746 50  0000 L CNN
F 1 "10k" H 7159 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7100 2700 50  0001 C CNN
F 3 "~" H 7100 2700 50  0001 C CNN
	1    7100 2700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5EF98959
P 5250 7150
F 0 "SW1" V 5204 7102 50  0000 R CNN
F 1 "SW_Push" V 5295 7102 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_CK_KSC7xxJ" H 5250 7350 50  0001 C CNN
F 3 "~" H 5250 7350 50  0001 C CNN
	1    5250 7150
	0    -1   1    0   
$EndComp
$Comp
L power:GNDD #PWR0120
U 1 1 5EF99DDB
P 5250 7350
F 0 "#PWR0120" H 5250 7100 50  0001 C CNN
F 1 "GNDD" H 5254 7195 50  0000 C CNN
F 2 "" H 5250 7350 50  0001 C CNN
F 3 "" H 5250 7350 50  0001 C CNN
	1    5250 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R17
U 1 1 5EF9A337
P 5250 6800
F 0 "R17" H 5309 6846 50  0000 L CNN
F 1 "10k" H 5309 6755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5250 6800 50  0001 C CNN
F 3 "~" H 5250 6800 50  0001 C CNN
	1    5250 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0121
U 1 1 5EF9A905
P 5250 6700
F 0 "#PWR0121" H 5250 6550 50  0001 C CNN
F 1 "+3V3" H 5265 6873 50  0000 C CNN
F 2 "" H 5250 6700 50  0001 C CNN
F 3 "" H 5250 6700 50  0001 C CNN
	1    5250 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6900 5250 6950
Wire Wire Line
	5250 6900 5600 6900
Connection ~ 5250 6900
Text GLabel 5600 6900 2    50   Input ~ 0
Knap1
$Comp
L Switch:SW_Push SW2
U 1 1 5EFAA92F
P 6100 7150
F 0 "SW2" V 6054 7102 50  0000 R CNN
F 1 "SW_Push" V 6145 7102 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_CK_KSC7xxJ" H 6100 7350 50  0001 C CNN
F 3 "~" H 6100 7350 50  0001 C CNN
	1    6100 7150
	0    -1   1    0   
$EndComp
$Comp
L power:GNDD #PWR0122
U 1 1 5EFAA935
P 6100 7350
F 0 "#PWR0122" H 6100 7100 50  0001 C CNN
F 1 "GNDD" H 6104 7195 50  0000 C CNN
F 2 "" H 6100 7350 50  0001 C CNN
F 3 "" H 6100 7350 50  0001 C CNN
	1    6100 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R18
U 1 1 5EFAA93B
P 6100 6800
F 0 "R18" H 6159 6846 50  0000 L CNN
F 1 "10k" H 6159 6755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6100 6800 50  0001 C CNN
F 3 "~" H 6100 6800 50  0001 C CNN
	1    6100 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0124
U 1 1 5EFAA941
P 6100 6700
F 0 "#PWR0124" H 6100 6550 50  0001 C CNN
F 1 "+3V3" H 6115 6873 50  0000 C CNN
F 2 "" H 6100 6700 50  0001 C CNN
F 3 "" H 6100 6700 50  0001 C CNN
	1    6100 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6900 6100 6950
Wire Wire Line
	6100 6900 6450 6900
Connection ~ 6100 6900
Text GLabel 6450 6900 2    50   Input ~ 0
Knap2
Text GLabel 7000 3300 0    50   Input ~ 0
Knap1
Text GLabel 7000 3400 0    50   Input ~ 0
Knap2
Wire Wire Line
	7350 3300 7000 3300
Wire Wire Line
	7350 3400 7000 3400
Text Notes 1050 4250 0    50   ~ 0
24V
$Comp
L Device:C_Small C9
U 1 1 5EF6D0AC
P 1950 4650
F 0 "C9" H 2042 4696 50  0000 L CNN
F 1 "2.2uF" H 2042 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1950 4650 50  0001 C CNN
F 3 "~" H 1950 4650 50  0001 C CNN
	1    1950 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4500 1950 4500
Connection ~ 1950 4500
$Comp
L power:GNDD #PWR0130
U 1 1 5EF82028
P 1950 5000
F 0 "#PWR0130" H 1950 4750 50  0001 C CNN
F 1 "GNDD" H 1954 4845 50  0000 C CNN
F 2 "" H 1950 5000 50  0001 C CNN
F 3 "" H 1950 5000 50  0001 C CNN
	1    1950 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0131
U 1 1 5EF822F3
P 1350 5000
F 0 "#PWR0131" H 1350 4750 50  0001 C CNN
F 1 "GNDD" H 1354 4845 50  0000 C CNN
F 2 "" H 1350 5000 50  0001 C CNN
F 3 "" H 1350 5000 50  0001 C CNN
	1    1350 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4750 1950 5000
Wire Wire Line
	1350 4800 1350 5000
$Comp
L Device:C_Small C10
U 1 1 5EFA3D03
P 2850 4800
F 0 "C10" H 2942 4846 50  0000 L CNN
F 1 "1uF" H 2942 4755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2850 4800 50  0001 C CNN
F 3 "~" H 2850 4800 50  0001 C CNN
	1    2850 4800
	1    0    0    -1  
$EndComp
Connection ~ 2850 4700
$Comp
L power:GNDD #PWR0132
U 1 1 5EFA46DF
P 2850 4900
F 0 "#PWR0132" H 2850 4650 50  0001 C CNN
F 1 "GNDD" H 2854 4745 50  0000 C CNN
F 2 "" H 2850 4900 50  0001 C CNN
F 3 "" H 2850 4900 50  0001 C CNN
	1    2850 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0101
U 1 1 5EF78FA8
P 1200 6900
F 0 "#PWR0101" H 1200 6750 50  0001 C CNN
F 1 "+BATT" H 1215 7073 50  0000 C CNN
F 2 "" H 1200 6900 50  0001 C CNN
F 3 "" H 1200 6900 50  0001 C CNN
	1    1200 6900
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Current:ACS770xCB-100B-PFF U2
U 1 1 5F72D4D8
P 1800 1550
F 0 "U2" H 2244 1596 50  0000 L CNN
F 1 "ACS770xCB-100B-PFF" H 2244 1505 50  0000 L CNN
F 2 "Sensor_Current:Allegro_CB_PFF" H 1800 1550 50  0001 C CNN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS758-Datasheet.ashx?la=en" H 1800 1550 50  0001 C CNN
	1    1800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1850 2550 1850
Wire Wire Line
	2550 1850 2550 1650
Wire Wire Line
	2550 1550 2200 1550
$Comp
L Connector_Generic:Conn_01x01 J4
U 1 1 5F739B2D
P 900 1450
F 0 "J4" H 818 1667 50  0000 C CNN
F 1 "Conn_01x01" H 818 1576 50  0000 C CNN
F 2 "Kicad:7460307" H 900 1450 50  0001 C CNN
F 3 "~" H 900 1450 50  0001 C CNN
	1    900  1450
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 5F73A885
P 900 1650
F 0 "J5" H 818 1867 50  0000 C CNN
F 1 "Conn_01x01" H 818 1776 50  0000 C CNN
F 2 "Kicad:7460307" H 900 1650 50  0001 C CNN
F 3 "~" H 900 1650 50  0001 C CNN
	1    900  1650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1400 1650 1100 1650
Wire Wire Line
	1400 1450 1250 1450
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 5F740F06
P 2750 1450
F 0 "J6" H 2830 1442 50  0000 L CNN
F 1 "Conn_01x04" H 2830 1351 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 2750 1450 50  0001 C CNN
F 3 "~" H 2750 1450 50  0001 C CNN
	1    2750 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J7
U 1 1 5F741E1A
P 3200 1450
F 0 "J7" H 3118 1767 50  0000 C CNN
F 1 "Conn_01x04" H 3118 1676 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 3200 1450 50  0001 C CNN
F 3 "~" H 3200 1450 50  0001 C CNN
	1    3200 1450
	-1   0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0103
U 1 1 5F742761
P 3400 1350
F 0 "#PWR0103" H 3400 1200 50  0001 C CNN
F 1 "+BATT" H 3415 1523 50  0000 C CNN
F 2 "" H 3400 1350 50  0001 C CNN
F 3 "" H 3400 1350 50  0001 C CNN
	1    3400 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0104
U 1 1 5F742DB7
P 3400 1800
F 0 "#PWR0104" H 3400 1550 50  0001 C CNN
F 1 "GNDD" H 3404 1645 50  0000 C CNN
F 2 "" H 3400 1800 50  0001 C CNN
F 3 "" H 3400 1800 50  0001 C CNN
	1    3400 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1450 2250 1450
Wire Wire Line
	2250 1450 2250 1250
Wire Wire Line
	2250 1250 1800 1250
Wire Wire Line
	1250 1450 1250 1100
Wire Wire Line
	1250 1100 2550 1100
Wire Wire Line
	2550 1100 2550 1350
Connection ~ 1250 1450
Wire Wire Line
	1250 1450 1100 1450
Text GLabel 4400 1550 2    50   Input ~ 0
+Ibat
$Comp
L Regulator_Linear:LM78M05_TO252 U5
U 1 1 5F74D039
P 2300 4500
F 0 "U5" H 2300 4742 50  0000 C CNN
F 1 "LM78M05_TO252" H 2300 4651 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 2300 4725 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM78M05.pdf" H 2300 4450 50  0001 C CNN
	1    2300 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4800 2300 5000
$Comp
L power:+5V #PWR0105
U 1 1 5F75A204
P 2750 4500
F 0 "#PWR0105" H 2750 4350 50  0001 C CNN
F 1 "+5V" H 2765 4673 50  0000 C CNN
F 2 "" H 2750 4500 50  0001 C CNN
F 3 "" H 2750 4500 50  0001 C CNN
	1    2750 4500
	1    0    0    -1  
$EndComp
Connection ~ 2750 4500
Wire Wire Line
	2750 4500 2850 4500
$Comp
L power:+5V #PWR0117
U 1 1 5F75A870
P 4400 1250
F 0 "#PWR0117" H 4400 1100 50  0001 C CNN
F 1 "+5V" H 4415 1423 50  0000 C CNN
F 2 "" H 4400 1250 50  0001 C CNN
F 3 "" H 4400 1250 50  0001 C CNN
	1    4400 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5F75E45B
P 3600 1650
F 0 "C1" H 3692 1696 50  0000 L CNN
F 1 "100nF" H 3692 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3600 1650 50  0001 C CNN
F 3 "~" H 3600 1650 50  0001 C CNN
	1    3600 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1450 4000 1450
$Comp
L Device:C_Small C3
U 1 1 5F762B42
P 4000 1700
F 0 "C3" H 4092 1746 50  0000 L CNN
F 1 "1uF" H 4092 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4000 1700 50  0001 C CNN
F 3 "~" H 4000 1700 50  0001 C CNN
	1    4000 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1550 3600 1550
Connection ~ 3600 1550
Wire Wire Line
	3600 1550 3400 1550
$Comp
L power:GNDD #PWR0118
U 1 1 5F766963
P 4000 1800
F 0 "#PWR0118" H 4000 1550 50  0001 C CNN
F 1 "GNDD" H 4004 1645 50  0000 C CNN
F 2 "" H 4000 1800 50  0001 C CNN
F 3 "" H 4000 1800 50  0001 C CNN
	1    4000 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0133
U 1 1 5F766D1E
P 3600 1800
F 0 "#PWR0133" H 3600 1550 50  0001 C CNN
F 1 "GNDD" H 3604 1645 50  0000 C CNN
F 2 "" H 3600 1800 50  0001 C CNN
F 3 "" H 3600 1800 50  0001 C CNN
	1    3600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1650 3400 1800
Wire Wire Line
	3600 1750 3600 1800
Wire Wire Line
	4000 1600 4000 1450
Connection ~ 4000 1450
Wire Wire Line
	4000 1450 4400 1450
$Comp
L Connector_Generic:Conn_01x01 J8
U 1 1 5F7A8B89
P 2550 2050
F 0 "J8" V 2422 1962 50  0000 R CNN
F 1 "Conn_01x01" V 2513 1962 50  0000 R CNN
F 2 "Kicad:7460307" H 2550 2050 50  0001 C CNN
F 3 "~" H 2550 2050 50  0001 C CNN
	1    2550 2050
	0    -1   1    0   
$EndComp
Connection ~ 2550 1850
$Comp
L Device:R_Small R10
U 1 1 5F68F37F
P 4400 1350
F 0 "R10" H 4459 1396 50  0000 L CNN
F 1 "NM" H 4459 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4400 1350 50  0001 C CNN
F 3 "~" H 4400 1350 50  0001 C CNN
	1    4400 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5F69042B
P 4800 1350
F 0 "R11" H 4859 1396 50  0000 L CNN
F 1 "0R" H 4859 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4800 1350 50  0001 C CNN
F 3 "~" H 4800 1350 50  0001 C CNN
	1    4800 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0134
U 1 1 5F6905FA
P 4800 1250
F 0 "#PWR0134" H 4800 1100 50  0001 C CNN
F 1 "+3V3" H 4815 1423 50  0000 C CNN
F 2 "" H 4800 1250 50  0001 C CNN
F 3 "" H 4800 1250 50  0001 C CNN
	1    4800 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1450 4800 1450
Connection ~ 4400 1450
$EndSCHEMATC
