`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:44:48 05/08/2014 
// Design Name: 
// Module Name:    median5x5 
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
module median5x5(clk, ce, de_in, hsync_in, vsync_in, mask, de_out, hsync_out, vsync_out, pixel);
	parameter H_SIZE = 83;
	input clk;
	input ce;
	input de_in;
	input hsync_in;
	input vsync_in;
	input mask;
	output de_out;
	output hsync_out;
	output vsync_out;
	output [7:0]pixel;



endmodule
