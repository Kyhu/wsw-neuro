`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:59:57 05/07/2014 
// Design Name: 
// Module Name:    visualize 
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
module visualize(clk, de_in, hsync_in, vsync_in, x, y, mask, de_out, hsync_out, vsync_out, red_out, green_out, blue_out);
	parameter IMG_W = 720;
	parameter IMG_H = 576;
	input clk;
	input de_in;
	input hsync_in;
	input vsync_in;
	input [11:0]x;
	input [11:0]y;
	input [7:0]mask;
	output de_out;
	output hsync_out;
	output vsync_out;
	output [7:0]red_out;
	output [7:0]green_out;
	output [7:0]blue_out;
	
	reg [11:0]h_cnt = 0;
	reg [11:0]v_cnt = 0;
	
	//======== Column and rows counters ======
	always @(posedge clk)
	begin
		if (vsync_in == 0) 
		begin
			h_cnt <= 0;
			v_cnt <= 0;			
		end
		else
		begin
			if(de_in == 1) h_cnt <= h_cnt + 1;
			if(h_cnt == IMG_W - 1) 
			begin 
				h_cnt <= 0;
				v_cnt <= v_cnt + 1;
				if(v_cnt == IMG_H - 1) v_cnt <= 0;			
			end			
		end
	end
	
	assign red_out = ((h_cnt == x || v_cnt == y) ? 8'hff : mask);
	assign green_out = ((h_cnt == x || v_cnt == y) ? 8'h00 : mask);
	assign blue_out = ((h_cnt == x || v_cnt == y) ? 8'h00 : mask);
	
	/*delayx #(
		.N(3),
		.DELAY(2)
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
