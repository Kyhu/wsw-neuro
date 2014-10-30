`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:42:46 04/10/2014 
// Design Name: 
// Module Name:    rgb2ycbcr 
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
module rgb2ycbcr(
    input clk,
	 input ce,
    input de_in,
    input hsync_in,
    input vsync_in,
    input [7:0] red,
    input [7:0] green,
    input [7:0] blue,
    output [7:0] Y,
    output [7:0] Cb,
    output [7:0] Cr,
    output de_out,
    output hsync_out,
    output vsync_out
    );
	 
	 reg [17:0]A_11 = 18'b001001100100010111;
	 reg [17:0]A_12 = 18'b010010110010001011;
	 reg [17:0]A_13 = 18'b000011101001011110;
	 reg [17:0]A_21 = 18'b111010100110100000;
	 reg [17:0]A_22 = 18'b110101011001100000;
	 reg [17:0]A_23 = 18'b010000000000000000;
	 reg [17:0]A_31 = 18'b010000000000000000;
	 reg [17:0]A_32 = 18'b110010100110100000;
	 reg [17:0]A_33 = 18'b111101011001100000; 
	 reg [8:0]B = 9'b010000000; 
	 
	 
	 wire signed [35:0]Y_R_w;
	 wire signed [35:0]Y_G_w;
	 wire signed [35:0]Y_B_w;
	 wire signed [35:0]Cb_R_w;
	 wire signed [35:0]Cb_G_w;
	 wire signed [35:0]Cb_B_w;
	 wire signed [35:0]Cr_R_w;
	 wire signed [35:0]Cr_G_w;
	 wire signed [35:0]Cr_B_w;
	 
	 wire signed [8:0]Y_added_1;
	 wire signed [8:0]Y_added_2;
	 wire signed [8:0]Y_delayed;
	 wire signed [8:0]Cb_added_1;
	 wire signed [8:0]Cb_added_2;
	 wire signed [8:0]Cb_added_3;
	 wire signed [8:0]Cr_added_1;
	 wire signed [8:0]Cr_added_2;
	 wire signed [8:0]Cr_added_3;
	 
//============ Y ===============
	 
	 // Latency = 2
	 mult Y_R (
	  .clk(clk), // input clk
	  .a({10'b0, red}), // input [17 : 0] a
	  .b(A_11), // input [17 : 0] b
	  .p(Y_R_w) // output [35 : 0] p
	);
	
	// Latency = 2
	mult Y_G (
	  .clk(clk), // input clk
	  .a({10'b0, green}), // input [17 : 0] a
	  .b(A_12), // input [17 : 0] b
	  .p(Y_G_w) // output [35 : 0] p
	);

		 
	 // Latency = 2
	 mult Y_B (
	  .clk(clk), // input clk
	  .a({10'b0, blue}), // input [17 : 0] a
	  .b(A_13), // input [17 : 0] b
	  .p(Y_B_w) // output [35 : 0] p
	);
	
		 
	 // Latency = 2
	adder Y_adder1 (
	  .a(Y_R_w[25:17]), // input [8 : 0] a
	  .b(Y_G_w[25:17]), // input [8 : 0] b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(Y_added_1) // output [8 : 0] s
	);
	
		 
	 // Latency = 2
	adder Y_adder2 (
	  .a(Y_added_1), // input [8 : 0] a
	  .b(Y_B_w[25:17]), // input [8 : 0] b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(Y_added_2) // output [8 : 0] s
	);
	
		 
	 // Latency = 2	 
	delayx #(
		.N(9),
		.DELAY(2)
	)
	Y_delay(
    .clk(clk), 
    .ce(ce), 
    .d(Y_added_2), 
    .q(Y_delayed)
    );
	 
	 assign Y = Y_delayed[7:0];


//============ Cb ===============
		 
	 // Latency = 2
	mult Cb_R (
	  .clk(clk), // input clk
	  .a({10'b0, red}), // input [17 : 0] a
	  .b(A_21), // input [17 : 0] b
	  .p(Cb_R_w) // output [35 : 0] p
	);
	 
	 // Latency = 2
	 mult Cb_G (
	  .clk(clk), // input clk
	  .a({10'b0, green}), // input [17 : 0] a
	  .b(A_22), // input [17 : 0] b
	  .p(Cb_G_w) // output [35 : 0] p
	);
	 
	 // Latency = 2
	 mult Cb_B (
	  .clk(clk), // input clk
	  .a({10'b0, blue}), // input [17 : 0] a
	  .b(A_23), // input [17 : 0] b
	  .p(Cb_B_w) // output [35 : 0] p
	);
	
		 
	// Latency = 2
	adder Cb_adder1 (
	  .a(Cb_R_w[25:17]), // input [8 : 0] a
	  .b(Cb_G_w[25:17]), // input [8 : 0] b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(Cb_added_1) // output [8 : 0] s
	);
	
		 
	// Latency = 2
	adder Cb_adder2 (
	  .a(Cb_added_1), // input [8 : 0] a
	  .b(Cb_B_w[25:17]), // input [8 : 0] b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(Cb_added_2) // output [8 : 0] s
	);	
		 
	// Latency = 2
	adder Cb_adder3 (
	  .a(Cb_added_2), // input [8 : 0] a
	  .b(B), // input [8 : 0] b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(Cb_added_3) // output [8 : 0] s
	);
	
	assign Cb = Cb_added_3[7:0];

//============ Cb ===============

	 // Latency = 2
	 mult Cr_R (
	  .clk(clk), // input clk
	  .a({10'b0, red}), // input [17 : 0] a
	  .b(A_31), // input [17 : 0] b
	  .p(Cr_R_w) // output [35 : 0] p
	);

	// Latency = 2
	 mult Cr_G (
	  .clk(clk), // input clk
	  .a({10'b0, green}), // input [17 : 0] a
	  .b(A_32), // input [17 : 0] b
	  .p(Cr_G_w) // output [35 : 0] p
	);

	// Latency = 2
	 mult Cr_B (
	  .clk(clk), // input clk
	  .a({10'b0, blue}), // input [17 : 0] a
	  .b(A_33), // input [17 : 0] b
	  .p(Cr_B_w) // output [35 : 0] p
	);
	
	// Latency = 2
	adder Cr_adder1 (
	  .a(Cr_R_w[25:17]), // input [8 : 0] a
	  .b(Cr_G_w[25:17]), // input [8 : 0] b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(Cr_added_1) // output [8 : 0] s
	);
	
	// Latency = 2
	adder Cr_adder2 (
	  .a(Cr_added_1), // input [8 : 0] a
	  .b(Cr_B_w[25:17]), // input [8 : 0] b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(Cr_added_2) // output [8 : 0] s
	);
	
	// Latency = 2
	adder Cr_adder3 (
	  .a(Cr_added_2), // input [8 : 0] a
	  .b(B), // input [8 : 0] b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(Cr_added_3) // output [8 : 0] s
	);
	
	assign Cr = Cr_added_3[7:0];
	
	//============ SYNC ===============
	
	delayx #(
		.N(3),
		.DELAY(6)
	)
	sync_delay(
    .clk(clk), 
    .ce(ce), 
    .d({de_in, hsync_in, vsync_in}), 
    .q({de_out, hsync_out, vsync_out})
    );
	 


endmodule
