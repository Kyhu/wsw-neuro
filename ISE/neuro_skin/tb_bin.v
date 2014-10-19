`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:57:55 04/21/2014
// Design Name:   bin
// Module Name:   /home/kyhu/Workspace/ISE/hdmi_bin/tb_bin.v
// Project Name:  hdmi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bin
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_bin;

	// Inputs
	reg clk;
	reg [7:0] cb;
	reg [7:0] cr;
	reg de_in;
	reg hsync_in;
	reg vsync_in;

	// Outputs
	wire [7:0] bin_rgb;
	wire de_out;
	wire hsync_out;
	wire vsync_out;

	// Instantiate the Unit Under Test (UUT)
	bin uut (
		.clk(clk), 
		.cb(cb), 
		.cr(cr), 
		.de_in(de_in), 
		.hsync_in(hsync_in), 
		.vsync_in(vsync_in), 
		.bin_rgb(bin_rgb), 
		.de_out(de_out), 
		.hsync_out(hsync_out), 
		.vsync_out(vsync_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		cb = 0;
		cr = 0;
		de_in = 0;
		hsync_in = 0;
		vsync_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		cb = 8'd20;
		cr = 8'd200;
		clk = ~clk;
		#1;
		clk = ~clk;
		#1;
		clk = ~clk;
		#1;
		clk = ~clk;
		#1;
		
		cb = 8'd120;
		cr = 8'd200;
		clk = ~clk;
		#1;
		clk = ~clk;
		#1;
		clk = ~clk;
		#1;
		clk = ~clk;
		#1;
		
		cb = 8'd20;
		cr = 8'd140;
		clk = ~clk;
		#1;
		clk = ~clk;
		#1;
		clk = ~clk;
		#1;
		clk = ~clk;
		#1;
		
		cb = 8'd120;
		cr = 8'd140;
		clk = ~clk;
		#1;
		clk = ~clk;
		#1;
		clk = ~clk;
		#1;
		clk = ~clk;
		#1;
		

	end
      
endmodule

