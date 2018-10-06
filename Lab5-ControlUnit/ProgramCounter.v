`timescale 1ns / 1ps
module ProgramCounter(Clock, PCIn, PCOut);
	 input Clock;
	 input [63:0] PCIn;
	 output [63:0] PCOut;
	 
	 assign PCOut = PCIn;
endmodule

