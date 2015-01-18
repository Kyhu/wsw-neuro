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
module median5x5(clk, ce, de_in, hsync_in, vsync_in, pixel_in, de_out, hsync_out, vsync_out, pixel_out);
	parameter H_SIZE = 83;
	input clk;
	input ce;
	input de_in;
	input hsync_in;
	input vsync_in;
	input [7:0]pixel_in;
	output de_out;
	output hsync_out;
	output vsync_out;
	output [7:0]pixel_out;
	
	reg [3:0]d_pixels[24:0];
	reg [3:0]subtotals[4:0];
	reg [5:0]total;
	
	wire mask;
	wire [3:0]d_line_in[3:0];
	wire [3:0]d_line_out[3:0];
	
	wire context_valid;
	wire context_valid_d;
	
	wire [2:0]central_pixel_sync;
	
	// -- COLOR TO MASK
	
	assign mask = (pixel_in == 8'd255) ? 1'b1 : 1'b0;
	
	// -- LINE DELAYS
	delayLinieBRAM_WP d_line (
    .clk(clk), 
    .rst(1'b0), 
    .ce(1'b1), 
    .din({d_line_in[0],d_line_in[1],d_line_in[2],d_line_in[3]}), 
    .dout({d_line_out[0],d_line_out[1],d_line_out[2],d_line_out[3]}), 
    .h_size(H_SIZE-5)
    );
	 
	 assign d_line_in[0] = d_pixels[4];
	 assign d_line_in[1] = d_pixels[9];
	 assign d_line_in[2] = d_pixels[14];
	 assign d_line_in[3] = d_pixels[19];
	
	always @(posedge clk)
	begin
	
		// -- REG DELAYS
		d_pixels[0] <= {mask,de_in,hsync_in,vsync_in};
		d_pixels[1] <= d_pixels[0];
		d_pixels[2] <= d_pixels[1];
		d_pixels[3] <= d_pixels[2];
		d_pixels[4] <= d_pixels[3];
		
		d_pixels[5] <= d_line_out[0];
		d_pixels[6] <= d_pixels[5];
		d_pixels[7] <= d_pixels[6];
		d_pixels[8] <= d_pixels[7];
		d_pixels[9] <= d_pixels[8];	
		
		d_pixels[10] <= d_line_out[1];
		d_pixels[11] <= d_pixels[10];
		d_pixels[12] <= d_pixels[11];
		d_pixels[13] <= d_pixels[12];
		d_pixels[14] <= d_pixels[13];
		
		d_pixels[15] <= d_line_out[2];
		d_pixels[16] <= d_pixels[15];
		d_pixels[17] <= d_pixels[16];
		d_pixels[18] <= d_pixels[17];
		d_pixels[19] <= d_pixels[18];
		
		d_pixels[20] <= d_line_out[3];
		d_pixels[21] <= d_pixels[20];
		d_pixels[22] <= d_pixels[21];
		d_pixels[23] <= d_pixels[22];
		d_pixels[24] <= d_pixels[23];
		
		// -- SUMMING - LATENCY 2
		subtotals[0] <= d_pixels[0][3] + d_pixels[1][3] + d_pixels[2][3] + d_pixels[3][3] + d_pixels[4][3];
		subtotals[1] <= d_pixels[5][3] + d_pixels[6][3] + d_pixels[7][3] + d_pixels[8][3] + d_pixels[9][3];
		subtotals[2] <= d_pixels[10][3] + d_pixels[11][3] + d_pixels[12][3] + d_pixels[13][3] + d_pixels[14][3];
		subtotals[3] <= d_pixels[15][3] + d_pixels[16][3] + d_pixels[17][3] + d_pixels[18][3] + d_pixels[19][3];
		subtotals[4] <= d_pixels[20][3] + d_pixels[21][3] + d_pixels[22][3] + d_pixels[23][3] + d_pixels[24][3];
		
		total <= subtotals[0] + subtotals[1] + subtotals[2] + subtotals[3] + subtotals[4];
	
	end
	
	// -- CONTEXT VALID FLAG
	assign context_valid = d_pixels[0][2] & d_pixels[1][2] & d_pixels[2][2] & d_pixels[3][2] & d_pixels[4][2]
										& d_pixels[5][2] & d_pixels[6][2] & d_pixels[7][2] & d_pixels[8][2] & d_pixels[9][2]
										& d_pixels[10][2] & d_pixels[11][2] & d_pixels[12][2] & d_pixels[13][2] & d_pixels[14][2]
										& d_pixels[15][2] & d_pixels[16][2] & d_pixels[17][2] & d_pixels[18][2] & d_pixels[19][2]
										& d_pixels[20][2] & d_pixels[21][2] & d_pixels[22][2] & d_pixels[23][2] & d_pixels[24][2];
										
	// -- CENTAL PIXEL SYNC
	assign central_pixel_sync = d_pixels[12][2:0];
										
	
	// -- DELAY COUSED BY SUMMING
	delayx 
	#(
		.N(4),
		.DELAY(2)
	) context_valid_delay (
    .clk(clk), 
    .ce(1'b1), 
    .d({context_valid, central_pixel_sync}), 
    .q({context_valid_d, de_out, hsync_out, vsync_out})
    );	 

	// RESULT
	
	assign pixel_out = (total > 6'd12 && context_valid_d == 1'b1) ? 255 : 0;
	


endmodule
