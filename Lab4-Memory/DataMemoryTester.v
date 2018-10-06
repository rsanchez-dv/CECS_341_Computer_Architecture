`timescale 1ns / 1ps
module DataMemoryTester;

	// Inputs
	reg [7:0] Address;
	reg [63:0] WriteData;
	reg MemWrite;
	reg MemRead;
	reg Clock;

	// Outputs
	wire [63:0] ReadData;

	// Instantiate the Unit Under Test (UUT)
	DataMemory uut (
		.Address(Address), 
		.WriteData(WriteData), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.Clock(Clock), 
		.ReadData(ReadData)
	);

	initial begin
		// Initialize Inputs
		Address = 0;
		WriteData = 0;
		MemWrite = 0;
		MemRead = 0;
		Clock = 0;
		#100;
		//Begin
		
		//Reading From Address 40
		Address=40;
		MemRead = 1;
		#100;
		MemRead = 0;
		#100
		
		// Reading Frpm Address 80
		Address = 80;
		MemRead=1;
		#100;
		MemRead = 0;
		
		//Overwriting value on Address
		WriteData = 64'haaaaaaaaaaaaaaaa;
		MemWrite = 1;
		Address = 40;
		#100;
		Clock = 1;
		#100;
		MemWrite = 0;
		Clock = 0;
		
		//Reading
		Address=40;
		MemRead = 1;
		#100;
		MemRead = 0;
	end
endmodule

