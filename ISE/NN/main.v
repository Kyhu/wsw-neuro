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

//7 parametrów skóry
//s16f
input[16:0] x1,
input[16:0] x2,
input[16:0] x3,
input[16:0] x4,
input[16:0] x5,
input[16:0] x6,
input[16:0] x7,		

//wagi nauronów pierwszej warstwy sieci
////s4i12f
input[16:0] w1,
input[16:0] w2,
input[16:0] w3,
input[16:0] w4,
input[16:0] w5,
input[16:0] w6,
input[16:0] w7,

//wagi nauronów drugiej warstwy sieci
//s4i12f  * 7
input[17*7-1:0] w2_1,
input[17*7-1:0] w2_2,
input[17*7-1:0] w2_3,
input[17*7-1:0] w2_4,
input[17*7-1:0] w2_5,
input[17*7-1:0] w2_6,
input[17*7-1:0] w2_7,
input[17*7-1:0] w2_8,
input[17*7-1:0] w2_9,
input[17*7-1:0] w2_10,
input[17*7-1:0] w2_11,
input[17*7-1:0] w2_12,
input[17*7-1:0] w2_13,
//wagi dla neuronu wyjœciowego  (3 warstwa)//s4i12f  *13
input[17*13-1:0] w_3		
 );
 
// wyjœcie neuronu nale¿y do przedzia³u 0-1
//s16f
//wire [16:0]y_11;
//wire [16:0]y_12;
//wire [16:0]y_13;
//wire [16:0]y_14;
//wire [16:0]y_15;
//wire [16:0]y_16;
//wire [16:0]y_17;
wire [16:0]y_21;
wire [16:0]y_22;
wire [16:0]y_23;
wire [16:0]y_24;
wire [16:0]y_25;
wire [16:0]y_26;
wire [16:0]y_27;
wire [16:0]y_28;
wire [16:0]y_29;
wire [16:0]y_210;
wire [16:0]y_211;
wire [16:0]y_212;
wire [16:0]y_213;

//bias neuronów 
//s4i12f
wire [16:0]bias_11;		
wire [16:0]bias_12;		
wire [16:0]bias_13;
wire [16:0]bias_14;
wire [16:0]bias_15;
wire [16:0]bias_16;
wire [16:0]bias_17;
wire [16:0]bias_21;
wire [16:0]bias_22;
wire [16:0]bias_23;
wire [16:0]bias_24;
wire [16:0]bias_25;
wire [16:0]bias_26;
wire [16:0]bias_27;
wire [16:0]bias_28;
wire [16:0]bias_29;
wire [16:0]bias_210;
wire [16:0]bias_211;
wire [16:0]bias_212;
wire [16:0]bias_213;
wire [16:0]bias_31;		

//test
////bias neuronów 
assign bias_11=16'd0010000000000000; 
assign bias_12 =16'd0010000000000000;		
assign bias_13 =16'd0010000000000000;
assign bias_14 =16'd0010000000000000;
assign bias_15 =16'd0010000000000000;
assign bias_16 =16'd0010000000000000;
assign bias_17 =16'd0010000000000000;
assign bias_21 =16'd0010000000000000;
assign bias_22 =16'd0010000000000000;
assign bias_23 =16'd0010000000000000;
assign bias_24 =16'd0010000000000000;
assign bias_25 =16'd0010000000000000;
assign bias_26 =16'd0010000000000000;
assign bias_27 =16'd0010000000000000;
assign bias_28 =16'd0010000000000000;
assign bias_29 =16'd0010000000000000;
assign bias_210 =16'd0010000000000000;
assign bias_211 =16'd0010000000000000;
assign bias_212 =16'd0010000000000000;
assign bias_213 =16'd0010000000000000;
assign bias_31 =16'd0010000000000000;	

//na wejœcia x neuronów warstwy ukrytej trafiaj¹ wszystkie wejœcia
wire [17*7-1:0]x_2;			
assign x_2={x1,x2,x3,x4,x5,x6,x7};		

//neurony warstwy ukrytej
neuron_2warstwy n_21(
    .clk(clk), 
    .x(x_2), //zbiór syga³ów wyjœciowych z pierwszej warstwy
    .w(w2_1),//zbiór wag do odpowiednich sygna³ów
    .threshold(threshold), //nieu¿ywany parametr
    .y(y_21), //wyjœcie neuronu 1 warstwy 2.
    .bias(bias_21) //bias neuronu 2_1
    );

neuron_2warstwy n_22 (
    .clk(clk), 
    .x(x_2), 
    .w(w2_2), 
    .threshold(threshold), 
    .y(y_22), 
    .bias(bias_22)
    );

neuron_2warstwy n_23 (
    .clk(clk), 
    .x(x_2), 
    .w(w2_3), 
    .threshold(threshold), 
    .y(y_23), 
    .bias(bias_23)
    );

neuron_2warstwy n_24 (
    .clk(clk), 
    .x(x_2), 
    .w(w2_4), 
    .threshold(threshold), 
    .y(y_24), 
    .bias(bias_24)
    );

neuron_2warstwy n_25 (
    .clk(clk), 
    .x(x_2), 
    .w(w2_5), 
    .threshold(threshold), 
    .y(y_25), 
    .bias(bias_25)
    );
	 
neuron_2warstwy n_26 (
    .clk(clk), 
    .x(x_2), 
    .w(w2_6), 
    .threshold(threshold), 
    .y(y_26), 
    .bias(bias_26)
    );

neuron_2warstwy n_27 (
    .clk(clk), 
    .x(x_2), 
    .w(w2_7), 
    .threshold(threshold), 
    .y(y_27), 
    .bias(bias_27)
    );

neuron_2warstwy n_28 (
    .clk(clk), 
    .x(x_2), 
    .w(w2_8), 
    .threshold(threshold), 
    .y(y_28), 
    .bias(bias_28)
    );


neuron_2warstwy n_29 (
    .clk(clk), 
    .x(x_2), 
    .w(w2_9), 
    .threshold(threshold), 
    .y(y_29), 
    .bias(bias_29)
    );

neuron_2warstwy n_210 (
    .clk(clk), 
    .x(x_2), 
    .w(w2_10), 
    .threshold(threshold), 
    .y(y_210), 
    .bias(bias_210)
    );

neuron_2warstwy n_211 (
    .clk(clk), 
    .x(x_2), 
    .w(w2_11), 
    .threshold(threshold), 
    .y(y_211), 
    .bias(bias_211)
    );

neuron_2warstwy n_212 (
    .clk(clk), 
    .x(x_2), 
    .w(w2_12), 
    .threshold(threshold), 
    .y(y_212), 
    .bias(bias_212)
    );

neuron_2warstwy n_213 (
    .clk(clk), 
    .x(x_2), 
    .w(w2_13), 
    .threshold(threshold), 
    .y(y_213), 
    .bias(bias_213)
    );

wire [17*13-1:0]x_3;//x_3 sygna³ wejœciowy neurony 3 warstwy (wyjœciowego)

//po³¹czenie z wyjœciem ka¿dego neuronu 2. warstwy
assign x_3={y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,y_210,y_211,y_212,y_213};
wire [16:0]y_out;// sygna³ wyjœciowy sieci neuronowej

neuron_13in n_31 (
    .clk(clk), 
    .x1(x_3),//zbiór sygna³ów wejœciowych dla neuronu wyjœciowego
    .w1(w_3),//zbiór wag dla sygna³ów wejœciowych neuronu wyjœciowego
    .threshold(threshold),//nieu¿ywane
    .y(y_out),//wyjœcie sieci!
    .bias(bias_31)// bias neuronu wyjœciowego
    );

endmodule
