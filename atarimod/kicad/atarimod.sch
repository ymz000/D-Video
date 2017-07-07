EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:components
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Atari mod board"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GTIA U1
U 1 1 59607281
P 3950 2300
F 0 "U1" H 3850 2100 60  0000 C CNN
F 1 "GTIA" H 4150 2100 60  0000 C CNN
F 2 "" H 3850 2100 60  0001 C CNN
F 3 "" H 3850 2100 60  0001 C CNN
	1    3950 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X16 P1
U 1 1 596073DE
P 8900 3550
F 0 "P1" H 8900 4400 50  0000 C CNN
F 1 "CONN_02X16" V 8900 3550 50  0000 C CNN
F 2 "" H 8900 2450 50  0000 C CNN
F 3 "" H 8900 2450 50  0000 C CNN
	1    8900 3550
	-1   0    0    1   
$EndComp
Text GLabel 8600 4300 0    51   Input ~ 0
PAL
Text GLabel 8600 4200 0    51   Input ~ 0
CLK
$Comp
L GND #PWR01
U 1 1 59607AAC
P 9550 4550
F 0 "#PWR01" H 9550 4300 50  0001 C CNN
F 1 "GND" H 9550 4400 50  0000 C CNN
F 2 "" H 9550 4550 50  0000 C CNN
F 3 "" H 9550 4550 50  0000 C CNN
	1    9550 4550
	1    0    0    -1  
$EndComp
Text GLabel 8600 4000 0    51   Input ~ 0
RW
Text GLabel 8600 3900 0    51   Input ~ 0
CS
Text GLabel 8600 3800 0    51   Input ~ 0
D3
Text GLabel 8600 3700 0    51   Input ~ 0
D2
Text GLabel 8600 3600 0    51   Input ~ 0
D0
Text GLabel 8600 3500 0    51   Input ~ 0
D1
Text GLabel 8600 3400 0    51   Input ~ 0
AN1
Text GLabel 8600 3300 0    51   Input ~ 0
AN0
Text GLabel 8600 3200 0    51   Input ~ 0
AN2
Text GLabel 9200 4200 2    51   Input ~ 0
HALT
Text GLabel 9200 4000 2    51   Input ~ 0
D7
Text GLabel 9200 3900 2    51   Input ~ 0
D6
Text GLabel 9200 3800 2    51   Input ~ 0
D5
Text GLabel 9200 3700 2    51   Input ~ 0
A0
Text GLabel 9200 3600 2    51   Input ~ 0
A1
Text GLabel 9200 3500 2    51   Input ~ 0
A2
Text GLabel 9200 3400 2    51   Input ~ 0
A3
Text GLabel 9200 3300 2    51   Input ~ 0
A4
Text GLabel 9200 3200 2    51   Input ~ 0
D4
Wire Wire Line
	9550 4100 9550 4550
Wire Wire Line
	9550 4300 9150 4300
Wire Wire Line
	9150 4100 9550 4100
Connection ~ 9550 4300
Wire Wire Line
	8650 4100 8350 4100
Wire Wire Line
	8350 4100 8350 4450
Wire Wire Line
	8350 4450 9550 4450
Connection ~ 9550 4450
Wire Wire Line
	8600 4300 8650 4300
Wire Wire Line
	8600 4200 8650 4200
Wire Wire Line
	8600 4000 8650 4000
Wire Wire Line
	8600 3900 8650 3900
Wire Wire Line
	8600 3800 8650 3800
Wire Wire Line
	8600 3700 8650 3700
Wire Wire Line
	8600 3600 8650 3600
Wire Wire Line
	8600 3500 8650 3500
Wire Wire Line
	8600 3400 8650 3400
Wire Wire Line
	8600 3300 8650 3300
Wire Wire Line
	8600 3200 8650 3200
Wire Wire Line
	9150 3200 9200 3200
Wire Wire Line
	9150 3300 9200 3300
Wire Wire Line
	9150 3400 9200 3400
Wire Wire Line
	9150 3500 9200 3500
Wire Wire Line
	9150 3600 9200 3600
Wire Wire Line
	9150 3700 9200 3700
Wire Wire Line
	9150 3800 9200 3800
Wire Wire Line
	9150 3900 9200 3900
Wire Wire Line
	9150 4000 9200 4000
NoConn ~ 8650 3100
NoConn ~ 8650 3000
NoConn ~ 8650 2900
NoConn ~ 8650 2800
NoConn ~ 9150 2800
NoConn ~ 9150 2900
NoConn ~ 9150 3000
NoConn ~ 9150 3100
$Comp
L 74HC14D IC1
U 1 1 59608C85
P 2750 3350
F 0 "IC1" H 2700 3400 60  0000 C CNN
F 1 "74HC14D" H 2800 3300 60  0000 C CNN
F 2 "" H 2800 3350 60  0001 C CNN
F 3 "" H 2800 3350 60  0001 C CNN
	1    2750 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 2600 3150 2600
Wire Wire Line
	3550 2700 3150 2700
Wire Wire Line
	3550 2900 3350 2900
Wire Wire Line
	3350 2900 3350 2800
Wire Wire Line
	3350 2800 3150 2800
Wire Wire Line
	3550 3000 3300 3000
Wire Wire Line
	3300 3000 3300 2900
Wire Wire Line
	3300 2900 3150 2900
Wire Wire Line
	3550 3100 3250 3100
Wire Wire Line
	3250 3100 3250 3000
Wire Wire Line
	3250 3000 3150 3000
Wire Wire Line
	3550 3200 3200 3200
Wire Wire Line
	3200 3200 3200 3100
Wire Wire Line
	3200 3100 3150 3100
$Comp
L GND #PWR02
U 1 1 59609261
P 3150 3650
F 0 "#PWR02" H 3150 3400 50  0001 C CNN
F 1 "GND" H 3150 3500 50  0000 C CNN
F 2 "" H 3150 3650 50  0000 C CNN
F 3 "" H 3150 3650 50  0000 C CNN
	1    3150 3650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR03
U 1 1 5960927B
P 2250 3650
F 0 "#PWR03" H 2250 3500 50  0001 C CNN
F 1 "+3.3V" H 2250 3790 50  0000 C CNN
F 2 "" H 2250 3650 50  0000 C CNN
F 3 "" H 2250 3650 50  0000 C CNN
	1    2250 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 3200 2250 3650
Wire Wire Line
	3150 3200 3150 3650
Wire Wire Line
	3550 2800 3450 2800
Wire Wire Line
	3450 2800 3450 3300
Wire Wire Line
	3450 3300 3150 3300
Connection ~ 3150 3300
NoConn ~ 3550 3300
NoConn ~ 3550 3400
NoConn ~ 3550 3500
NoConn ~ 3550 3600
NoConn ~ 3550 3700
NoConn ~ 3550 3800
NoConn ~ 3550 3900
NoConn ~ 3550 4000
$Comp
L C_Small 100nF1
U 1 1 59609575
P 2700 3500
F 0 "100nF1" H 2710 3570 50  0000 L CNN
F 1 "C4" H 2710 3420 50  0000 L CNN
F 2 "" H 2700 3500 50  0000 C CNN
F 3 "" H 2700 3500 50  0000 C CNN
	1    2700 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 3500 2800 3500
Connection ~ 3150 3500
Wire Wire Line
	2250 3500 2600 3500
Connection ~ 2250 3500
$Comp
L 74HC14D IC2
U 1 1 59609BB1
P 2750 4750
F 0 "IC2" H 2700 4800 60  0000 C CNN
F 1 "74HC14D" H 2800 4700 60  0000 C CNN
F 2 "" H 2800 4750 60  0001 C CNN
F 3 "" H 2800 4750 60  0001 C CNN
	1    2750 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 4100 3150 4100
Wire Wire Line
	3150 4300 3550 4300
Wire Wire Line
	3150 4400 3550 4400
Wire Wire Line
	3150 4500 3550 4500
$Comp
L GND #PWR04
U 1 1 59609BC3
P 3150 5050
F 0 "#PWR04" H 3150 4800 50  0001 C CNN
F 1 "GND" H 3150 4900 50  0000 C CNN
F 2 "" H 3150 5050 50  0000 C CNN
F 3 "" H 3150 5050 50  0000 C CNN
	1    3150 5050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 59609BC9
P 2250 5050
F 0 "#PWR05" H 2250 4900 50  0001 C CNN
F 1 "+3.3V" H 2250 5190 50  0000 C CNN
F 2 "" H 2250 5050 50  0000 C CNN
F 3 "" H 2250 5050 50  0000 C CNN
	1    2250 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 4600 2250 5050
Wire Wire Line
	3150 4600 3150 5050
Connection ~ 3150 4700
$Comp
L C_Small 100nF2
U 1 1 59609BD6
P 2700 4900
F 0 "100nF2" H 2710 4970 50  0000 L CNN
F 1 "C3" H 2710 4820 50  0000 L CNN
F 2 "" H 2700 4900 50  0000 C CNN
F 3 "" H 2700 4900 50  0000 C CNN
	1    2700 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 4900 2800 4900
Connection ~ 3150 4900
Wire Wire Line
	2250 4900 2600 4900
Connection ~ 2250 4900
Wire Wire Line
	3150 4200 3250 4200
Wire Wire Line
	3250 4000 3250 4700
Wire Wire Line
	3150 4000 3250 4000
Connection ~ 3250 4200
NoConn ~ 3550 4200
Wire Wire Line
	3250 4700 3150 4700
$Comp
L GND #PWR06
U 1 1 5960A781
P 5100 2050
F 0 "#PWR06" H 5100 1800 50  0001 C CNN
F 1 "GND" H 5100 1900 50  0000 C CNN
F 2 "" H 5100 2050 50  0000 C CNN
F 3 "" H 5100 2050 50  0000 C CNN
	1    5100 2050
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 5960A787
P 6000 2050
F 0 "#PWR07" H 6000 1900 50  0001 C CNN
F 1 "+3.3V" H 6000 2190 50  0000 C CNN
F 2 "" H 6000 2050 50  0000 C CNN
F 3 "" H 6000 2050 50  0000 C CNN
	1    6000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2050 6000 2500
Wire Wire Line
	5100 2050 5100 2500
$Comp
L C_Small 100nF3
U 1 1 5960A791
P 5550 2200
F 0 "100nF3" H 5560 2270 50  0000 L CNN
F 1 "C6" H 5560 2120 50  0000 L CNN
F 2 "" H 5550 2200 50  0000 C CNN
F 3 "" H 5550 2200 50  0000 C CNN
	1    5550 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 2200 5450 2200
Connection ~ 5100 2200
Wire Wire Line
	6000 2200 5650 2200
Connection ~ 6000 2200
Wire Wire Line
	4550 2600 5100 2600
Wire Wire Line
	4550 2700 5100 2700
Wire Wire Line
	4550 2800 5100 2800
Wire Wire Line
	4550 2900 5100 2900
Wire Wire Line
	4550 3000 5100 3000
Wire Wire Line
	4550 3100 5100 3100
$Comp
L 74HC14D IC4
U 1 1 5960B79A
P 5500 3750
F 0 "IC4" H 5450 3800 60  0000 C CNN
F 1 "74HC14D" H 5550 3700 60  0000 C CNN
F 2 "" H 5550 3750 60  0001 C CNN
F 3 "" H 5550 3750 60  0001 C CNN
	1    5500 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5960B7A0
P 5100 3450
F 0 "#PWR08" H 5100 3200 50  0001 C CNN
F 1 "GND" H 5100 3300 50  0000 C CNN
F 2 "" H 5100 3450 50  0000 C CNN
F 3 "" H 5100 3450 50  0000 C CNN
	1    5100 3450
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 5960B7A6
P 6000 3450
F 0 "#PWR09" H 6000 3300 50  0001 C CNN
F 1 "+3.3V" H 6000 3590 50  0000 C CNN
F 2 "" H 6000 3450 50  0000 C CNN
F 3 "" H 6000 3450 50  0000 C CNN
	1    6000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3450 6000 3900
Wire Wire Line
	5100 3450 5100 4000
$Comp
L C_Small 100nF4
U 1 1 5960B7AE
P 5550 3600
F 0 "100nF4" H 5560 3670 50  0000 L CNN
F 1 "C5" H 5560 3520 50  0000 L CNN
F 2 "" H 5550 3600 50  0000 C CNN
F 3 "" H 5550 3600 50  0000 C CNN
	1    5550 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 3600 5450 3600
Connection ~ 5100 3600
Wire Wire Line
	6000 3600 5650 3600
Connection ~ 6000 3600
$Comp
L 74HC14D IC3
U 1 1 5960A76D
P 5500 2350
F 0 "IC3" H 5450 2400 60  0000 C CNN
F 1 "74HC14D" H 5550 2300 60  0000 C CNN
F 2 "" H 5550 2350 60  0001 C CNN
F 3 "" H 5550 2350 60  0001 C CNN
	1    5500 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3200 4950 3200
Wire Wire Line
	4950 3200 4950 4100
Wire Wire Line
	4550 3300 4900 3300
Wire Wire Line
	4900 3300 4900 4200
Wire Wire Line
	4550 3400 4850 3400
Wire Wire Line
	4850 3400 4850 4300
Wire Wire Line
	4550 3600 4800 3600
Wire Wire Line
	4800 3600 4800 4400
Wire Wire Line
	4550 4000 4750 4000
Wire Wire Line
	4750 4000 4750 4500
Wire Wire Line
	4950 4100 5100 4100
Wire Wire Line
	4900 4200 5100 4200
Wire Wire Line
	4850 4300 5100 4300
Wire Wire Line
	4800 4400 5100 4400
Wire Wire Line
	4750 4500 5100 4500
Connection ~ 5100 3900
NoConn ~ 4550 3500
NoConn ~ 4550 3700
NoConn ~ 4550 3800
NoConn ~ 4550 4100
NoConn ~ 4550 4200
NoConn ~ 4550 4300
NoConn ~ 4550 4400
NoConn ~ 4550 4500
Wire Wire Line
	4550 3900 4700 3900
$Comp
L APE8865N-33-HF-3 U2
U 1 1 5960D9B8
P 5300 5950
F 0 "U2" H 5000 6200 50  0000 C CNN
F 1 "APE8865N-33-HF-3" H 5300 6150 50  0000 C CNN
F 2 "SOT-23" H 5300 6050 50  0000 C CIN
F 3 "" H 5300 5950 50  0000 C CNN
	1    5300 5950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR010
U 1 1 5960DAF2
P 5850 5900
F 0 "#PWR010" H 5850 5750 50  0001 C CNN
F 1 "+3.3V" H 5850 6040 50  0000 C CNN
F 2 "" H 5850 5900 50  0000 C CNN
F 3 "" H 5850 5900 50  0000 C CNN
	1    5850 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5900 5850 5900
$Comp
L GND #PWR011
U 1 1 5960DB92
P 5300 6650
F 0 "#PWR011" H 5300 6400 50  0001 C CNN
F 1 "GND" H 5300 6500 50  0000 C CNN
F 2 "" H 5300 6650 50  0000 C CNN
F 3 "" H 5300 6650 50  0000 C CNN
	1    5300 6650
	1    0    0    -1  
$EndComp
$Comp
L C_Small 10uF1
U 1 1 5960DC33
P 4700 6150
F 0 "10uF1" H 4710 6220 50  0000 L CNN
F 1 "C1" H 4710 6070 50  0000 L CNN
F 2 "" H 4700 6150 50  0000 C CNN
F 3 "" H 4700 6150 50  0000 C CNN
	1    4700 6150
	1    0    0    -1  
$EndComp
$Comp
L C_Small 10uF2
U 1 1 5960E580
P 5800 6150
F 0 "10uF2" H 5810 6220 50  0000 L CNN
F 1 "C2" H 5810 6070 50  0000 L CNN
F 2 "" H 5800 6150 50  0000 C CNN
F 3 "" H 5800 6150 50  0000 C CNN
	1    5800 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6050 5800 5900
Connection ~ 5800 5900
Wire Wire Line
	4700 5900 4850 5900
Connection ~ 4700 5900
Text GLabel 2200 2600 0    51   Input ~ 0
A1
Text GLabel 2200 2700 0    51   Input ~ 0
A0
Text GLabel 2200 2800 0    51   Input ~ 0
D3
Text GLabel 2200 2900 0    51   Input ~ 0
D2
Text GLabel 2200 3000 0    51   Input ~ 0
D1
Text GLabel 2200 3100 0    51   Input ~ 0
D0
NoConn ~ 2250 4000
NoConn ~ 2250 4200
Text GLabel 2200 4100 0    51   Input ~ 0
PAL
Text GLabel 2200 4300 0    51   Input ~ 0
AN0
Text GLabel 2200 4400 0    51   Input ~ 0
AN1
Text GLabel 2200 4500 0    51   Input ~ 0
AN2
Wire Wire Line
	2200 4100 2250 4100
Wire Wire Line
	2200 4300 2250 4300
Wire Wire Line
	2200 4400 2250 4400
Wire Wire Line
	2200 4500 2250 4500
Text GLabel 6050 2600 2    51   Input ~ 0
A2
Text GLabel 6050 2700 2    51   Input ~ 0
A3
Text GLabel 6050 2800 2    51   Input ~ 0
A4
Text GLabel 6050 2900 2    51   Input ~ 0
D4
Text GLabel 6050 3000 2    51   Input ~ 0
D5
Text GLabel 6050 3100 2    51   Input ~ 0
D6
Wire Wire Line
	6000 2600 6050 2600
Wire Wire Line
	6000 2700 6050 2700
Wire Wire Line
	6000 2800 6050 2800
Wire Wire Line
	6000 2900 6050 2900
Wire Wire Line
	6000 3000 6050 3000
Wire Wire Line
	6000 3100 6050 3100
Text GLabel 6050 4100 2    51   Input ~ 0
D7
Text GLabel 6050 4200 2    51   Input ~ 0
RW
Text GLabel 6050 4300 2    51   Input ~ 0
CS
Text GLabel 6050 4400 2    51   Input ~ 0
CLK
Text GLabel 6050 4500 2    51   Input ~ 0
HALT
Wire Wire Line
	6000 4100 6050 4100
Wire Wire Line
	6000 4200 6050 4200
Wire Wire Line
	6000 4300 6050 4300
Wire Wire Line
	6000 4400 6050 4400
NoConn ~ 6000 4000
Wire Wire Line
	2200 2600 2250 2600
Wire Wire Line
	2200 2700 2250 2700
Wire Wire Line
	2200 2800 2250 2800
Wire Wire Line
	2200 2900 2250 2900
Wire Wire Line
	2200 3000 2250 3000
Wire Wire Line
	2200 3100 2250 3100
$Comp
L PWR_FLAG #FLG012
U 1 1 596132DF
P 5100 5350
F 0 "#FLG012" H 5100 5445 50  0001 C CNN
F 1 "PWR_FLAG" H 5100 5530 50  0000 C CNN
F 2 "" H 5100 5350 50  0000 C CNN
F 3 "" H 5100 5350 50  0000 C CNN
	1    5100 5350
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG013
U 1 1 596135A4
P 5650 6650
F 0 "#FLG013" H 5650 6745 50  0001 C CNN
F 1 "PWR_FLAG" H 5650 6830 50  0000 C CNN
F 2 "" H 5650 6650 50  0000 C CNN
F 3 "" H 5650 6650 50  0000 C CNN
	1    5650 6650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 6250 5300 6650
Wire Wire Line
	5650 6650 5650 6600
Wire Wire Line
	4700 6600 5800 6600
Connection ~ 5300 6600
Wire Wire Line
	5800 6600 5800 6250
Connection ~ 5650 6600
Wire Wire Line
	4700 6250 4700 6600
$Comp
L +5V #PWR014
U 1 1 5961413C
P 4700 5350
F 0 "#PWR014" H 4700 5200 50  0001 C CNN
F 1 "+5V" H 4700 5490 50  0000 C CNN
F 2 "" H 4700 5350 50  0000 C CNN
F 3 "" H 4700 5350 50  0000 C CNN
	1    4700 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5350 4700 6050
Wire Wire Line
	5100 5350 5100 5500
Wire Wire Line
	5100 5500 4700 5500
Connection ~ 4700 5500
$Comp
L +5V #PWR015
U 1 1 59614A34
P 4700 3850
F 0 "#PWR015" H 4700 3700 50  0001 C CNN
F 1 "+5V" H 4700 3990 50  0000 C CNN
F 2 "" H 4700 3850 50  0000 C CNN
F 3 "" H 4700 3850 50  0000 C CNN
	1    4700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3900 4700 3850
Wire Wire Line
	6000 4500 6050 4500
Wire Wire Line
	9150 4200 9200 4200
$EndSCHEMATC