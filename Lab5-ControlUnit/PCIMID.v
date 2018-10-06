`timescale 1ns / 1ps

module PCIMID(Clock, PCIn, ControlSignals, count);
	input   Clock;
	input  [63:0] PCIn; //Input for PC	
	output [31:0] count;
	output [8:0] ControlSignals;
	// Wires
	wire   [63:0] PCOut;  // From PC to Adder and IM
	wire 	 [31:0] InstOut;
	// 
	Instruction_Decoder ID (.OpcodeField(InstOut[31:21]), .ConSignals(ControlSignals[8:0]));
	Instruction_Memory IM (.PCOut(PCOut),.InstOut(InstOut));
	 
	ProgramCounter PC(.PCIn(PCIn),.Clock(Clock),.PCOut(PCOut));
	Adder Add(.B(PCOut),.Out(count));

endmodule
