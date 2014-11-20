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

wire [7:0] y;
wire [7:0] cb;
wire [7:0] cr;

wire [7:0] H;
wire [7:0] S;
wire [7:0] V;

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
	
//	rgb2ycbcr converter (
//    .clk(clk), 
//    .ce({1'b1}), 
//    .de_in(de_in), 
//    .hsync_in(hsync_in), 
//    .vsync_in(vsync_in), 
//    .red(r_in), 
//    .green(g_in), 
//    .blue(b_in), 
//    .Y(y), 
//    .Cb(cb), 
//    .Cr(cr), 
//    .de_out(de_ycbcr_bin), 
//    .hsync_out(hsync_ycbcr_bin), 
//    .vsync_out(vsync_ycbcr_bin)
//    );	 

rgb2hsv instance_name (
    .clk(clk), 
    .ce(ce), 
    .de_in(de_in), 
    .hsync_in(hsync_in), 
    .vsync_in(vsync_in), 
    .red(r_in), 
    .green(g_in), 
    .blue(b_in), 
    .H(H), 
    .S(S), 
    .V(V), 
    .de_out(de_out), 
    .hsync_out(hsync_out), 
    .vsync_out(vsync_out)
    );

	 

// --------------------------------------
// HDMI output
// --------------------------------------
hdmi_out file_output (
    .hdmi_clk(clk), 
    .hdmi_vs(vsync_out), 
    .hdmi_de(de_out), 
    .hdmi_data({8'b0,H,S,V})
    );


endmodule
