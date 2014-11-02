`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:37:33 11/02/2014 
// Design Name: 
// Module Name:    min 
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
module min(
    input clk,
	 input ce,
    input [9:0] red,
    input [9:0] green,
    input [9:0] blue,
	 output [9:0] value,
	 output [1:0] index
    );
	 
	 reg[9:0] r_value;
	 reg[1:0] r_index;
	 
	always @(posedge clk)
	begin
		if (red < green && red < blue)
		begin
			r_value = red;
			r_index = 2'd0;
		end
		else if (green < red && green < blue)
		begin
			r_value = green;
			r_index = 2'd1;
		end
		else if (blue < red && blue < green)
		begin
			r_value = blue;
			r_index = 2'd2;
		end	
	end
	
	assign value = r_value;
	assign index = r_index;
endmodule
