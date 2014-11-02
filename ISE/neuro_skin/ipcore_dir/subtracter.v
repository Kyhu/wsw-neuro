////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: subtracter.v
// /___/   /\     Timestamp: Sun Nov  2 19:42:51 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/kyhu/Workspace/WSW/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/subtracter.ngc /home/kyhu/Workspace/WSW/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/subtracter.v 
// Device	: 6slx45csg324-2
// Input file	: /home/kyhu/Workspace/WSW/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/subtracter.ngc
// Output file	: /home/kyhu/Workspace/WSW/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/subtracter.v
// # of Modules	: 1
// Design Name	: subtracter
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module subtracter (
  clk, ce, a, b, s
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input [9 : 0] a;
  input [9 : 0] b;
  output [9 : 0] s;
  
  // synthesis translate_off
  
  wire \blk00000001/sig00000058 ;
  wire \blk00000001/sig00000057 ;
  wire \blk00000001/sig00000056 ;
  wire \blk00000001/sig00000055 ;
  wire \blk00000001/sig00000054 ;
  wire \blk00000001/sig00000053 ;
  wire \blk00000001/sig00000052 ;
  wire \blk00000001/sig00000051 ;
  wire \blk00000001/sig00000050 ;
  wire \blk00000001/sig0000004f ;
  wire \blk00000001/sig0000004e ;
  wire \blk00000001/sig0000004d ;
  wire \blk00000001/sig0000004c ;
  wire \blk00000001/sig0000004b ;
  wire \blk00000001/sig0000004a ;
  wire \blk00000001/sig00000049 ;
  wire \blk00000001/sig00000048 ;
  wire \blk00000001/sig00000047 ;
  wire \blk00000001/sig00000046 ;
  wire \blk00000001/sig00000045 ;
  wire \blk00000001/sig00000044 ;
  wire \blk00000001/sig00000043 ;
  wire \blk00000001/sig00000042 ;
  wire \blk00000001/sig00000041 ;
  wire \blk00000001/sig00000040 ;
  wire \blk00000001/sig0000003f ;
  wire \blk00000001/sig0000003e ;
  wire \blk00000001/sig0000003d ;
  wire \blk00000001/sig0000003c ;
  wire \blk00000001/sig0000003b ;
  wire \blk00000001/sig0000003a ;
  wire \blk00000001/sig00000039 ;
  wire \blk00000001/sig00000038 ;
  wire \blk00000001/sig00000037 ;
  wire \blk00000001/sig00000036 ;
  wire \blk00000001/sig00000035 ;
  wire \blk00000001/sig00000034 ;
  wire \blk00000001/sig00000033 ;
  wire \blk00000001/sig00000032 ;
  wire \blk00000001/sig00000031 ;
  wire \blk00000001/sig00000030 ;
  wire \blk00000001/sig0000002f ;
  wire \blk00000001/sig0000002e ;
  wire \blk00000001/sig0000002d ;
  wire \blk00000001/sig0000002c ;
  wire \blk00000001/sig0000002b ;
  wire \blk00000001/sig0000002a ;
  wire \blk00000001/sig00000029 ;
  wire \blk00000001/sig00000028 ;
  wire \blk00000001/sig00000027 ;
  wire \blk00000001/sig00000026 ;
  wire \blk00000001/sig00000025 ;
  wire \blk00000001/sig00000024 ;
  wire \blk00000001/sig00000023 ;
  wire \blk00000001/sig00000022 ;
  wire \blk00000001/sig00000021 ;
  wire \NLW_blk00000001/blk00000043_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000041_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000003f_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000003d_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000003b_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000023_O_UNCONNECTED ;
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000044  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000058 ),
    .Q(s[0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000043  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000028 ),
    .Q(\blk00000001/sig00000058 ),
    .Q15(\NLW_blk00000001/blk00000043_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000042  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000057 ),
    .Q(s[1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000041  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002c ),
    .Q(\blk00000001/sig00000057 ),
    .Q15(\NLW_blk00000001/blk00000041_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000040  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000056 ),
    .Q(s[3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000003f  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002a ),
    .Q(\blk00000001/sig00000056 ),
    .Q15(\NLW_blk00000001/blk0000003f_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000055 ),
    .Q(s[4])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000003d  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000029 ),
    .Q(\blk00000001/sig00000055 ),
    .Q15(\NLW_blk00000001/blk0000003d_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000054 ),
    .Q(s[2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000003b  (
    .A0(\blk00000001/sig00000053 ),
    .A1(\blk00000001/sig00000053 ),
    .A2(\blk00000001/sig00000053 ),
    .A3(\blk00000001/sig00000053 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000002b ),
    .Q(\blk00000001/sig00000054 ),
    .Q15(\NLW_blk00000001/blk0000003b_Q15_UNCONNECTED )
  );
  GND   \blk00000001/blk0000003a  (
    .G(\blk00000001/sig00000053 )
  );
  INV   \blk00000001/blk00000039  (
    .I(\blk00000001/sig00000026 ),
    .O(\blk00000001/sig0000004f )
  );
  INV   \blk00000001/blk00000038  (
    .I(\blk00000001/sig00000025 ),
    .O(\blk00000001/sig0000004c )
  );
  INV   \blk00000001/blk00000037  (
    .I(\blk00000001/sig00000024 ),
    .O(\blk00000001/sig0000004d )
  );
  INV   \blk00000001/blk00000036  (
    .I(\blk00000001/sig00000023 ),
    .O(\blk00000001/sig0000004e )
  );
  INV   \blk00000001/blk00000035  (
    .I(\blk00000001/sig00000022 ),
    .O(\blk00000001/sig00000050 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk00000034  (
    .I0(a[9]),
    .I1(b[9]),
    .O(\blk00000001/sig0000003f )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk00000033  (
    .I0(a[8]),
    .I1(b[8]),
    .O(\blk00000001/sig0000003c )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk00000032  (
    .I0(a[7]),
    .I1(b[7]),
    .O(\blk00000001/sig0000003d )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk00000031  (
    .I0(a[6]),
    .I1(b[6]),
    .O(\blk00000001/sig0000003e )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk00000030  (
    .I0(a[5]),
    .I1(b[5]),
    .O(\blk00000001/sig00000040 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk0000002f  (
    .I0(a[4]),
    .I1(b[4]),
    .O(\blk00000001/sig00000030 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk0000002e  (
    .I0(a[3]),
    .I1(b[3]),
    .O(\blk00000001/sig0000002d )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk0000002d  (
    .I0(a[2]),
    .I1(b[2]),
    .O(\blk00000001/sig0000002e )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk0000002c  (
    .I0(a[1]),
    .I1(b[1]),
    .O(\blk00000001/sig0000002f )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk0000002b  (
    .I0(a[0]),
    .I1(b[0]),
    .O(\blk00000001/sig00000031 )
  );
  MUXCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig00000027 ),
    .DI(\blk00000001/sig00000021 ),
    .S(\blk00000001/sig00000050 ),
    .O(\blk00000001/sig00000052 )
  );
  XORCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig00000027 ),
    .LI(\blk00000001/sig00000050 ),
    .O(\blk00000001/sig00000051 )
  );
  MUXCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig00000052 ),
    .DI(\blk00000001/sig00000021 ),
    .S(\blk00000001/sig0000004e ),
    .O(\blk00000001/sig0000004b )
  );
  XORCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig00000052 ),
    .LI(\blk00000001/sig0000004e ),
    .O(\blk00000001/sig0000004a )
  );
  MUXCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig0000004b ),
    .DI(\blk00000001/sig00000021 ),
    .S(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig00000049 )
  );
  XORCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig0000004b ),
    .LI(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig00000048 )
  );
  XORCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig00000046 ),
    .LI(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig00000047 )
  );
  MUXCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig00000046 ),
    .DI(\blk00000001/sig00000021 ),
    .S(\blk00000001/sig0000004f ),
    .O(\NLW_blk00000001/blk00000023_O_UNCONNECTED )
  );
  MUXCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig00000049 ),
    .DI(\blk00000001/sig00000021 ),
    .S(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig00000046 )
  );
  XORCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig00000049 ),
    .LI(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig00000045 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000020  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000047 ),
    .Q(s[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000045 ),
    .Q(s[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000048 ),
    .Q(s[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004a ),
    .Q(s[6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000051 ),
    .Q(s[5])
  );
  MUXCY   \blk00000001/blk0000001b  (
    .CI(\blk00000001/sig00000021 ),
    .DI(a[5]),
    .S(\blk00000001/sig00000040 ),
    .O(\blk00000001/sig00000044 )
  );
  MUXCY   \blk00000001/blk0000001a  (
    .CI(\blk00000001/sig00000044 ),
    .DI(a[6]),
    .S(\blk00000001/sig0000003e ),
    .O(\blk00000001/sig00000043 )
  );
  MUXCY   \blk00000001/blk00000019  (
    .CI(\blk00000001/sig00000043 ),
    .DI(a[7]),
    .S(\blk00000001/sig0000003d ),
    .O(\blk00000001/sig00000042 )
  );
  MUXCY   \blk00000001/blk00000018  (
    .CI(\blk00000001/sig00000042 ),
    .DI(a[8]),
    .S(\blk00000001/sig0000003c ),
    .O(\blk00000001/sig00000041 )
  );
  XORCY   \blk00000001/blk00000017  (
    .CI(\blk00000001/sig00000044 ),
    .LI(\blk00000001/sig0000003e ),
    .O(\blk00000001/sig0000003b )
  );
  XORCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig00000043 ),
    .LI(\blk00000001/sig0000003d ),
    .O(\blk00000001/sig0000003a )
  );
  XORCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig00000042 ),
    .LI(\blk00000001/sig0000003c ),
    .O(\blk00000001/sig00000039 )
  );
  XORCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig00000041 ),
    .LI(\blk00000001/sig0000003f ),
    .O(\blk00000001/sig00000038 )
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000021 ),
    .LI(\blk00000001/sig00000040 ),
    .O(\blk00000001/sig00000037 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000012  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000038 ),
    .Q(\blk00000001/sig00000026 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000011  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000039 ),
    .Q(\blk00000001/sig00000025 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000010  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003a ),
    .Q(\blk00000001/sig00000024 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003b ),
    .Q(\blk00000001/sig00000023 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000037 ),
    .Q(\blk00000001/sig00000022 )
  );
  FDE #(
    .INIT ( 1'b1 ))
  \blk00000001/blk0000000d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000035 ),
    .Q(\blk00000001/sig00000027 )
  );
  MUXCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig00000021 ),
    .DI(a[0]),
    .S(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig00000036 )
  );
  MUXCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig00000032 ),
    .DI(a[4]),
    .S(\blk00000001/sig00000030 ),
    .O(\blk00000001/sig00000035 )
  );
  MUXCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig00000036 ),
    .DI(a[1]),
    .S(\blk00000001/sig0000002f ),
    .O(\blk00000001/sig00000034 )
  );
  MUXCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig00000034 ),
    .DI(a[2]),
    .S(\blk00000001/sig0000002e ),
    .O(\blk00000001/sig00000033 )
  );
  MUXCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig00000033 ),
    .DI(a[3]),
    .S(\blk00000001/sig0000002d ),
    .O(\blk00000001/sig00000032 )
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig00000036 ),
    .LI(\blk00000001/sig0000002f ),
    .O(\blk00000001/sig0000002c )
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig00000034 ),
    .LI(\blk00000001/sig0000002e ),
    .O(\blk00000001/sig0000002b )
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig00000033 ),
    .LI(\blk00000001/sig0000002d ),
    .O(\blk00000001/sig0000002a )
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig00000032 ),
    .LI(\blk00000001/sig00000030 ),
    .O(\blk00000001/sig00000029 )
  );
  XORCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig00000021 ),
    .LI(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig00000028 )
  );
  VCC   \blk00000001/blk00000002  (
    .P(\blk00000001/sig00000021 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
