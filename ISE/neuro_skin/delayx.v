`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:50:07 03/19/2014 
// Design Name: 
// Module Name:    delayx 
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
module delayx (clk, ce, d, q);
	parameter N = 1;
	parameter DELAY = 0;
	
	input clk;
	input ce;
	input [N-1:0]d;
	output [N-1:0]q;

	wire [N-1:0] tdata [DELAY:0];
	
	assign tdata[0] = d;

	genvar i;
	generate
		for(i = 0; i < DELAY; i = i+1)
		begin
		
		delay #(N) delay_i (clk, ce, tdata[i], tdata[i+1]);

		end
	endgenerate
	
	assign q = tdata[DELAY];
	
endmodule
