`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
// Engineer: komorkiewicz
// Create Date: KRK 15:46:05 02/12/2013 
// Description: learning rate computation module for PBAS project
//-----------------------------------------------
module learning_rate #
(
  parameter DATA_W=16
)
(
  //inputs
  input clk,
  input tv,
  input [DATA_W-1:0] tx,
  input fx,
  input [DATA_W-1:0] dmin,
  //constants
  input [DATA_W-1:0] tinc,
  input [DATA_W-1:0] tdec,
  input [DATA_W-1:0] tup,
  input [DATA_W-1:0] tlow,
  //outputs
  output tnv,
  output [DATA_W-1:0]tnx
);
//-----------------------------------------------
localparam LATENCY_MUX0=1;
localparam LATENCY_DIV0=34;
localparam LATENCY_AS0=2;
localparam LATENCY_CMP0=1;
localparam LATENCY_CMP2=1;
localparam LATENCY_MUX1=1;
//-----------------------------------------------
wire [DATA_W-1:0]dmin_d0;
wire [DATA_W:0]div_res;
wire [DATA_W-1:0]quotient;
wire [DATA_W-1:0]fractional;
wire [DATA_W-1:0]tx_d0;
wire fx_d0;
wire fx_d1;
wire [DATA_W+1:0]as_res;
wire [DATA_W-1:0]as_d0;
wire cmp0_res;
wire cmp1_res;
wire cmp2_res;
wire cmp2_res_d0;
//-----------------------------------------------
reg [DATA_W-1:0]mux0_res;
reg [DATA_W-1:0]mux1_res;
//-----------------------------------------------
//mux 0 code
always @(posedge clk)
begin
  if(fx) mux0_res<=tinc;
  else mux0_res<=tdec;
end
//-----------------------------------------------
div_16_16 div_i0
(
  .clk(clk),
  .rfd(rfd), //nu
  .dividend(mux0_res), 
  .divisor(dmin_d0), 
  .quotient(quotient),
  .fractional(fractional) //nu
);

assign div_res={quotient[8:0],fractional[15:8]};
//-----------------------------------------------
add_sub_u16_u16 add_sub_i0
(
  .clk(clk),
  .a(tx_d0),
  .b(div_res),
  .add(fx_d0),
  .s(as_res)
);
//-----------------------------------------------
cmp_gte #
(
  .DATA_W(DATA_W+2)
)
cmp_i0
(
  .clk(clk),
  .a({2'b0,tlow}),
  .b(as_res),
  .r(cmp0_res)
);
//-----------------------------------------------
cmp_gte #
(
  .DATA_W(DATA_W+2)
)
cmp_i1
(
  .clk(clk),
  .a(as_res),
  .b({2'b0,tup}),
  .r(cmp1_res)
);
//-----------------------------------------------
cmp_eq #
(
  .DATA_W(DATA_W)
)
cmp_i2
(
  .clk(clk), 
  .a(dmin_d0), 
  .b(32'b0), 
  .r(cmp2_res)
);
//-----------------------------------------------
//mux 1 code
always @(posedge clk)
begin
//  case({cmp0_res,cmp1_res,cmp2_res_d0})
//    3'b000:mux1_res<=as_d0; //T
//    3'b001:mux1_res<=as_d0; //T
//    3'b010:mux1_res<=tup; //Tup
//    3'b011:mux1_res<=tup; //Tup
//    3'b100:mux1_res<=tlow; //Tlow
//    3'b101:mux1_res<=tlow; //Tlow
//    3'b110:mux1_res<=32'hffffffff; //error
//    3'b111:mux1_res<=32'hffffffff; //error
//  endcase
  
  if(cmp2_res_d0)
  begin
    if(fx_d1) mux1_res<=tup;
	 else mux1_res<=tlow;
  end
  else
  begin
  case({cmp0_res,cmp1_res})
    2'b00:mux1_res<=as_d0; //T
    2'b01:mux1_res<=tup; //Tup
    2'b10:mux1_res<=tlow; //Tlow
    2'b11:mux1_res<=16'hffff; //Terror
  endcase 
  end
  
 
end
//-----------------------------------------------
del_x_x #
(
  .width(DATA_W),
  .length(LATENCY_MUX0+LATENCY_DIV0)
)
del_i0
(
  .clk(clk), 
  .ce(1'b1), 
  .i(tx), 
  .o(tx_d0)
);
//-----------------------------------------------
del_x_x #
(
  .width(DATA_W),
  .length(LATENCY_MUX0+LATENCY_DIV0)
)
del_i1
(
  .clk(clk), 
  .ce(1'b1), 
  .i(fx), 
  .o(fx_d0)
);
//-----------------------------------------------
del_x_x #
(
  .width(DATA_W),
  .length(LATENCY_MUX0)
)
del_i2
(
  .clk(clk), 
  .ce(1'b1), 
  .i(dmin), 
  .o(dmin_d0)
);
//-----------------------------------------------
del_x_x #
(
  .width(DATA_W),
  .length(LATENCY_CMP0)
)
del_i3
(
  .clk(clk), 
  .ce(1'b1), 
  .i(as_res), 
  .o(as_d0)
);
//-----------------------------------------------
del_x_x #
(
  .width(1),
  .length(LATENCY_DIV0+LATENCY_AS0)
)
del_i4
(
  .clk(clk), 
  .ce(1'b1), 
  .i(cmp2_res), 
  .o(cmp2_res_d0)
);
//-----------------------------------------------
del_x_x #
(
  .width(1),
  .length(LATENCY_MUX0+LATENCY_DIV0+LATENCY_AS0+LATENCY_CMP0+LATENCY_MUX1)
)
del_i5
(
  .clk(clk), 
  .ce(1'b1), 
  .i(tv), 
  .o(tnv)
);
//-----------------------------------------------
del_x_x #
(
  .width(1),
  .length(LATENCY_AS0+LATENCY_CMP2)
)
del_i6
(
  .clk(clk), 
  .ce(1'b1), 
  .i(fx_d0), 
  .o(fx_d1)
);
//-----------------------------------------------
assign tnx=mux1_res;
//-----------------------------------------------
endmodule
//-----------------------------------------------
