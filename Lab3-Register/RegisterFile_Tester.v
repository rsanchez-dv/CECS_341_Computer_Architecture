`timescale 1ns / 1ps

module RegisterFileTester;

	// Inputs
	reg [4:0] Read1;
	reg [4:0] Read2;
	reg [4:0] WriteReg;
	reg [63:0] WriteData;
	reg RegWrite;
	reg clock;

	// Outputs
	wire [63:0] Data1;
	wire [63:0] Data2;

	// Instantiate the Unit Under Test (UUT)
	RegisterFile uut (
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteReg(WriteReg), 
		.WriteData(WriteData), 
		.RegWrite(RegWrite), 
		.Data1(Data1), 
		.Data2(Data2), 
		.clock(clock)
	);
	initial begin
		// Initialize Inputs
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		WriteData = 0;
		RegWrite = 0;
		clock = 0;
		// Writing to Reg 5
		#100;
		WriteReg = 5;
		WriteData = 64'h5555555555555555;
		
		RegWrite = 1;
		#100
		clock = 1; 
		// Lowering
		#100
		RegWrite = 0;
		clock = 0;
		//Writing to Reg 10
		#100
		WriteReg = 10;
		WriteData = 64'haaaaaaaaaaaaaaaa;
		
		RegWrite = 1;
		#100
		clock = 1;
		
		// END
		#100;
		RegWrite = 0;
		clock = 0;
		//Read
		Read1 = 5;
		Read2 = 10;
		
	end
endmodule