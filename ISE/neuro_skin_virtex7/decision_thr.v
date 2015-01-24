`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
// Engineer: komorkiewicz
// Create Date: KRK 14:46:30 02/12/2013 
// Description: decision threshold computation module for PBAS project
//-----------------------------------------------
module decision_thr #
(
  parameter DATA_W=16
)
(
  input clk,
  input rv,
  input [DATA_W-1:0] rx,
  input [DATA_W-1:0] dmin,
  input [DATA_W-1:0] rscale,
  input [DATA_W-1:0]rlow,
  //input [DATA_W-1:0] rinc,
  input  [DATA_W-1:0]one_minus_rinc,
  input  [DATA_W-1:0]one_plus_rinc,
  output rnv,
  output [DATA_W-1:0]rnx
);
//-----------------------------------------------
localparam LATENCY_MUL0=4;
localparam LATENCY_MUL1=4;
localparam LATENCY_CMP0=1;
localparam LATENCY_CMP1=1;
localparam LATENCY_MUX0=1;
localparam LATENCY_MUX1=1;
//-----------------------------------------------
wire [DATA_W-1:0]rx_d0;
wire [DATA_W-1:0]rx_d1;
wire [2*DATA_W-1:0]drs_res;
wire cmp0_res;
wire cmp1_res;
wire [2*DATA_W-1:0]mul_res;
wire [DATA_W-1:0]mul_d0;
//-----------------------------------------------
reg [DATA_W-1:0]mux0_res;
reg [DATA_W-1:0]mux1_res;
reg saturate=1'b0;
//-----------------------------------------------
//wire [DATA_W-1:0]one_minus_rinc;
//wire [DATA_W-1:0]one_plus_rinc;
//assign one_minus_rinc=32'd1-rinc; //TODO check correctness !
//assign one_plus_rinc=32'd1+rinc;
//-----------------------------------------------
mul_u16_u16 mul_i0
(
  .clk(clk),
  .a(dmin),
  .b(rscale),
  .p(drs_res)
);
//-----------------------------------------------
mul_u16_u16 mul_i1
(
  .clk(clk),
  .a(rx_d1),
  .b(mux0_res),
  .p(mul_res)
);
//-----------------------------------------------
cmp_gt #
(
  .DATA_W(DATA_W+8)
)
cmp_i0
(
  .clk(clk), 
  .a({8'd0,rx_d0}), 
  .b(drs_res[2*DATA_W-1:DATA_W-8]), 
  .r(cmp0_res)
);
//-----------------------------------------------
always @(posedge clk)
begin
  if(cmp0_res) mux0_res<=one_minus_rinc;
  else mux0_res<=one_plus_rinc;
end
//-----------------------------------------------
del_x_x #
(
  .width(DATA_W),
  .length(LATENCY_MUL0)
)
del_i0
(
  .clk(clk), 
  .ce(1'b1), 
  .i(rx), 
  .o(rx_d0)
);
//-----------------------------------------------
del_x_x #
(
  .width(DATA_W),
  .length(LATENCY_CMP0+LATENCY_MUX0)
)
del_i1
(
  .clk(clk), 
  .ce(1'b1), 
  .i(rx_d0), 
  .o(rx_d1)
);
//-----------------------------------------------
del_x_x #
(
  .width(1),
  .length(LATENCY_MUL0+LATENCY_MUL1+LATENCY_CMP0+LATENCY_CMP1+LATENCY_MUX0+LATENCY_MUX1)
)
del_i2
(
  .clk(clk), 
  .ce(1'b1), 
  .i(rv), 
  .o(rnv)
);
//-----------------------------------------------
del_x_x #
(
  .width(DATA_W),
  .length(LATENCY_CMP1)
)
del_i3
(
  .clk(clk), 
  .ce(1'b1), 
  .i(mul_res[DATA_W+8-1:DATA_W-8]), 
  .o(mul_d0)
);
//-----------------------------------------------
cmp_gt #
(
  .DATA_W(DATA_W+1)
)
cmp_i1
(
  .clk(clk), 
  .a({1'b0,rlow}), 
  .b(mul_res[DATA_W-1+8+1:DATA_W-8]), 
  .r(cmp1_res)
);
//-----------------------------------------------
always @(posedge clk)
begin
  //cmp not equal
  if(mul_res[DATA_W*2-1:DATA_W*2-8]==8'b0) saturate<=1'b0;
  else saturate<=1'b1;

  //mux1
  if(cmp1_res) mux1_res<=rlow;
  else 
  begin
    if(saturate) mux1_res<=16'hffff;
    else mux1_res<=mul_d0;
  end
end
//-----------------------------------------------
assign rnx=mux1_res;
//-----------------------------------------------
endmodule
//-----------------------------------------------
