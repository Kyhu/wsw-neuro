`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:36:54 01/09/2015
// Design Name:   main
// Module Name:   C:/Users/gosia/Desktop/wsw studia miczal/wsw/tb_main.v
// Project Name:  wsw
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_main;

	// Inputs
	reg clk;
	reg [16:0] x1;
	reg [16:0] x2;
	reg [16:0] x3;
	reg [16:0] x4;
	reg [16:0] x5;
	reg [16:0] x6;
	reg [16:0] x7;
	reg [16:0] w1;
	reg [16:0] w2;
	reg [16:0] w3;
	reg [16:0] w4;
	reg [16:0] w5;
	reg [16:0] w6;
	reg [16:0] w7;
	reg [17*7-1:0] w2_1;
	reg [17*7-1:0] w2_2;
	reg [17*7-1:0] w2_3;
	reg [17*7-1:0] w2_4;
	reg [17*7-1:0] w2_5;
	reg [17*7-1:0] w2_6;
	reg [17*7-1:0] w2_7;
	reg [17*7-1:0] w2_8;
	reg [17*7-1:0] w2_9;
	reg [17*7-1:0] w2_10;
	reg [17*7-1:0] w2_11;
	reg [17*7-1:0] w2_12;
	reg [17*7-1:0] w2_13;
	reg [17*13-1:0] w_3;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.clk(clk),
		.x1(x1), 
		.x2(x2), 
		.x3(x3), 
		.x4(x4), 
		.x5(x5), 
		.x6(x6), 
		.x7(x7), 
		.w1(w1), 
		.w2(w2), 
		.w3(w3), 
		.w4(w4), 
		.w5(w5), 
		.w6(w6), 
		.w7(w7), 
		.w2_1(w2_1), 
		.w2_2(w2_2), 
		.w2_3(w2_3), 
		.w2_4(w2_4), 
		.w2_5(w2_5), 
		.w2_6(w2_6), 
		.w2_7(w2_7), 
		.w2_8(w2_8), 
		.w2_9(w2_9), 
		.w2_10(w2_10), 
		.w2_11(w2_11), 
		.w2_12(w2_12), 
		.w2_13(w2_13), 
		.w_3(w_3)
	);

	initial begin
		// Initialize Inputs
		clk=0;
		x1 = 0;
		x2 = 0;
		x3 = 0;
		x4 = 0;
		x5 = 0;
		x6 = 0;
		x7 = 0;
		w1 = 0;
		w2 = 0;
		w3 = 0;
		w4 = 0;
		w5 = 0;
		w6 = 0;
		w7 = 0;
		w2_1 = 0;
		w2_2 = 0;
		w2_3 = 0;
		w2_4 = 0;
		w2_5 = 0;
		w2_6 = 0;
		w2_7 = 0;
		w2_8 = 0;
		w2_9 = 0;
		w2_10 = 0;
		w2_11 = 0;
		w2_12 = 0;
		w2_13 = 0;
		w_3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      x1 = 17'b1;
		x2 = 17'b10000000000000001;
		x3 = 17'b1;
		x4 = 17'b1;
		x5 = 17'b1;
		x6 = 17'b1;
		x7 = 17'b1;
		w1 = 17'b1;
		w2 = 17'b1;
		w3 = 17'b1;
		w4 = 17'b1;
		w5 = 17'b1;
		w6 = 17'b1;
		w7 = 17'b1;
		w2_1 = 119'b1;
		w2_2 = 119'b1;
		w2_3 = 119'b1;
		w2_4 = 119'b1;
		w2_5 = 119'b1;
		w2_6 = 119'b1;
		w2_7 = 119'b1;
		w2_8 = 119'b1;
		w2_9 = 119'b1;
		w2_10 = 119'b1;
		w2_11 = 119'b1;
		w2_12 = 119'b1;
		w2_13 = 119'b1;
		w_3 = 221'b1;
		// Add stimulus here
while(1)
#1 clk=clk+1;
	end
      
endmodule

