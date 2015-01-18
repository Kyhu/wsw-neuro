`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:25:46 01/18/2015
// Design Name:   skin_binarization
// Module Name:   /home/kyhu/Workspace/WSW/wsw-neuro/ISE/skin_bin_test/tb_skin_binarization.v
// Project Name:  skin_bin_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: skin_binarization
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_skin_binarization;

	// Inputs
	reg clk;
	reg ce;
	reg de_in;
	reg hsync_in;
	reg vsync_in;
	reg [7:0] R;
	reg [7:0] G;
	reg [7:0] B;
	reg [7:0] H;
	reg [7:0] S;
	reg [7:0] Cb;
	reg [7:0] Cr;

	// Outputs
	wire [7:0] skin;
	wire de_out;
	wire hsync_out;
	wire vsync_out;

	// Instantiate the Unit Under Test (UUT)
	skin_binarization uut (
		.clk(clk), 
		.ce(ce), 
		.de_in(de_in), 
		.hsync_in(hsync_in), 
		.vsync_in(vsync_in), 
		.R(R), 
		.G(G), 
		.B(B), 
		.H(H), 
		.S(S), 
		.Cb(Cb), 
		.Cr(Cr), 
		.skin(skin), 
		.de_out(de_out), 
		.hsync_out(hsync_out), 
		.vsync_out(vsync_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		ce = 0;
		de_in = 0;
		hsync_in = 0;
		vsync_in = 0;
		R = 0;
		G = 0;
		B = 0;
		H = 0;
		S = 0;
		Cb = 0;
		Cr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		clk = 1;
		ce = 1;
		de_in = 1;
		hsync_in = 1;
		vsync_in = 1;

		R = 8'd 222;
		G = 8'd 151;
		B = 8'd 99;
		Cb = 8'd 90;
		Cr = 8'd 168;
		H = 8'd 25;
		S = 8'd 55;


		clk = ~clk; #1;
		clk = ~clk; #1;


		de_in = ~de_in;
		hsync_in = ~hsync_in;
		vsync_in = ~vsync_in;
		R = 8'd 15;
		G = 8'd 187;
		B = 8'd 54;
		Cb = 8'd 91;
		Cr = 8'd 53;
		H = 8'd 134;
		S = 8'd 92;

		clk = ~clk; #1;
		clk = ~clk; #1;

		de_in = ~de_in;
		hsync_in = ~hsync_in;
		vsync_in = ~vsync_in;
		R = 8'd 50;
		G = 8'd 66;
		B = 8'd 63;
		Cb = 8'd 129;
		Cr = 8'd 120;
		H = 8'd 169;
		S = 8'd 24;

		clk = ~clk; #1;
		clk = ~clk; #1;
		
		de_in = ~de_in;
		hsync_in = ~hsync_in;
		vsync_in = ~vsync_in;
		R = 8'd 148;
		G = 8'd 99;
		B = 8'd 56;
		Cb = 8'd 98;
		Cr = 8'd 156;
		H = 8'd 28;
		S = 8'd 62;	
		
		while(1)
		begin
			clk = ~clk; #1;
		end
	end
      
endmodule

