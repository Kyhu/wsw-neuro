`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:26:28 01/20/2015 
// Design Name: 
// Module Name:    nn_mult 
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
module nn_mult(
	input clk,
	input ce,
	input [17*8-1:0] x,
	input [17*8-1:0] w,
	output [16:0] total
	);
	
	reg [2:0] neuron_index = 3'd0;
	reg [4:0] clk_i = 5'd0;
	reg [6:0] mult_latency = 7'd3;
	
	wire [33:0] mult_result;
	reg [19:0] temp_sum = 20'd0;
	reg [19:0] total_sum = 20'd0;

	reg [16:0] rx[7:0];
	reg [16:0] rw[7:0];

	always @(posedge clk)
	begin		
		if(clk_i == 0 && neuron_index == 0)
		begin
			temp_sum = 20'd0;
			rx[0] = x[17*(1)-1:17*0];
			rw[0] = w[17*(1)-1:17*0];
			rx[1] = x[17*(2)-1:17*1];
			rw[1] = w[17*(2)-1:17*1];
			rx[2] = x[17*(3)-1:17*2];
			rw[2] = w[17*(3)-1:17*2];
			rx[3] = x[17*(4)-1:17*3];
			rw[3] = w[17*(4)-1:17*3];
			rx[4] = x[17*(5)-1:17*4];
			rw[4] = w[17*(5)-1:17*4];
			rx[5] = x[17*(6)-1:17*5];
			rw[5] = w[17*(6)-1:17*5];
			rx[6] = x[17*(7)-1:17*6];
			rw[6] = w[17*(7)-1:17*6];
			rx[7] = x[17*(8)-1:17*7];
			rw[7] = w[17*(8)-1:17*7];
		end	

		if(clk_i == mult_latency + 1)
		begin
			clk_i = 0;
			temp_sum = temp_sum + mult_result[16:0];
			neuron_index = neuron_index + 1;
		end		
		clk_i = clk_i+1;

		if (clk_i == 1 && neuron_index == 0) 
		begin
			total_sum = temp_sum;
			temp_sum = 0;		
			rx[0] = x[17*(1)-1:17*0];
			rw[0] = w[17*(1)-1:17*0];
			rx[1] = x[17*(2)-1:17*1];
			rw[1] = w[17*(2)-1:17*1];
			rx[2] = x[17*(3)-1:17*2];
			rw[2] = w[17*(3)-1:17*2];
			rx[3] = x[17*(4)-1:17*3];
			rw[3] = w[17*(4)-1:17*3];
			rx[4] = x[17*(5)-1:17*4];
			rw[4] = w[17*(5)-1:17*4];
			rx[5] = x[17*(6)-1:17*5];
			rw[5] = w[17*(6)-1:17*5];
			rx[6] = x[17*(7)-1:17*6];
			rw[6] = w[17*(7)-1:17*6];
			rx[7] = x[17*(8)-1:17*7];
			rw[7] = w[17*(8)-1:17*7];			
		end		
	end		
	
	mul17 mult (  
		.clk(clk), // input clk
		.a(rx[neuron_index]), // input [16 : 0] a
		.b(rw[neuron_index]), // input [16 : 0] b
		.p(mult_result) // output [33 : 0] p
	);  

	//wire [19:0]sum_o;	
	//wire [16:0]A;
	//assign A = mult_result[28:12];
	//assign A = mult_result[16:0];
		
	/*nn_sum sum(
	  .a(A), // input [16 : 0] a
	  .b(Y_reg), // input [19 : 0] b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(sum_o) // output [19 : 0] s
	);*/

	assign total = total_sum;

endmodule
