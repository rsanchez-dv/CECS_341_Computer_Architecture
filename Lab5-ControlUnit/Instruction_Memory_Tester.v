`timescale 1ns / 1ps

module Instruction_Memory_Tester;

	// Inputs
	reg [64:0] PCOut;

	// Outputs
	wire [31:0] InstOut;

	// Instantiate the Unit Under Test (UUT)
	Instruction_Memory uut (
		.PCOut(PCOut), 
		.InstOut(InstOut)
	);

	initial begin
		// Initialize Inputs
		PCOut = 0;

		// Wait 100 ns for global reset to finish
		#100;
      PCOut = PCOut+4;
		#100;
      PCOut = PCOut+4;
		#100;
      PCOut = PCOut+4;
		#100;
      PCOut = PCOut+4;
		#100;
      PCOut = PCOut+4;
		#100;
      PCOut = PCOut+4;
		#100;
      PCOut = PCOut+4;
		#100;
      PCOut = PCOut+4;
		#100;
      PCOut = PCOut+4;
		
	end
      
endmodule

