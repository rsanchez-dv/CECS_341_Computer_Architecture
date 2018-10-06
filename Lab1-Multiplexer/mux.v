`timescale 1ns / 1ps
module mux(
	input In0,
	input In1,
	input In2,
	input In3,
	input [1:0] Sel,
	output reg Out
	);
always @(In0,In1,In2,In3,Sel)
case(Sel)
0:Out<=In0;
1:Out<=In1;
2:Out<=In2;
3:Out<=In3;
endcase
endmodule
