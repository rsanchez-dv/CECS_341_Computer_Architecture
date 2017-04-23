/*
 Module: Reg2Loc 
 Description: Handles inputs from the Instruction Mem
*/
`timescale 1ns / 1ps

module NewMux(In0,In1,Sel,Out);
	input [4:0] In0;	// Instruction [20-16] Input
	input [4:0] In1;	// Instruction [9-5] Input
	input  Sel; 		// Reg2Loc Input
	output reg[4:0] Out;	// Goes to Read Register 2 of the Register File
always@(In0,In1,Sel)
	case(Sel)
		0:Out<=In0;
		1:Out<=In1;
endcase
endmodule
