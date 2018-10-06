`timescale 1ns / 1ps

module BranchMultiplexer(In0,In1,Sel,Out);
	 input [4:0]  In0; // From Adder (Near PC Counter)
	 input [4:0]  In1; // From Adder (For Branch)
	 input  Sel;
	 output reg[4:0]  Out;
always@(In0,In1,Sel)
	case(Sel)
		0:Out<=In0;
		1:Out<=In1;
endcase
endmodule
