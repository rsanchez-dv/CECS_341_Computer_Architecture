`timescale 1ns / 1ps

module Lab5a_Tester;

	// Inputs
	reg Clock;
	reg [63:0] PCIn;

	// Outputs
	wire [31:0] count;

	// Instantiate the Unit Under Test (UUT)
	PcAdder uut (
		.Clock(Clock), 
		.count(count), 
		.PCIn(PCIn)
	);

	initial begin
		// Initialize Inputs
		Clock = 0;
		PCIn = 0;

		// Wait 100 ns for global reset to finish
		#100;
       
		// Add stimulus here
		#100;
       Clock = 1;
		PCIn = count;
		#100;
		Clock = 0;
		#100
		Clock = 1;
		PCIn = count;
		#100;
		Clock = 0;
		#100
		Clock = 1;
		PCIn = count;
		#100;
		Clock = 0;
		#100
		Clock = 1;
		PCIn = count;
		#100;
		Clock = 0;
		#100
		Clock = 1;
		PCIn = count;
		#100;
		Clock = 0;
		#100
		Clock = 1;
		PCIn = count;
		#100;
		Clock = 0;
		#100
		Clock = 1;
		PCIn = count;
		#100;
		Clock = 0;
		#100
		Clock = 1;
		PCIn = count;
		#100;
		Clock = 0;
		#100
		Clock = 1;
		PCIn = count;
		#100;
		Clock = 0;
	end
      
endmodule

