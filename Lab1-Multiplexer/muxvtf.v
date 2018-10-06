`timescale 1ns / 1ps

module muxvtf;

	// Inputs
	reg In0;
	reg In1;
	reg In2;
	reg In3;
	reg [1:0] Sel;

	// Outputs
	wire Out;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.In0(In0), 
		.In1(In1), 
		.In2(In2), 
		.In3(In3), 
		.Sel(Sel), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In0 = 0;
		In1 = 0;
		In2 = 0;
		In3 = 0;
		Sel = 0;

	//Checking "Walking 1"
	#100 Sel = 0; In0 = 1; // We need to tell only changes
	#100 Sel = 1; In0 = 0; In1 = 1;
	#100 Sel = 2; In1 = 0; In2 = 1;
	#100 Sel = 3; In2 = 0; In3 =1;
	//Checking "Walking 0"
	#100 Sel = 0; In0 = 0; In1 = 1; In2 = 1; // In3 is already 1, only In0 be 0 
	#100 Sel = 1; In0 = 1; In1 = 0; // In2 is already 1, Only In1 to be 0
	#100 Sel = 2; In1 = 1; In2 = 0; // In0 is already 1, Only In2 to be 0
	#100 Sel = 3; In2 = 1; In3 = 0; // Only In3 to be 0
	//Let us zero everyone
	#100 Sel = 0; In0 = 0; In1 = 0; In2 = 0; // In3 is already 0
	end
endmodule

