`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:03:02 11/27/2014 
// Design Name: 
// Module Name:    neural_network 
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
module skin_binarization(
    input clk,
	 input ce,
    input de_in,
    input hsync_in,
    input vsync_in,
    input [7:0] R,
    input [7:0] G,
    input [7:0] B,
    input [7:0] H,
    input [7:0] S,
    input [7:0] Cb,
    input [7:0] Cr,
	 output [7:0] skin,
    output de_out,
    output hsync_out,
    output vsync_out
    );
	 
	 reg [16:0] threshold = 17'b00000010011001100;
	 wire [16:0] x1;
	 wire [16:0] x2;
	 wire [16:0] x3;
	 wire [16:0] x4;
	 wire [16:0] x5;
	 wire [16:0] x6;
	 wire [16:0] x7;
	 assign x1 = {5'b00000, R, 4'b0000};
	 assign x2 = {5'b00000, G, 4'b0000};
	 assign x3 = {5'b00000, B, 4'b0000};
	 assign x4 = {5'b00000, Cb, 4'b0000};
	 assign x5 = {5'b00000, Cr, 4'b0000};
	 assign x6 = {5'b00000, H, 4'b0000};
	 assign x7 = {5'b00000, S, 4'b0000};
	 
	 /*reg [7:0] divisor_255 = 8'd255;	 
	 
	 wire [16:0] x1;
	 wire [7:0] x1_q;
	 wire [11:0] x1_f;
	 
	 //LATENCY: 22
	 div_255_1 div_R (
		.clk(clk), // input clk
		.rfd(rfd), // output rfd
		.dividend(R), // input [7 : 0] dividend
		.divisor(divisor_255), // input [7 : 0] divisor
		.quotient(x1_q), // output [7 : 0] quotient
		.fractional(x1_f)// output [11 : 0] fractional
	 ); 
	 
	assign x1[16] = 1'b0; //bit znaku -- tu na 0
	assign x1[15:12] = x1_q[3:0]; // czesc calkowita
	assign x1[11:0] = x1_f; // czesc ulamkowa
	
	wire [16:0] x2;
	wire [7:0] x2_q;
	wire [11:0] x2_f;
	
	//LATENCY: 22
	 div_255_1 div_G (
		.clk(clk), // input clk
		.rfd(rfd), // output rfd
		.dividend(G), // input [7 : 0] dividend
		.divisor(divisor_255), // input [7 : 0] divisor
		.quotient(x2_q), // output [7 : 0] quotient
		.fractional(x2_f)// output [11 : 0] fractional
	 ); 
	 
	assign x2[16] = 1'b0; //bit znaku -- tu na 0
	assign x2[15:12] = x2_q[3:0]; // czesc calkowita
	assign x2[11:0] = x2_f; // czesc ulamkowa
	
	wire [16:0] x3;
	wire [7:0] x3_q;
	wire [11:0] x3_f;
	
		 //LATENCY: 22
	 div_255_1 div_B (
		.clk(clk), // input clk
		.rfd(rfd), // output rfd
		.dividend(B), // input [7 : 0] dividend
		.divisor(divisor_255), // input [7 : 0] divisor
		.quotient(x3_q), // output [7 : 0] quotient
		.fractional(x3_f)// output [11 : 0] fractional
	 ); 
	 
	assign x3[16] = 1'b0; //bit znaku -- tu na 0
	assign x3[15:12] = x3_q[3:0]; // czesc calkowita
	assign x3[11:0] = x3_f; // czesc ulamkowa
	
	wire [16:0] x4;
	wire [7:0] x4_q;
	wire [11:0] x4_f;
	 
		 //LATENCY: 22
	 div_255_1 div_Cb (
		.clk(clk), // input clk
		.rfd(rfd), // output rfd
		.dividend(Cb), // input [7 : 0] dividend
		.divisor(divisor_255), // input [7 : 0] divisor
		.quotient(x4_q), // output [7 : 0] quotient
		.fractional(x4_f)// output [11 : 0] fractional
	 ); 
	 
	assign x4[16] = 1'b0; //bit znaku -- tu na 0
	assign x4[15:12] = x4_q[3:0]; // czesc calkowita
	assign x4[11:0] = x4_f; // czesc ulamkowa
	
	wire [16:0] x5;
	wire [7:0] x5_q;
	wire [11:0] x5_f;
	 
		 //LATENCY: 22
	 div_255_1 div_Cr (
		.clk(clk), // input clk
		.rfd(rfd), // output rfd
		.dividend(Cr), // input [7 : 0] dividend
		.divisor(divisor_255), // input [7 : 0] divisor
		.quotient(x5_q), // output [7 : 0] quotient
		.fractional(x5_f)// output [11 : 0] fractional
	 ); 
	 
	assign x5[16] = 1'b0; //bit znaku -- tu na 0
	assign x5[15:12] = x5_q[3:0]; // czesc calkowita
	assign x5[11:0] = x5_f; // czesc ulamkowa
	
	wire [16:0] x6;
	wire [7:0] x6_q;
	wire [11:0] x6_f;
	 
		 //LATENCY: 22
	 div_255_1 div_H (
		.clk(clk), // input clk
		.rfd(rfd), // output rfd
		.dividend(H), // input [7 : 0] dividend
		.divisor(divisor_255), // input [7 : 0] divisor
		.quotient(x6_q), // output [7 : 0] quotient
		.fractional(x6_f)// output [11 : 0] fractional
	 ); 
	 
	assign x6[16] = 1'b0; //bit znaku -- tu na 0
	assign x6[15:12] = x6_q[3:0]; // czesc calkowita
	assign x6[11:0] = x6_f; // czesc ulamkowa
	
	wire [16:0] x7;
	wire [7:0] x7_q;
	wire [11:0] x7_f;
	 
	//LATENCY: 22
	 div_255_1 div_S (
		.clk(clk), // input clk
		.rfd(rfd), // output rfd
		.dividend(S), // input [7 : 0] dividend
		.divisor(divisor_255), // input [7 : 0] divisor
		.quotient(x7_q), // output [7 : 0] quotient
		.fractional(x7_f)// output [11 : 0] fractional
	 ); 
	 
	assign x7[16] = 1'b0; //bit znaku -- tu na 0
	assign x7[15:12] = x7_q[3:0]; // czesc calkowita
	assign x7[11:0] = x7_f; // czesc ulamkowa*/
	
	wire [16:0] y_out;
	
	//LATENCY: 34
	neural_network nn (
		.clk(clk), 
		.ce(ce), 
		.x1(x1), 
		.x2(x2), 
		.x3(x3), 
		.x4(x4), 
		.x5(x5), 
		.x6(x6), 
		.x7(x7), 
		.y_out(y_out)
	);

	assign skin	= (y_out > threshold) ? 8'd255 : 8'd0;	 
	 
	 // =============== DELAY NEURON ============	 
	
	delayx #(
		.N(3), 
		.DELAY(17)
	)
	sync_delay(
    .clk(clk), 
    .ce(ce), 
    .d({de_in, hsync_in, vsync_in}), 
    .q({de_out, hsync_out, vsync_out})
    );		

endmodule
