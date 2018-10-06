`timescale 1ns / 1ps

module ALUwithControl(ALUOp, OpcodeField, A, B, ALU_Result, Zero);
//Declare inputs and outputs and intermediate 'wires'
	input [1:0] ALUOp;
	input [10:0] OpcodeField;
	input [63:0] A;
	input [63:0] B;

	output [63:0] ALU_Result;
	output Zero;

	wire [3:0] ALUoperation;

	//Instantiate the two units

	ALUControl Lab2b (ALUOp,OpcodeField,ALUoperation);

	LEGv8 	Lab2a (ALUoperation,A,B,ALU_Result,Zero);
	endmodule