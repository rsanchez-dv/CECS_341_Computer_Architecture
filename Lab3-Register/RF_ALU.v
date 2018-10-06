`timescale 1ns / 1ps

module RF_ALU(ALUOp,OpcodeField,zero,
Read1,Read2,WriteReg,RegWrite,clock);
	//Inputs for RF
	input [4:0] Read1, Read2, WriteReg; 
	input RegWrite, clock; 
	//Inputs for ALU Control
	input  [1:0] ALUOp;
	input  [10:0] OpcodeField;
	//Outputs for ALU
	wire [63:0] ALU_Result;
	output zero;
	//Wires
	wire [3:0] ALUoperation;
	wire [63:0] Data1;
	wire [63:0] Data2;
	// Instantiate three units
	RegisterFile Lab3a (.Read1(Read1),.Read2(Read2),.WriteReg(WriteReg),.WriteData(ALU_Result),.RegWrite(RegWrite), .Data1(Data1), .Data2(Data2), .clock(clock));
	
	LEGv8 Lab2a (ALUoperation,Data1,Data2,ALU_Result,zero);
	
	ALUControl Lab2b (ALUOp,OpcodeField,ALUoperation);
endmodule
