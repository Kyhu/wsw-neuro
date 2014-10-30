`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:17:36 10/30/2014 
// Design Name: 
// Module Name:    rgb2hsv 
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
module rgb2hsv(
    input clk,
	 input ce,
    input de_in,
    input hsync_in,
    input vsync_in,
    input [7:0] red,
    input [7:0] green,
    input [7:0] blue,
    output [7:0] H,
    output [7:0] S,
    output [7:0] V,
    output de_out,
    output hsync_out,
    output vsync_out
    );
	 
	 
	 
	 
	 assign H = blue;
	 assign S = red;
	 assign V = green;
	 
	 assign de_out = de_in;
	 assign hsync_out = hsync_in;
	 assign vsync_out = vsync_in;


endmodule
