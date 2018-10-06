/*
	Name: Roberto Sanchez
	Date: April 17, 2017
	CECS 341 - Computer Architecture
	Lab 7 - Branch Instructions
*/
`timescale 1ns / 1ps

module CPU_Module(Clock, PCIn, count);
	// Inputs From User
	input   Clock;
	input  [63:0] PCIn;				// Input for PC
	output count;
	// Wires
	wire [63:0] PCOut; 	 			// Exits PC           -> IM, PC,and Addr2
	wire [63:0] WriteDataDM;		// Exits RF           -> DM
	wire [4:0]  Read1; 				// Exits IM           -> ALU(A)
	wire [63:0] ALU_Result; 	   // Exits ALU          -> DM and MUX(MemtoReg)
	wire [3:0]  ALUoperation;	   // Exits ALUControl   -> ALU
	wire [63:0] Data1_A; 			// Exits from RF      -> ALU
	wire [63:0] Mux_WriteDataRF; 	// Exits MUX(MemtoReg)-> RF
	wire [63:0] Mux_ReadData;    	// Exits DM           -> MUX
	wire [63:0] Mux_DataB; 			// Exits MUX          -> ALU
	wire [63:0] Mux_SEout;			// Exits SE           -> MUX
	wire [63:0] Mux_Data2; 			// Exits RF           -> MUX
	wire [4:0]  Mux_Read2;			// Exits Mux(Reg2Loc) -> RF as Read2	 
	wire [31:0] InstOut;				// Exits IM           -> ID, RF, SignExtendor, Mux(RegtoLoc)
	wire Zero;							// Exits ALU          -> ANDGate
	wire ANDtoMux;						// Exits ANDgate      -> BranchMux
	wire MuxtoPC;						// Exits Mux(Branch)  -> PC
	wire AddertoMux;					// Exits Adder        -> BranchMux
	wire Adder2toMux;					// Exits Adder2       -> BranchMux
	wire [1:0] Reg2Loc;		   	// Exits ID -> Mux(Re2Loc)
	wire Branch;						// Exits ID -> Mux(Branch)
	wire MemRead;					   // Exits ID -> DM
	wire MemtoReg;					   // Exits ID -> Mux(MemtoReg)
	wire [1:0] ALUOp;				   // Exits ID -> ALUControl
	wire MemWrite;					   // Exits ID -> DM
	wire ALUSrc;						// Exits ID -> Mux(ALUSrc)
	wire RegWrite;				   	// Exits ID -> RF
	//-------------------------------------------------------------------------
	// Instruction Decoder
	// Input:  InstOut[31:21]
	//	Output: Reg2Loc, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite
	//-------------------------------------------------------------------------
	Instruction_Decoder ID (.OpcodeField(InstOut[31:21]), .Reg2Loc(Reg2Loc), .Branch(Branch), .MemRead(MemRead), .MemtoReg(MemtoReg),.ALUOp(ALUOp), .MemWrite(MemWrite), .ALUSrc(ALUSrc), .RegWrite(RegWrite));
	//-------------------------------------------------------------------------
	// Instruction Memory
	// Input: PCOut
	//	Output: InstOut
	//-------------------------------------------------------------------------
	Instruction_Memory IM (.PCOut(PCOut),.InstOut(InstOut));
	//-------------------------------------------------------------------------
	// Program Counter
	// Input: PCIn, Clock
	//	Output: PCOut
	//-------------------------------------------------------------------------
	ProgramCounter     PC(.PCIn(PCIn),.Clock(Clock),.PCOut(PCOut));
	//-------------------------------------------------------------------------
	// Adder 
	// Input: PCout
	//	Output: AddertoMux
	//-------------------------------------------------------------------------
	Adder              Adder1(.B(PCOut),.Out(count)); //addertoMux
	//-------------------------------------------------------------------------
	// Register File 
	// Input: Read1, Mux_Read2, WriteReg, Mux_WriteDataFR, RegWrite, Data1_A, Mux, Clock
	//	Output: Data1_A, Mux_Data2, 
	//-------------------------------------------------------------------------
	RegisterFile       RF (.Read1(Read1),.Read2(Mux_Read2),.WriteReg(InstOut[4:0]), .WriteData(Mux_WriteDataRF),.RegWrite(RegWrite), .Data1(Data1_A), .Data2(Mux_Data2), .clock(Clock));
	//-------------------------------------------------------------------------
	// DataMemory 
	// Input: ALU_Result, Mux_Data2, MemWrite, MemRead, Clock
	//	Output: Mux_ReadData
	//-------------------------------------------------------------------------
	DataMemory         DM (.Address(ALU_Result), .WriteData(Mux_Data2), .MemWrite(MemWrite), .Clock(Clock), .MemRead(MemRead), .ReadData(Mux_ReadData));
	//-------------------------------------------------------------------------
	// SignExtendor 
	// Input: InstOut[20:12]
	//	Output: Mux_SEout
	//-------------------------------------------------------------------------
	SignExtendor       SE (.SEin(InstOut[20:12]), .SEout(Mux_SEout));
	//-------------------------------------------------------------------------
	// LEGv8 
	// Input: ALUoperation, Mux_DataB, Data1_A
	//	Output: ALU_Result, Zero
	//-------------------------------------------------------------------------
	LEGv8			       LEG (.ALUoperation(ALUoperation), .A(Data1_A), .B(Mux_DataB), .ALU_Result(ALU_Result), .Zero(Zero));
	//-------------------------------------------------------------------------
	// ALUControl 
	// Input: ALUOp, InsOUt[31:21]
	//	Output: ALUoperation
	//-------------------------------------------------------------------------
	ALUControl		    ALU_Control (.ALUOp(ALUOp),.OpcodeField(InstOut[31:21]),.ALUoperation(ALUoperation));
	//-------------------------------------------------------------------------
	// ALUsrc Mux(ALUSrc)
	// Input: Mux_Data2, Mux_SEout, ALUSrc
	//	Output: Mux_DataB
	//-------------------------------------------------------------------------
	mux 			       Mux_ALUSrc (.In0(Mux_Data2), .In1(Mux_SEout), .Out(Mux_DataB), .Sel(ALUSrc));
	//-------------------------------------------------------------------------
	// MemtoReg Mux(MemtoReg)
	// Input: ALU_Result, Mux_ReadData, MemtoReg
	//	Output: Mux_WriteDataRF
	//-------------------------------------------------------------------------
	mux		          Mux_MemtoReg (.In0(ALU_Result), .In1( Mux_ReadData), .Out(Mux_WriteDataRF), .Sel(MemtoReg));
	//-------------------------------------------------------------------------
	// RegtoLoc Mux(MemtoReg)
	// Input: Mux_ReadData, ALU_Result, MemtoReg
	//	Output: Mux_WriteDataRF
	//-------------------------------------------------------------------------
	NewMux	          Mux_Reg2Loc (.In0(AddertoMux), .In1(Rt), .Out(Mux_Read2), .Sel(Reg2Loc));
	//-------------------------------------------------------------------------
	// ANDGate 
	// Input: Zero, Branch
	//	Output:ANDtoMux
	//-------------------------------------------------------------------------
	ANDGate	          And_Gate(.PCSrc(ANDtoMux), .Zero(Zero), .Branch(Branch));
	//-------------------------------------------------------------------------
	// Branch Mux
	// Input: ANDtoMux, Adder2toMux, AddertoMux
	// Output: MuxtoPC
	//-------------------------------------------------------------------------
	BranchMultiplexer  Mux_Branch(.In0(AddertoMux), .In1(Adder2toMux), .Out(MuxtoPC), .Sel(ANDtoMux));
	//-------------------------------------------------------------------------
	// Adder 2  
	// Input: PCOut, Mux_SEout
	// Output: Adder2toMux
	//----------------------------------------------------------------------------
	Adder2 			   	Adder2(.A(PCOut),.B(Mux_SEout),.Out(Adder2toMux));
	//----------------------------------------------------------------------------
endmodule
