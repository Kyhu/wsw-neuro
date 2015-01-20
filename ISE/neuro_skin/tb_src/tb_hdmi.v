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

wire de_out;
wire hsync_out;
wire vsync_out;

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
	
	
	// YCbCR Conversion
	wire [7:0]   Y;
	wire [7:0]   Cb;
	wire [7:0]   Cr;
 
 	wire  de_ycbcr;
	wire  hsync_ycbcr;
	wire  vsync_ycbcr;	
	
	rgb2ycbcr ycbcr (
    .clk(clk), 
    .ce({1'b1}), 
    .de_in(de_in), 
    .hsync_in(hsync_in), 
    .vsync_in(vsync_in), 
    .red(r_in), 
    .green(g_in), 
    .blue(b_in), 
    .Y(Y), 
    .Cb(Cb), 
    .Cr(Cr), 
    .de_out(de_ycbcr), 
    .hsync_out(hsync_ycbcr), 
    .vsync_out(vsync_ycbcr)
    );	 
	 
	// HSV Conversion
	wire [7:0]   H;
	wire [7:0]   S;
	wire [7:0]   V;
 
 	wire  de_hsv;
	wire  hsync_hsv;
	wire  vsync_hsv;
	 

	rgb2hsv hsv (
    .clk(clk), 
    .ce({1'b1}), 
    .de_in(de_in), 
    .hsync_in(hsync_in), 
    .vsync_in(vsync_in), 
    .red(r_in), 
    .green(g_in), 
    .blue(b_in), 
    .H(H), 
    .S(S), 
    .V(V), 
    .de_out(de_hsv), 
    .hsync_out(hsync_hsv), 
    .vsync_out(vsync_hsv)
    );
	 
	//DELAY RGB AND YCBR to sync with HSV and syncs signal!
	
	wire [7:0] sync_R;
	wire [7:0] sync_G;
	wire [7:0] sync_B;	
	 
	delayx #(
		.N(24),
		.DELAY(77)
	)
	rgb_delay(
    .clk(clk), 
    .ce(ce), 
    .d({r_in, g_in, b_in}), 
    .q({sync_R, sync_G, sync_B})
    );

	wire [7:0] sync_Y;
	wire [7:0] sync_Cb;
	wire [7:0] sync_Cr;
	 
	delayx #(
		.N(24),
		.DELAY(70)
	)
	ycbcr_delay(
    .clk(clk), 
    .ce(ce), 
    .d({Y, Cb, Cr}), 
    .q({sync_Y, sync_Cb, sync_Cr})
    );
	
	wire [7:0]  skin;
 
 	wire  de_skin;
	wire  hsync_skin;
	wire  vsync_skin;
	
	skin_binarization bin (
    .clk(clk), 
    .ce({1'b1}), 
    .de_in(de_hsv), 
    .hsync_in(hsync_hsv), 
    .vsync_in(vsync_hsv), 
    .R(sync_R), 
    .G(sync_G), 
    .B(sync_B), 
    .H(H), 
    .S(S), 
    .Cb(sync_Cb), 
    .Cr(sync_Cr), 
    .skin(skin), 
    .de_out(de_skin), 
    .hsync_out(hsync_skin), 
    .vsync_out(vsync_skin)
    );
	 
	//-- MEDIAN FILTERATION
	wire [7:0] filtered;
	
	wire  de_med_centr;
	wire  hsync_med_centr;
	wire  vsync_med_centr;
	
	median5x5 median (
    .clk(clk), 
    .ce({1'b1}), 
    .de_in(de_skin), 
    .hsync_in(hsync_skin), 
    .vsync_in(vsync_skin), 
    .pixel_in(skin), 
    .de_out(de_med_centr), 
    .hsync_out(hsync_med_centr), 
    .vsync_out(vsync_med_centr), 
    .pixel_out(filtered)
    );	
	 
	 //Centroid
	
	wire [7:0] r_centroid;
	wire [7:0] g_centroid;
	wire [7:0] b_centroid;
	
	wire  de_out;
	wire  hsync_out;
	wire  vsync_out;	 
	
	wire [10:0]xg;
	wire [10:0]yg;	 
	 
	 centroid centroid (
    .clk(clk), 
    .ce({1'b1}), 
    .de(de_med_centr), 
    .hsync(hsync_med_centr), 
    .vsync(vsync_med_centr), 
    .color(filtered), 
    .x(xg), 
    .y(yg)
    );	 	 
	 
	 visualize visualize(
    .clk(clk), 
    .de_in(de_skin), 
    .hsync_in(hsync_skin),
    .vsync_in(vsync_skin),
    .x(xg), 
    .y(yg), 
	 .de_out(de_out), 
    .hsync_out(hsync_out), 
    .vsync_out(vsync_out), 
    .mask(filtered), 
    .red_out(r_centroid), 
    .green_out(g_centroid), 
    .blue_out(b_centroid)
    );

	 

// --------------------------------------
// HDMI output
// --------------------------------------
hdmi_out file_output (
    .hdmi_clk(clk), 
    .hdmi_vs(vsync_out), 
    .hdmi_de(de_out), 
    .hdmi_data({8'b0,r_centroid,g_centroid,b_centroid})
    );


endmodule
