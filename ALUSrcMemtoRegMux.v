/*
	Module: Multiplexer
	Description: Multiplexer that handles inputs from ALUSrc and MemtoReg
*/
`timescale 1ns / 1ps

module ALUSrcMemtoReg(In0,In1,Sel,Out);
			   // ALUSrc		MemtoReg
	input [63:0]  In0; // ReadData2		ALUResult
	input [63:0]  In1;// SignExtendor	ReadData (Datamemory)
	input  Sel;	  // Either ALUSrc or MemtoReg
	output reg[63:0]  Out; // B(ALU)	WriteData(Register File)
always@(In0,In1,Sel)
	case(Sel)
		0:Out<=In0;
		1:Out<=In1;
endcase
endmodule
