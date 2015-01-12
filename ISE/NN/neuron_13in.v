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
module neuron_13in(
		input clk,
    input [17*13-1:0] x1,
    input [17*13-1:0] w1,
	 input [20:0] threshold,
    output [16:0] y,
    input [16:0] bias
    );

wire [33:0] sum1;
wire [33:0] sum2;
wire [33:0] sum3;
wire [33:0] sum4;
wire [33:0] sum5;
wire [33:0] sum6;
wire [33:0] sum7;
wire [33:0] sum8;
wire [33:0] sum9;
wire [33:0] sum10;
wire [33:0] sum11;
wire [33:0] sum12;
wire [33:0] sum13;
wire [37:0] sumtotal1;
wire [17:0] sumtotal2;
assign sum1=x1[17*1-1:17*0]*w1[17*1-1:17*0];
assign sum2=x1[17*2-1:17*1]*w1[17*2-1:17*1];
assign sum3=x1[17*3-1:17*2]*w1[17*3-1:17*2];
assign sum4=x1[17*4-1:17*3]*w1[17*4-1:17*3];
assign sum5=x1[17*5-1:17*4]*w1[17*5-1:17*4];
assign sum6=x1[17*6-1:17*5]*w1[17*6-1:17*5];
assign sum7=x1[17*7-1:17*6]*w1[17*7-1:17*6];
assign sum8=x1[17*8-1:17*7]*w1[17*8-1:17*7];
assign sum9=x1[17*9-1:17*8]*w1[17*9-1:17*8];
assign sum10=x1[17*10-1:17*9]*w1[17*10-1:17*9];
assign sum11=x1[17*11-1:17*10]*w1[17*11-1:17*10];
assign sum12=x1[17*12-1:17*11]*w1[17*12-1:17*11];
assign sum13=x1[17*13-1:17*12]*w1[17*13-1:17*12];

//wire [16:0] temp2 [0:3];
assign sumtotal1=sum1+sum2+sum3+sum4+sum5+sum6+sum7+sum8+sum9+sum10+sum11+sum12+sum13;
assign sumtotal2=sumtotal1[37:21]+bias;
wire [10:0]lut_in;
reg [10:0]lut_inr;
//assign sum3=sum2/10;
always @(posedge clk)
begin
if (sumtotal2[17]==1) 
lut_inr= 11'd1024-(sumtotal2[16:8]*32/10);//na wejœcie przeskalowaæ sygna³ na przedzia³ 0:2048, czyli sumtotal =-10:10
else
lut_inr= 11'd1024+(sumtotal2[16:8]*32/10);
end
assign lut_in=lut_inr;

//assign lut_in= 11'd1024+(sumtotal2[17:8]*32/10);//na wejœcie przeskalowaæ sygna³ na przedzia³ -10:10
														// tu mozna tez sprobowac mnozarek
wire [16:0] qspo;
LUTSigma your_instance_name (
  .a(lut_in[10:0]), // input [10 : 0] a			na wejœcie przeskalowaæ sygna³ na przedzia³ -10:10
  .clk(clk), // input clk
  .qspo(qspo) // output [16 : 0] qspo
);

assign y=qspo;  //wyjœcie sieci
endmodule

