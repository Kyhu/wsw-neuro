`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:43:39 04/06/2014
// Design Name:   mainLUT
// Module Name:   /home/kyhu/Workspace/ISE/hdmi/tb_mainLUT.v
// Project Name:  hdmi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mainLUT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mainLUT;

	// Inputs
	reg clk;
	reg [7:0] a;

	// Outputs
	wire [7:0] qspo;

	// Instantiate the Unit Under Test (UUT)
	mainLUT uut (
		.clk(clk), 
		.a(a), 
		.qspo(qspo)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		a = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 8'b10101010;
        
		while(1)
		begin
			clk = ~clk;
			#10;
		end
		
	end
      
endmodule

