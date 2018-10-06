`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:58:57 02/09/2017
// Design Name:   ALUwithControl
// Module Name:   C:/Users/rsanc/Documents/341 labs/Lab2-ALUControl/ALUwithControlTester.v
// Project Name:  Lab2-ALUControl
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUwithControl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUwithControlTester;

	// Inputs
	reg [1:0] ALUOp;
	reg [10:0] OpcodeField;
	reg ALUoperation;

	// Instantiate the Unit Under Test (UUT)
	ALUwithControl uut (
		.ALUOp(ALUOp), 
		.OpcodeField(OpcodeField), 
		.ALUoperation(ALUoperation)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		OpcodeField = 0;
		ALUoperation = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Testing AND OpcodeField
		A = 64'h5555555555555555;
		B = 64'haaaaaaaaaaaaaaaa;
		ALUOp = 2'b10;
		
		OpcodeField = 11'b10_10001010000;
		#100;
		// Testing OR OpcodeField
		OpcodeField = 11'b10_10101010000;
		#100;
		// Testing ADD OpcodeField
		OpcodeField = 11'b10_10001011000;
		#100
		// Testing Sub OpcodeField
		OpcodeField = 11'b10_11001011000;
		#100
		// Testing Pass B OpcodeField
		OpcodeField = 11'b10_11111000010;
		#100
		// Testing NOR OpcodeField
		OpcodeField = 11'b10_11101010000;
	end
      
endmodule

