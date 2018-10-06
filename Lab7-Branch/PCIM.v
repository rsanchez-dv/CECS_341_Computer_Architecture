`timescale 1ns / 1ps

module PCIM(Clock, count, PCIn,InstOut );
	input   Clock;
	input  [63:0] PCIn; //Input for PC
	
	output [31:0] InstOut; //Output from IM
	output [31:0] count;
	
	wire   [63:0] PCOut;  // From PC to Adder and IM
	
	 Instruction_Memory IM (.PCOut(PCOut),.InstOut(InstOut));
	 
	 ProgramCounter PC(.PCIn(PCIn),.Clock(Clock),.PCOut(PCOut));
	 Adder Add(.B(PCOut), .Out(count));

endmodule
