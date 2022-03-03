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
		//assign I[0] = 8'b00000000;
      //assign I[1] = 8'b00000010;
        assign I = 8'b00000100;
      //assign I[3] = 8'b00001000;
     // assign I[4] = 8'b00010000;
      //assign I[5] = 8'b00100000;
      //assign I = 8'b01000000;
     // assign I[7] = 8'b10000000;  
		prioenc prioenc(.I(I), .out(out));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule

