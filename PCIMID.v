`timescale 1ns / 1ps

module PCIMID(Clock, PCIn, Reg2Loc, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite, count, InstOut);
	input   Clock;
	input  [63:0] PCIn; //Input for PC	
	
	output [31:0] count;
	// Wires
	wire   [63:0] PCOut;  // From PC to IM
	output   [31:0] InstOut; // From ID
	// From ID
	output   Reg2Loc;
	output   Branch;
	output   MemRead;
	output   MemtoReg;
	output  [1:0] ALUOp;
	output   MemWrite;
	output   ALUSrc;
	output   RegWrite;
	//-------------------------------------------------------------------------
	// Instruction Decoder
	//-------------------------------------------------------------------------
	Instruction_Decoder ID (.OpcodeField(InstOut[31:21]), .Reg2Loc(Reg2Loc), .Branch(Branch), .MemRead(MemRead), .MemtoReg(MemtoReg),
	.ALUOp(ALUOp), .MemWrite(MemWrite), .ALUSrc(ALUSrc), .RegWrite(RegWrite));
	//-------------------------------------------------------------------------
	// Instruction Memory
	//-------------------------------------------------------------------------
	Instruction_Memory IM (.PCOut(PCOut),.InstOut(InstOut));
	//-------------------------------------------------------------------------
	// Program Counter
	//-------------------------------------------------------------------------
	ProgramCounter PC(.PCIn(PCIn),.Clock(Clock),.PCOut(PCOut));
	//-------------------------------------------------------------------------
	// Adder 
	//-------------------------------------------------------------------------
	Adder Add(.B(PCOut),.Out(count));
	//-------------------------------------------------------------------------

endmodule
