`timescale 1ns / 1ps

module RFALUDM_Tester;

	// Inputs
	reg [63:0] WriteDataDM;
	reg MemWrite;
	reg MemRead;
	reg Clock;
	reg [4:0] Read1;
	reg [4:0] Read2;
	reg [4:0] WriteReg;
	reg RegWrite;
	reg [1:0] ALUOp;
	reg [10:0] OpcodeField;
	reg [8:0] SEin;
	reg [1:0] ALUSrc;
//	reg [1:0] MemtoReg;
	
	wire Zero;
	
	// Instantiate the Unit Under Test (UUT)
	RFALUDM uut (
		.WriteDataDM(WriteDataDM), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.Clock(Clock), 
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteReg(WriteReg), 
		.RegWrite(RegWrite), 
		.ALUOp(ALUOp), 
		.OpcodeField(OpcodeField), 
		.SEin(SEin), 
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.Zero(Zero)
	);
	initial begin
		// Initialize Inputs
		WriteDataDM = 0;
		MemWrite 	= 0;
		MemRead 		= 0;
		Clock 		= 0;
		Read1 		= 0;
		Read2 		= 0;
		WriteReg		= 0;
		RegWrite 	= 0;
		ALUOp 		= 0;
		OpcodeField = 0;
		SEin 			= 0;
		ALUSrc 		= 0;
		MemtoReg 	= 0;
		// Wait 100 ns for global reset to finish
		#100;
		//----------- Reading First Value -----------
		WriteReg 	= 0;
	  RegWrite 	= 1;
	  #50
	  Clock 		= 1;
	  #50
	  RegWrite 	= 0;
	  Clock 		= 0;
	  #50
	  Read1 = 0;
	  //----
	  SEin 		= 9'b000101000;
	  OpcodeField = 11'b10_10001011000; //add
	  //---- MUX Controls for Reading
	  ALUSrc 	= 2'b1;
	  MemtoReg 	= 2'b1;
	  //----
	  #50;
	  MemRead 	= 1;
	  #50;
	  MemRead 	= 0;
  //----------- Storings in Reg 5-----------
	  WriteReg 	= 5;
	  RegWrite 	= 1;
	  #50
	  Clock 		= 1;
	  #50
	  RegWrite 	= 0;
	  Clock 		= 0;
	  #50
  //----------- Reading Second Value -----------
		Read1 		= 0;
		SEin 			= 9'b001010000;
	
		//---- DM
		#50;
		MemRead	= 1;
		#50;
		MemRead 	= 0;
    //----------- Storings in Reg 10-----------
		WriteReg = 10;
		RegWrite = 1;
		#50
		Clock 	= 1;
		#50
		RegWrite = 0;
		Clock 	= 0;
		#50
    //------Reading From Registers-------------
		 Read1 = 5; // Becomes value for A
		 Read2 = 10; // Becomes value for B
	 //------Changing Mux Signs-----------------
		 ALUSrc 		= 2'b0;
		 MemtoReg 	= 2'b0;
	 //------ Running OPCODES
		// Testing AND
		OpcodeField= 11'b10_10001010000;
		#50
		WriteReg = 1;
		RegWrite = 1;
		#50
		Clock = 1;
		#50
		Clock =0;
		RegWrite = 0;
		// Testing OR
		OpcodeField= 11'b10_10101010000;
		#50
		WriteReg = 2;
		RegWrite = 1;
		#50
		Clock = 1;
		#50
		Clock =0;
		RegWrite = 0;
		// Testing Add
		OpcodeField = 11'b10_10001011000;
		#50
		WriteReg = 3;
		RegWrite = 1;
		#50
		Clock = 1; 
		#50
		RegWrite = 0;
		Clock = 0;
		// Testing Sub OpcodeField
		OpcodeField = 11'b10_11001011000;
		#50
		WriteReg = 4;
		RegWrite = 1;
		#50
		Clock = 1; 
		#50
		RegWrite = 0;
		Clock = 0;
	end
endmodule

