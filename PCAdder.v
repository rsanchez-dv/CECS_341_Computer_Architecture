`timescale 1ns / 1ps

module PcAdder(Clock, PCIn, PCOut, count);
	input Clock;
	input [63:0] PCIn;
	output [63:0] PCOut;
	output [63:0] count;
	// Modules
	ProgramCounter PC(.PCIn(PCIn),.Clock(Clock),.PCOut(PCOut));
	Adder Add(.B(PCOut), .Out(count));
endmodule
