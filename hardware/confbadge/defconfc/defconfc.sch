EESchema Schematic File Version 2
LIBS:defconfc
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DefcoNFC Hardware Badge"
Date "2018-06-22"
Rev "1.0.0"
Comp "The Monero Project, Hardware Team"
Comment1 "Copyright © 2018, The Monero Project"
Comment2 "Fulfilling the first annual village role"
Comment3 "Pending quality assurance testing"
Comment4 "Warning, untested prototype!"
$EndDescr
$Comp
L ATTINY13A-SSU U3
U 1 1 5AE871D6
P 2450 5050
F 0 "U3" H 1650 5450 50  0000 C CNN
F 1 "ATTINY13A-SSU" H 3000 4650 50  0000 C CNN
F 2 "Monero_HW:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 3050 5050 50  0001 C CIN
F 3 "https://www.microchip.com/wwwproducts/ATtiny13A/" H 1650 5400 50  0001 C CNN
	1    2450 5050
	-1   0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 5AE87290
P 7550 1850
F 0 "D1" H 7550 1950 50  0000 C CNN
F 1 "LED" H 7550 1750 50  0000 C CNN
F 2 "Monero_HW:LED_1206" H 7550 1850 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/CBI_SMD_new/Dialight_CBI_data_598-1206_Apr2018.pdf" H 7550 1850 50  0001 C CNN
	1    7550 1850
	0    -1   -1   0   
$EndComp
$Comp
L LED D3
U 1 1 5AE8730F
P 7950 1850
F 0 "D3" H 7950 1950 50  0000 C CNN
F 1 "LED" H 7950 1750 50  0000 C CNN
F 2 "Monero_HW:LED_1206" H 7950 1850 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/CBI_SMD_new/Dialight_CBI_data_598-1206_Apr2018.pdf" H 7950 1850 50  0001 C CNN
	1    7950 1850
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 5AE8733A
P 7550 2650
F 0 "D2" H 7550 2750 50  0000 C CNN
F 1 "LED" H 7550 2550 50  0000 C CNN
F 2 "Monero_HW:LED_1206" H 7550 2650 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/CBI_SMD_new/Dialight_CBI_data_598-1206_Apr2018.pdf" H 7550 2650 50  0001 C CNN
	1    7550 2650
	0    -1   -1   0   
$EndComp
$Comp
L LED D4
U 1 1 5AE8735B
P 7950 2650
F 0 "D4" H 7950 2750 50  0000 C CNN
F 1 "LED" H 7950 2550 50  0000 C CNN
F 2 "Monero_HW:LED_1206" H 7950 2650 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/CBI_SMD_new/Dialight_CBI_data_598-1206_Apr2018.pdf" H 7950 2650 50  0001 C CNN
	1    7950 2650
	0    -1   -1   0   
$EndComp
$Comp
L Battery_Cell BT1
U 1 1 5AE874CA
P 3650 7050
F 0 "BT1" H 3800 7100 50  0000 L CNN
F 1 "Battery_Cell" V 3450 6850 50  0000 L CNN
F 2 "Monero_HW:Keystone_3034_1x2032-Coincell" V 3650 7110 50  0001 C CNN
F 3 "http://keyelco.com/userAssets/file/M65p9.pdf" V 3650 7110 50  0001 C CNN
	1    3650 7050
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5AE8755B
P 6900 2250
F 0 "R1" V 6980 2250 50  0000 C CNN
F 1 "220" V 6900 2250 50  0000 C CNN
F 2 "Monero_HW:R_0805" V 6830 2250 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/R-Chip/PYu-AC_51_RoHS_L_6.pdf" H 6900 2250 50  0001 C CNN
	1    6900 2250
	0    1    1    0   
$EndComp
$Comp
L SW_SPST SW3
U 1 1 5AE8772D
P 4150 5200
F 0 "SW3" H 4150 5325 50  0000 C CNN
F 1 "SW_SPST" H 4150 5100 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_PTS645" H 4150 5200 50  0001 C CNN
F 3 "https://www.ckswitches.com/media/1471/pts645.pdf" H 4150 5200 50  0001 C CNN
	1    4150 5200
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW1
U 1 1 5AE8ADFB
P 1550 2950
F 0 "SW1" H 1550 3075 50  0000 C CNN
F 1 "SW_SPST" H 1550 2850 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_PTS645" H 1550 2950 50  0001 C CNN
F 3 "https://www.ckswitches.com/media/1471/pts645.pdf" H 1550 2950 50  0001 C CNN
	1    1550 2950
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW2
U 1 1 5AE8AEBA
P 5150 2950
F 0 "SW2" H 5150 3075 50  0000 C CNN
F 1 "SW_SPST" H 5150 2850 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_PTS645" H 5150 2950 50  0001 C CNN
F 3 "https://www.ckswitches.com/media/1471/pts645.pdf" H 5150 2950 50  0001 C CNN
	1    5150 2950
	-1   0    0    -1  
$EndComp
$Comp
L SW_SPDT SW4
U 1 1 5AE8AF07
P 4450 6850
F 0 "SW4" H 4450 7020 50  0000 C CNN
F 1 "SW_SPDT" H 4450 6650 50  0000 C CNN
F 2 "Monero_HW:SW_SPDT_CK-JS102011SAQN" H 4450 6850 50  0001 C CNN
F 3 "https://www.ckswitches.com/media/1422/js.pdf" H 4450 6850 50  0001 C CNN
	1    4450 6850
	1    0    0    -1  
$EndComp
$Comp
L M24SR16-YMN6T/2 U1
U 1 1 5AE88A57
P 2550 3000
F 0 "U1" H 2050 3400 50  0000 C CNN
F 1 "M24SR16-YMN6T/2" H 2700 2600 50  0000 C CNN
F 2 "Monero_HW:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2550 2500 50  0001 C CIN
F 3 "http://www.st.com/en/nfc/m24sr-series-dynamic-nfc-tags.html" H 2550 2400 50  0001 C CNN
	1    2550 3000
	1    0    0    -1  
$EndComp
$Comp
L Antenna_Loop AE1
U 1 1 5AE88DBD
P 1250 2550
F 0 "AE1" H 1300 2800 50  0000 C CNN
F 1 "Antenna_PCB" H 1300 2750 50  0000 C CNN
F 2 "Monero_HW:NFCAnt" H 1250 2550 50  0001 C CNN
F 3 "" H 1250 2550 50  0001 C CNN
	1    1250 2550
	1    0    0    -1  
$EndComp
NoConn ~ 1850 2750
NoConn ~ 1850 2850
NoConn ~ 1850 2950
NoConn ~ 1850 3250
NoConn ~ 3250 2750
$Comp
L GND #PWR?
U 1 1 5AE89BAE
P 3350 3350
F 0 "#PWR?" H 3350 3100 50  0001 C CNN
F 1 "GND" H 3350 3200 50  0000 C CNN
F 2 "" H 3350 3350 50  0001 C CNN
F 3 "" H 3350 3350 50  0001 C CNN
	1    3350 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AE89F1C
P 1250 5500
F 0 "#PWR?" H 1250 5250 50  0001 C CNN
F 1 "GND" H 1250 5350 50  0000 C CNN
F 2 "" H 1250 5500 50  0001 C CNN
F 3 "" H 1250 5500 50  0001 C CNN
	1    1250 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AE8A1B0
P 3650 7150
F 0 "#PWR?" H 3650 6900 50  0001 C CNN
F 1 "GND" H 3650 7000 50  0000 C CNN
F 2 "" H 3650 7150 50  0001 C CNN
F 3 "" H 3650 7150 50  0001 C CNN
	1    3650 7150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5AE8D177
P 5050 6950
F 0 "#PWR?" H 5050 6800 50  0001 C CNN
F 1 "VCC" H 5050 7100 50  0000 C CNN
F 2 "" H 5050 6950 50  0001 C CNN
F 3 "" H 5050 6950 50  0001 C CNN
	1    5050 6950
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 5AE8F244
P 6300 6750
F 0 "#FLG?" H 6300 6825 50  0001 C CNN
F 1 "PWR_FLAG" H 6300 6900 50  0000 C CNN
F 2 "" H 6300 6750 50  0001 C CNN
F 3 "" H 6300 6750 50  0001 C CNN
	1    6300 6750
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 5AE8F292
P 6100 7150
F 0 "#FLG?" H 6100 7225 50  0001 C CNN
F 1 "PWR_FLAG" H 6100 7300 50  0000 C CNN
F 2 "" H 6100 7150 50  0001 C CNN
F 3 "" H 6100 7150 50  0001 C CNN
	1    6100 7150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5AE8F2E0
P 5900 6750
F 0 "#PWR?" H 5900 6600 50  0001 C CNN
F 1 "VCC" H 5900 6900 50  0000 C CNN
F 2 "" H 5900 6750 50  0001 C CNN
F 3 "" H 5900 6750 50  0001 C CNN
	1    5900 6750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AE8F34B
P 6100 7350
F 0 "#PWR?" H 6100 7100 50  0001 C CNN
F 1 "GND" H 6100 7200 50  0000 C CNN
F 2 "" H 6100 7350 50  0001 C CNN
F 3 "" H 6100 7350 50  0001 C CNN
	1    6100 7350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AE9054A
P 4450 5300
F 0 "#PWR?" H 4450 5050 50  0001 C CNN
F 1 "GND" H 4450 5150 50  0000 C CNN
F 2 "" H 4450 5300 50  0001 C CNN
F 3 "" H 4450 5300 50  0001 C CNN
	1    4450 5300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5AE90E6F
P 1250 4600
F 0 "#PWR?" H 1250 4450 50  0001 C CNN
F 1 "VCC" H 1250 4750 50  0000 C CNN
F 2 "" H 1250 4600 50  0001 C CNN
F 3 "" H 1250 4600 50  0001 C CNN
	1    1250 4600
	1    0    0    -1  
$EndComp
Text GLabel 3450 5300 2    60   Input ~ 0
RST
Text GLabel 3450 5100 2    60   Input ~ 0
PB3
Text GLabel 3750 5000 2    60   Input ~ 0
SCK
Text GLabel 3450 4900 2    60   Input ~ 0
MISO
Text GLabel 3750 4800 2    60   Input ~ 0
MOSI
Text GLabel 6550 2250 0    60   Input ~ 0
MOSI
$Comp
L VCC #PWR?
U 1 1 5AE9201C
P 7750 1400
F 0 "#PWR?" H 7750 1250 50  0001 C CNN
F 1 "VCC" H 7750 1550 50  0000 C CNN
F 2 "" H 7750 1400 50  0001 C CNN
F 3 "" H 7750 1400 50  0001 C CNN
	1    7750 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AE9206A
P 7750 3200
F 0 "#PWR?" H 7750 2950 50  0001 C CNN
F 1 "GND" H 7750 3050 50  0000 C CNN
F 2 "" H 7750 3200 50  0001 C CNN
F 3 "" H 7750 3200 50  0001 C CNN
	1    7750 3200
	1    0    0    -1  
$EndComp
$Comp
L LED D5
U 1 1 5AE948BA
P 9950 1850
F 0 "D5" H 9950 1950 50  0000 C CNN
F 1 "LED" H 9950 1750 50  0000 C CNN
F 2 "Monero_HW:LED_1206" H 9950 1850 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/CBI_SMD_new/Dialight_CBI_data_598-1206_Apr2018.pdf" H 9950 1850 50  0001 C CNN
	1    9950 1850
	0    -1   -1   0   
$EndComp
$Comp
L LED D7
U 1 1 5AE948C0
P 10350 1850
F 0 "D7" H 10350 1950 50  0000 C CNN
F 1 "LED" H 10350 1750 50  0000 C CNN
F 2 "Monero_HW:LED_1206" H 10350 1850 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/CBI_SMD_new/Dialight_CBI_data_598-1206_Apr2018.pdf" H 10350 1850 50  0001 C CNN
	1    10350 1850
	0    -1   -1   0   
$EndComp
$Comp
L LED D6
U 1 1 5AE948C6
P 9950 2650
F 0 "D6" H 9950 2750 50  0000 C CNN
F 1 "LED" H 9950 2550 50  0000 C CNN
F 2 "Monero_HW:LED_1206" H 9950 2650 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/CBI_SMD_new/Dialight_CBI_data_598-1206_Apr2018.pdf" H 9950 2650 50  0001 C CNN
	1    9950 2650
	0    -1   -1   0   
$EndComp
$Comp
L LED D8
U 1 1 5AE948CC
P 10350 2650
F 0 "D8" H 10350 2750 50  0000 C CNN
F 1 "LED" H 10350 2550 50  0000 C CNN
F 2 "Monero_HW:LED_1206" H 10350 2650 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/CBI_SMD_new/Dialight_CBI_data_598-1206_Apr2018.pdf" H 10350 2650 50  0001 C CNN
	1    10350 2650
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 5AE948D2
P 9300 2250
F 0 "R3" V 9380 2250 50  0000 C CNN
F 1 "220" V 9300 2250 50  0000 C CNN
F 2 "Monero_HW:R_0805" V 9230 2250 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/R-Chip/PYu-AC_51_RoHS_L_6.pdf" H 9300 2250 50  0001 C CNN
	1    9300 2250
	0    1    1    0   
$EndComp
Text GLabel 8950 2250 0    60   Input ~ 0
MISO
$Comp
L VCC #PWR?
U 1 1 5AE948DF
P 10150 1400
F 0 "#PWR?" H 10150 1250 50  0001 C CNN
F 1 "VCC" H 10150 1550 50  0000 C CNN
F 2 "" H 10150 1400 50  0001 C CNN
F 3 "" H 10150 1400 50  0001 C CNN
	1    10150 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AE948E5
P 10150 3200
F 0 "#PWR?" H 10150 2950 50  0001 C CNN
F 1 "GND" H 10150 3050 50  0000 C CNN
F 2 "" H 10150 3200 50  0001 C CNN
F 3 "" H 10150 3200 50  0001 C CNN
	1    10150 3200
	1    0    0    -1  
$EndComp
$Comp
L LED D9
U 1 1 5AE9516A
P 7550 4450
F 0 "D9" H 7550 4550 50  0000 C CNN
F 1 "LED" H 7550 4350 50  0000 C CNN
F 2 "Monero_HW:LED_1206" H 7550 4450 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/CBI_SMD_new/Dialight_CBI_data_598-1206_Apr2018.pdf" H 7550 4450 50  0001 C CNN
	1    7550 4450
	0    -1   -1   0   
$EndComp
$Comp
L LED D11
U 1 1 5AE95170
P 7950 4450
F 0 "D11" H 7950 4550 50  0000 C CNN
F 1 "LED" H 7950 4350 50  0000 C CNN
F 2 "Monero_HW:LED_1206" H 7950 4450 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/CBI_SMD_new/Dialight_CBI_data_598-1206_Apr2018.pdf" H 7950 4450 50  0001 C CNN
	1    7950 4450
	0    -1   -1   0   
$EndComp
$Comp
L LED D10
U 1 1 5AE95176
P 7550 5250
F 0 "D10" H 7550 5350 50  0000 C CNN
F 1 "LED" H 7550 5150 50  0000 C CNN
F 2 "Monero_HW:LED_1206" H 7550 5250 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/CBI_SMD_new/Dialight_CBI_data_598-1206_Apr2018.pdf" H 7550 5250 50  0001 C CNN
	1    7550 5250
	0    -1   -1   0   
$EndComp
$Comp
L LED D12
U 1 1 5AE9517C
P 7950 5250
F 0 "D12" H 7950 5350 50  0000 C CNN
F 1 "LED" H 7950 5150 50  0000 C CNN
F 2 "Monero_HW:LED_1206" H 7950 5250 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/CBI_SMD_new/Dialight_CBI_data_598-1206_Apr2018.pdf" H 7950 5250 50  0001 C CNN
	1    7950 5250
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 5AE95182
P 6900 4850
F 0 "R5" V 6980 4850 50  0000 C CNN
F 1 "220" V 6900 4850 50  0000 C CNN
F 2 "Monero_HW:R_0805" V 6830 4850 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/R-Chip/PYu-AC_51_RoHS_L_6.pdf" H 6900 4850 50  0001 C CNN
	1    6900 4850
	0    1    1    0   
$EndComp
Text GLabel 6550 4850 0    60   Input ~ 0
SCK
$Comp
L VCC #PWR?
U 1 1 5AE9518F
P 7750 4000
F 0 "#PWR?" H 7750 3850 50  0001 C CNN
F 1 "VCC" H 7750 4150 50  0000 C CNN
F 2 "" H 7750 4000 50  0001 C CNN
F 3 "" H 7750 4000 50  0001 C CNN
	1    7750 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AE95195
P 7750 5800
F 0 "#PWR?" H 7750 5550 50  0001 C CNN
F 1 "GND" H 7750 5650 50  0000 C CNN
F 2 "" H 7750 5800 50  0001 C CNN
F 3 "" H 7750 5800 50  0001 C CNN
	1    7750 5800
	1    0    0    -1  
$EndComp
$Comp
L LED D13
U 1 1 5AE951B5
P 9950 4450
F 0 "D13" H 9950 4550 50  0000 C CNN
F 1 "LED" H 9950 4350 50  0000 C CNN
F 2 "Monero_HW:LED_1206" H 9950 4450 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/CBI_SMD_new/Dialight_CBI_data_598-1206_Apr2018.pdf" H 9950 4450 50  0001 C CNN
	1    9950 4450
	0    -1   -1   0   
$EndComp
$Comp
L LED D15
U 1 1 5AE951BB
P 10350 4450
F 0 "D15" H 10350 4550 50  0000 C CNN
F 1 "LED" H 10350 4350 50  0000 C CNN
F 2 "Monero_HW:LED_1206" H 10350 4450 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/CBI_SMD_new/Dialight_CBI_data_598-1206_Apr2018.pdf" H 10350 4450 50  0001 C CNN
	1    10350 4450
	0    -1   -1   0   
$EndComp
$Comp
L LED D14
U 1 1 5AE951C1
P 9950 5250
F 0 "D14" H 9950 5350 50  0000 C CNN
F 1 "LED" H 9950 5150 50  0000 C CNN
F 2 "Monero_HW:LED_1206" H 9950 5250 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/CBI_SMD_new/Dialight_CBI_data_598-1206_Apr2018.pdf" H 9950 5250 50  0001 C CNN
	1    9950 5250
	0    -1   -1   0   
$EndComp
$Comp
L LED D16
U 1 1 5AE951C7
P 10350 5250
F 0 "D16" H 10350 5350 50  0000 C CNN
F 1 "LED" H 10350 5150 50  0000 C CNN
F 2 "Monero_HW:LED_1206" H 10350 5250 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/CBI_SMD_new/Dialight_CBI_data_598-1206_Apr2018.pdf" H 10350 5250 50  0001 C CNN
	1    10350 5250
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 5AE951CD
P 9300 4850
F 0 "R7" V 9380 4850 50  0000 C CNN
F 1 "220" V 9300 4850 50  0000 C CNN
F 2 "Monero_HW:R_0805" V 9230 4850 50  0001 C CNN
F 3 "http://www.yageo.com/NewPortal/yageodocoutput?fileName=/pdf/R-Chip/PYu-AC_51_RoHS_L_6.pdf" H 9300 4850 50  0001 C CNN
	1    9300 4850
	0    1    1    0   
$EndComp
Text GLabel 8950 4850 0    60   Input ~ 0
PB3
$Comp
L VCC #PWR?
U 1 1 5AE951DA
P 10150 4000
F 0 "#PWR?" H 10150 3850 50  0001 C CNN
F 1 "VCC" H 10150 4150 50  0000 C CNN
F 2 "" H 10150 4000 50  0001 C CNN
F 3 "" H 10150 4000 50  0001 C CNN
	1    10150 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AE951E0
P 10150 5800
F 0 "#PWR?" H 10150 5550 50  0001 C CNN
F 1 "GND" H 10150 5650 50  0000 C CNN
F 2 "" H 10150 5800 50  0001 C CNN
F 3 "" H 10150 5800 50  0001 C CNN
	1    10150 5800
	1    0    0    -1  
$EndComp
Text Notes 3300 6450 0    60   ~ 0
Power circuit
$Comp
L Conn_02x03_Odd_Even J1
U 1 1 5AE966F8
P 2100 6600
F 0 "J1" H 2150 6800 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 1850 6350 50  0000 C CNN
F 2 "Monero_HW:Tag-Connect_TC2030-IDC-NL" H 2100 6600 50  0001 C CNN
F 3 "" H 2100 6600 50  0001 C CNN
	1    2100 6600
	1    0    0    -1  
$EndComp
Text GLabel 1900 6500 0    60   Input ~ 0
MISO
Text GLabel 1600 6600 0    60   Input ~ 0
SCK
Text GLabel 2400 6600 2    60   Input ~ 0
MOSI
Text GLabel 1900 6700 0    60   Input ~ 0
RST
Text Notes 1100 6500 0    60   ~ 0
Programm\nconnector
Text Notes 3100 2250 0    60   ~ 0
Radio RF circuit
Text Notes 2350 4400 0    60   ~ 0
Logic controller
Text Notes 8300 1000 0    60   ~ 0
LED array
$Comp
L Graphbrand L1
U 1 1 5AE9B2EC
P 2950 1250
F 0 "L1" H 3250 1750 60  0000 R CNN
F 1 "Graphbrand" H 2950 750 60  0000 C CNN
F 2 "Monero_HW:Brandgraphicsfront" H 2950 1250 60  0001 C CNN
F 3 "" H 2950 1250 60  0001 C CNN
	1    2950 1250
	1    0    0    -1  
$EndComp
$Comp
L Graphbrand L2
U 1 1 5AE9B38D
P 4150 1250
F 0 "L2" H 4450 1750 60  0000 R CNN
F 1 "Graphbrand" H 4150 750 60  0000 C CNN
F 2 "Monero_HW:Brandgraphicsrear" H 4150 1250 60  0001 C CNN
F 3 "" H 4150 1250 60  0001 C CNN
	1    4150 1250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5AE9C821
P 2400 6500
F 0 "#PWR?" H 2400 6350 50  0001 C CNN
F 1 "VCC" H 2400 6650 50  0000 C CNN
F 2 "" H 2400 6500 50  0001 C CNN
F 3 "" H 2400 6500 50  0001 C CNN
	1    2400 6500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AE9C87B
P 2400 6700
F 0 "#PWR?" H 2400 6450 50  0001 C CNN
F 1 "GND" H 2400 6550 50  0000 C CNN
F 2 "" H 2400 6700 50  0001 C CNN
F 3 "" H 2400 6700 50  0001 C CNN
	1    2400 6700
	1    0    0    -1  
$EndComp
$Comp
L Dummy_FIDUCIAL_Passermarke_Type1_RevE_Date16Nov2011 FID1
U 1 1 5AEA3122
P 5400 4450
F 0 "FID1" H 5400 4600 50  0000 C CNN
F 1 "Fiducial_Passermarke" H 5400 4300 50  0000 C CNN
F 2 "Monero_HW:Fiducial_1mm_Dia_2mm_Outer" H 5400 4450 50  0001 C CNN
F 3 "" H 5400 4450 50  0000 C CNN
	1    5400 4450
	1    0    0    -1  
$EndComp
$Comp
L Dummy_FIDUCIAL_Passermarke_Type1_RevE_Date16Nov2011 FID2
U 1 1 5AEA31C5
P 5400 4850
F 0 "FID2" H 5400 5000 50  0000 C CNN
F 1 "Fiducial_Passermarke" H 5400 4700 50  0000 C CNN
F 2 "Monero_HW:Fiducial_1mm_Dia_2mm_Outer" H 5400 4850 50  0001 C CNN
F 3 "" H 5400 4850 50  0000 C CNN
	1    5400 4850
	1    0    0    -1  
$EndComp
$Comp
L Dummy_FIDUCIAL_Passermarke_Type1_RevE_Date16Nov2011 FID3
U 1 1 5AEA3226
P 5400 5250
F 0 "FID3" H 5400 5400 50  0000 C CNN
F 1 "Fiducial_Passermarke" H 5400 5100 50  0000 C CNN
F 2 "Monero_HW:Fiducial_1mm_Dia_2mm_Outer" H 5400 5250 50  0001 C CNN
F 3 "" H 5400 5250 50  0000 C CNN
	1    5400 5250
	1    0    0    -1  
$EndComp
$Comp
L Dummy_FIDUCIAL_Passermarke_Type1_RevE_Date16Nov2011 FID4
U 1 1 5AEA3289
P 5400 5650
F 0 "FID4" H 5400 5800 50  0000 C CNN
F 1 "Fiducial_Passermarke" H 5400 5500 50  0000 C CNN
F 2 "Monero_HW:Fiducial_1mm_Dia_2mm_Outer" H 5400 5650 50  0001 C CNN
F 3 "" H 5400 5650 50  0000 C CNN
	1    5400 5650
	1    0    0    -1  
$EndComp
$Comp
L DUMMY_MOUNTING-HOLE_RevE_Date22jun2010 LH1
U 1 1 5AEA3FB6
P 5350 1000
F 0 "LH1" H 5350 1200 50  0000 C CNN
F 1 "Mounting-Lanyard" H 5350 800 50  0000 C CNN
F 2 "Monero_HW:LanyardHole_16mm_Pad" H 5350 1000 50  0001 C CNN
F 3 "" H 5350 1000 50  0000 C CNN
	1    5350 1000
	1    0    0    -1  
$EndComp
$Comp
L DUMMY_MOUNTING-HOLE_RevE_Date22jun2010 LH2
U 1 1 5AEA4091
P 5350 1600
F 0 "LH2" H 5350 1800 50  0000 C CNN
F 1 "Mounting-Lanyard" H 5350 1400 50  0000 C CNN
F 2 "Monero_HW:LanyardHole_16mm_Pad" H 5350 1600 50  0001 C CNN
F 3 "" H 5350 1600 50  0000 C CNN
	1    5350 1600
	1    0    0    -1  
$EndComp
$Comp
L M24SR16-YMN6T/2 U2
U 1 1 5AEA5368
P 4150 3000
F 0 "U2" H 4650 3400 50  0000 C CNN
F 1 "M24SR16-YMN6T/2" H 4000 2600 50  0000 C CNN
F 2 "Monero_HW:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 4150 2500 50  0001 C CIN
F 3 "http://www.st.com/en/nfc/m24sr-series-dynamic-nfc-tags.html" H 4150 2400 50  0001 C CNN
	1    4150 3000
	-1   0    0    -1  
$EndComp
NoConn ~ 3450 2750
NoConn ~ 4850 2750
NoConn ~ 4850 2850
NoConn ~ 4850 2950
NoConn ~ 4850 3250
Wire Wire Line
	3250 3250 3450 3250
Wire Wire Line
	3350 3250 3350 3350
Wire Wire Line
	1450 5300 1250 5300
Wire Wire Line
	1250 5300 1250 5500
Wire Wire Line
	3650 6850 4250 6850
Wire Wire Line
	4650 6750 4650 6550
Wire Wire Line
	4650 6550 4050 6550
Wire Wire Line
	4050 6550 4050 6850
Connection ~ 4050 6850
Wire Wire Line
	4650 6950 5050 6950
Wire Wire Line
	6100 7150 6100 7350
Wire Wire Line
	6300 6750 6300 6850
Wire Wire Line
	6300 6850 5900 6850
Wire Wire Line
	5900 6850 5900 6750
Wire Wire Line
	4350 5200 4450 5200
Wire Wire Line
	4450 5200 4450 5300
Wire Wire Line
	3450 5200 3950 5200
Wire Wire Line
	1250 4600 1250 4800
Wire Wire Line
	1250 4800 1450 4800
Wire Wire Line
	3450 5000 3750 5000
Wire Wire Line
	3450 4800 3750 4800
Wire Wire Line
	7750 1400 7750 1550
Wire Wire Line
	7550 1550 7950 1550
Wire Wire Line
	7550 1550 7550 1700
Wire Wire Line
	7950 1550 7950 1700
Connection ~ 7750 1550
Wire Wire Line
	7550 2000 7550 2500
Wire Wire Line
	7950 2000 7950 2500
Wire Wire Line
	7550 2800 7550 3000
Wire Wire Line
	7550 3000 7950 3000
Wire Wire Line
	7750 3000 7750 3200
Wire Wire Line
	7950 3000 7950 2800
Connection ~ 7750 3000
Wire Wire Line
	7250 2350 7950 2350
Connection ~ 7950 2350
Wire Wire Line
	10150 1400 10150 1550
Wire Wire Line
	9950 1550 10350 1550
Wire Wire Line
	9950 1550 9950 1700
Wire Wire Line
	10350 1550 10350 1700
Connection ~ 10150 1550
Wire Wire Line
	9950 2000 9950 2500
Wire Wire Line
	10350 2000 10350 2500
Wire Wire Line
	9950 2800 9950 3000
Wire Wire Line
	9950 3000 10350 3000
Wire Wire Line
	10150 3000 10150 3200
Wire Wire Line
	10350 3000 10350 2800
Connection ~ 10150 3000
Wire Wire Line
	9650 2350 10350 2350
Connection ~ 10350 2350
Wire Wire Line
	7750 4000 7750 4150
Wire Wire Line
	7550 4150 7950 4150
Wire Wire Line
	7550 4150 7550 4300
Wire Wire Line
	7950 4150 7950 4300
Connection ~ 7750 4150
Wire Wire Line
	7550 4600 7550 5100
Wire Wire Line
	7950 4600 7950 5100
Wire Wire Line
	7550 5400 7550 5600
Wire Wire Line
	7550 5600 7950 5600
Wire Wire Line
	7750 5600 7750 5800
Wire Wire Line
	7950 5600 7950 5400
Connection ~ 7750 5600
Wire Wire Line
	7250 4950 7950 4950
Connection ~ 7950 4950
Wire Wire Line
	10150 4000 10150 4150
Wire Wire Line
	9950 4150 10350 4150
Wire Wire Line
	9950 4150 9950 4300
Wire Wire Line
	10350 4150 10350 4300
Connection ~ 10150 4150
Wire Wire Line
	9950 4600 9950 5100
Wire Wire Line
	10350 4600 10350 5100
Wire Wire Line
	9950 5400 9950 5600
Wire Wire Line
	9950 5600 10350 5600
Wire Wire Line
	10150 5600 10150 5800
Wire Wire Line
	10350 5600 10350 5400
Connection ~ 10150 5600
Wire Wire Line
	9650 4950 10350 4950
Connection ~ 10350 4950
Wire Notes Line
	3200 7550 5350 7550
Wire Notes Line
	5350 7550 5350 6250
Wire Notes Line
	5350 6250 3200 6250
Wire Notes Line
	3200 6250 3200 7550
Wire Notes Line
	1000 7550 2800 7550
Wire Notes Line
	2800 7550 2800 6250
Wire Notes Line
	2800 6250 1000 6250
Wire Notes Line
	1000 6250 1000 7550
Wire Notes Line
	1000 2050 1000 3800
Wire Notes Line
	1000 3800 5700 3800
Wire Notes Line
	5700 3800 5700 2050
Wire Notes Line
	5700 2050 1000 2050
Wire Notes Line
	1000 4200 1000 5850
Wire Notes Line
	1000 5850 4700 5850
Wire Notes Line
	4700 5850 4700 4200
Wire Notes Line
	4700 4200 1000 4200
Wire Notes Line
	6100 6200 10900 6200
Wire Notes Line
	10900 6200 10900 800 
Wire Notes Line
	10900 800  6100 800 
Wire Notes Line
	6100 800  6100 6200
Wire Notes Line
	6100 3600 10900 3600
Wire Wire Line
	1900 6600 1600 6600
Wire Wire Line
	1850 3050 1750 3050
Wire Wire Line
	1750 3050 1750 2950
Wire Wire Line
	1350 2950 1350 2750
Wire Wire Line
	1850 3150 1250 3150
Wire Wire Line
	1250 2750 1250 3600
Wire Wire Line
	4850 3050 4950 3050
Wire Wire Line
	4950 3050 4950 2950
Connection ~ 3350 3250
Wire Wire Line
	4850 3150 4950 3150
Wire Wire Line
	4950 3150 4950 3600
Wire Wire Line
	4950 3600 1250 3600
Connection ~ 1250 3150
Wire Wire Line
	5350 2950 5350 2500
Wire Wire Line
	5350 2500 1600 2500
Wire Wire Line
	1600 2500 1600 2750
Wire Wire Line
	1600 2750 1350 2750
$Comp
L GND #PWR?
U 1 1 5AE90A13
P 5850 1000
F 0 "#PWR?" H 5850 750 50  0001 C CNN
F 1 "GND" H 5850 850 50  0000 C CNN
F 2 "" H 5850 1000 50  0001 C CNN
F 3 "" H 5850 1000 50  0001 C CNN
	1    5850 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AE90A7B
P 5850 1600
F 0 "#PWR?" H 5850 1350 50  0001 C CNN
F 1 "GND" H 5850 1450 50  0000 C CNN
F 2 "" H 5850 1600 50  0001 C CNN
F 3 "" H 5850 1600 50  0001 C CNN
	1    5850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1000 5850 1000
Wire Wire Line
	5350 1600 5850 1600
$Comp
L Conn_02x03_Odd_Even J2
U 1 1 5AE9B792
P 2100 7200
F 0 "J2" H 2150 7400 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 1850 6950 50  0000 C CNN
F 2 "Monero_HW:Pin_Header_Straight_2x03_Pitch2.54mm" H 2100 7200 50  0001 C CNN
F 3 "" H 2100 7200 50  0001 C CNN
	1    2100 7200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5AE9BEDB
P 2400 7100
F 0 "#PWR?" H 2400 6950 50  0001 C CNN
F 1 "VCC" H 2400 7250 50  0000 C CNN
F 2 "" H 2400 7100 50  0001 C CNN
F 3 "" H 2400 7100 50  0001 C CNN
	1    2400 7100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5AE9BF45
P 2400 7300
F 0 "#PWR?" H 2400 7050 50  0001 C CNN
F 1 "GND" H 2400 7150 50  0000 C CNN
F 2 "" H 2400 7300 50  0001 C CNN
F 3 "" H 2400 7300 50  0001 C CNN
	1    2400 7300
	1    0    0    -1  
$EndComp
Text GLabel 2400 7200 2    60   Input ~ 0
MOSI
Text GLabel 1900 7100 0    60   Input ~ 0
MISO
Text GLabel 1600 7200 0    60   Input ~ 0
SCK
Text GLabel 1900 7300 0    60   Input ~ 0
RST
Wire Wire Line
	1600 7200 1900 7200
Wire Wire Line
	6550 2250 6750 2250
Wire Wire Line
	7050 2250 7550 2250
Connection ~ 7550 2250
Wire Wire Line
	7250 2350 7250 2250
Connection ~ 7250 2250
Wire Wire Line
	8950 2250 9150 2250
Wire Wire Line
	9450 2250 9950 2250
Connection ~ 9950 2250
Wire Wire Line
	9650 2350 9650 2250
Connection ~ 9650 2250
Wire Wire Line
	6550 4850 6750 4850
Wire Wire Line
	7050 4850 7550 4850
Connection ~ 7550 4850
Wire Wire Line
	7250 4950 7250 4850
Connection ~ 7250 4850
Wire Wire Line
	8950 4850 9150 4850
Wire Wire Line
	9450 4850 9950 4850
Connection ~ 9950 4850
Wire Wire Line
	9650 4950 9650 4850
Connection ~ 9650 4850
$EndSCHEMATC
