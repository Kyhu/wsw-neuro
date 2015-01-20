`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:47:28 01/20/2015
// Design Name:   nn_mult
// Module Name:   /home/kyhu/Workspace/WSW/wsw-neuro/ISE/neuro_skin/tb_nn_mult.v
// Project Name:  hdmi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: nn_mult
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_nn_mult;

	// Inputs
	reg clk;
	reg ce;
	reg [135:0] x;
	reg [135:0] w;

	// Outputs
	wire [16:0] total;
	
	integer i = 0;

	// Instantiate the Unit Under Test (UUT)
	nn_mult uut (
		.clk(clk), 
		.ce(ce), 
		.x(x), 
		.w(w), 
		.total(total)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		ce = 1;
		x = 0;
		w = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		x = 136'b 0000000000000000100000000000000010000000000000000110000000000000010000000000000000101000000000000001100000000000000011100000000000001000;
		w = 136'b 0000000000000001000000000000000011000000000000001000000000000000010100000000000000110000000000000001110000000000000100000000000000001001;
		
		clk = ~clk; #1;
		clk = ~clk; #1;
		
		x = 136'b 0000000000000000100000000000000010000000000000000110000000000000010000000000000000101000000000000001100000000000000011100000000000001000;
		w = 136'b 0000000000000000100000000000000010000000000000000110000000000000010000000000000000101000000000000001100000000000000011100000000000001000;

		while(i<200)
		begin
			clk = ~clk; #1;
			i = i+1;
		end
	
	end
      
endmodule

