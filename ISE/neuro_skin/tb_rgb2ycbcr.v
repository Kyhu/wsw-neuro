`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:16:57 04/12/2014
// Design Name:   rgb2ycbcr
// Module Name:   /home/kyhu/Workspace/ISE/hdmi/tb_rgb2ycbcr.v
// Project Name:  hdmi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rgb2ycbcr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_rgb2ycbcr;

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
	wire [7:0] Y;
	wire [7:0] Cb;
	wire [7:0] Cr;
	wire de_out;
	wire hsync_out;
	wire vsync_out;

	// Instantiate the Unit Under Test (UUT)
	rgb2ycbcr uut (
		.clk(clk), 
		.ce(ce),
		.de_in(de_in), 
		.hsync_in(hsync_in), 
		.vsync_in(vsync_in), 
		.red(red), 
		.green(green), 
		.blue(blue), 
		.Y(Y), 
		.Cb(Cb), 
		.Cr(Cr), 
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
        
		red = 8'b01101000;
		green = 8'b01000000;
		blue = 8'b01000011;
		de_in = 1;
		hsync_in = 1;
		vsync_in = 1;
		#1;
		de_in = 0;
		hsync_in = 0;
		vsync_in = 0;
		
		while(1)
		begin
		
			clk = ~clk;
			#1;
			
		end

	end
      
endmodule

