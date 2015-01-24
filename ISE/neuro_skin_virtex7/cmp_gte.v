`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
// Engineer: komorkiewicz
// Create Date: KRK 15:03:24 02/12/2013 
// Description: comparator greater equal
//-----------------------------------------------
module cmp_gte #
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

  case({b[DATA_W-1],a[DATA_W-1]})
    2'b00:
      if(a>=b) r_r<=1'b1;
      else r_r<=1'b0;	 
	 2'b01:
	   r_r<=1'b0;
	 2'b10:
	   r_r<=1'b1;
	 2'b11:
      if(a<=b) r_r<=1'b1;
      else r_r<=1'b0;
  endcase

end
//-----------------------------------------------
assign r=r_r;
//-----------------------------------------------
endmodule
//-----------------------------------------------
