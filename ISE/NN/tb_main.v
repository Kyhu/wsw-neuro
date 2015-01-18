`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:54:17 01/17/2015
// Design Name:   main
// Module Name:   /home/kyhu/Workspace/WSW/wsw-neuro/ISE/NN/tb_main.v
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

module tb_neural_network;

	// Inputs
	reg clk;
	reg ce;
	reg [16:0] x1;
	reg [16:0] x2;
	reg [16:0] x3;
	reg [16:0] x4;
	reg [16:0] x5;
	reg [16:0] x6;
	reg [16:0] x7;

	// Outputs
	wire [16:0] y_out;
	
	integer i = 0;

	// Instantiate the Unit Under Test (UUT)
	neural_network uut (
		.clk(clk), 
		.ce(ce), 
		.x1(x1), 
		.x2(x2), 
		.x3(x3), 
		.x4(x4), 
		.x5(x5), 
		.x6(x6), 
		.x7(x7), 
		.y_out(y_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		ce = 0;
		x1 = 0;
		x2 = 0;
		x3 = 0;
		x4 = 0;
		x5 = 0;
		x6 = 0;
		x7 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		clk = 1;
		ce = 1;
		
		clk = ~clk; #1;
		clk = ~clk; #1;
		clk = ~clk; #1;
		clk = ~clk; #1;
		x1 = 17'b 00000110111101101;
		x2 = 17'b 00000100101111001;
		x3 = 17'b 00000011000110110;
		x4 = 17'b 00000010110100101;
		x5 = 17'b 00000101010001010;
		x6 = 17'b 00000000110010001;
		x7 = 17'b 00000001101110011;
	
		i = 0;
		while(i < 200)
		begin
			clk = ~clk; #1;
			clk = ~clk; #1;
			i = i + 1;
		end

		x1 = 17'b 00000000011110000;
		x2 = 17'b 00000101110111011;
		x3 = 17'b 00000001101100011;
		x4 = 17'b 00000010110110101;
		x5 = 17'b 00000001101010011;
		x6 = 17'b 00000100001101000;
		x7 = 17'b 00000010111000101;

		i = 0;
		while(i < 200)
		begin
			clk = ~clk; #1;
			clk = ~clk; #1;
			i = i + 1;
		end
		
		x1 = 17'b 00000001100100011;
		x2 = 17'b 00000010000100100;
		x3 = 17'b 00000001111110011;
		x4 = 17'b 00000100000011000;
		x5 = 17'b 00000011110000111;
		x6 = 17'b 00000101010011010;
		x7 = 17'b 00000000110000001;

		i = 0;
		while(i < 200)
		begin
			clk = ~clk; #1;
			clk = ~clk; #1;
			i = i + 1;
		end
		
		x1 = 17'b 00000100101001001;
		x2 = 17'b 00000011000110110;
		x3 = 17'b 00000001110000011;
		x4 = 17'b 00000011000100110;
		x5 = 17'b 00000100111001001;
		x6 = 17'b 00000000111000001;
		x7 = 17'b 00000001111100011;	
		
		i = 0;		
		while(i < 200)
		begin
			clk = ~clk; #1;
			clk = ~clk; #1;
			i = i + 1;
		end

	end
      
endmodule

