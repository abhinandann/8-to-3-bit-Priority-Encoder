# Design of 8-to-3-bit Priority Encoder using Mixed Signal Mode.

#### This repository presents the Design and implementation of mixed signal circuit of 8-to-3-bit Priority Encoder. Design of 8-to-3-bit Priority Encoder circuit is done by using an Opensource EDA Tool called eSim, an Opensource Spice Simulator called ngspice. Verilog code is designed in opensource Verilog Environment called Makerchip.


## Table of Contents
#### 1.[ABSTRACT](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#1-abstract)
#### 2.[SOFTWARE USED](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#2-software-used)
##### i) [eSIM EDA TOOL](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#esim-eda-tool) 
##### ii) [Makerchip](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#makerchip)
##### iii) [Verilator](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#verilator)
#### 3.[CIRCUIT DESIGN](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#3-circuit-design)
  ##### i) [Reference Circuit](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#reference-circuit)
  ##### ii) [Reference Waveforms](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#reference-waveforms)
#### 4.[IMPLEMENTATION](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#4-implementation)
 ##### i) [Verilog Code](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#verilog-code-for-8-to-3-bit-prirority-encoder)
 ##### ii) [Makerchip plots](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#makerchip-plots)
 ##### iii) [Model for 8-to-3-bit Priority Encoder]()
 ##### iv) [Schematic Diagram](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#schematic-diagram)
 ##### v) [Netlists](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#netlists)
 #####  vi) [Ngspice Plots](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#ngspice-plots)
####  5. [STEPS TO GENERATE NgVeri MODEL](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#5-steps-to-generate-ngveri-model-1)
####  6. [STEPS TO RUN THE PROJECT](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#6-steps-to-run-the-project-1)
#### 7.[REFERENCES](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#7-references)
#### 8.[AKNOWLEDGEMENT](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#8-aknowledgement)
#### 9.[AUTHOR](https://github.com/abhinandann/8-to-3-bit-Priority-Encoder#9-author)

### 1. ABSTRACT

An encoder is a combinational circuit, it encodes the data from 2^n inputs into an n-bit code. To overcome the disadvantages of conventional binary encoders, priority encoders were designed which gives output based on highest priority given to the input bits. The proposed work shows the implementation of 8-to-3-bit priority encoder, using ADC bridge to convert the analog input to digital and DAC bridge to convert digital output back to analog form.

### 2. SOFTWARE USED

### eSIM EDA TOOL

eSim is an open source EDA tool for circuit design, simulation and analysis , developed by FOSSEE Team at IIT Bombay. It is an integrated tool build using open source softwares such as KiCad, Ngspice and GHDL.
More details on eSIM tool can be found [here](https://esim.fossee.in/)

### Makerchip

Makerchip is an opensource tool for developing verilog code for the digital circuits and simulate it. By using using eSim and makerchip we can develop model for our selected digital circuit.
More details on Makerchip can be found [here](https://www.makerchip.com/)

### Verilator
It is a tool which converts Verilog code to C++ objects. 
More details on verilator can be found [here](https://www.veripool.org/verilator/)

 ### 3. CIRCUIT DESIGN
 
8-to-3-bit priority encoder consists of 8 inputs: I8 to I1 and 3 outputs: Q2, Q1 and Q0. Each input line corresponds to each octal digit and three outputs generate corresponding binary code. Priority encoder gives output according to highest priority given to the input. If there are two or more inputs are logic high simultaneously then the input with the highest priority is considered by ignoring all other input lines. The input that has the highest priority is encoded first rather than other input lines. Hence, the generated output is based on the priority assigned to the inputs.

Truth Table for 8-to-3-bit Prirority Encoder:

| I7 | I6 | I5 | I4 | I3 | I2 | I1 | I0 | Q2 | Q1 | Q0 | 
| :--- |:---| :---| :-- |:-- |:--:|---:|---:|---:|---:|---:|
|0	|0|	0|	0|	0|	0|	0|	1|	0|	0|	0|
|0	|0|     0|	0|	0|	0|	1|	x|	0|      0|	1|
|0	|0|	0|	0|	0|	1|	x|	x|	0|	1|	0|
|0	|0|	0|	0|	1|	x|	x|	x|	0|	1|	1|
|0	|0|	0|	1|	x|	x|	x|	x|	1|	0|	0|
|0	|0|	1|	x|	x|	x|	x|	x|	1|	0|	1|
|0	|1|	x|	x|	x|	x|	x|	x|	1|	1|	0|
|1	|x|	x|	x|	x|	x|	x|	x|	1|	1|	1|

By analysing the above truth table, 8-to-3-bit Prirority Encoder has following logical expressions:
* Q0 = I1+I3+I5+I7
* Q1 = I2+I3+I6+I7
* Q2 = I4+I5+I6+I7

ADC bridge is used to convert the analog input to corresponding digital input, which is given input to the priority encoder. The ADC bridge can be designed using voltage divider resistors and operational amplifier as a comparator, which is also called as flash ADC. Similarly, the DAC bridge is used to convert the digital output into analog form. The DAC bridge can be designed using R-2R resistors and operational amplifier DAC, which use two precision resistors to convert a digital binary number into an analog output signal proportional to the value of the digital number.

#### Reference Circuit

![2022_02_28 10_37 pm Office Lens](https://user-images.githubusercontent.com/91964227/156763089-3b1be9d1-9b06-4540-8d1d-7e2f0cb5a62e.jpg)

#### Reference Waveforms

![1646064727840 (1) (1) (1) (1) (1)](https://user-images.githubusercontent.com/91964227/157047196-52288e38-e45f-425e-87f3-98599e97f2bf.jpg)

### 4. IMPLEMENTATION

#### Verilog Code for 8-to-3-bit Prirority Encoder 
```
\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/   /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/  /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/    

//Your Verilog/System Verilog Code Starts Here:
`timescale 1ns / 1ps
module prioenc(I, out);
input [7:0]I;
//output v;
output reg [2:0]out;
always@(*) 
//always block
    casex(I)
  8'bxxxxxxx1 : out = 3'b000;
  8'bxxxxxx10 : out = 3'b001;
  8'bxxxxx100 : out = 3'b010;
  8'bxxxx1000 : out = 3'b011;
  8'bxxx10000 : out = 3'b100;
  8'bxx100000 : out = 3'b101;
  8'bx1000000 : out = 3'b110;
  8'b10000000 : out = 3'b111;
  default : out = 2'b000; //no match
    endcase
//assign v = I[7] | I[6] | I[5] | I[4] | I[3] | I[2] | I[1] | I[0];
endmodule


//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  [7:0] I;//input
		logic  [2:0] out;//output
//The $random() can be replaced if user wants to assign values
		 //assign I = 8'b00000000;
     //assign I = 8'b00000010;
       assign I = 8'b00000100;
     //assign I = 8'b00001000;
     //assign I = 8'b00010000;
     //assign I = 8'b00100000;
     //assign I = 8'b01000000;
     //assign I = 8'b10000000;  
		prioenc prioenc(.I(I), .out(out));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule
```
#### Makerchip Plots

![makerchip_waveform](https://user-images.githubusercontent.com/91964227/156744110-1117a7a8-8179-4edb-a991-655ab4c87b00.JPG)

#### Model For 8-to-3-bit Priority Encoder

![model](https://user-images.githubusercontent.com/91964227/157228203-9869b150-01f7-45b8-a9ff-3ac4df5f66b0.JPG)

![model1](https://user-images.githubusercontent.com/91964227/157228238-b5f448aa-f886-4684-8c92-50fb1dfeac48.JPG)

#### Schematic Diagram

![schematic_prio](https://user-images.githubusercontent.com/91964227/156737220-d7c9ab8b-3f08-4813-8d40-3534edd17ff6.JPG)

#### Netlists
```
* c:\users\dell\esim-workspace\8_3_priorityencoder\8_3_priorityencoder.cir

* u9  net-_u10-pad9_ net-_u10-pad10_ net-_u10-pad11_ net-_u10-pad12_ net-_u10-pad13_ net-_u10-pad14_ net-_u10-pad15_ net-_u10-pad16_ net-_u11-pad1_ net-_u11-pad2_ net-_u11-pad3_ prioenc
* u10  i0 i1 i2 i3 i4 i5 i6 i7 net-_u10-pad9_ net-_u10-pad10_ net-_u10-pad11_ net-_u10-pad12_ net-_u10-pad13_ net-_u10-pad14_ net-_u10-pad15_ net-_u10-pad16_ adc_bridge_8
* u11  net-_u11-pad1_ net-_u11-pad2_ net-_u11-pad3_ q2 q1 q0 dac_bridge_3
r2  q1 gnd 1k
r3  q0 gnd 1k
r1  q2 gnd 1k
v1  i0 gnd pulse(0 5 0.1m 0.1m 0.1m 8 17)
v2  i1 gnd pulse(0 5 0.1m 0.1m 0.1m 6 28)
v3  i2 gnd pulse(0 5 0.1m 0.1m 0.1m 12 24)
v4  i3 gnd pulse(0 5 0.1m 0.1m 0.1m 9 26)
v5  i4 gnd pulse(0 5 0.1m 0.1m 0.1m 9 26)
v6  i5 gnd pulse(0 5 0.1m 0.1m 0.1m 17 38)
v7  i6 gnd pulse(0 5 0.1m 0.1m 0.1m 19 38)
v8  i7 gnd pulse(0 5 0.1m 0.1m 0.1m 6 36)
* u1  i0 plot_v1
* u2  i1 plot_v1
* u3  i2 plot_v1
* u4  i3 plot_v1
* u5  i4 plot_v1
* u6  i5 plot_v1
* u7  i6 plot_v1
* u8  i7 plot_v1
* u12  q0 plot_v1
* u13  q1 plot_v1
* u14  q2 plot_v1
a1 [net-_u10-pad9_ net-_u10-pad10_ net-_u10-pad11_ net-_u10-pad12_ net-_u10-pad13_ net-_u10-pad14_ net-_u10-pad15_ net-_u10-pad16_ ] [net-_u11-pad1_ net-_u11-pad2_ net-_u11-pad3_ ] u9
a2 [i0 i1 i2 i3 i4 i5 i6 i7 ] [net-_u10-pad9_ net-_u10-pad10_ net-_u10-pad11_ net-_u10-pad12_ net-_u10-pad13_ net-_u10-pad14_ net-_u10-pad15_ net-_u10-pad16_ ] u10
a3 [net-_u11-pad1_ net-_u11-pad2_ net-_u11-pad3_ ] [q2 q1 q0 ] u11
* Schematic Name:                             prioenc, NgSpice Name: prioenc
.model u9 prioenc(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             adc_bridge_8, NgSpice Name: adc_bridge
.model u10 adc_bridge(in_low=1.0 in_high=2.0 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             dac_bridge_3, NgSpice Name: dac_bridge
.model u11 dac_bridge(out_low=0.0 out_high=5.0 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 
.tran 0.1e-00 100e-00 0e-00

* Control Statements 
.control
run
print allv > plot_data_v.txt
print alli > plot_data_i.txt
plot v(i0)
plot v(i1)
plot v(i2)
plot v(i3)
plot v(i4)
plot v(i5)
plot v(i6)
plot v(i7)
plot v(q0)
plot v(q1)
plot v(q2)
.endc
.end
```
#### Ngspice Plots

##### Ngspice waveform of all 8 inputs

![inputs](https://user-images.githubusercontent.com/91964227/156744974-75c6ac26-e78f-4ecf-a3c6-9e39467473a3.JPG)

##### Ngspice waveform of all 3 outputs

![outputs](https://user-images.githubusercontent.com/91964227/156745101-7cc11cff-f4ec-416c-a2d2-d148f3b542e9.JPG)

##### Ngspice waveform of individual output lines

###### Output Q0
###### Q0 = I1+I3+I5+I7
![qo](https://user-images.githubusercontent.com/91964227/156745584-7874dfd0-96c8-48e5-99ed-dace766aa1a2.JPG)

###### Output Q1
###### Q1 = I2+I3+I6+I7
![q1](https://user-images.githubusercontent.com/91964227/156745644-c79d5270-4ea4-4793-b047-d417b4b70f35.JPG)

###### Output Q2
###### Q2 = I4+I5+I6+I7
![q2](https://user-images.githubusercontent.com/91964227/156745676-c389e84d-3e64-45bf-bc32-bf4ecf340b83.JPG)

### 5. Steps to generate NgVeri Model
1. Open eSim
2. Run NgVeri-Makerchip
3. Add top level verilog file in Makerchip Tab
4. click on Edit in makerchip to simulate the verilog code
5. Click on NgVeri tab
6. Add dependency files(If any)
7. Click on Run Verilog to NgSpice Converter
8. Debug if any errors
9. Model created successfully

### 6. Steps to run the project
1. Open new terminal
2. Clone this project using the following command:
```
git clone https://github.com/abhinandann/8-to-3-bit-Priority-Encoder.git
```
3. Change Directory: 
```
cd esim-workspace/8_3_priorityencoder
```
4. Run Ngspice:
```
ngspice 8_3_priorityencoder.cir.out
```
5. To run the project in eSim:
* Run eSim
* Load the project
* Open eeSchema

### 7. REFERENCES
1. WatElectronics.com. 2022. Priority Encoder : Truth Table, Differences & Its Applications. Available [HERE](https://www.watelectronics.com/priority-encoder/).
2. Esim.fossee.in. 2022. Resources | eSim. Available [HERE](https://esim.fossee.in/resources)

### 8. AKNOWLEDGEMENT
1. FOSSEE, IIT Bombay
2. Steve Hoover, Founder, Redwood EDA
3. [Kunal Ghosh](https://github.com/kunalg123), Co-founder of VLSI System Design (VSD) Corp. Pvt. Ltd.
4. [Sumanto kar](https://github.com/Eyantra698Sumanto), Sr. Project Technical Assistant, IIT BOMBAY

### 9. AUTHOR

ABHINANDAN R APPANNAVAR, 6th SEM B.E(ECE), SDM COLLEGE OF ENGINEERING AND TECHNOLOGY,DHARWAD-580002 
* Contact: abhinandan7353@gmail.com
