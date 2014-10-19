`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:55:48 03/19/2014 
// Design Name: 
// Module Name:    delay 
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
module delay(clk, ce, in, out);
	parameter N = 1;
	
	input clk;
	input ce;
	input [N-1:0]in;
	output [N-1:0]out;
	
	reg [N-1:0]val;
	
	always @(posedge clk)
	begin
		if(ce) val <= in;
		else val <= val;
	end
	
	assign out = val;
	
endmodule
