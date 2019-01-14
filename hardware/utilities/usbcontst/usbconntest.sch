EESchema Schematic File Version 2
LIBS:usbconntest
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "USB-C Receptacle Tester"
Date "2018-09-10"
Rev "0.7"
Comp "The Monero Project Hardware Team"
Comment1 "Copyright © 2018, The Monero Project"
Comment2 "Enabling testing of USB-C hardware"
Comment3 "Pending quality assurance testing"
Comment4 "Warning, untested prototype!"
$EndDescr
$Comp
L USB_C_Plug P1
U 1 1 5B9774E2
P 5400 2700
F 0 "P1" H 5000 4150 50  0000 L CNN
F 1 "USB_C_Plug" H 5800 4150 50  0000 R CNN
F 2 "Monero_HW:USB_C_Plug_Molex_105444" H 5550 2700 50  0001 C CNN
F 3 "https://www.molex.com/molex/products/datasheet.jsp?part=active/1054440001_IO_CONNECTORS.xml" H 5550 2700 50  0001 C CNN
	1    5400 2700
	0    1    1    0   
$EndComp
$Comp
L CONN_01X24 J1
U 1 1 5B977BC9
P 2050 3650
F 0 "J1" H 2050 4900 50  0000 C CNN
F 1 "CONN_01X24" V 2150 3650 50  0000 C CNN
F 2 "Monero_HW:Pin_Header_Straight_1x24_Pitch2.54mm" H 2050 3650 50  0001 C CNN
F 3 "" H 2050 3650 50  0001 C CNN
	1    2050 3650
	-1   0    0    -1  
$EndComp
$Comp
L Battery_Cell BT1
U 1 1 5B977C12
P 7200 5200
F 0 "BT1" H 7300 5300 50  0000 L CNN
F 1 "Battery_Cell" H 7300 5200 50  0000 L CNN
F 2 "Monero_HW:Keystone_3008_1x2450-CoinCell" V 7200 5260 50  0001 C CNN
F 3 "http://www.keyelco.com/product.cfm/product_id/786/" V 7200 5260 50  0001 C CNN
	1    7200 5200
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW19
U 1 1 5B977C53
P 9100 2500
F 0 "SW19" H 9100 2625 50  0000 C CNN
F 1 "SW_SPST" H 9100 2400 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 9100 2500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 9100 2500 50  0001 C CNN
	1    9100 2500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X24 J3
U 1 1 5B977F50
P 9700 3650
F 0 "J3" H 9700 4900 50  0000 C CNN
F 1 "CONN_01X24" V 9800 3650 50  0000 C CNN
F 2 "Monero_HW:Pin_Header_Straight_1x24_Pitch2.54mm" H 9700 3650 50  0001 C CNN
F 3 "" H 9700 3650 50  0001 C CNN
	1    9700 3650
	1    0    0    -1  
$EndComp
Text Label 2250 2500 0    60   ~ 0
A1
Text Label 2250 2600 0    60   ~ 0
A2
Text Label 2250 2700 0    60   ~ 0
A3
Text Label 2250 2800 0    60   ~ 0
A4
Text Label 2250 2900 0    60   ~ 0
A5
Text Label 2250 3000 0    60   ~ 0
A6
Text Label 2250 3100 0    60   ~ 0
A7
Text Label 2250 3200 0    60   ~ 0
A8
Text Label 2250 3300 0    60   ~ 0
A9
Text Label 2250 3400 0    60   ~ 0
A10
Text Label 2250 3500 0    60   ~ 0
A11
Text Label 2250 3600 0    60   ~ 0
A12
Text Label 2250 3700 0    60   ~ 0
B12
Text Label 2250 3800 0    60   ~ 0
B11
Text Label 2250 3900 0    60   ~ 0
B10
Text Label 2250 4000 0    60   ~ 0
B9
Text Label 2250 4100 0    60   ~ 0
B8
Text Label 2250 4200 0    60   ~ 0
B5
Text Label 2250 4300 0    60   ~ 0
B4
Text Label 2250 4400 0    60   ~ 0
B3
Text Label 2250 4500 0    60   ~ 0
B2
Text Label 2250 4600 0    60   ~ 0
B1
Text Label 2250 4700 0    60   ~ 0
S1
$Comp
L CONN_01X24 J2
U 1 1 5B978D98
P 5400 6100
F 0 "J2" H 5400 7350 50  0000 C CNN
F 1 "CONN_01X24" V 5500 6100 50  0000 C CNN
F 2 "Monero_HW:Pin_Header_Straight_1x24_Pitch2.54mm" H 5400 6100 50  0001 C CNN
F 3 "" H 5400 6100 50  0001 C CNN
	1    5400 6100
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5B9786A2
P 6950 5800
F 0 "#PWR?" H 6950 5550 50  0001 C CNN
F 1 "GND" H 6950 5650 50  0000 C CNN
F 2 "" H 6950 5800 50  0001 C CNN
F 3 "" H 6950 5800 50  0001 C CNN
	1    6950 5800
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW13
U 1 1 5B979296
P 8600 2600
F 0 "SW13" H 8600 2725 50  0000 C CNN
F 1 "SW_SPST" H 8600 2500 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 8600 2600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 8600 2600 50  0001 C CNN
	1    8600 2600
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW7
U 1 1 5B97930D
P 8100 2700
F 0 "SW7" H 8100 2825 50  0000 C CNN
F 1 "SW_SPST" H 8100 2600 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 8100 2700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 8100 2700 50  0001 C CNN
	1    8100 2700
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW1
U 1 1 5B97934E
P 7600 2800
F 0 "SW1" H 7600 2925 50  0000 C CNN
F 1 "SW_SPST" H 7600 2700 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 7600 2800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 7600 2800 50  0001 C CNN
	1    7600 2800
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW20
U 1 1 5B97937F
P 9100 2900
F 0 "SW20" H 9100 3025 50  0000 C CNN
F 1 "SW_SPST" H 9100 2800 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 9100 2900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 9100 2900 50  0001 C CNN
	1    9100 2900
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW14
U 1 1 5B9793B2
P 8600 3000
F 0 "SW14" H 8600 3125 50  0000 C CNN
F 1 "SW_SPST" H 8600 2900 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 8600 3000 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 8600 3000 50  0001 C CNN
	1    8600 3000
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW8
U 1 1 5B9795D5
P 8100 3100
F 0 "SW8" H 8100 3225 50  0000 C CNN
F 1 "SW_SPST" H 8100 3000 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 8100 3100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 8100 3100 50  0001 C CNN
	1    8100 3100
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW2
U 1 1 5B97960A
P 7600 3200
F 0 "SW2" H 7600 3325 50  0000 C CNN
F 1 "SW_SPST" H 7600 3100 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 7600 3200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 7600 3200 50  0001 C CNN
	1    7600 3200
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW21
U 1 1 5B979641
P 9100 3300
F 0 "SW21" H 9100 3425 50  0000 C CNN
F 1 "SW_SPST" H 9100 3200 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 9100 3300 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 9100 3300 50  0001 C CNN
	1    9100 3300
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW15
U 1 1 5B979698
P 8600 3400
F 0 "SW15" H 8600 3525 50  0000 C CNN
F 1 "SW_SPST" H 8600 3300 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 8600 3400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 8600 3400 50  0001 C CNN
	1    8600 3400
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW9
U 1 1 5B9796CF
P 8100 3500
F 0 "SW9" H 8100 3625 50  0000 C CNN
F 1 "SW_SPST" H 8100 3400 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 8100 3500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 8100 3500 50  0001 C CNN
	1    8100 3500
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW3
U 1 1 5B979708
P 7600 3600
F 0 "SW3" H 7600 3725 50  0000 C CNN
F 1 "SW_SPST" H 7600 3500 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 7600 3600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 7600 3600 50  0001 C CNN
	1    7600 3600
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW22
U 1 1 5B979741
P 9100 3700
F 0 "SW22" H 9100 3825 50  0000 C CNN
F 1 "SW_SPST" H 9100 3600 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 9100 3700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 9100 3700 50  0001 C CNN
	1    9100 3700
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW16
U 1 1 5B979784
P 8600 3800
F 0 "SW16" H 8600 3925 50  0000 C CNN
F 1 "SW_SPST" H 8600 3700 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 8600 3800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 8600 3800 50  0001 C CNN
	1    8600 3800
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW10
U 1 1 5B979920
P 8100 3900
F 0 "SW10" H 8100 4025 50  0000 C CNN
F 1 "SW_SPST" H 8100 3800 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 8100 3900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 8100 3900 50  0001 C CNN
	1    8100 3900
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW4
U 1 1 5B979965
P 7600 4000
F 0 "SW4" H 7600 4125 50  0000 C CNN
F 1 "SW_SPST" H 7600 3900 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 7600 4000 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 7600 4000 50  0001 C CNN
	1    7600 4000
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW23
U 1 1 5B9799A4
P 9100 4100
F 0 "SW23" H 9100 4225 50  0000 C CNN
F 1 "SW_SPST" H 9100 4000 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 9100 4100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 9100 4100 50  0001 C CNN
	1    9100 4100
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW17
U 1 1 5B9799E7
P 8600 4200
F 0 "SW17" H 8600 4325 50  0000 C CNN
F 1 "SW_SPST" H 8600 4100 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 8600 4200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 8600 4200 50  0001 C CNN
	1    8600 4200
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW11
U 1 1 5B979A2E
P 8100 4300
F 0 "SW11" H 8100 4425 50  0000 C CNN
F 1 "SW_SPST" H 8100 4200 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 8100 4300 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 8100 4300 50  0001 C CNN
	1    8100 4300
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW5
U 1 1 5B979A7B
P 7600 4400
F 0 "SW5" H 7600 4525 50  0000 C CNN
F 1 "SW_SPST" H 7600 4300 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 7600 4400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 7600 4400 50  0001 C CNN
	1    7600 4400
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW24
U 1 1 5B979AC6
P 9100 4500
F 0 "SW24" H 9100 4625 50  0000 C CNN
F 1 "SW_SPST" H 9100 4400 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 9100 4500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 9100 4500 50  0001 C CNN
	1    9100 4500
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW18
U 1 1 5B979B15
P 8600 4600
F 0 "SW18" H 8600 4725 50  0000 C CNN
F 1 "SW_SPST" H 8600 4500 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 8600 4600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 8600 4600 50  0001 C CNN
	1    8600 4600
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW12
U 1 1 5B979B64
P 8100 4700
F 0 "SW12" H 8100 4825 50  0000 C CNN
F 1 "SW_SPST" H 8100 4600 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 8100 4700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 8100 4700 50  0001 C CNN
	1    8100 4700
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW6
U 1 1 5B979BB5
P 7600 4800
F 0 "SW6" H 7600 4925 50  0000 C CNN
F 1 "SW_SPST" H 7600 4700 50  0000 C CNN
F 2 "Monero_HW:SW_SPST_K21102SP" H 7600 4800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Korean-Hroparts-Elec-K2-1102SP-C4SC-04_C127509.pdf" H 7600 4800 50  0001 C CNN
	1    7600 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B97BF42
P 7200 5300
F 0 "#PWR?" H 7200 5050 50  0001 C CNN
F 1 "GND" H 7200 5150 50  0000 C CNN
F 2 "" H 7200 5300 50  0001 C CNN
F 3 "" H 7200 5300 50  0001 C CNN
	1    7200 5300
	1    0    0    -1  
$EndComp
Text Label 9500 2500 2    60   ~ 0
A1
Text Label 9500 2600 2    60   ~ 0
A2
Text Label 9500 2700 2    60   ~ 0
A3
Text Label 9500 2800 2    60   ~ 0
A4
Text Label 9500 2900 2    60   ~ 0
A5
Text Label 9500 3000 2    60   ~ 0
A6
Text Label 9500 3100 2    60   ~ 0
A7
Text Label 9500 3200 2    60   ~ 0
A8
Text Label 9500 3300 2    60   ~ 0
A9
Text Label 9500 3400 2    60   ~ 0
A10
Text Label 9500 3500 2    60   ~ 0
A11
Text Label 9500 3600 2    60   ~ 0
A12
Text Label 9500 3700 2    60   ~ 0
B12
Text Label 9500 3800 2    60   ~ 0
B11
Text Label 9500 3900 2    60   ~ 0
B10
Text Label 9500 4000 2    60   ~ 0
B9
Text Label 9500 4100 2    60   ~ 0
B8
Text Label 9500 4200 2    60   ~ 0
B5
Text Label 9500 4300 2    60   ~ 0
B4
Text Label 9500 4400 2    60   ~ 0
B3
Text Label 9500 4500 2    60   ~ 0
B2
Text Label 9500 4600 2    60   ~ 0
B1
Text Label 9500 4700 2    60   ~ 0
S1
NoConn ~ 2250 4800
$Comp
L PWR_FLAG #FLG?
U 1 1 5B97980B
P 6150 7150
F 0 "#FLG?" H 6150 7225 50  0001 C CNN
F 1 "PWR_FLAG" H 6150 7300 50  0000 C CNN
F 2 "" H 6150 7150 50  0001 C CNN
F 3 "" H 6150 7150 50  0001 C CNN
	1    6150 7150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B979859
P 6150 7150
F 0 "#PWR?" H 6150 6900 50  0001 C CNN
F 1 "GND" H 6150 7000 50  0000 C CNN
F 2 "" H 6150 7150 50  0001 C CNN
F 3 "" H 6150 7150 50  0001 C CNN
	1    6150 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2500 2250 2500
Wire Wire Line
	5000 3300 5000 4900
Wire Wire Line
	5000 4900 3300 4900
Wire Wire Line
	3300 4900 3300 2600
Wire Wire Line
	3300 2600 2250 2600
Wire Wire Line
	5100 3300 5100 5000
Wire Wire Line
	5100 5000 3200 5000
Wire Wire Line
	3200 5000 3200 2700
Wire Wire Line
	3200 2700 2250 2700
Wire Wire Line
	6700 3300 6700 5500
Wire Wire Line
	6700 5500 2700 5500
Wire Wire Line
	2700 5500 2700 2800
Wire Wire Line
	2700 2800 2250 2800
Wire Wire Line
	6200 3300 6200 5300
Wire Wire Line
	6200 5300 2900 5300
Wire Wire Line
	2900 5300 2900 2900
Wire Wire Line
	2900 2900 2250 2900
Wire Wire Line
	5700 3300 5700 5100
Wire Wire Line
	5700 5100 3100 5100
Wire Wire Line
	3100 5100 3100 3000
Wire Wire Line
	3100 3000 2250 3000
Wire Wire Line
	5900 3300 5900 5200
Wire Wire Line
	5900 5200 3000 5200
Wire Wire Line
	3000 5200 3000 3100
Wire Wire Line
	3000 3100 2250 3100
Wire Wire Line
	4200 3300 4200 4800
Wire Wire Line
	4200 4800 2600 4800
Wire Wire Line
	2600 4800 2600 3200
Wire Wire Line
	2600 3200 2250 3200
Wire Wire Line
	6600 3300 6600 5400
Wire Wire Line
	6600 5400 2800 5400
Wire Wire Line
	2800 5400 2800 3300
Wire Wire Line
	2800 3300 2250 3300
Wire Wire Line
	4800 3300 4800 3400
Wire Wire Line
	4800 3400 2250 3400
Wire Wire Line
	4700 3300 4700 3500
Wire Wire Line
	4700 3500 2250 3500
Wire Wire Line
	3800 2600 3400 2600
Wire Wire Line
	3400 2600 3400 3600
Wire Wire Line
	3400 3600 2250 3600
Wire Wire Line
	3800 2400 3600 2400
Wire Wire Line
	3600 2400 3600 4700
Wire Wire Line
	3600 4700 2250 4700
Wire Wire Line
	6550 5800 6550 5900
Wire Wire Line
	4250 5800 6950 5800
Wire Wire Line
	6450 5900 6450 5800
Connection ~ 6550 5800
Wire Wire Line
	6350 5900 6350 5800
Connection ~ 6450 5800
Wire Wire Line
	6250 5900 6250 5800
Connection ~ 6350 5800
Wire Wire Line
	6150 5900 6150 5800
Connection ~ 6250 5800
Wire Wire Line
	6050 5900 6050 5800
Connection ~ 6150 5800
Wire Wire Line
	5950 5900 5950 5800
Connection ~ 6050 5800
Wire Wire Line
	5850 5900 5850 5800
Connection ~ 5950 5800
Wire Wire Line
	5750 5900 5750 5800
Connection ~ 5850 5800
Wire Wire Line
	5650 5900 5650 5800
Connection ~ 5750 5800
Wire Wire Line
	5550 5900 5550 5800
Connection ~ 5650 5800
Wire Wire Line
	5450 5900 5450 5800
Connection ~ 5550 5800
Wire Wire Line
	5350 5900 5350 5800
Connection ~ 5450 5800
Wire Wire Line
	5250 5900 5250 5800
Connection ~ 5350 5800
Wire Wire Line
	5150 5900 5150 5800
Connection ~ 5250 5800
Wire Wire Line
	5050 5900 5050 5800
Connection ~ 5150 5800
Wire Wire Line
	4950 5900 4950 5800
Connection ~ 5050 5800
Wire Wire Line
	4850 5900 4850 5800
Connection ~ 4950 5800
Wire Wire Line
	4750 5900 4750 5800
Connection ~ 4850 5800
Wire Wire Line
	4650 5900 4650 5800
Connection ~ 4750 5800
Wire Wire Line
	4550 5900 4550 5800
Connection ~ 4650 5800
Wire Wire Line
	4450 5900 4450 5800
Connection ~ 4550 5800
Wire Wire Line
	4350 5900 4350 5800
Connection ~ 4450 5800
Wire Wire Line
	4250 5900 4250 5800
Connection ~ 4350 5800
Wire Wire Line
	9500 2500 9300 2500
Wire Wire Line
	9500 2600 8800 2600
Wire Wire Line
	9500 2700 8300 2700
Wire Wire Line
	9500 2800 7800 2800
Wire Wire Line
	9500 2900 9300 2900
Wire Wire Line
	9500 3000 8800 3000
Wire Wire Line
	9500 3100 8300 3100
Wire Wire Line
	9500 3200 7800 3200
Wire Wire Line
	9500 3300 9300 3300
Wire Wire Line
	9500 3400 8800 3400
Wire Wire Line
	9500 3500 8300 3500
Wire Wire Line
	9500 3600 7800 3600
Wire Wire Line
	9500 3700 9300 3700
Wire Wire Line
	9500 3800 8800 3800
Wire Wire Line
	9500 3900 8300 3900
Wire Wire Line
	9500 4000 7800 4000
Wire Wire Line
	9500 4100 9300 4100
Wire Wire Line
	9500 4200 8800 4200
Wire Wire Line
	9500 4300 8300 4300
Wire Wire Line
	9500 4400 7800 4400
Wire Wire Line
	9500 4500 9300 4500
Wire Wire Line
	9500 4600 8800 4600
Wire Wire Line
	9500 4700 8300 4700
Wire Wire Line
	9500 4800 7800 4800
Wire Wire Line
	7200 4800 7400 4800
Wire Wire Line
	7200 2500 7200 5000
Wire Wire Line
	7900 4700 7200 4700
Connection ~ 7200 4800
Wire Wire Line
	8400 4600 7200 4600
Connection ~ 7200 4700
Wire Wire Line
	8900 4500 7200 4500
Connection ~ 7200 4600
Wire Wire Line
	7400 4400 7200 4400
Connection ~ 7200 4500
Wire Wire Line
	7900 4300 7200 4300
Connection ~ 7200 4400
Wire Wire Line
	8400 4200 7200 4200
Connection ~ 7200 4300
Wire Wire Line
	8900 4100 7200 4100
Connection ~ 7200 4200
Wire Wire Line
	7400 4000 7200 4000
Connection ~ 7200 4100
Wire Wire Line
	7900 3900 7200 3900
Connection ~ 7200 4000
Wire Wire Line
	8400 3800 7200 3800
Connection ~ 7200 3900
Wire Wire Line
	8900 3700 7200 3700
Connection ~ 7200 3800
Wire Wire Line
	7400 3600 7200 3600
Connection ~ 7200 3700
Wire Wire Line
	7900 3500 7200 3500
Connection ~ 7200 3600
Wire Wire Line
	8400 3400 7200 3400
Connection ~ 7200 3500
Wire Wire Line
	8900 3300 7200 3300
Connection ~ 7200 3400
Wire Wire Line
	7400 3200 7200 3200
Connection ~ 7200 3300
Wire Wire Line
	7900 3100 7200 3100
Connection ~ 7200 3200
Wire Wire Line
	8400 3000 7200 3000
Connection ~ 7200 3100
Wire Wire Line
	8900 2900 7200 2900
Connection ~ 7200 3000
Wire Wire Line
	7400 2800 7200 2800
Connection ~ 7200 2900
Wire Wire Line
	7900 2700 7200 2700
Connection ~ 7200 2800
Wire Wire Line
	8400 2600 7200 2600
Connection ~ 7200 2700
Wire Wire Line
	8900 2500 7200 2500
Connection ~ 7200 2600
Wire Wire Line
	5300 3300 5300 3800
Wire Wire Line
	5300 3800 2250 3800
Wire Wire Line
	5400 3300 5400 3900
Wire Wire Line
	5400 3900 2250 3900
Wire Wire Line
	6400 3300 6400 4000
Wire Wire Line
	6400 4000 2250 4000
Wire Wire Line
	4100 3300 4100 4100
Wire Wire Line
	4100 4100 2250 4100
Wire Wire Line
	6100 3300 6100 4200
Wire Wire Line
	6100 4200 2250 4200
Wire Wire Line
	6500 3300 6500 4300
Wire Wire Line
	6500 4300 2250 4300
Wire Wire Line
	4500 3300 4500 4400
Wire Wire Line
	4500 4400 2250 4400
Wire Wire Line
	4400 3300 4400 4500
Wire Wire Line
	4400 4500 2250 4500
Wire Wire Line
	3800 2700 3500 2700
Wire Wire Line
	3500 2700 3500 4600
Wire Wire Line
	3500 4600 2250 4600
Wire Wire Line
	3800 2800 3700 2800
Wire Wire Line
	3700 2800 3700 3700
Wire Wire Line
	3700 3700 2250 3700
$Comp
L Dummy_FIDUCIAL_Passermarke_Type1_RevE_Date16Nov2011 FID1
U 1 1 5B97AC9A
P 2900 1400
F 0 "FID1" H 2900 1550 50  0000 C CNN
F 1 "Dummy_FIDUCIAL_Passermarke_Type1_RevE_Date16Nov2011" H 2900 1250 50  0000 C CNN
F 2 "Monero_HW:Fiducial_1mm_Dia_2mm_Outer" H 2900 1400 50  0000 C CNN
F 3 "" H 2900 1400 50  0000 C CNN
	1    2900 1400
	1    0    0    -1  
$EndComp
$Comp
L Dummy_FIDUCIAL_Passermarke_Type1_RevE_Date16Nov2011 FID2
U 1 1 5B97ACF9
P 5300 1400
F 0 "FID2" H 5300 1550 50  0000 C CNN
F 1 "Dummy_FIDUCIAL_Passermarke_Type1_RevE_Date16Nov2011" H 5300 1250 50  0000 C CNN
F 2 "Monero_HW:Fiducial_1mm_Dia_2mm_Outer" H 5300 1400 50  0000 C CNN
F 3 "" H 5300 1400 50  0000 C CNN
	1    5300 1400
	1    0    0    -1  
$EndComp
$Comp
L Dummy_FIDUCIAL_Passermarke_Type1_RevE_Date16Nov2011 FID3
U 1 1 5B97AD6A
P 7700 1400
F 0 "FID3" H 7700 1550 50  0000 C CNN
F 1 "Dummy_FIDUCIAL_Passermarke_Type1_RevE_Date16Nov2011" H 7700 1250 50  0000 C CNN
F 2 "Monero_HW:Fiducial_1mm_Dia_2mm_Outer" H 7700 1400 50  0000 C CNN
F 3 "" H 7700 1400 50  0000 C CNN
	1    7700 1400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
