`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
// Engineer: komorkiewicz
// Create Date: KRK 13:55:03 01/24/2013
// Description: 
//-----------------------------------------------
module fifo_512_xxx #
(
  parameter buff_len=16
)
(
  input clk,
  input [511:0]din,
  input wr_en,
  input rd_en,
  output [511:0]dout,
  output full,
  output empty
);
//-----------------------------------------------
fifo_512_256 fifo_twr
(
  .clk(clk),
  .din(din),
  .wr_en(wr_en),
  .rd_en(rd_en),
  .dout(dout),
  .full(),
  .empty(empty)
);
//-----------------------------------------------
reg [8:0]size=0;
//-----------------------------------------------
always @(posedge clk)
begin
  case({wr_en,rd_en})
    2'b00:size<=size;
	 2'b01:if(size!=9'b000000000)size<=size-1;
	 2'b10:if(size!=9'b111111111)size<=size+1;
	 2'b11:size<=size;
  endcase
end
//-----------------------------------------------
assign full=((size>=buff_len)?1'b1:1'b0);
//-----------------------------------------------
endmodule
//-----------------------------------------------
