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
	 
	 // LATENCY: 17
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
	 
	 // LATENCY: 17
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
	 
	 // LATENCY: 17
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
	 
	 // LATENCY: 1
	 max max_calculator (
		 .clk(clk), 
		 .ce(ce), 
		 .red(r_01), 
		 .green(g_01), 
		 .blue(b_01), 
		 .value(max_value), 
		 .index(max_index)
    );

	 wire signed [9:0] min_value;
	 wire [1:0] min_index;
	 
	 // LATENCY: 1
	 min min_calculator (
		 .clk(clk), 
		 .ce(ce), 
		 .red(r_01), 
		 .green(g_01), 
		 .blue(b_01), 
		 .value(min_value), 
		 .index(min_index)
    ); 

	wire signed [9:0] diff_value;

	// LATENCY: 2
	subtracter diff_calculator (
	  .a(max_value), // input [9 : 0] a
	  .b(min_value), // input [9 : 0] b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(diff_value) // output [10 : 0] s
	);
	
	wire signed [9:0] h_01;
	wire signed [9:0] s_01;
	wire signed [9:0] v_01;
	
	// ###== V ==###
	
	assign v_01 = max_value;	
	
	// ###== S ==###
	wire signed [9:0] s_01_q;
	wire signed [9:0] s_01_f;
		
	wire signed [9:0] v_01_d1;	
	
	delayx #(
		.N(10), 
		.DELAY(2)
	)
	v_01_delay1(
    .clk(clk), 
    .ce(ce), 
    .d(v_01), 
    .q(v_01_d1)
    );
		
	//LATENCY: 24
	div_01 diff_div_v (
		.clk(clk), // input clk
		.rfd(rfd), // output rfd
		.dividend(diff_value), // input [9 : 0] dividend
		.divisor(v_01_d1), // input [9 : 0] divisor
		.quotient(s_01_q), // output [9 : 0] quotient
		.fractional(s_01_f) // output [9 : 0] fractional
	); 		
		
	assign s_01 = (v_01 > 0) ? {1'b0, s_01_q[0], s_01_f[8:1]} : 10'b0;
	
	// ###== H ==###

	// Odpowiednie odejmowanie zalezne od tego co jest max
	
	wire signed [9:0] subtr_RGB_value;
	wire signed [9:0] r_01_d1;
	wire signed [9:0] g_01_d1;
	wire signed [9:0] b_01_d1;
	
	
	delayx #(
		.N(30), 
		.DELAY(1)
	)
	rgb_01_delay1(
    .clk(clk), 
    .ce(ce), 
    .d({r_01, g_01, b_01}), 
    .q({r_01_d1, g_01_d1, b_01_d1})
    );		
	
	// LATENCY: 1
	sub_RGB subtr_RGB (
		 .clk(clk), 
		 .ce(ce), 
		 .red(r_01_d1), 
		 .green(g_01_d1), 
		 .blue(b_01_d1), 
		 .max_index(max_index), 
		 .min_index(min_index), 
		 .value(subtr_RGB_value)
		 );
	
	// Wszystkie zmienne _01 są już ze znakiem!
	
	// Dzielenie przez diff
	wire signed [9:0] sub_diff_q;
	wire signed [9:0] sub_diff_f;
	wire signed [9:0] sub_diff;
	
	wire signed [9:0] subtr_RGB_value_d1;
	
	delayx #(
		.N(10), 
		.DELAY(1)
	)
	subtr_RGB_value_delay1(
    .clk(clk), 
    .ce(ce), 
    .d(subtr_RGB_value), 
    .q(subtr_RGB_value_d1)
    );
	
	//LATENCY: 24
	div_01 sub_div_diff (
		.clk(clk), // input clk
		.rfd(rfd), // output rfd
		.dividend(subtr_RGB_value_d1), // input [9 : 0] dividend
		.divisor(diff_value), // input [9 : 0] divisor
		.quotient(sub_diff_q), // output [9 : 0] quotient
		.fractional(sub_diff_f) // output [9 : 0] fractional
	); 	
	assign sub_diff[9] = (sub_diff_q[9]|sub_diff_f[9]);
	assign sub_diff[8] = (sub_diff_f[9] == 1'b0 & sub_diff_q[9] == 1'b0) ? 1'b0 : 1'b1;
	//assign sub_diff[7] = (sub_diff_f[9] == 1'b0 & sub_diff_q[0] == 1'b0) ? 1'b0 : 1'b1;
	assign sub_diff[7:0] = sub_diff_f[8:1];
	
	wire signed [15:0] multed_h_full;
	wire signed [11:0] multed_h_NC;
	
	// Mnozenie przez 60	
	// LATENCY: 1	
	mult_60 m60 (
  .clk(clk), // input clk
  .a(sub_diff), // input [9 : 0] a
  .p(multed_h_full) // output [15 : 0] p
  );

	// 12NC i 0 NU
	assign multed_h_NC = (multed_h_full[15] == 1) ? {4'b1111,multed_h_full[15:8]} : {4'b0000,multed_h_full[15:8]};
	
	// Dodawanie zalee od tego co jest max
	// (Dodawanie 360 jesli H < 0)

	wire [1:0] max_index_d1;
	
	delayx #(
		.N(2), 
		.DELAY(27)
	)
	min_index_delay1(
    .clk(clk), 
    .ce(ce), 
    .d(max_index), 
    .q(max_index_d1)
    );
	
	// LATENCY: 1
	wire signed [11:0] h_360;
	add_to_H add_to_h (
    .clk(clk), 
    .ce(ce), 
    .h(multed_h_NC), 
    .max_index(max_index_d1),  
    .value(h_360)
    );	
	
	// Dzielenie przez 360	
	wire signed [15:0] h_01_q;
	wire signed [9:0] h_01_f;
	
	// LATENCY: 30
	div_360 h_div_360 (
	.clk(clk), // input clk
	.rfd(rfd), // output rfd
	.dividend({4'd0,h_360}), // input [15 : 0] dividend
	.divisor(16'd360), // input [15 : 0] divisor
	.quotient(h_01_q), // output [15 : 0] quotient
	.fractional(h_01_f) // output [9 : 0] fractional
	);
	
	wire signed [9:0] diff_value_d1;
	
	delayx #(
		.N(10), 
		.DELAY(56)
	)
	diff_value_delay1(
    .clk(clk), 
    .ce(ce), 
    .d(diff_value), 
    .q(diff_value_d1)
    );

	assign h_01 = (diff_value_d1 == 0) ? 10'b0 : {h_01_q[0], h_01_f[8:1]};
	
	// MULT TO RANGE 0-255
	
	wire signed [9:0] v_01_d2;
	wire signed [9:0] s_01_d1;
	
	delayx #(
		.N(10), 
		.DELAY(58)
	)
	v_01_delay2(
    .clk(clk), 
    .ce(ce), 
    .d(v_01), 
    .q(v_01_d2)
    );
	 
	delayx #(
		.N(10), 
		.DELAY(32)
	)
	s_01_delay1(
    .clk(clk), 
    .ce(ce), 
    .d(s_01), 
    .q(s_01_d1)
    );
	
	wire signed [17:0] temp_H;
	wire signed [17:0] temp_S;
	wire signed [17:0] temp_V;
	
	// LATENCY: 0
	mult_255 mult_H (
	  .a(h_01), // input [9 : 0] a
	  .p(temp_H) // output [17 : 0] p
	);

	assign H = temp_H[15:8];

	// LATENCY: 0
	mult_255 mult_S (
	  .a(s_01_d1), // input [9 : 0] a
	  .p(temp_S) // output [17 : 0] p
	);
	
	assign S = temp_S[15:8];

	// LATENCY: 0
	mult_255 mult_V (
	  .a(v_01_d2), // input [9 : 0] a
	  .p(temp_V) // output [17 : 0] p
	);	
	
	assign V = temp_V[15:8];
	 
	//============ SYNC ===============
	
	delayx #(
		.N(3), 
		.DELAY(77)
	)
	sync_delay(
    .clk(clk), 
    .ce(ce), 
    .d({de_in, hsync_in, vsync_in}), 
    .q({de_out, hsync_out, vsync_out})
    );

endmodule
