`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:19:07 01/08/2015 
// Design Name: 
// Module Name:    neuron_13in 
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
module neuron_out(
	input clk,
	input ce,
	input [17*14-1:0] x,
	input [17*14-1:0] w,
	output [16:0] y
	);
	
	wire [33:0] sum[15:0];
	wire [17:0] partial_1[7:0];
	wire [18:0] partial_2[3:0];
	wire [19:0] partial_3[1:0];
	wire [20:0] total;
	 
	// Generacja mnozarek
	genvar i;  
	generate  
		for (i=0; i < 14; i=i+1)  
		begin
			 mul17 mult_i (  
			  .clk(clk), // input clk
			  .a(x[17*(i+1)-1:17*i]), // input [16 : 0] a
			  .b(w[17*(i+1)-1:17*i]), // input [16 : 0] b
			  .p(sum[i]) // output [33 : 0] p
			 );  
		end  
	endgenerate 
	
	// Add wires to tree was complete
	assign sum[15] = 33'd0;
	assign sum[14] = 33'd0;	
	
	// Generacja pierwszej warstwy drzewa sumacyjnego
	generate  
		for (i=0; i < 8; i=i+1)  
		begin
		adder adder_i (
		  .a(sum[2*i][33:17]), // input [16 : 0] a
		  .b(sum[2*i+1][33:17]), // input [16 : 0] b
		  .clk(clk), // input clk
		  .ce(ce), // input ce
		  .s(partial_1[i]) // output [17 : 0] s	
		); 
		end  
	endgenerate 
	
	//wyduamy dugo sowa wejciowego o jeden bit 
	// na wejcie trafiaj wyjcie sum pierwszej warstwy drzewa sumacyjnego
	
	// Generacja drugiej warstwy drzewa sumacyjnego

	generate  
		for (i=0; i < 4; i=i+1)  
		begin
		adder18 adder18_i (
		  .a(partial_1[2*i]), // input [17 : 0] a			
		  .b(partial_1[2*i+1]), // input [17 : 0] b
		  .clk(clk), // input clk
		  .ce(ce), // input ce
		  .s(partial_2[i]) // output [18 : 0] s	
		); 
		end  
	endgenerate 
	
	// Generacja trzeciej warstwy drzewa sumacyjnego
	generate  
		for (i=0; i < 2; i=i+1)  
		begin
		adder19 adder19_i (
		  .a(partial_2[2*i]), // input [18 : 0] a			
		  .b(partial_2[2*i+1]), // input [18 : 0] b
		  .clk(clk), // input clk
		  .ce(ce), // input ce
		  .s(partial_3[i]) // output [19 : 0] s	
		); 
		end  
	endgenerate 

	// Korzen drzewa sumacyjnego
	adder20 adder20 (
	  .a(partial_3[0]), // input [19:0]  a
	  .b(partial_3[1]), // input [19:0]  b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(total) // output [20 : 0] s						//wynik cakowitego sumowania 
	);

	wire [10:0]lut_in;
	assign lut_in = (total[20]==1) ? 11'd1024-(total[18:8]*32/10) : 11'd1024+(total[18:8]*32/10);
				
	wire [16:0] qspo;

	LUTSigma activation_lut (
	  .a(lut_in), // input [10 : 0] a
	  .clk(clk), // input clk
	  .qspo(qspo) // output [16 : 0] qspo
	);

	assign y=qspo; 
	
endmodule

