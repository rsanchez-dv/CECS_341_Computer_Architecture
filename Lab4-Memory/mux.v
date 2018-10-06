`timescale 1ns / 1ps

module mux(In0,In1,Sel,Out);
	input [63:0]  In0;
	input [63:0]   In1;
	input [1:0] Sel;
	output reg[63:0]  Out;
always@(In0,In1,Sel)
	case(Sel)
		0:Out<=In0;
		1:Out<=In1;
endcase
endmodule
