`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:43:11 04/17/2014 
// Design Name: 
// Module Name:    bin 
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
module bin(clk, cb, cr, de_in, hsync_in, vsync_in, bin_rgb, de_out, hsync_out, vsync_out);
	parameter CB_MIN = 105;
	parameter CB_MAX = 135;
	parameter CR_MIN = 125;
	parameter CR_MAX = 165;
	
	input clk;
	input [7:0]cb;
	input [7:0]cr;
	input de_in;
	input hsync_in;
	input vsync_in;
	output [7:0]bin_rgb;
	output de_out;
	output hsync_out;
	output vsync_out;
	
	reg [7:0] r_bin;
	
	always @(posedge clk)
	begin
		if((cb > CB_MIN) && (cb < CB_MAX) && (cr > CR_MIN) && (cr < CR_MAX))
		begin
			r_bin = 8'd255;
		end
		else r_bin = 8'd0;
		
	end
	
	assign bin_rgb = r_bin;
	
	
	/*delayx #(
		.N(3),
		.DELAY(1)
	)
	sync_delay(
    .clk(clk), 
    .ce(ce), 
    .d({de_in, hsync_in, vsync_in}), 
    .q({de_out, hsync_out, vsync_out})
    );*/
	 
	 assign de_out = de_in;
	 assign hsync_out = hsync_in;
	 assign vsync_out = vsync_in; 



endmodule
