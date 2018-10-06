`timescale 1ns / 1ps
module ALUwithControl3;

	// Inputs
	reg [1:0] ALUOp;
	reg [10:0] OpcodeField;
	reg [63:0] A;
	reg [63:0] B;

	// Outputs
	wire [63:0] ALU_Result;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	ALUwithControl uut (
		.ALUOp(ALUOp),
		.OpcodeField(OpcodeField),
		.A(A),
		.B(B),
		.ALU_Result(ALU_Result),
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		OpcodeField = 0;
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;

		// Add stimulus here
		// Testing AND OpcodeField
		A = 64'h5555555555555555;
		B = 64'haaaaaaaaaaaaaaaa;
		ALUOp = 2'b10;
		// Testing AND OpcodeField
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
