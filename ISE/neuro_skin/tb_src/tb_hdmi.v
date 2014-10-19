`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Tomasz Kryjak
// 
// Create Date:    11:29:28 10/28/2013 
// Design Name: 
// Module Name:    tb_filter 
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
module tb_hdmi(
    );
	 

wire clk;

wire de_in;
wire hsync_in;
wire vsync_in;

wire [7:0] r_in;
wire [7:0] g_in;
wire [7:0] b_in;

wire de_ycbcr_bin;
wire hsync_ycbcr_bin;
wire vsync_ycbcr_bin;

wire [7:0] y;
wire [7:0] cb;
wire [7:0] cr;

wire de_out;
wire hsync_out;
wire vsync_out;

wire [7:0] bined;

wire [7:0] r_out;
wire [7:0] g_out;
wire [7:0] b_out;




// --------------------------------------
// HDMI input
// --------------------------------------
hdmi_in file_input (
    .hdmi_clk(clk), 
    .hdmi_de(de_in), 
    .hdmi_hs(hsync_in), 
    .hdmi_vs(vsync_in), 
    .hdmi_r(r_in), 
    .hdmi_g(g_in), 
    .hdmi_b(b_in)
    );
	 

	 
	 
// --------------------------------------
// Output assigment
// --------------------------------------
	/*assign de_out = de_in;
	assign hsync_out = hsync_in;
	assign vsync_out = vsync_in;

	assign r_out = r_in;
	assign g_out = g_in;
	assign b_out = b_in;	 */
	 

	/*reg r_hsync;
	reg r_vsync;
	reg r_de;*/
 
  //lutowanie 1
	/*LUT red_lut (
	  .a(r_in), // input [7 : 0] a
	  .clk(clk), // input clk
	  .qspo(r_out) // output [7 : 0] qspo
	);
	
	LUT green_lut (
	  .a(g_in), // input [7 : 0] a
	  .clk(clk), // input clk
	  .qspo(g_out) // output [7 : 0] qspo
	);
	
	LUT blue_lut (
	  .a(b_in), // input [7 : 0] a
	  .clk(clk), // input clk
	  .qspo(b_out) // output [7 : 0] qspo
	);*/
 
 
 	//binaryzacja 

	/*wire [7:0]   proc_bin;
 
 
	bin_lut red_lut (
	  .a(r_in), // input [7 : 0] a
	  .clk(clk), // input clk
	  .qspo(r_out) // output [7 : 0] qspo
	);
	
	bin_lut green_lut (
	  .a(g_in), // input [7 : 0] a
	  .clk(clk), // input clk
	  .qspo(g_out) // output [7 : 0] qspo
	);
	
	bin_lut blue_lut (
	  .a(b_in), // input [7 : 0] a
	  .clk(clk), // input clk
	  .qspo(b_out) // output [7 : 0] qspo
	);
	
	assign proc_bin = r_out & g_out & b_out;
 
 
	//Sync
	always @(posedge clk)
	begin
		r_hsync <= hsync_in;
		r_vsync <= vsync_in;
		r_de <= de_in;
		
	end
	 
	 
	assign de_out = r_de;
	assign hsync_out = r_hsync;
	assign vsync_out = r_vsync;*/
	
	rgb2ycbcr converter (
    .clk(clk), 
    .ce({1'b1}), 
    .de_in(de_in), 
    .hsync_in(hsync_in), 
    .vsync_in(vsync_in), 
    .red(r_in), 
    .green(g_in), 
    .blue(b_in), 
    .Y(y), 
    .Cb(cb), 
    .Cr(cr), 
    .de_out(de_ycbcr_bin), 
    .hsync_out(hsync_ycbcr_bin), 
    .vsync_out(vsync_ycbcr_bin)
    );
	 
	 
	 bin bin_test (
    .clk(clk), 
    .cb(cb), 
    .cr(cr), 
    .de_in(de_ycbcr_bin), 
    .hsync_in(hsync_ycbcr_bin), 
    .vsync_in(vsync_ycbcr_bin), 
    .bin_rgb(bined), 
    .de_out(de_out), 
    .hsync_out(hsync_out), 
    .vsync_out(vsync_out)
    );
	 
	wire [10:0]xg;
	wire [10:0]yg;
	 
	 
	 centroid #(
	 .IMG_H(64),
	 .IMG_W(64)
	 ) centroid_test (
    .clk(clk), 
    .ce({1'b1}), 
    .de(de_out), 
    .hsync(hsync_out), 
    .vsync(vsync_out), 
    .color(bined), 
    .x(xg), 
    .y(yg)
    );
	 
	 
	 
	 visualize #(
	 .IMG_H(64),
	 .IMG_W(64)
	 ) visualize_test (
    .clk(clk), 
    .de(de_out), 
    .hsync(hsync_out),
    .vsync(vsync_out),
    .x(xg), 
    .y(yg), 
    .mask(bined), 
    .red_out(r_out), 
    .green_out(g_out), 
    .blue_out(b_out)
    );

	 
	 

// --------------------------------------
// HDMI output
// --------------------------------------
hdmi_out file_output (
    .hdmi_clk(clk), 
    .hdmi_vs(vsync_out), 
    .hdmi_de(de_out), 
    .hdmi_data({8'b0,r_out,g_out,b_out})
    );


endmodule
