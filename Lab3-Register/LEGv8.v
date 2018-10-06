`timescale 1ns / 1ps

module LEGv8 (ALUoperation,A,B,ALU_Result,Zero);
	input [3:0] ALUoperation;
	input [63:0] A, B;
	output reg [63:0] ALU_Result;
	output Zero;
	assign Zero = (ALU_Result==0); 		//Zero is true if ALU_Result is 0
	always @(ALUoperation, A,B) begin  // reevaluate if these chang 
		case (ALUoperation)
			0: ALU_Result <= A & B;
			1: ALU_Result <= A | B;
			2: ALU_Result <= A + B;
			6: ALU_Result <= A - B;
			7: ALU_Result <= B;
			12: ALU_Result <= ~(A | B);   // result is nor
			default: ALU_Result <=0;
		endcase
	end
endmodule
//----------------------------------------------------
