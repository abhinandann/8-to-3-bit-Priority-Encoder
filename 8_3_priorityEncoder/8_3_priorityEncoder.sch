EESchema Schematic File Version 2
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
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:8_3_priorityEncoder-cache
EELAYER 25 0
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
L prioenc U9
U 1 1 621F1934
P 3400 3850
F 0 "U9" H 6250 5650 60  0000 C CNN
F 1 "prioenc" H 6250 5850 60  0000 C CNN
F 2 "" H 6250 5800 60  0000 C CNN
F 3 "" H 6250 5800 60  0000 C CNN
	1    3400 3850
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_8 U10
U 1 1 621F198E
P 5000 2000
F 0 "U10" H 5000 2000 60  0000 C CNN
F 1 "adc_bridge_8" H 5000 2150 60  0000 C CNN
F 2 "" H 5000 2000 60  0000 C CNN
F 3 "" H 5000 2000 60  0000 C CNN
	1    5000 2000
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_3 U11
U 1 1 621F19BF
P 7550 2000
F 0 "U11" H 7550 2000 60  0000 C CNN
F 1 "dac_bridge_3" H 7550 2150 60  0000 C CNN
F 2 "" H 7550 2000 60  0000 C CNN
F 3 "" H 7550 2000 60  0000 C CNN
	1    7550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1950 9000 1950
Wire Wire Line
	9000 1950 9000 1750
Wire Wire Line
	9000 1750 9300 1750
Wire Wire Line
	8100 2050 9300 2050
$Comp
L resistor R2
U 1 1 621F1B39
P 9400 2100
F 0 "R2" H 9450 2230 50  0000 C CNN
F 1 "1k" H 9450 2050 50  0000 C CNN
F 2 "" H 9450 2080 30  0000 C CNN
F 3 "" V 9450 2150 30  0000 C CNN
	1    9400 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2150 9000 2150
Wire Wire Line
	9000 2150 9000 2400
Wire Wire Line
	9000 2400 9300 2400
$Comp
L resistor R3
U 1 1 621F1C6B
P 9400 2450
F 0 "R3" H 9450 2580 50  0000 C CNN
F 1 "1k" H 9450 2400 50  0000 C CNN
F 2 "" H 9450 2430 30  0000 C CNN
F 3 "" V 9450 2500 30  0000 C CNN
	1    9400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1750 9850 1750
Wire Wire Line
	9850 1750 9850 2600
Wire Wire Line
	9600 2400 9850 2400
Wire Wire Line
	9600 2050 9850 2050
Connection ~ 9850 2050
$Comp
L GND #PWR01
U 1 1 621F1DBA
P 9850 2600
F 0 "#PWR01" H 9850 2350 50  0001 C CNN
F 1 "GND" H 9850 2450 50  0000 C CNN
F 2 "" H 9850 2600 50  0001 C CNN
F 3 "" H 9850 2600 50  0001 C CNN
	1    9850 2600
	1    0    0    -1  
$EndComp
$Comp
L resistor R1
U 1 1 621F1EA0
P 9400 1800
F 0 "R1" H 9450 1930 50  0000 C CNN
F 1 "1k" H 9450 1750 50  0000 C CNN
F 2 "" H 9450 1780 30  0000 C CNN
F 3 "" V 9450 1850 30  0000 C CNN
	1    9400 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1750 9150 1250
Connection ~ 9150 1750
Wire Wire Line
	8900 2050 8900 1250
Connection ~ 8900 2050
Wire Wire Line
	8650 2150 8650 1250
Connection ~ 8650 2150
Wire Wire Line
	4400 2050 2700 2050
Wire Wire Line
	2700 2050 2700 2400
Wire Wire Line
	2700 2400 2100 2400
Wire Wire Line
	4400 2150 2950 2150
Wire Wire Line
	2950 2150 2950 2750
Wire Wire Line
	2950 2750 2100 2750
Wire Wire Line
	4400 2250 3200 2250
Wire Wire Line
	3200 2250 3200 3100
Wire Wire Line
	3200 3100 2100 3100
Wire Wire Line
	4400 2350 3450 2350
Wire Wire Line
	3450 2350 3450 3350
Wire Wire Line
	3450 3350 2100 3350
Wire Wire Line
	4400 2450 3700 2450
Wire Wire Line
	3700 2450 3700 3700
Wire Wire Line
	3700 3700 2100 3700
Wire Wire Line
	4400 2550 3950 2550
Wire Wire Line
	3950 2550 3950 3950
Wire Wire Line
	3950 3950 2100 3950
Wire Wire Line
	4400 4300 4400 2650
Wire Wire Line
	2100 4300 4400 4300
$Comp
L pulse v1
U 1 1 621F22CC
P 1650 1950
F 0 "v1" H 1450 2050 60  0000 C CNN
F 1 "pulse" H 1450 1900 60  0000 C CNN
F 2 "R1" H 1350 1950 60  0000 C CNN
F 3 "" H 1650 1950 60  0000 C CNN
	1    1650 1950
	0    1    1    0   
$EndComp
$Comp
L pulse v2
U 1 1 621F2325
P 1650 2400
F 0 "v2" H 1450 2500 60  0000 C CNN
F 1 "pulse" H 1450 2350 60  0000 C CNN
F 2 "R1" H 1350 2400 60  0000 C CNN
F 3 "" H 1650 2400 60  0000 C CNN
	1    1650 2400
	0    1    1    0   
$EndComp
$Comp
L pulse v3
U 1 1 621F2372
P 1650 2750
F 0 "v3" H 1450 2850 60  0000 C CNN
F 1 "pulse" H 1450 2700 60  0000 C CNN
F 2 "R1" H 1350 2750 60  0000 C CNN
F 3 "" H 1650 2750 60  0000 C CNN
	1    1650 2750
	0    1    1    0   
$EndComp
$Comp
L pulse v4
U 1 1 621F23AD
P 1650 3100
F 0 "v4" H 1450 3200 60  0000 C CNN
F 1 "pulse" H 1450 3050 60  0000 C CNN
F 2 "R1" H 1350 3100 60  0000 C CNN
F 3 "" H 1650 3100 60  0000 C CNN
	1    1650 3100
	0    1    1    0   
$EndComp
$Comp
L pulse v5
U 1 1 621F2408
P 1650 3350
F 0 "v5" H 1450 3450 60  0000 C CNN
F 1 "pulse" H 1450 3300 60  0000 C CNN
F 2 "R1" H 1350 3350 60  0000 C CNN
F 3 "" H 1650 3350 60  0000 C CNN
	1    1650 3350
	0    1    1    0   
$EndComp
$Comp
L pulse v6
U 1 1 621F2445
P 1650 3700
F 0 "v6" H 1450 3800 60  0000 C CNN
F 1 "pulse" H 1450 3650 60  0000 C CNN
F 2 "R1" H 1350 3700 60  0000 C CNN
F 3 "" H 1650 3700 60  0000 C CNN
	1    1650 3700
	0    1    1    0   
$EndComp
$Comp
L pulse v7
U 1 1 621F249C
P 1650 3950
F 0 "v7" H 1450 4050 60  0000 C CNN
F 1 "pulse" H 1450 3900 60  0000 C CNN
F 2 "R1" H 1350 3950 60  0000 C CNN
F 3 "" H 1650 3950 60  0000 C CNN
	1    1650 3950
	0    1    1    0   
$EndComp
$Comp
L pulse v8
U 1 1 621F250A
P 1650 4300
F 0 "v8" H 1450 4400 60  0000 C CNN
F 1 "pulse" H 1450 4250 60  0000 C CNN
F 2 "R1" H 1350 4300 60  0000 C CNN
F 3 "" H 1650 4300 60  0000 C CNN
	1    1650 4300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 621F26CE
P 900 4600
F 0 "#PWR02" H 900 4350 50  0001 C CNN
F 1 "GND" H 900 4450 50  0000 C CNN
F 2 "" H 900 4600 50  0001 C CNN
F 3 "" H 900 4600 50  0001 C CNN
	1    900  4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1950 4400 1950
Wire Wire Line
	2150 1950 2150 1350
Connection ~ 2150 1950
Wire Wire Line
	2300 2400 2300 1350
Connection ~ 2300 2400
Wire Wire Line
	2450 2750 2450 1350
Connection ~ 2450 2750
Wire Wire Line
	2600 3100 2600 1350
Connection ~ 2600 3100
Wire Wire Line
	2750 3350 2750 1350
Connection ~ 2750 3350
Wire Wire Line
	2900 3700 2900 1350
Connection ~ 2900 3700
Wire Wire Line
	3050 3950 3050 1350
Connection ~ 3050 3950
Wire Wire Line
	3350 1350 3350 4300
Connection ~ 3350 4300
$Comp
L plot_v1 U1
U 1 1 621F2D83
P 2150 1550
F 0 "U1" H 2150 2050 60  0000 C CNN
F 1 "plot_v1" H 2350 1900 60  0000 C CNN
F 2 "" H 2150 1550 60  0000 C CNN
F 3 "" H 2150 1550 60  0000 C CNN
	1    2150 1550
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U2
U 1 1 621F2E1A
P 2300 1550
F 0 "U2" H 2300 2050 60  0000 C CNN
F 1 "plot_v1" H 2500 1900 60  0000 C CNN
F 2 "" H 2300 1550 60  0000 C CNN
F 3 "" H 2300 1550 60  0000 C CNN
	1    2300 1550
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U3
U 1 1 621F2E5B
P 2450 1550
F 0 "U3" H 2450 2050 60  0000 C CNN
F 1 "plot_v1" H 2650 1900 60  0000 C CNN
F 2 "" H 2450 1550 60  0000 C CNN
F 3 "" H 2450 1550 60  0000 C CNN
	1    2450 1550
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U4
U 1 1 621F2EA8
P 2600 1550
F 0 "U4" H 2600 2050 60  0000 C CNN
F 1 "plot_v1" H 2800 1900 60  0000 C CNN
F 2 "" H 2600 1550 60  0000 C CNN
F 3 "" H 2600 1550 60  0000 C CNN
	1    2600 1550
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U5
U 1 1 621F2EF1
P 2750 1550
F 0 "U5" H 2750 2050 60  0000 C CNN
F 1 "plot_v1" H 2950 1900 60  0000 C CNN
F 2 "" H 2750 1550 60  0000 C CNN
F 3 "" H 2750 1550 60  0000 C CNN
	1    2750 1550
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U6
U 1 1 621F2F40
P 2900 1550
F 0 "U6" H 2900 2050 60  0000 C CNN
F 1 "plot_v1" H 3100 1900 60  0000 C CNN
F 2 "" H 2900 1550 60  0000 C CNN
F 3 "" H 2900 1550 60  0000 C CNN
	1    2900 1550
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U7
U 1 1 621F2F91
P 3050 1550
F 0 "U7" H 3050 2050 60  0000 C CNN
F 1 "plot_v1" H 3250 1900 60  0000 C CNN
F 2 "" H 3050 1550 60  0000 C CNN
F 3 "" H 3050 1550 60  0000 C CNN
	1    3050 1550
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U8
U 1 1 621F2FE4
P 3350 1550
F 0 "U8" H 3350 2050 60  0000 C CNN
F 1 "plot_v1" H 3550 1900 60  0000 C CNN
F 2 "" H 3350 1550 60  0000 C CNN
F 3 "" H 3350 1550 60  0000 C CNN
	1    3350 1550
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U12
U 1 1 621F30ED
P 8650 1450
F 0 "U12" H 8650 1950 60  0000 C CNN
F 1 "plot_v1" H 8850 1800 60  0000 C CNN
F 2 "" H 8650 1450 60  0000 C CNN
F 3 "" H 8650 1450 60  0000 C CNN
	1    8650 1450
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U13
U 1 1 621F3140
P 8900 1450
F 0 "U13" H 8900 1950 60  0000 C CNN
F 1 "plot_v1" H 9100 1800 60  0000 C CNN
F 2 "" H 8900 1450 60  0000 C CNN
F 3 "" H 8900 1450 60  0000 C CNN
	1    8900 1450
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U14
U 1 1 621F31E6
P 9150 1450
F 0 "U14" H 9150 1950 60  0000 C CNN
F 1 "plot_v1" H 9350 1800 60  0000 C CNN
F 2 "" H 9150 1450 60  0000 C CNN
F 3 "" H 9150 1450 60  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
Text GLabel 9150 1250 0    39   Input ~ 0
q2
Text GLabel 8900 1250 0    39   Input ~ 0
q1
Text GLabel 8650 1250 0    39   Input ~ 0
q0
Text GLabel 2150 1350 0    39   Input ~ 0
I0
Text GLabel 2300 1350 0    39   Input ~ 0
I1
Text GLabel 2450 1350 0    39   Input ~ 0
I2
Text GLabel 2600 1350 0    39   Input ~ 0
I3
Text GLabel 2750 1350 0    39   Input ~ 0
I4
Text GLabel 2900 1350 0    39   Input ~ 0
I5
Text GLabel 3050 1350 0    39   Input ~ 0
I6
Text GLabel 3350 1350 0    39   Input ~ 0
I7
Wire Wire Line
	900  1950 900  4600
Wire Wire Line
	900  1950 1200 1950
Wire Wire Line
	1200 2400 900  2400
Connection ~ 900  2400
Wire Wire Line
	1200 2750 900  2750
Connection ~ 900  2750
Wire Wire Line
	900  3100 1200 3100
Connection ~ 900  3100
Wire Wire Line
	1200 3350 900  3350
Connection ~ 900  3350
Wire Wire Line
	1200 3700 900  3700
Connection ~ 900  3700
Wire Wire Line
	1200 3950 900  3950
Connection ~ 900  3950
Wire Wire Line
	1200 4300 900  4300
Connection ~ 900  4300
Wire Notes Line
	4450 1700 4450 2800
Wire Notes Line
	4450 2800 5400 2800
Wire Notes Line
	5400 2800 5400 1700
Wire Notes Line
	5400 1700 4450 1700
Wire Notes Line
	7100 1650 7100 2300
Wire Notes Line
	7100 2300 7950 2300
Wire Notes Line
	7950 2300 7950 1650
Wire Notes Line
	7950 1650 7100 1650
Wire Notes Line
	5600 1650 6900 1650
Wire Notes Line
	6900 2950 5600 2950
Wire Notes Line
	6900 1650 6900 2950
Wire Notes Line
	5600 2950 5600 1650
Wire Notes Line
	1950 900  1950 1450
Wire Notes Line
	1950 1450 3700 1450
Wire Notes Line
	3700 1450 3700 850 
Wire Notes Line
	1950 900  3700 900 
Wire Notes Line
	8400 800  8400 1400
Wire Notes Line
	8400 1400 9500 1400
Wire Notes Line
	9500 1400 9500 800 
Wire Notes Line
	9500 800  8400 800 
Wire Notes Line
	9850 2400 9850 2450
Connection ~ 9850 2400
Connection ~ 9850 1750
Text Notes 2600 850  0    39   ~ 0
Input ports\n
Text Notes 4700 1750 0    39   ~ 0
Analog to Digital\n\n
Text Notes 5850 1600 0    39   ~ 0
8-to-3-bit priority encoder
Text Notes 7250 1600 0    39   ~ 0
Digital to Analog\n
Text Notes 8750 750  0    39   ~ 0
Output Ports\n
$EndSCHEMATC
