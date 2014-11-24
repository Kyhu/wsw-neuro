`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:54:25 11/20/2014
// Design Name:   rgb2hsv
// Module Name:   D:/WSW14/wsw-neuro/ISE/neuro_skin/tb_rgb2hsv.v
// Project Name:  hdmi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rgb2hsv
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_rgb2hsv;

	// Inputs
	reg clk;
	reg ce;
	reg de_in;
	reg hsync_in;
	reg vsync_in;
	reg [7:0] red;
	reg [7:0] green;
	reg [7:0] blue;

	// Outputs
	wire [7:0] H;
	wire [7:0] S;
	wire [7:0] V;
	wire de_out;
	wire hsync_out;
	wire vsync_out;

	// Instantiate the Unit Under Test (UUT)
	rgb2hsv uut (
		.clk(clk), 
		.ce(ce), 
		.de_in(de_in), 
		.hsync_in(hsync_in), 
		.vsync_in(vsync_in), 
		.red(red), 
		.green(green), 
		.blue(blue), 
		.H(H), 
		.S(S), 
		.V(V), 
		.de_out(de_out), 
		.hsync_out(hsync_out), 
		.vsync_out(vsync_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		ce = 1;
		de_in = 0;
		hsync_in = 0;
		vsync_in = 0;
		red = 0;
		green = 0;
		blue = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		//RGB (50,100,250) => HSV (159,203,249)
		red = 8'd50;
		green = 8'd100;
		blue = 8'd250;
		
		de_in = 1;
		hsync_in = 1;
		vsync_in = 1;
		#1;
		de_in = 0;
		hsync_in = 0;
		vsync_in = 0;

		clk = ~clk;
		#1;
		clk = ~clk;
		#1;	

		//RGB (0,0,50) => HSV (170,255,50)
		red = 8'd0;
		green = 8'd0;
		blue = 8'd50;

		clk = ~clk;
		#1;
		clk = ~clk;
		#1;	

		//RGB (0,50,0) => HSV (85,255,50)
		red = 8'd0;
		green = 8'd50;
		blue = 8'd0;

		clk = ~clk;
		#1;
		clk = ~clk;
		#1;	

//		//RGB (50,0,0) => HSV (0,255,50)
		red = 8'd50;
		green = 8'd0;
		blue = 8'd0;

		clk = ~clk;
		#1;
		clk = ~clk;
		#1;	

		//RGB (112,112,112) => HSV (0,0,112)
		red = 8'd112;
		green = 8'd112;
		blue = 8'd112;

		clk = ~clk;
		#1;
		clk = ~clk;
		#1;	
		
		//RGB (178,28,192) => HSV (208,217,192)
		red = 8'd178;
		green = 8'd28;
		blue = 8'd192;


		
		while(1)
		begin
		
			clk = ~clk;
			#1;
			
		end
	end
      
endmodule

