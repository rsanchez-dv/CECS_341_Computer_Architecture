/*
	Module: Adder
	Description: Adds input A and B and outputs to variable Out
*/
 `timescale 1ns / 1ps

module Adder(B,Out);

	input [63:0] B;
	output[63:0] Out;

	assign Out = B + 4;
endmodule
