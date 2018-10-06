`timescale 1ns / 1ps
module RegisterFile( Read1,Read2,WriteReg,WriteData,RegWrite, Data1, Data2, clock);
	input [4:0] Read1, Read2, WriteReg; // The register Numbers to read or write
	input [63:0] WriteData; //data to write
	input RegWrite, // Data to write
			clock; // the write control
	output [63:0] Data1,Data2; // the register values read
	reg [63:0] RF [0:31]; //32 Registers each 32 bits long
	
	assign Data1 = RF[Read1];
	assign Data2 = RF[Read2];
	
	initial 
	begin
	RF[0] = 0;
	end
	
	always @(posedge clock)
		if (RegWrite == 1)
			RF[WriteReg] <= WriteData;
	
endmodule