`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:47:43 11/13/2014 
// Design Name: 
// Module Name:    sub_RGB 
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
module sub_RGB(
    input clk,
	 input ce,
    input [9:0] red,
    input [9:0] green,
    input [9:0] blue,
	 input [1:0] max_index,
	 input [1:0] min_index,
	 output [10:0] value
    );
	 
	 reg[10:0] r_value;
	 
	 always @(posedge clk)
	 begin
		if (min_index == max_index)
		begin
			r_value = 10'd0;
		end
		else
		begin
			if (max_index == 0)
			begin
				r_value = green - blue;
			end
			else if (max_index == 1)
			begin
				r_value = blue - red;
			end
			else if (max_index == 2)
			begin
				r_value = red - green;
			end	
		end
	end
	
	assign value = r_value;

endmodule
