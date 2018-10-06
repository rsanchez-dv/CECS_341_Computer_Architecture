`timescale 1ns / 1ps

module RFALUDM(MemWrite,MemRead, Clock,Read1,Read2, WriteReg,RegWrite,ALUOp,OpcodeField,SEin,ALUSrc,MemtoReg,Zero);
	//-----------------------------------
	//		Inputs/Outputs
	//-----------------------------------
	 // Inputs for DM
		input MemWrite, MemRead , Clock;
	 // Inputs for RF
		 input [4:0] Read1, Read2, WriteReg; 
		 input RegWrite;
	 // Inputs for ALU
		input  [1:0] ALUOp;
		input  [10:0] OpcodeField;
	 // Input for SE
		input [8:0] SEin;
	 // Input for Muxes
		input [1:0] ALUSrc;
		input [1:0] MemtoReg;
	 //Outputs of ALU
		output Zero;
	 //-----------------------------------
	 //					Wires
	 //-----------------------------------
	 // Output for ALU
		 wire [63:0] ALU_Result; 	   // Comes from ALU, Goes to DM or MUX
		 wire [3:0] ALUoperation;	   // To ALU
	 // Output for Register File
		 wire [63:0] Data1_A; 			// Comes from RF to ALU
	 // Output for DataMemory
		 wire [63:0] Mux_WriteDataRF; // From MUX to RF
		 wire [63:0] Mux_ReadData;    // DM to MUX
	 // Output for Multiplexer
		 wire [63:0] Mux_DataB; 		// Comes from MUX to ALU
		 wire [63:0] Mux_SEout;			// Comes from SE to MUX
		 wire [63:0] Mux_Data2; 		// Comes from RF to MUX
	 //-----------------------------------
	 //			Initialing Modules
	 //-----------------------------------
	 RegisterFile  lab3a (.Read1(Read1),.Read2(Read2),.WriteReg(WriteReg), .WriteData(Mux_WriteDataRF),.RegWrite(RegWrite), .Data1(Data1_A), .Data2(Mux_Data2), .clock(Clock));//Change Write data to Mux_WriteDataRF
	 //---------------------------------------------------------------------------------------------------------
	 DataMemory    lab4a (.Address(ALU_Result), .WriteData(Mux_Data2), .MemWrite(MemWrite), .Clock(Clock), .MemRead(MemRead), .ReadData(Mux_ReadData));
	 //---------------------------------------------------------------------------------------------------------
	 SignExtendor  lab4b (.SEin(SEin), .SEout(Mux_SEout));
	 //---------------------------------------------------------------------------------------------------------
	 LEGv8			lab2a (.ALUoperation(ALUoperation), .A(Data1_A), .B(Mux_DataB), .ALU_Result(ALU_Result), .Zero(Zero));// Change .B to Mux_DataB
	 //---------------------------------------------------------------------------------------------------------
	 ALUControl		lab3b (.ALUOp(ALUOp),.OpcodeField(OpcodeField),.ALUoperation(ALUoperation));
	 //---------------------------------------------------------------------------------------------------------
	 mux 			lab1a (.In0(Mux_Data2), .In1(Mux_SEout), .Out(Mux_DataB), .Sel(ALUSrc));
	 //---------------------------------------------------------------------------------------------------------
	 mux			lab1b (.In0(ALU_Result), .In1( Mux_ReadData), .Out(Mux_WriteDataRF), .Sel(MemtoReg));
	 //---------------------------------------------------------------------------------------------------------
endmodule




