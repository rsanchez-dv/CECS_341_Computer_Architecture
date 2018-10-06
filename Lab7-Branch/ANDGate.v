`timescale 1ns / 1ps

module ANDGate(PCSrc, Zero, Branch);
	input Branch;
	input Zero;
	output PCSrc;
	
 assign	PCSrc = Branch & Zero;

endmodule
