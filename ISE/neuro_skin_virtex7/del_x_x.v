`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
// Engineer: komorkiewicz
// Create Date: 10:39:01 09/07/2011 
// Description: delay line using DFF 
//-----------------------------------------------
module del_x_x #
(
  parameter width=1,
  parameter length=1
)
(
  input clk,
  input ce,
  input [width-1:0] i,
  output [width-1:0] o
);
//-----------------------------------------------
reg[width*length-1:0] line=4096'b0;
//-----------------------------------------------
always @(posedge clk)
begin
  if(ce) line<={line,i};
end
//-----------------------------------------------
assign o=line[width*length-1:width*(length-1)];
//-----------------------------------------------
endmodule
//-----------------------------------------------
