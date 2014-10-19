`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:29:36 04/02/2014
// Design Name:   accumulator
// Module Name:   /home/kyhu/Workspace/ISE/lab3/tb_accumulator.v
// Project Name:  lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: accumulator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_accumulator;

	// Inputs
	reg clk;
	reg rst;
	reg ce;
	reg [12:0] A;

	// Outputs
	wire [22:0] Y;


	integer i = 0;
	
	// Instantiate the Unit Under Test (UUT)
	accumulator uut (
		.clk(clk), 
		.rst(rst), 
		.ce(ce), 
		.A(A), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		ce = 1;
		A = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		
		A = 13'b0100110110000;
		#1; clk <= ~clk;
		#1; clk <= ~clk;
		
		A = 13'b0001000110010;
		#1; clk <= ~clk;
		#1; clk <= ~clk;
		
		A = 13'b0000011001001;
		#1; clk <= ~clk;
		#1; clk <= ~clk;
		
		A = 13'b0000011100111;
		#1; clk <= ~clk;
		#1; clk <= ~clk;
		
		A = 13'b0001011100000;
		#1; clk <= ~clk;
		#1; clk <= ~clk;
		
		A = 13'b1001101111101;
		#1; clk <= ~clk;
		#1; clk <= ~clk;
		
		A = 13'b1111011000000;
		#1; clk <= ~clk;
		#1; clk <= ~clk;
		
		A = 13'b0000011110000;
		#1; clk <= ~clk;
		#1; clk <= ~clk;
		
		A = 13'b1111000000000;
		#1; clk <= ~clk;
		#1; clk <= ~clk;
		
		A = 13'b0000001010000;
		#1; clk <= ~clk;
		#1; clk <= ~clk;
		
		#1; clk <= ~clk;
		#1; clk <= ~clk;
		
		rst = 1;
		#1; clk <= ~clk;
		#1; clk <= ~clk;
		
		rst = 0;
		
		#1; clk <= ~clk;
		#1; clk <= ~clk;
		
		#1; clk <= ~clk;
		#1; clk <= ~clk;
		
		$finish;
		
		/*A = 13'b0000000010000;
		
		while(i < 10)
		begin
			#1; clk <= ~clk;
			#1; clk <= ~clk;
			i = i + 1;
		end
		A = 0;
		
		#1; clk <= ~clk;
		#1; clk <= ~clk;
		
		rst = 1;
		
		#1; clk <= ~clk;
		#1; clk <= ~clk;
		
		#1; clk <= ~clk;
		#1; clk <= ~clk;
		
		$finish;*/

	end
      
endmodule

