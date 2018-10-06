`timescale 1ns / 1ps

module DataMemory( Address, WriteData, MemWrite, MemRead, Clock, ReadData);
	input [7:0] Address;
	input [63:0] WriteData;
	input MemWrite, MemRead, Clock;

	output reg [63:0] ReadData;

	reg[7:0] DM [0:255];

	always@(MemRead)
	begin
		if(MemRead == 1)
			assign ReadData = {DM[Address+0],DM[Address+1],DM[Address+2],DM[Address+3],DM[Address+4],DM[Address+5],DM[Address+6],DM[Address+7]};
		end
	always@(posedge Clock)
	begin
		if(MemWrite == 1)
			begin
				DM[Address+0] =WriteData[63:56];
				DM[Address+1] = WriteData[55:48];
				DM[Address+2] =WriteData[47:40];
				DM[Address+3] =WriteData[39:32];
				DM[Address+4] =WriteData[31:24];
				DM[Address+5] =WriteData[23:16];
				DM[Address+6] =WriteData[15:8];
				DM[Address+7] =WriteData[7:0];
				end
		end
	initial
		begin
		// Lab Exam
		DM[0]=8'h00;
		DM[1]=8'h00;
		DM[2]=8'h00;
		DM[3]=8'h00;
		DM[4]=8'h00;
		DM[5]=8'h00;
		DM[6]=8'h00;
		DM[7]=8'h02;
		
		DM[8]=8'h00;
		DM[9]=8'h00;
		DM[10]=8'h00;
		DM[11]=8'h00;
		DM[12]=8'h00;
		DM[13]=8'h00;
		DM[14]=8'h00;
		DM[15]=8'h03;
		
		DM[40]=8'h00;
		DM[41]=8'h00;
		DM[42]=8'h00;
		DM[43]=8'h00;
		DM[44]=8'h00;
		DM[45]=8'h00;
		DM[46]=8'h00;
		DM[47]=8'h03;

		DM[80]=8'h00;
		DM[81]=8'h00;
		DM[82]=8'h00;
		DM[83]=8'h00;
		DM[84]=8'h00;
		DM[85]=8'h00;
		DM[86]=8'h00;
		DM[87]=8'h05;

end
endmodule
