`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:14:48 11/27/2014 
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
module neuron(
	input [118:0]in,
	input [118:0]weights,
	input [17:0]bias ,
	output [7:0]out
   );

	reg [200:0] sigmoid[17:0];
	
	
	//Zsumowac wartosci wszystkich wejsc pomnozonych przez wagi
	
	//Wyliczyc sigmoide z tej wartosci
	
	//Sprawdzic czy wartosc sigmoidy jest wieksza od 0 (?) czy zwrócic wartosc sigmoidy?
	
	
	
endmodule
