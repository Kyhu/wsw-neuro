`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:32:05 01/08/2015 
// Design Name: 
// Module Name:    neuron1 
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
module neuron_1warstwy(
  	input clk,				//Typy spodziewanych danych:   s=signed i=bity dla cz�ci ca�kowitych, f= bity cz�ci u�amkowych
    input [16:0] x,    //s16f		- dla takiego zapisu spodziewamy si� danych z przedzia�u 0-1, w inym wypadku zmieni� arytmetyk� w dalszej cz�ci pliku
    input [16:0] w,		//s4i12f	- waga z przedzia�u oko�o -16:16
	 input [19:0] threshold,		//
    output [16:0] y,  //s16f		//wynik operacji lut nale�y do przedzia�u 0-1
    input [16:0] bias   //s4i12f		//przesuni�cie w formacie -16:16
	 
    );
	 wire clk1;
	 assign clk1=clk;		// nie wiem co to tu robi, ale niech b�dzie
wire [33:0] sum1;
//wire [33:0] sum2;
//wire [33:0] sum3;
wire [17:0] sumtotal;
wire ce;
assign ce=1'b1;

//assign sum1=x[16:0]*w[16:0];		
//mno�enie x*w	za pomoc� mno�arki mul17- 17bitowe wej�cie signed
//34 bitowe wyj�cie									
mul17 mnozarka (
  .clk(clk), // input clk
  .a(x), // input [16 : 0] a
  .b(w), // input [16 : 0] b
  .p(sum1) // output [33 : 0] p
);

//assign sumtotal=sum1[33:17]+bias;		//s4i12f			alternatywna wersja, zamiast u�ycia dedykowanych mno�arek sprz�towych

//dodawanie wyniku mno�enia z biasem
adder dodaj (
  .a(sum1[33:17]), // input [16 : 0] //sum1[33:17] MA FORMAT s4i12f
  .b(bias), // input [16 : 0] b    //s4i12f
  .clk(clk), // input clk
  .ce(ce), // input ce			//sta�a 1
  .s(sumtotal) // output [17 : 0] s
);
wire [10:0]lut_in;			//wej�cie na lut ma d�ugo�� 11 bit�w- 2048 warto�ci 
reg [10:0]lut_inr;
//assign sum3=sum2/10;
always @(posedge clk)
begin
if (sumtotal[17]==1) 
 lut_inr= 11'd1024-({1'b0,sumtotal[16:8]*32/10});//na wej�cie przeskalowa� sygna� na przedzia� 0:2048, czyli sumtotal =-10:10
else
lut_inr= 11'd1024+({1'b0,sumtotal[16:8]*32/10});
end
//chodzi o to, �e przekszta�camy warto�ci y przedzia�u -10:10 na wej�cie LUT jako 0-2047
assign lut_in=lut_inr;
wire [16:0] qspo;

//LUTSigma ma za�adowany plik LUTUJ3.coe, w kt�rym zosta�o zapisane binarnie 2048 warto�ci w formacie unsigned 16f
// funkcja przej�cia jest sigmoid� gdzie k=-1/2
LUTSigma your_instance_name (			
  .a(lut_in[10:0]), // input [10 : 0] a			
  .clk(clk1), // input clk
  .qspo(qspo) // output [16 : 0] qspo
);


assign y=qspo;  //wyj�cie neuronu 
endmodule
