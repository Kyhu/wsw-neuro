`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:17:36 10/30/2014 
// Design Name: 
// Module Name:    rgb2hsv 
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
module rgb2hsv(
    input clk,
	 input ce,
    input de_in,
    input hsync_in,
    input vsync_in,
    input [7:0] red,
    input [7:0] green,
    input [7:0] blue,
    output [7:0] H,
    output [7:0] S,
    output [7:0] V,
    output de_out,
    output hsync_out,
    output vsync_out
    );
	 
	 // Dzielenie przez 255
	 
	 reg [7:0]divisor_255 = 8'd255;
	 
	 wire signed [9:0] r_01;
	 wire [7:0] q_r;
	 wire [7:0] f_r;
	 
	 divider_255 r_div_255 (
		.clk(clk), // input clk
		.rfd(rfd), // output rfd
		.dividend(red), // input [7 : 0] dividend
		.divisor(divisor_255), // input [7 : 0] divisor
		.quotient(q_r), // output [7 : 0] quotient
		.fractional(f_r)// output [7 : 0] fractional
	); 
	
	assign r_01[9] = 1'b0; //bit znaku -- tu na 0
	assign r_01[8] = q_r[0]; // czesc calkowita
	assign r_01[7:0] = f_r; // czesc ulamkowa
	 
	 wire signed [9:0] g_01;
	 wire [7:0] q_g;
	 wire [7:0] f_g;
	 
	 divider_255 g_div_255 (
		.clk(clk), // input clk
		.rfd(rfd), // output rfd
		.dividend(green), // input [7 : 0] dividend
		.divisor(divisor_255), // input [7 : 0] divisor
		.quotient(q_g), // output [7 : 0] quotient
		.fractional(f_g)  // output [7 : 0] fractional
	);
	
	assign g_01[9] = 1'b0; //bit znaku -- tu na 0
	assign g_01[8] = q_g[0]; // czesc calkowita
	assign g_01[7:0] = f_g; // czesc ulamkowa
	 
	 wire signed [9:0] b_01;
	 wire [7:0] q_b;
	 wire [7:0] f_b;
	 
	 divider_255 b_div_255 (
		.clk(clk), // input clk
		.rfd(rfd), // output rfd
		.dividend(blue), // input [7 : 0] dividend
		.divisor(divisor_255), // input [7 : 0] divisor
		.quotient(q_b), // output [7 : 0] quotient
		.fractional(f_b) // output [7 : 0] fractional
	); 
	
	assign b_01[9] = 1'b0; //bit znaku -- tu na 0
	assign b_01[8] = q_b[0]; // czesc calkowita
	assign b_01[7:0] = f_b; // czesc ulamkowa
	 
	 // MAX, MIN, DIFF
	 
	 wire signed [9:0] max_value;
	 wire [1:0] max_index;
	 
	 max max_calculator (
		 .clk(clk), 
		 .ce(ce), 
		 .red(r_01), 
		 .green(b_01), 
		 .blue(g_01), 
		 .value(max_value), 
		 .index(max_index)
    );
	 
	 wire signed [9:0] min_value;
	 wire [1:0] min_index;
	 
	 min min_calculator (
		 .clk(clk), 
		 .ce(ce), 
		 .red(r_01), 
		 .green(b_01), 
		 .blue(g_01), 
		 .value(min_value), 
		 .index(min_index)
    );

	wire signed [9:0] diff_value;

	subtracter sub_max_min (
	  .a(max_value), // input [9 : 0] a
	  .b(min_value), // input [9 : 0] b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(diff_value) // output [9 : 0] s
	);
	
	wire signed [9:0] h_01;
	wire signed [9:0] s_01;
	wire signed [9:0] v_01;
	
	// ###== V ==###
	
	assign v_01 = max_value;
	
	
	// ###== S ==###
	wire signed [9:0] s_01_q;
	wire signed [9:0] s_01_f;
		
	div_01 diff_div_v (
		.clk(clk), // input clk
		.rfd(rfd), // output rfd
		.dividend(diff_value), // input [9 : 0] dividend
		.divisor(v_01), // input [9 : 0] divisor
		.quotient(s_01_q), // output [9 : 0] quotient
		.fractional(s_01_f) // output [9 : 0] fractional
	); 		
		
	assign s_01 = (v_01 > 0) ? {s_01_q[0], s_01_f[8:1]} : 10'b0;
	
	// ###== H ==###

	// Odpowiednie odejmowanie zalezne od tego co jest max
	
	
	
	// Dzielenie przez diff
	
		div_01 diff_div_diff (
		.clk(clk), // input clk
		.rfd(rfd), // output rfd
		.dividend(...), // input [9 : 0] dividend
		.divisor(diff_value), // input [9 : 0] divisor
		.quotient(...), // output [9 : 0] quotient
		.fractional(...) // output [9 : 0] fractional
	); 	
	
	// Mno�enie przez 60	
	
	mult_60 your_instance_name (
	  .clk(clk), // input clk
	  .a(a), // input [9 : 0] a
	  .p(p) // output [15 : 0] p
	);
	
	// Dodawanie zale�e od tego co jest max
	
	// (Dodawanie 360 jesli H < 0)
	
	// Dzielenie przez 360	
	wire signed [15:0] h_01_q;
	wire signed [9:0] h_01_f;
	
	div_360 h_div_360 (
	.clk(clk), // input clk
	.rfd(rfd), // output rfd
	.dividend(h_360), // input [15 : 0] dividend
	.divisor(16'd360), // input [15 : 0] divisor
	.quotient(h_01_q), // output [15 : 0] quotient
	.fractional(h_01_f) // output [9 : 0] fractional
	);

	assign h_01 = {h_01_q[0], h_01_f[8:1]};
	
	// MULT TO RANGE 0-255
	
	mult_255 mult_H (
	  .a(h_01), // input [9 : 0] a
	  .p({H,4'b0}) // output [13 : 0] p
	);

	mult_255 mult_S (
	  .a(s_01), // input [9 : 0] a
	  .p({S,4'b0}) // output [13 : 0] p
	);

	mult_255 mult_V (
	  .a(v_01), // input [9 : 0] a
	  .p({V,4'b0}) // output [13 : 0] p
	);	
	 

	 assign de_out = de_in;
	 assign hsync_out = hsync_in;
	 assign vsync_out = vsync_in;


endmodule
