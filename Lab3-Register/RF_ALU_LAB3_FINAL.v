`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:31:42 02/21/2017
// Design Name:   RF_ALU
// Module Name:   C:/Users/rsanc/Documents/341 labs/Lab3-Register/RF_ALU_LAB3_FINAL.v
// Project Name:  Lab3-Register
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RF_ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RF_ALU_LAB3_FINAL;

	// Inputs
	reg [1:0] ALUOp;
	reg [10:0] OpcodeField;
	reg [4:0] Read1;
	reg [4:0] Read2;
	reg [4:0] WriteReg;
	reg RegWrite;
	reg clock;

	// Outputs
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	RF_ALU uut (
		.ALUOp(ALUOp), 
		.OpcodeField(OpcodeField), 
		.zero(zero), 
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteReg(WriteReg), 
		.RegWrite(RegWrite), 
		.clock(clock)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		OpcodeField = 0;
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		RegWrite = 0;
		clock = 0;

		// Wait 100 ns for global reset to finish
		#100;
		//Read
		Read1 = 5;
		Read2 = 10;
		ALUOp = 2'b10;

		// Testing AND OpcodeField
		OpcodeField = 11'b10_10001010000;
		#100;
		WriteReg = 1;
		//Rising
		RegWrite = 1;
		#100
		clock = 1; 
		// Lowering
		#100
		RegWrite = 0;
		clock = 0;
		// Testing OR OpcodeField
		OpcodeField = 11'b10_10101010000;
		#100;
		WriteReg = 2;
		//Rising
		RegWrite = 1;
		#100
		clock = 1; 
		// Lowering
		#100
		RegWrite = 0;
		clock = 0;
		// Testing ADD OpcodeField
		OpcodeField = 11'b10_10001011000;
		#100
		WriteReg = 3;
		//Rising
		RegWrite = 1;
		#100
		clock = 1; 
		// Lowering
		#100
		RegWrite = 0;
		clock = 0;
		// Testing Sub OpcodeField
		OpcodeField = 11'b10_11001011000;
		#100
		WriteReg = 4;
		//Rising
		RegWrite = 1;
		#100
		clock = 1; 
		// Lowering
		#100
		RegWrite = 0;
		clock = 0;
		//READS
		#100
		Read1=1;
		Read2=2;
		#100
		Read1=3;
		Read2=4;

	end
      
endmodule

