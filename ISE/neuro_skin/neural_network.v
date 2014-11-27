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
module neural_network(
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
	 
	// 7 inputs x 13 hidden neurons = 91
	reg [17:0]hidden_weights[90:0];
	reg [17:0]hidden_bias[12:0];
	reg [12:0]output_out[17:0];	
	
	// 13 hidden neurons
	reg [12:0]output_weights[17:0];
	
	 // =============== HIDDEN NEURON ==========
	
	neuron hn_1 (
    .in({R,G,B,H,S,Cb,Cr}), 
    .weights(hidden_weights[6:0]), 
    .bias(hidden_bias[0]), 
    .out(output_out[0])
    );

	 neuron hn_2 (
    .in({R,G,B,H,S,Cb,Cr}), 
    .weights(hidden_weights[13:7]), 
    .bias(hidden_bias[1]), 
    .out(output_out[1])
    );
	 
	 neuron hn_3 (
    .in({R,G,B,H,S,Cb,Cr}), 
    .weights(hidden_weights[20:14]), 
    .bias(hidden_bias[2]), 
    .out(output_out[2])
    );
	 
	 neuron hn_4 (
    .in({R,G,B,H,S,Cb,Cr}), 
    .weights(hidden_weights[27:21]), 
    .bias(hidden_bias[3]), 
    .out(output_out[3])
    );
	 
	 neuron hn_5 (
    .in({R,G,B,H,S,Cb,Cr}), 
    .weights(hidden_weights[34:28]), 
    .bias(hidden_bias[4]), 
    .out(output_out[4])
    );
	 
	 neuron hn_6 (
    .in({R,G,B,H,S,Cb,Cr}), 
    .weights(hidden_weights[41:35]), 
    .bias(hidden_bias[5]), 
    .out(output_out[5])
    );
	 
	 neuron hn_7 (
    .in({R,G,B,H,S,Cb,Cr}), 
    .weights(hidden_weights[48:42]), 
    .bias(hidden_bias[6]), 
    .out(output_out[6])
    );
	 
	 neuron hn_8 (
    .in({R,G,B,H,S,Cb,Cr}), 
    .weights(hidden_weights[55:49]), 
    .bias(hidden_bias[7]), 
    .out(output_out[7])
    );
	 
	 neuron hn_9 (
    .in({R,G,B,H,S,Cb,Cr}), 
    .weights(hidden_weights[62:56]), 
    .bias(hidden_bias[8]), 
    .out(output_out[8])
    );
	 
	 neuron hn_10 (
    .in({R,G,B,H,S,Cb,Cr}), 
    .weights(hidden_weights[69:63]), 
    .bias(hidden_bias[9]), 
    .out(output_out[9])
    );
	 
	 neuron hn_11 (
    .in({R,G,B,H,S,Cb,Cr}), 
    .weights(hidden_weights[76:70]), 
    .bias(hidden_bias[10]), 
    .out(output_out[10])
    );
	 
	 neuron hn_12 (
    .in({R,G,B,H,S,Cb,Cr}), 
    .weights(hidden_weights[83:77]), 
    .bias(hidden_bias[11]), 
    .out(output_out[11])
    );
	 
	 neuron hn_13 (
    .in({R,G,B,H,S,Cb,Cr}), 
    .weights(hidden_weights[90:84]), 
    .bias(hidden_bias[12]), 
    .out(output_out[12])
    );
	 
	 // =============== OUTPUT NEURON ==========
	 
//		//Inna klasa dla neuronow wyjsciowych
//	
//	
//	
//	 
	 // =============== DELAY NEURON ============	 
	
	delayx #(
		.N(3), 
		.DELAY(5)
	)
	sync_delay(
    .clk(clk), 
    .ce(ce), 
    .d({de_in, hsync_in, vsync_in}), 
    .q({de_out, hsync_out, vsync_out})
    );
		

endmodule
