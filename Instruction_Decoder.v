`timescale 1ns / 1ps

module Instruction_Decoder(OpcodeField, Reg2Loc, Branch,
 MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite);

	input [10:0] OpcodeField;
	//output reg [8:0] ConSignals;
	
	
	
	output reg  Reg2Loc;
	output reg  Branch;
	output reg  MemRead;
	output reg  MemtoReg;
	output reg [1:0] ALUOp;
	output reg  MemWrite;
	output reg  ALUSrc;
	output reg  RegWrite;
	
	always @(OpcodeField) begin
	case(OpcodeField)
		// R-Type Instruction
		11'b 10001011000:begin
			Reg2Loc 	<= 0;
			ALUSrc 	<= 0;
			MemtoReg <= 0;
			RegWrite <= 1;
			MemRead  <= 0;
			MemWrite <= 0;
			Branch 	<= 0;
			ALUOp 	<= 10;
			end
		11'b 11001011000:begin
			Reg2Loc 	<= 0;
			ALUSrc 	<= 0;
			MemtoReg <= 0;
			RegWrite <= 1;
			MemRead  <= 0;
			MemWrite <= 0;
			Branch 	<= 0;
			ALUOp 	<= 10;
			end
		11'b 10001010000:begin
			Reg2Loc 	<= 0;
			ALUSrc 	<= 0;
			MemtoReg <= 0;
			RegWrite <= 1;
			MemRead  <= 0;
			MemWrite <= 0;
			Branch 	<= 0;
			ALUOp 	<= 10;
			end
		11'b 10101010000:begin
			Reg2Loc 	<= 0;
			ALUSrc 	<= 0;
			MemtoReg <= 0;
			RegWrite <= 1;
			MemRead  <= 0;
			MemWrite <= 0;
			Branch 	<= 0;
			ALUOp 	<= 10;
			end
		//--------------------------- Load
		11'b 11111000010:begin
			Reg2Loc 	<= 0;
			ALUSrc 	<= 1;
			MemtoReg <= 1;
			RegWrite <= 1;
			MemRead  <= 1;
			MemWrite <= 0;
			Branch 	<= 0;
			ALUOp 	<= 00;
			end
		//---------------------------- Store
		11'b 11111000000:begin
			Reg2Loc 	<= 1;
			ALUSrc 	<= 1;
			MemtoReg <= 0;
			RegWrite <= 0;
			MemRead  <= 0;
			MemWrite <= 1;
			Branch 	<= 0;
			ALUOp 	<= 00;
		end
endcase
end
endmodule
