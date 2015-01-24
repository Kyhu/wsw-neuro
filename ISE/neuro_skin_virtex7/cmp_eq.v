`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
// Engineer: komorkiewicz
// Create Date: KRK 15:03:24 02/12/2013 
// Description: comparator equal
//-----------------------------------------------
module cmp_eq #
(
  parameter DATA_W=16
)
(
  input clk,
  input [DATA_W-1:0] a,
  input [DATA_W-1:0] b,
  output r
);
//-----------------------------------------------
reg r_r=1'b0;
//-----------------------------------------------
always @(posedge clk)
begin
  if(a==b) r_r<=1'b1;
  else r_r<=1'b0;
end
//-----------------------------------------------
assign r=r_r;
//-----------------------------------------------
endmodule
//-----------------------------------------------
