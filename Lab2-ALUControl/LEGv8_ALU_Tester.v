`timescale 1ns / 1ps

module LEGv8_ALU_Tester;

	// Inputs
	reg [3:0] ALUoperation;
	reg [63:0] A;
	reg [63:0] B;

	// Outputs
	wire [63:0] ALU_Result;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	LEGv8 uut (
		.ALUoperation(ALUoperation), 
		.A(A), 
		.B(B), 
		.ALU_Result(ALU_Result), 
		.Zero(Zero)
	);
      initial begin
		// Initialize Inputs
		ALUoperation = 0;
		A = 64'h5555555555555555;
		B = 64'haaaaaaaaaaaaaaaa;

		// Wait 100 ns for global reset to finish
		#100;
		ALUoperation = 0;
		#100
		ALUoperation = 1;
		#100
		ALUoperation = 2;
		#100
		ALUoperation = 6;
		#100
		ALUoperation = 7;
		#100
		ALUoperation = 12;
		end
endmodule