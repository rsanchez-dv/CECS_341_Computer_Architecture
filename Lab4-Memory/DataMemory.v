`timescale 1ns / 1ps

module DataMemory( Address, WriteData, MemWrite, MemRead, Clock, ReadData);
	input [7:0] Address;
	input [63:0] WriteData;
	input MemWrite, MemRead, Clock;

	output reg [63:0] ReadData;

	reg[7:0] DM [0:255];

	always@(MemRead)
	begin
		if(MemRead==1)
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
			DM[40]=8'h55;
			DM[41]=8'h55;
			DM[42]=8'h55;
			DM[43]=8'h55;
			DM[44]=8'h55;
			DM[45]=8'h55;
			DM[46]=8'h55;
			DM[47]=8'h55;

			DM[80]=8'haa;
			DM[81]=8'haa;
			DM[82]=8'haa;
			DM[83]=8'haa;
			DM[84]=8'haa;
			DM[85]=8'haa;
			DM[86]=8'haa;
			DM[87]=8'haa;
end
endmodule
