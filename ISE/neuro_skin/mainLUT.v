`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:41:04 04/06/2014 
// Design Name: 
// Module Name:    mainLUT 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mainLUT(clk, a, qspo);
	input clk;
	input [7:0]a;
	output [7:0]qspo;
	
	LUT lut (
	  .a(a), // input [7 : 0] a
	  .clk(clk), // input clk
	  .qspo(qspo) // output [7 : 0] qspo
	);


endmodule
