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
module neural_network(
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

reg [17*8-1:0] wh_1 = 136'b0000000000110000011111111111010010000000000000001100000000000101010111111111111011000111111111011101110000000011001010111111111110100000;
reg [17*8-1:0] wh_2 = 136'b1111111110110110100000000010111101111111111111101110000000000101110011111111111000111000000000011110011111111111111100111111111111111011;
reg [17*8-1:0] wh_3 = 136'b1011000001011111000010010001100100001100011110010000010110111001110011011001110001001100000000000000001101101101101111000011011010000011;
reg [17*8-1:0] wh_4 = 136'b0000000011000000011111110111110011000000001000110110000000000011001100000000011010010111111101100110110000001001000101011111111001101100;
reg [17*8-1:0] wh_5 = 136'b0000000011010101011111110111010100000000000011110100000000000011100000000000011110000111111101110110010000000101010010011111111011001010;
reg [17*8-1:0] wh_6 = 136'b0000000001100000111111111100100111000000000001001101111111111111110100000000001111100111111110111111000000000011000001011111111101110000;
reg [17*8-1:0] wh_7 = 136'b1111111111110101100000000100100001000000000001100001111111111001100011111111101100000111111111100100000000001000100011011111111101100010;
reg [17*8-1:0] wh_8 = 136'b0000000001111111011111111011011000000000000010101000000000000010010000000000011011011111111110011101110000000101000000011111111011110100;
reg [17*8-1:0] wh_9 = 136'b1111111111100110000000000001110111000000000100101101111111111110101011111111110000111111111111011001010000000111111100011111111110001000;
reg [17*8-1:0] wh_10 = 136'b0000000000001011100000000001010100000000000010110110000000000000010011111111110101110111111111010010100000000111010010111111111101100101;
reg [17*8-1:0] wh_11 = 136'b0011101000000001010011000000011011000111100010001010010000010010000000111101000110011100000000000000001110011100011110011101111110101100;
reg [17*8-1:0] wh_12 = 136'b0000000000110101111111111111010000000000000110100000000000000100010111111111110101110111111110101011000000001010101000111111111011111011;
reg [17*8-1:0] wh_13 = 136'b0000000000010000000000000000111000000000000000111001111111111011111111111111110000010111111111101101110000000011101111111111111111101101;

//wagi dla neuronu wyjsciowego  (3 warstwa)
//s4i12f * 14
reg [17*14-1:0] wout = 238'b0000000000000001100000000000110011111101111010011101111111111100011111111111110010111111111111110100000000000000100000011111111111000100000000000010011010000000000011000000001000010001110000000000001110100000000000001011100000000000110010;

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
wire [16:0]x0 = 17'b00001000000000000;	//One	
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
wire [16:0]yh_0 = 17'b00001000000000000; //One
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
