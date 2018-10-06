`timescale 1ns / 1ps

module Instruction_Decoder(OpcodeField,  ConSignals);

	input [10:0] OpcodeField;
	output reg [8:0] ConSignals;
	/*
	Reg2Loc, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite,
	
	output reg  Reg2Loc;
	output reg  Branch;
	output reg  MemRead;
	output reg  MemtoReg;
	output reg [1:0] ALUOp;
	output reg  MemWrite;
	output reg  ALUSrc;
	output reg  RegWrite;
	*/
	always @(OpcodeField) begin
	case(OpcodeField)
		// R-Type Instruction
		11'b 10001011000:begin
		/*
			Reg2Loc 	<= 0;
			Branch 	<= 0;
			MemRead  <= 0;
			MemtoReg <= 0;
			ALUOp 	<= 10;
			MemWrite <= 0;
			ALUSrc 	<= 0;
			RegWrite <= 1;
			*/
			ConSignals <= 9'b 000010001;
			end
		11'b 11001011000:begin
		/*
			Reg2Loc 	<= 0;
			Branch 	<= 0;
			MemRead  <= 0;
			MemtoReg <= 0;
			ALUOp 	<= 10;
			MemWrite <= 0;
			ALUSrc 	<= 0;
			RegWrite <= 1;
			*/
			ConSignals <= 9'b 000010001;
			end
		11'b 10001010000:begin
		/*
			Reg2Loc 	<= 0;
			Branch 	<= 0;
			MemRead  <= 0;
			MemtoReg <= 0;
			ALUOp 	<= 10;
			MemWrite <= 0;
			ALUSrc 	<= 0;
			RegWrite <= 1;
			*/
			ConSignals <= 9'b 000010001;
			end
		11'b 10101010000:begin
		/*
			Reg2Loc 	<= 0;
			Branch 	<= 0;
			MemRead  <= 0;
			MemtoReg <= 0;
			ALUOp 	<= 10;
			MemWrite <= 0;
			ALUSrc 	<= 0;
			RegWrite <= 1;
			*/
			ConSignals <= 9'b 000010001;
			end
		//--------------------------- Load
		11'b 11111000010:begin
		/*
			Reg2Loc 	<= 0;
			Branch 	<= 0;
			MemRead  <= 1;
			MemtoReg <= 1;
			ALUOp 	<= 00;
			MemWrite <= 0;
			ALUSrc 	<= 1;
			RegWrite <= 1;
			*/
			ConSignals <= 9'b 001100011;
			end
		//---------------------------- Store
		11'b 11111000000:begin
		/*
			Reg2Loc 	<= 1;
			Branch 	<= 0;
			MemRead  <= 0;
			MemtoReg <= 0;
			ALUOp 	<= 00;
			MemWrite <= 1;
			ALUSrc 	<= 1;
			RegWrite <= 0;
			*/
			ConSignals <= 9'b 100000110;
		end
endcase
end
endmodule
