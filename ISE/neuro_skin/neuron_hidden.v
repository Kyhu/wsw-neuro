`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:55:06 01/08/2015 
// Design Name: 
// Module Name:    neuron 
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
module neuron_hidden(
	input clk,
	input ce,
	input [17*8-1:0] x,		//zkonkatenowane wejcie neuronu, zawiera wyjcia wszystkich neuronw poprzedniej warstwy
	input [17*8-1:0] w,		//same shit here
	output [16:0] y				//wyjcie neuronu
	);
	 
	wire [33:0] sum[7:0];
	wire [17:0] partial_1[3:0];
	wire [18:0] partial_2[1:0];
	wire [19:0] total;
	
	 
	// Generacja mnozarek
	genvar i;  
	generate  
		for (i=0; i < 8; i=i+1)  
		begin
			 mul17 mult_i (  
			  .clk(clk), // input clk
			  .a(x[17*(i+1)-1:17*i]), // input [16 : 0] a
			  .b(w[17*(i+1)-1:17*i]), // input [16 : 0] b
			  .p(sum[i]) // output [33 : 0] p
			 );  
		end  
	endgenerate  
	
	// Generacja pierwszej warstwy drzewa sumacyjnego 
	generate  
		for (i=0; i < 4; i=i+1)  
		begin
		adder17 adder17_i (
		  .a(sum[2*i][28:12]), // input [16 : 0] a
		  .b(sum[2*i+1][28:12]), // input [16 : 0] b
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
		for (i=0; i < 2; i=i+1)  
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

	// Korzen drzewa sumacyjnego
	adder19 adder19 (
	  .a(partial_2[0]), // input [18:0]  a
	  .b(partial_2[1]), // input [18:0]  b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(total) // output [19 : 0] s						//wynik cakowitego sumowania 
	);

	wire [10:0]temp_wire_1;
	wire [10:0]temp_wire_2;

	reg [19:0] min_total = 20'b11111111000000000000;
	reg [19:0] max_total = 20'b00000000111111111111;
	
	assign temp_wire_1 = ($signed(total) < $signed(min_total)) ? min_total[12:2] : total[12:2];	
	assign temp_wire_2 = ($signed(total) > $signed(max_total)) ? max_total[12:2] : temp_wire_1;	
	
	wire [10:0]lut_in;
	//assign lut_in = (total[19] == 1) ? 11'd1024-(temp_wire) : 11'd1024+(temp_wire);
	assign lut_in = 11'd1024+(temp_wire_2);
				
	wire [16:0] qspo;

	LUTSigma activation_lut (
	  .a(lut_in), // input [10 : 0] a
	  .clk(clk), // input clk
	  .qspo(qspo) // output [16 : 0] qspo
	);

	assign y=qspo; 

endmodule
