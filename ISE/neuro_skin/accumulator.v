`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:05:07 04/02/2014 
// Design Name: 
// Module Name:    accumulator 
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
module accumulator(clk, rst, ce, A, Y);
	input clk;
	input rst;
	input ce;
	input [9:0]A;
	output [27:0]Y;

	reg [27:0]Y_reg;
	wire signed [27:0]sum_o;
	
	//Jaka dlugosc wektorow?
	
	sum my_sum(
	  .a(A), // input [9 : 0] a
	  .b(Y_reg), // input [27 : 0] b
	  .s(sum_o) // output [27 : 0] s
	);
	
	always @(posedge clk)
	begin
		if (rst == 1) Y_reg <= 0;
		else if(ce == 1) Y_reg <= sum_o;	
	
	end	

	assign Y = Y_reg;

endmodule
