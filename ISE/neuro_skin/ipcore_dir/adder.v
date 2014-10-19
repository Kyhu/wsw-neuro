////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: adder.v
// /___/   /\     Timestamp: Sat Apr 12 16:32:50 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/kyhu/Workspace/ISE/hdmi/ipcore_dir/tmp/_cg/adder.ngc /home/kyhu/Workspace/ISE/hdmi/ipcore_dir/tmp/_cg/adder.v 
// Device	: 6slx45csg324-2
// Input file	: /home/kyhu/Workspace/ISE/hdmi/ipcore_dir/tmp/_cg/adder.ngc
// Output file	: /home/kyhu/Workspace/ISE/hdmi/ipcore_dir/tmp/_cg/adder.v
// # of Modules	: 1
// Design Name	: adder
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

module adder (
  clk, ce, a, b, s
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input [8 : 0] a;
  input [8 : 0] b;
  output [8 : 0] s;
  
  // synthesis translate_off
  
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
  wire \blk00000001/sig00000020 ;
  wire \blk00000001/sig0000001f ;
  wire \blk00000001/sig0000001e ;
  wire \NLW_blk00000001/blk0000003d_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000003b_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000039_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000037_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000021_O_UNCONNECTED ;
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000050 ),
    .Q(s[0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000003d  (
    .A0(\blk00000001/sig0000001e ),
    .A1(\blk00000001/sig0000001e ),
    .A2(\blk00000001/sig0000001e ),
    .A3(\blk00000001/sig0000001e ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000025 ),
    .Q(\blk00000001/sig00000050 ),
    .Q15(\NLW_blk00000001/blk0000003d_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004f ),
    .Q(s[1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000003b  (
    .A0(\blk00000001/sig0000001e ),
    .A1(\blk00000001/sig0000001e ),
    .A2(\blk00000001/sig0000001e ),
    .A3(\blk00000001/sig0000001e ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000028 ),
    .Q(\blk00000001/sig0000004f ),
    .Q15(\NLW_blk00000001/blk0000003b_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004e ),
    .Q(s[2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000039  (
    .A0(\blk00000001/sig0000001e ),
    .A1(\blk00000001/sig0000001e ),
    .A2(\blk00000001/sig0000001e ),
    .A3(\blk00000001/sig0000001e ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000027 ),
    .Q(\blk00000001/sig0000004e ),
    .Q15(\NLW_blk00000001/blk00000039_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000038  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000004d ),
    .Q(s[3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000037  (
    .A0(\blk00000001/sig0000001e ),
    .A1(\blk00000001/sig0000001e ),
    .A2(\blk00000001/sig0000001e ),
    .A3(\blk00000001/sig0000001e ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000026 ),
    .Q(\blk00000001/sig0000004d ),
    .Q15(\NLW_blk00000001/blk00000037_Q15_UNCONNECTED )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000036  (
    .I0(\blk00000001/sig0000001f ),
    .O(\blk00000001/sig0000004c )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000035  (
    .I0(\blk00000001/sig00000020 ),
    .O(\blk00000001/sig0000004b )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000034  (
    .I0(\blk00000001/sig00000021 ),
    .O(\blk00000001/sig0000004a )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000033  (
    .I0(\blk00000001/sig00000023 ),
    .O(\blk00000001/sig00000049 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000032  (
    .I0(\blk00000001/sig00000022 ),
    .O(\blk00000001/sig00000048 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000031  (
    .I0(a[8]),
    .I1(b[8]),
    .O(\blk00000001/sig00000039 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000030  (
    .I0(a[7]),
    .I1(b[7]),
    .O(\blk00000001/sig00000036 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002f  (
    .I0(a[6]),
    .I1(b[6]),
    .O(\blk00000001/sig00000037 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002e  (
    .I0(a[5]),
    .I1(b[5]),
    .O(\blk00000001/sig00000038 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002d  (
    .I0(a[4]),
    .I1(b[4]),
    .O(\blk00000001/sig0000003a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002c  (
    .I0(a[3]),
    .I1(b[3]),
    .O(\blk00000001/sig0000002b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002b  (
    .I0(a[2]),
    .I1(b[2]),
    .O(\blk00000001/sig00000029 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002a  (
    .I0(a[1]),
    .I1(b[1]),
    .O(\blk00000001/sig0000002a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000029  (
    .I0(a[0]),
    .I1(b[0]),
    .O(\blk00000001/sig0000002c )
  );
  MUXCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig00000024 ),
    .DI(\blk00000001/sig0000001e ),
    .S(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig00000047 )
  );
  XORCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig00000024 ),
    .LI(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig00000046 )
  );
  MUXCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig00000047 ),
    .DI(\blk00000001/sig0000001e ),
    .S(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig00000045 )
  );
  XORCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig00000047 ),
    .LI(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig00000044 )
  );
  MUXCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig00000045 ),
    .DI(\blk00000001/sig0000001e ),
    .S(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig00000043 )
  );
  XORCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig00000045 ),
    .LI(\blk00000001/sig0000004a ),
    .O(\blk00000001/sig00000042 )
  );
  XORCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig00000040 ),
    .LI(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig00000041 )
  );
  MUXCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig00000040 ),
    .DI(\blk00000001/sig0000001e ),
    .S(\blk00000001/sig00000049 ),
    .O(\NLW_blk00000001/blk00000021_O_UNCONNECTED )
  );
  MUXCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig00000043 ),
    .DI(\blk00000001/sig0000001e ),
    .S(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig00000040 )
  );
  XORCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig00000043 ),
    .LI(\blk00000001/sig00000048 ),
    .O(\blk00000001/sig0000003f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000041 ),
    .Q(s[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000003f ),
    .Q(s[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000042 ),
    .Q(s[6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000044 ),
    .Q(s[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000046 ),
    .Q(s[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000019  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000031 ),
    .Q(\blk00000001/sig0000001f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000018  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000035 ),
    .Q(\blk00000001/sig00000020 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000017  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000034 ),
    .Q(\blk00000001/sig00000021 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000016  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000033 ),
    .Q(\blk00000001/sig00000022 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000015  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000032 ),
    .Q(\blk00000001/sig00000023 )
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig0000001e ),
    .DI(a[4]),
    .S(\blk00000001/sig0000003a ),
    .O(\blk00000001/sig0000003e )
  );
  MUXCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig0000003e ),
    .DI(a[5]),
    .S(\blk00000001/sig00000038 ),
    .O(\blk00000001/sig0000003d )
  );
  MUXCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig0000003d ),
    .DI(a[6]),
    .S(\blk00000001/sig00000037 ),
    .O(\blk00000001/sig0000003c )
  );
  MUXCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig0000003c ),
    .DI(a[7]),
    .S(\blk00000001/sig00000036 ),
    .O(\blk00000001/sig0000003b )
  );
  XORCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig0000003e ),
    .LI(\blk00000001/sig00000038 ),
    .O(\blk00000001/sig00000035 )
  );
  XORCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig0000003d ),
    .LI(\blk00000001/sig00000037 ),
    .O(\blk00000001/sig00000034 )
  );
  XORCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig0000003c ),
    .LI(\blk00000001/sig00000036 ),
    .O(\blk00000001/sig00000033 )
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig0000003b ),
    .LI(\blk00000001/sig00000039 ),
    .O(\blk00000001/sig00000032 )
  );
  XORCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig0000001e ),
    .LI(\blk00000001/sig0000003a ),
    .O(\blk00000001/sig00000031 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000002f ),
    .Q(\blk00000001/sig00000024 )
  );
  MUXCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig0000001e ),
    .DI(a[0]),
    .S(\blk00000001/sig0000002c ),
    .O(\blk00000001/sig00000030 )
  );
  MUXCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig0000002d ),
    .DI(a[3]),
    .S(\blk00000001/sig0000002b ),
    .O(\blk00000001/sig0000002f )
  );
  MUXCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig00000030 ),
    .DI(a[1]),
    .S(\blk00000001/sig0000002a ),
    .O(\blk00000001/sig0000002e )
  );
  MUXCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig0000002e ),
    .DI(a[2]),
    .S(\blk00000001/sig00000029 ),
    .O(\blk00000001/sig0000002d )
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig00000030 ),
    .LI(\blk00000001/sig0000002a ),
    .O(\blk00000001/sig00000028 )
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig0000002e ),
    .LI(\blk00000001/sig00000029 ),
    .O(\blk00000001/sig00000027 )
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig0000002d ),
    .LI(\blk00000001/sig0000002b ),
    .O(\blk00000001/sig00000026 )
  );
  XORCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig0000001e ),
    .LI(\blk00000001/sig0000002c ),
    .O(\blk00000001/sig00000025 )
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig0000001e )
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
