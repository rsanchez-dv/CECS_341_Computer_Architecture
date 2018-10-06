`timescale 1ns / 1ps

module ALU_TesterWave;

	// Inputs
	reg [1:0] ALUOp;
	reg [10:0] OpcodeField;

	// Outputs
	wire [3:0] ALUoperation;

	// Instantiate the Unit Under Test (UUT)
	ALUControl uut (
		.ALUOp(ALUOp), 
		.OpcodeField(OpcodeField), 
		.ALUoperation(ALUoperation)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		OpcodeField = 0;
		#100
		// Wait 100 ns for global reset to finish
		ALUOp = 2'b10; // Since there all 10
		//Test Case AND
		OpcodeField = 11'b10_10001010000;
		#100;
		//Test case OR
		OpcodeField = 11'b10_10101010000;
		#100
		//Test case ADD
		OpcodeField = 11'b10_10001011000;
		#100
		//Test case Sub
		OpcodeField = 11'b10_11001011000;
		#100
		//Test case Pass B
		OpcodeField = 11'b10_11111000010;
		#100
		//Test case NOR
		OpcodeField = 11'b10_11101010000;
	end
      
endmodule