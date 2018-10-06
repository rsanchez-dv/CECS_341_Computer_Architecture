`timescale 1ns / 1ps

module Instruction_Memory(PCOut, InstOut);
	input [63:0] PCOut;
	output  [31:0] InstOut;
	reg [7:0] IM [0:255];
		 assign InstOut = {IM[PCOut+0], IM[PCOut+1], IM[PCOut+2], IM[PCOut+3]};
	initial
	begin
		// Load First Value
		IM[0] = 8'hF8; 
		IM[1] = 8'h40; 
		IM[2] = 8'h00; 
		IM[3] = 8'h01; 
		// Load Second Value
		IM[4] = 8'hF8; 
		IM[5] = 8'h40; 
		IM[6] = 8'h80; 
		IM[7] = 8'h02; 
		//ADD
		IM[8] = 8'h8B; 
		IM[9] = 8'h01; 
		IM[10] = 8'h00; 
		IM[11] = 8'h43; 
	
		// Store ADD
		IM[12] = 8'hF8; //11111000
		IM[13] = 8'h01; //00000000
		IM[14] = 8'h00; //10000000
		IM[15] = 8'h03; //00000001
		/*
											DM Ades				 RF adres
		               Opcode      Address   00 RN    RD
		  					1986			0,8		 00 00    1,2
		  IM[0] = 32'b 11111000010_000000000_00_00000_00001; // Load from DM 0-7 store in Reg 1
							11111000	01000000	00000000	00000001
							F8			40			00			01
		  IM[1] = 32'b 11111000010_000001000_00_00000_00010; // Load from Dm 8-16 store in Reg 2
							11111000	01000000	10000000	00000010
							F8			40			80			02
		  //---------------------------------------------------------------------
											20-16        1      4-0
											2				 1		 3
		    	   		Opcode      RM	   Shamt	 RN	 RT
		               X           10     0     0     1
		  IM[2] = 32'b 10001011000_00001_000000_00011_00010; // add reg 1 and reg 2 store in reg 3
							10001011 00000001 00000000 01000011
							8b			01			00			43  
		  //---------------------------------------------------------------------
		   				Opcode       Address	00 RN	  RT
		               1984			 16		0  0	   3
		  IM[6] = 32'b 11111000000_00010000_00_00000_00011;  // read reg 0 and 3 store in dm16
							11111000 00000010 00000000 0000011
							F8			02			00			03
							

		*/
	end
	
endmodule
