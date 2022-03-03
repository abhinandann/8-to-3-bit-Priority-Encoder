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
