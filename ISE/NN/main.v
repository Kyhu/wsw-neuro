`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:26:25 01/08/2015 
// Design Name: 
// Module Name:    main 
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
module main(
	input clk,
	input ce,
	//7 parametrow skory
	//s16f
	input[16:0] x1,
	input[16:0] x2,
	input[16:0] x3,
	input[16:0] x4,
	input[16:0] x5,
	input[16:0] x6,
	input[16:0] x7,
	output[16:0] y_out
);

//wagi nauron ukrytej warstwy sieci
//s4i12f  * 8

reg [17*8-1:0] wh_1 = 136'b0000000011110001111111110010110000000000001010011010000000001011010000000000111011000111111100101011100000001000011000111111110111000110;
reg [17*8-1:0] wh_2 = 136'b0000000000110111100000000000110111111111111111001100000000000011001000000000000010010111111111010111100000000100110011111111111100110110;
reg [17*8-1:0] wh_3 = 136'b1111111111111010011111111111011101000000000111111011111111111110111111111111111000011111111111000100000000001000100100011111111101101011;
reg [17*8-1:0] wh_4 = 136'b0000000001001111111111111110000001111111111111100011111111111110111000000000000100010111111111011010100000000001110001011111111110110111;
reg [17*8-1:0] wh_5 = 136'b0000000000001100000000000001000000000000000011010000000000000010110011111111110100110111111111010110100000000110111010011111111101100010;
reg [17*8-1:0] wh_6 = 136'b0000000001101101111111111111011101000000000001111111111111111010110100000000000000001111111110110111010000000111111111011111111100000000;
reg [17*8-1:0] wh_7 = 136'b0000000001010011011111111100111011000000000010010111111111111011011000000000000001010111111111001010010000000011011100111111111111000011;
reg [17*8-1:0] wh_8 = 136'b0000000001001001111111111111000010111111111111111101111111111110010111111111111110011111111111010111100000000011100000011111111110011011;
reg [17*8-1:0] wh_9 = 136'b1010111101001001100010010101011111001100100100011000010111001100001011011001010011001100000000000000001101101010110101000011011101100010;
reg [17*8-1:0] wh_10 = 136'b0011101000111100110010111100111101000111100010111110010000010101100000111101011101010100000000000000001110011010101100011101111110011011;
reg [17*8-1:0] wh_11 = 136'b0000000001010001011111111111001001000000000001010011111111111000101100000000001101110111111111000010110000000101011100111111111100110100;
reg [17*8-1:0] wh_12 = 136'b0000000000110101011111111111110010000000000000100100000000000000111100000000001010010111111111001111110000000100100100011111111100111101;
reg [17*8-1:0] wh_13 = 136'b1111111111100010000000000000111010000000000110111000000000000001100011111111111111100111111111001010110000001000100010011111111100110011;

//wagi dla neuronu wyjsciowego  (3 warstwa)
//s4i12f * 14
reg [17*14-1:0] wout = 238'b1111111110111101100000000000000010000000000010100111111111111101100000000000000111111111111111111110011111111111110011011111111111101111111101111010100100000100001000101111111111111100011111111111111110000000000000101101000000000000101110;

wire [16:0]yh_1;
wire [16:0]yh_2;
wire [16:0]yh_3;
wire [16:0]yh_4;
wire [16:0]yh_5;
wire [16:0]yh_6;
wire [16:0]yh_7;
wire [16:0]yh_8;
wire [16:0]yh_9;
wire [16:0]yh_10;
wire [16:0]yh_11;
wire [16:0]yh_12;
wire [16:0]yh_13;

//na wejcia x neuronow warstwy ukrytej trafiaj wszystkie wejcia
wire [17*8-1:0]x_in;	
wire [16:0]x0 = 17'd1;		
assign x_in={x1,x2,x3,x4,x5,x6,x7,x0};		

//neurony warstwy ukrytej
neuron_hidden hidden_1(
    .clk(clk),
	 .ce(ce),
    .x(x_in), //zbir sygaw wyjciowych z pierwszej warstwy
    .w(wh_1),//zbir wag do odpowiednich sygnal
    .y(yh_1) //wyjcie neuronu 1 warstwy 2.
    );

neuron_hidden hidden_2 (
    .clk(clk),
	 .ce(ce),
    .x(x_in), 
    .w(wh_2),  
    .y(yh_2) 
    );

neuron_hidden hidden_3 (
    .clk(clk),
	 .ce(ce),	 
    .x(x_in), 
    .w(wh_3), 
    .y(yh_3)
    );

neuron_hidden hidden_4 (
    .clk(clk), 
	 .ce(ce),
    .x(x_in), 
    .w(wh_4), 
    .y(yh_4) 
    );

neuron_hidden hidden_5 (
    .clk(clk), 
	 .ce(ce),
    .x(x_in), 
    .w(wh_5), 
    .y(yh_5) 
    );
	 
neuron_hidden hidden_6 (
    .clk(clk), 
	 .ce(ce),
    .x(x_in), 
    .w(wh_6), 
    .y(yh_6)
    );

neuron_hidden hidden_7 (
    .clk(clk), 
	 .ce(ce),
    .x(x_in), 
    .w(wh_7), 
    .y(yh_7)
    );

neuron_hidden hidden_8 (
    .clk(clk), 
	 .ce(ce),
    .x(x_in), 
    .w(wh_8), 
    .y(yh_8)
    );

neuron_hidden hidden_9 (
    .clk(clk), 
	 .ce(ce),
    .x(x_in), 
    .w(wh_9), 
    .y(yh_9)
    );

neuron_hidden hidden_10 (
    .clk(clk),
	 .ce(ce),	 
    .x(x_in), 
    .w(wh_10), 
    .y(yh_10)
    );

neuron_hidden hidden_11 (
    .clk(clk),
	 .ce(ce),
    .x(x_in), 
    .w(wh_11),  
    .y(yh_11)
    );

neuron_hidden hidden_12 (
    .clk(clk),
	 .ce(ce),	 
    .x(x_in), 
    .w(wh_12),  
    .y(yh_12)
    );

neuron_hidden hidden_13 (
    .clk(clk), 
	 .ce(ce),
    .x(x_in), 
    .w(wh_13), 
    .y(yh_13)
    );

wire [17*14-1:0]x_h;//x_2 sygna wejciowy neurony 3 warstwy (wyjciowego)

//poczenie z wyjciem kadego neuronu warstwy ukrytej
wire [16:0]yh_0 = 17'd1;
assign x_h={yh_1,yh_2,yh_3,yh_4,yh_5,yh_6,yh_7,yh_8,yh_9,yh_10,yh_11,yh_12,yh_13,yh_0};
wire [16:0]y_out;// sygna wyjciowy sieci neuronowej

neuron_out outn (
    .clk(clk), 
	 .ce(ce),
    .x(x_h),//zbir sygnaw wejciowych dla neuronu wyjciowego
    .w(wout),//zbir wag dla sygnaw wejciowych neuronu wyjciowego
    .y(y_out)//wyjcie sieci!
    );

endmodule
