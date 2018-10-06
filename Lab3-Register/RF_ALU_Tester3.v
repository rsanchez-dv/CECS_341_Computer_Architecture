`timescale 1ns / 1ps

module RF_ALU_Tester3;
	// Inputs
	reg [1:0] ALUOp;
	reg [10:0] OpcodeField;
	reg [4:0] Read1;
	reg [4:0] Read2;
	reg [4:0] WriteReg;
	reg [63:0] WriteData;
	reg RegWrite;
	reg clock;

	// Outputs
	wire [63:0] ALU_Result;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	RF_ALU uut (
		.ALUOp(ALUOp), 
		.OpcodeField(OpcodeField), 

		.Read1(Read1), 
		.Read2(Read2), 
		.zero(zero),
		.WriteReg(WriteReg), 

		.RegWrite(RegWrite), 
		.clock(clock)
	);

	initial begin
		//---------Initialize Inputs-------------
		ALUOp = 0;
		OpcodeField = 0;
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		WriteData = 0;
		RegWrite = 0;
		clock = 0;
		#100;
		//------------- BEGIN--------------------
		
		// Writing to Reg 5
		WriteReg = 5;
		WriteData = 64'h5555555555555555;
		//Rising
		RegWrite = 1;
		#100
		clock = 1; 
		// Lowering
		#100
		RegWrite = 0;
		clock = 0;
		//Writing to Reg 10
		#100
		WriteReg = 10;
		WriteData = 64'haaaaaaaaaaaaaaaa;
		//Rise
		RegWrite = 1;
		#100
		clock = 1;
		//Lowers
		#100;
		RegWrite = 0;
		clock = 0;
		
		//Read
		Read1 = 5;
		Read2 = 10;
		ALUOp = 2'b10;

		// Testing AND OpcodeField
		OpcodeField = 11'b10_10001010000;
		#100;
		// Testing OR OpcodeField
		OpcodeField = 11'b10_10101010000;
		#100;
		// Testing ADD OpcodeField
		OpcodeField = 11'b10_10001011000;
		#100
		// Testing Sub OpcodeField
		OpcodeField = 11'b10_11001011000;
		#100
		// Testing Pass B OpcodeField
		OpcodeField = 11'b10_11111000010;
		#100
		// Testing NOR OpcodeField
		OpcodeField = 11'b10_11101010000;
		
		//-----------------Lab 3C---------------------------
		//Writing
		#100
		WriteReg=1;
		WriteData = ALU_Result; //dont nned
		
		//Rising
		RegWrite = 1;
		#100
		clock = 1;
		
		//Lowering
		#100
		RegWrite = 0;
		clock = 0;
		
		//Cycle through Opcodes
		Read1 = 1;
		
		OpcodeField = 11'b10_10001010000;
		//Writing
		#100
		WriteReg=2;
		WriteData = ALU_Result;
		
		//Rising
		RegWrite = 1;
		#100
		clock = 1;
		
		//Lowering
		#100
		RegWrite = 0;
		clock = 0;
		Read1 = 1;
		
		// Testing OR OpcodeField
		OpcodeField = 11'b10_10101010000;
		//Writing
		#100
		WriteReg=3;
		WriteData = ALU_Result;
		
		//Rising
		RegWrite = 1;
		#100
		clock = 1;
		
		//Lowering
		#100
		RegWrite = 0;
		clock = 0;
		Read1 = 1;
		// Testing ADD OpcodeField
		OpcodeField = 11'b10_10001011000;
		//Writing
		#100
		WriteReg=3;
		WriteData = ALU_Result;
		
		//Rising
		RegWrite = 1;
		#100
		clock = 1;
		
		//Lowering
		#100
		RegWrite = 0;
		clock = 0;
		Read1 = 1;
		// Testing Sub OpcodeField
		OpcodeField = 11'b10_11001011000;
		//Writing
		#100
		WriteReg=4;
		WriteData = ALU_Result;
		
		//Rising
		RegWrite = 1;
		#100
		clock = 1;
		
		//Lowering
		#100
		RegWrite = 0;
		clock = 0;
	end
endmodule