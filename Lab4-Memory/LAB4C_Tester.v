`timescale 1ns / 1ps

module LAB4C_Tester;

	// Inputs
	reg [63:0] WriteDataDM;
	reg MemWrite;
	reg [1:0] Reg2Loc;
	reg [4:0] Rm;
	reg [4:0] Rt;
	reg MemRead;
	reg Clock;
	reg [4:0] Read1;
	reg [4:0] WriteReg;
	reg RegWrite;
	reg [1:0] ALUOp;
	reg [10:0] OpcodeField;
	reg [8:0] SEin;
	reg [1:0] ALUSrc;
	reg [1:0] MemtoReg;

	// Outputs
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	RFALUDM_Lab4c uut (
		.WriteDataDM(WriteDataDM), 
		.MemWrite(MemWrite), 
		.Reg2Loc(Reg2Loc), 
		.Rm(Rm), 
		.Rt(Rt), 
		.MemRead(MemRead), 
		.Clock(Clock), 
		.Read1(Read1), 
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
		MemWrite = 0;
		Reg2Loc = 0;
		Rm = 0;
		Rt = 0;
		MemRead = 0;
		Clock = 0;
		Read1 = 0;
		WriteReg = 0;
		RegWrite = 0;
		ALUOp = 0;
		OpcodeField = 0;
		SEin = 0;
		ALUSrc = 0;
		MemtoReg = 0;
WriteReg 	= 0;
		// Having A output 0
	  RegWrite 	= 1;
	  #50
	  Clock 		= 1;
	  #50
	  RegWrite 	= 0;
	  Clock 		= 0;
	  #50
	  Read1 = 0;
		#50;
		// Store First Value into Register 5
		SEin = 9'b000101000;
		OpcodeField = 11'b10001011000;//add
		ALUOp = 2'b10;
		#50;
		//Muxes
		ALUSrc = 1;	
		MemtoReg = 1;
		Reg2Loc = 0;
		//Read
		MemRead = 1;
		#50;
		
		// Store
		WriteReg = 5;
		RegWrite = 1;
		#50;
		
		Clock = 1;
		#50;
		Clock = 0;
		MemRead = 0;
		RegWrite = 0;
		#50;
		// Storing Second Value into Register 10
		Read1 = 0;
		SEin = 9'b001010000;
		ALUSrc = 1;
		MemRead = 1;
		#50;
		
		// Store
		WriteReg = 10;
		RegWrite = 1;
		#20;
		
		Clock = 1;
		MemRead = 0;
		#50;
		Clock  = 0;
		
		RegWrite = 0;
		WriteReg = 0;
		ALUSrc = 0;
		MemtoReg = 0;	
		#50;
		
		
		//Reading from Reg 5
		// Inputing Rm as 10
		Read1 = 5;
		Rm = 10;
	
		// Running
		//Reg1
		ALUOp = 2'b10;
		OpcodeField = 11'b10001010000;//and--
		WriteReg = 1;
		RegWrite = 1;
		#50; 
		
		//Clock
		Clock = 1;
		#50;
		
		//Reset//
		Clock = 0;
		RegWrite = 0;
		#50;
		
// Reg2
		OpcodeField = 11'b10101010000;//or--
		WriteReg = 2;
		RegWrite = 1;
		#50
		
		//Clock
		Clock = 1;
		#50;
		
		//Reset
		Clock = 0;
		RegWrite = 0;		
		#50;
		
      // Reg 3
		OpcodeField = 11'b10001011000; //add
		WriteReg = 3;
		RegWrite = 1;
		#50; 
		
		//clock
		Clock = 1;
		#50;
		
		//Reset
		Clock = 0;
		RegWrite = 0;
		#50;
		
// Register 4
		OpcodeField = 11'b11001011000;//subtrac
		WriteReg = 4;
		RegWrite = 1;
		#50; 
		
		//clock
		Clock = 1;
		#50;
		//Reset
		Clock = 0;
		RegWrite = 0;
		#50;
//------------------------------------------  When Reg2Loc is 1
		OpcodeField =11'b10_11111000010;
		SEin = 9'b000000001;
		Reg2Loc = 1;
		ALUSrc = 1;	
		#50;
		Read1 = 0;
		Rt = 1;//Rt--------- 
		MemWrite = 1;
		#50;
		Clock = 1;
		#50;
		MemWrite = 0;
		Clock = 0;
		#50;
		
SEin = 9'b000001001;
		Rt = 2;//Rt--------- 
		MemWrite = 1;
		#50;
		Clock = 1;
		#50;
		MemWrite = 0;
		Clock = 0;
		#50;
SEin = 9'b000010001;	
		Rt = 3;//Rt--------- 
		MemWrite = 1;
		#50;
		Clock = 1;
		#50;
		MemWrite = 0;
		Clock = 0;
		#50;
		SEin = 9'b000011001;	
		Rt = 4;//Rt---------
		MemWrite = 1;
		#50;
		Clock = 1;
		#50;
		MemWrite = 0;
		Clock = 0;
		#50;
		$stop;
	end
      
endmodule

