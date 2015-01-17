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

module tb_main;

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

	// Instantiate the Unit Under Test (UUT)
	main uut (
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
		x1 = 1;
		x2 = 1;
		x3 = 0;
		x4 = 1;
		x5 = 0;
		x6 = 1;
		x7 = 1;
		
		clk = ~clk; #1;
		clk = ~clk; #1;
		clk = ~clk; #1;
		clk = ~clk; #1;
		
		x1 = 0;
		x2 = 0;
		x3 = 0;
		x4 = 0;
		x5 = 0;
		x6 = 0;
		x7 = 0;
		
		while(1)
		begin		
			clk = ~clk; #1;			
		end

	end
      
endmodule

