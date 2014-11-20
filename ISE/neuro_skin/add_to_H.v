`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:32:54 11/17/2014 
// Design Name: 
// Module Name:    add_to_H 
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
module add_to_H(
    input clk,
	 input ce,
    input [9:0] h,
	 input [1:0] max_index,
	 output [9:0] value
    );
	 
	 reg[9:0] r_value;
	 
	 always @(posedge clk)
	 begin
			if (max_index == 0)
			begin
				r_value = h;
			end
			else if (max_index == 1)
			begin
				r_value = h + 10'd120;
			end
			else if (max_index == 2)
			begin
				r_value = h + 10'd240;
			end

			if (r_value < 0) r_value = r_value - 10'd360;
	end
	
	assign value = r_value;

endmodule