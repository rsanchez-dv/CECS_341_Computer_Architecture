`timescale 1ns / 1ps
module ALUControl (ALUOp, OpcodeField, ALUoperation);
	input  [1:0] ALUOp;
	input  [10:0] OpcodeField;
	output reg [3:0] ALUoperation;

	always@(ALUOp, OpcodeField) begin
	case(OpcodeField)
		11'b10_10001011000: ALUoperation <= 2;  // add
		11'b10_11001011000: ALUoperation <= 6;  // subtract
		11'b10_10001010000: ALUoperation <= 0;  // and
		11'b10_10101010000: ALUoperation <= 1;  // or
		11'b10_11101010000: ALUoperation <= 12; // nor
		11'b10_11111000010: ALUoperation <= 7;  // Pass B
		11'b10_11111000000: ALUoperation <= 7;  //
		default: ALUoperation <= 15; 			  	 // should not happen 
	endcase
	end
endmodule