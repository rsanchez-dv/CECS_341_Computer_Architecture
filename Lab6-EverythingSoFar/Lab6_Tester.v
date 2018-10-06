`timescale 1ns / 1ps

module Lab6_Tester;

	// Inputs
	reg Clock;
	reg [63:0] PCIn;

	// Outputs
	wire [31:0] count;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	CPU_Module uut (
		.Clock(Clock), 
		.PCIn(PCIn), 
		.count(count), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		Clock = 0;
		PCIn = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Clock   = 1;
		PCIn    = count;
		#100;
		Clock   = 0;
		#100
		Clock   = 1;
		PCIn = count;
		#100;
		Clock = 0;
		#100
		Clock = 1;
		PCIn = count;
	end
      
endmodule

