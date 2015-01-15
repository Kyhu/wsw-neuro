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
module neuron_2warstwy(
	input clk,
	input [17*7-1:0] x,		//zkonkatenowane wejœcie neuronu, zawiera wyjœcia wszystkich neuronów poprzedniej warstwy
	input [17*7-1:0] w,		//same shit here
	input [19:0] threshold,		//nieu¿ywane
	output [16:0] y,				//wyjœcie neuronu
	input [16:0] bias	

	);
	 
	wire [33:0] sum1;					//sumy czêœciowe
	wire [33:0] sum2;
	wire [33:0] sum3;
	wire [33:0] sum4;
	wire [33:0] sum5;
	wire [33:0] sum6;
	wire [33:0] sum7;
	wire [17:0] sumtotal1;    
	wire [17:0] sumtotal2;			
	wire [17:0] sumtotal3;
	wire [17:0] sumtotal4;
	wire [18:0] sumtotal5;
	wire [18:0] sumtotal6;
	wire [19:0] sumtotal7;

	wire ce;
	assign ce = 1'b1;

	// seria mno¿arek signed s17f*s17f
	mul17 mnozarka1 (
	  .clk(clk), // input clk
	  .a(x[17*7-1:17*6]), // input [16 : 0] a
	  .b(w[17*7-1:17*6]), // input [16 : 0] b
	  .p(sum1) // output [33 : 0] p
	);

	mul17 mnozarka2 (
	  .clk(clk), // input clk
	  .a(x[17*6-1:17*5]), // input [16 : 0] a
	  .b(w[17*6-1:17*5]), // input [16 : 0] b
	  .p(sum2) // output [33 : 0] p
	);
	
	mul17 mnozarka3 (
	  .clk(clk), // input clk
	  .a(x[17*5-1:17*4]), // input [16 : 0] a
	  .b(w[17*5-1:17*4]), // input [16 : 0] b
	  .p(sum3) // output [33 : 0] p
	);
	
	mul17 mnozarka4 (
	  .clk(clk), // input clk
	  .a(x[17*4-1:17*3]), // input [16 : 0] a
	  .b(w[17*4-1:17*3]), // input [16 : 0] b
	  .p(sum4) // output [33 : 0] p
	);

	mul17 mnozarka5 (
	  .clk(clk), // input clk
	  .a(x[17*3-1:17*2]), // input [16 : 0] a
	  .b(w[17*3-1:17*2]), // input [16 : 0] b
	  .p(sum5) // output [33 : 0] p
	);

	mul17 mnozarka6 (
	  .clk(clk), // input clk
	  .a(x[17*2-1:17*1]), // input [16 : 0] a
	  .b(w[17*2-1:17*1]), // input [16 : 0] b
	  .p(sum6) // output [33 : 0] p
	);

	mul17 mnozarka7 (
	  .clk(clk), // input clk
	  .a(x[17*1-1:17*0]), // input [16 : 0] a
	  .b(w[17*1-1:17*0]), // input [16 : 0] b
	  .p(sum7) // output [33 : 0] p
	);	


	//dodawanie sum1:sum7 w drzewku sumacyjnym
	adder dodaj1 (
	  .a(sum1[33:17]), // input [16 : 0] a
	  .b(sum2[33:17]), // input [16 : 0] b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(sumtotal1) // output [17 : 0] s		//wyjœcie pierwszej dodawarki
	);
	adder dodaj2 (
	  .a(sum3[33:17]), // input [16 : 0] a
	  .b(sum4[33:17]), // input [16 : 0] b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(sumtotal2) // output [17 : 0] s
	);
	adder dodaj3 (
	  .a(sum5[33:17]), // input [16 : 0] a
	  .b(sum6[33:17]), // input [16 : 0] b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(sumtotal3) // output [17 : 0] s
	);
	adder dodaj4 (
	  .a(sum7[33:17]), // input [16 : 0] a
	  .b(bias), // input [16 : 0] b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(sumtotal4) // output [17 : 0] s
	);
	adder18 dodaj5 (
	  .a(sumtotal1[17:0]), // input [17 : 0] a				//wyd³u¿amy d³ugoœæ s³owa wejœciowego o jeden bit 
	  .b(sumtotal2[17:0]), // input [17 : 0] b				// na wejœcie trafiaj¹ wyjœcie sum pierwszej warstwy drzewa sumacyjnego
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(sumtotal5) // output [18 : 0] s
	);
	adder18 dodaj6 (
	  .a(sumtotal3[17:0]), // input [17:0] a
	  .b(sumtotal4[17:0]), // input [17:0] b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(sumtotal6) // output [18 : 0] s
	);
	adder19 dodaj7 (
	  .a(sumtotal5[18:0]), // input [18:0]  a
	  .b(sumtotal6[18:0]), // input [18:0]  b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(sumtotal7) // output [19 : 0] s						//wynik ca³kowitego sumowania 
	);
	
	//assign sumtotal2 = sumtotal1[36:20]+bias;
	wire [10:0]lut_in;

	reg [10:0]lut_inr;
	//assign sum3=sum2/10;

	//
	always @(posedge clk)
	begin
		if (sumtotal7[19]==1) 
			lut_inr= 11'd1024-(sumtotal7[18:8]*32/10); //na wejœcie przeskalowaæ sygna³ na przedzia³ 0:2048, czyli sumtotal =-10:10
		else
			lut_inr= 11'd1024+(sumtotal7[18:8]*32/10); //sumtotal mo¿e byc ujemne lub dodatnie, tutaj odpowiednie skalowanie wartoœci bez wywo³ywania mno¿arek sprzêtowych
	end

	assign lut_in=lut_inr;  //lut_in to 11bitowy sygna³ wejœciowy lut 
	//assign lut_in= 11'd1024+(sumtotal7[19:10]*32/10);//na wejœcie przeskalowaæ sygna³ na przedzia³ -10:10
														
	wire [16:0] qspo;

	LUTSigma activation_lut (
	  .a(lut_in[10:0]), // input [10 : 0] a			//ten sam Lutsigma 
	  .clk(clk), // input clk
	  .qspo(qspo) // output [16 : 0] qspo
	);

	assign y=qspo; 

endmodule
