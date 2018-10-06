`timescale 1ns / 1ps

module CPU_Module(Clock, PCIn, count, Zero);
	// Inputs for Program Counter
	input   Clock;
	input  [63:0] PCIn; //Input for PC	
	output [31:0] count;
	// Outputs
	output Zero;
	//Wires from Lab 5 to Lab 4
	wire [31:0] InstOut; // Comes out of the IM
	// Wire from ID
	wire   Reg2Loc;		
	wire   Branch;
	wire   MemRead;
	wire   MemtoReg;
	wire  [1:0] ALUOp;
	wire   MemWrite;
	wire   ALUSrc;
	wire   RegWrite;
	// Module Creation
	//-----------------------------------------------------------------------------------------------------------------------------------
	// Lab 5
	//-----------------------------------------------------------------------------------------------------------------------------------
	PCIMID Lab5 (
	.Clock(Clock),
	.PCIn(PCIn),
	.Reg2Loc(Reg2Loc),
	.Branch(Branch),
	.MemRead(MemRead), .MemtoReg(MemtoReg), .ALUOp(ALUOp), 
	.MemWrite(MemWrite), .ALUSrc(ALUSrc), .RegWrite(RegWrite),.count(count), .InstOut(InstOut));
	//-----------------------------------------------------------------------------------------------------------------------------------
	// Lab 4
	//-----------------------------------------------------------------------------------------------------------------------------------
	RFALUDM_Lab4c Lab4(
	.MemWrite(MemWrite),
	.Reg2Loc(Reg2Loc),
	.Rm(InstOut[20:16]),
	.Rt(InstOut[4:0]),
	.MemRead(MemRead),
	.Clock(Clock),
	.Read1(InstOut[9:5]),
	.WriteReg(InstOut[4:0]),
	.RegWrite(RegWrite),
	.ALUOp(ALUOp),
	.OpcodeField(InstOut[31:21]),
	.SEin(InstOut[20:12]),
	.ALUSrc(ALUSrc),
	.MemtoReg(MemtoReg),
	.Zero(Zero));
	//-----------------------------------------------------------------------------------------------------------------------------------

endmodule
