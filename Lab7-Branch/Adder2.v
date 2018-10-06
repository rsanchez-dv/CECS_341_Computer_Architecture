`timescale 1ns / 1ps

module Adder2(A,B,Out);
	input [63:0] A;
	input [63:0] B;
	output[63:0] Out;
	//Shift left 2
	assign B = B << 2;
	assign Out = A + B;
endmodule
