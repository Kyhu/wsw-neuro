////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: mult_60.v
// /___/   /\     Timestamp: Thu Nov 13 18:15:00 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog D:/WSW14/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/mult_60.ngc D:/WSW14/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/mult_60.v 
// Device	: 6slx45csg324-2
// Input file	: D:/WSW14/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/mult_60.ngc
// Output file	: D:/WSW14/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/mult_60.v
// # of Modules	: 1
// Design Name	: mult_60
// Xilinx        : C:\Xilinx\14.6\ISE_DS\ISE\
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

module mult_60 (
  clk, a, p
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input [9 : 0] a;
  output [15 : 0] p;
  
  // synthesis translate_off
  
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
  wire \blk00000001/sig0000001d ;
  wire \blk00000001/sig0000001c ;
  wire \blk00000001/sig0000001b ;
  wire [0 : 0] NlwRenamedSig_OI_p;
  assign
    p[1] = NlwRenamedSig_OI_p[0],
    p[0] = NlwRenamedSig_OI_p[0];
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000036  (
    .I0(a[6]),
    .I1(a[7]),
    .O(\blk00000001/sig0000001b )
  );
  LUT3 #(
    .INIT ( 8'h56 ))
  \blk00000001/blk00000035  (
    .I0(a[8]),
    .I1(a[7]),
    .I2(a[6]),
    .O(\blk00000001/sig0000001c )
  );
  LUT4 #(
    .INIT ( 16'h5556 ))
  \blk00000001/blk00000034  (
    .I0(a[9]),
    .I1(a[7]),
    .I2(a[8]),
    .I3(a[6]),
    .O(\blk00000001/sig0000001d )
  );
  LUT4 #(
    .INIT ( 16'h5554 ))
  \blk00000001/blk00000033  (
    .I0(a[6]),
    .I1(a[7]),
    .I2(a[8]),
    .I3(a[9]),
    .O(\blk00000001/sig0000001e )
  );
  LUT4 #(
    .INIT ( 16'h9998 ))
  \blk00000001/blk00000032  (
    .I0(a[7]),
    .I1(a[6]),
    .I2(a[8]),
    .I3(a[9]),
    .O(\blk00000001/sig0000001f )
  );
  LUT4 #(
    .INIT ( 16'hA9A8 ))
  \blk00000001/blk00000031  (
    .I0(a[8]),
    .I1(a[7]),
    .I2(a[6]),
    .I3(a[9]),
    .O(\blk00000001/sig00000020 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \blk00000001/blk00000030  (
    .I0(a[9]),
    .I1(a[7]),
    .I2(a[6]),
    .I3(a[8]),
    .O(\blk00000001/sig00000021 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000002f  (
    .I0(a[0]),
    .I1(a[1]),
    .O(\blk00000001/sig00000022 )
  );
  LUT3 #(
    .INIT ( 8'h56 ))
  \blk00000001/blk0000002e  (
    .I0(a[2]),
    .I1(a[1]),
    .I2(a[0]),
    .O(\blk00000001/sig00000023 )
  );
  LUT4 #(
    .INIT ( 16'h5556 ))
  \blk00000001/blk0000002d  (
    .I0(a[3]),
    .I1(a[1]),
    .I2(a[2]),
    .I3(a[0]),
    .O(\blk00000001/sig00000024 )
  );
  LUT5 #(
    .INIT ( 32'h9999999A ))
  \blk00000001/blk0000002c  (
    .I0(a[4]),
    .I1(a[0]),
    .I2(a[1]),
    .I3(a[2]),
    .I4(a[3]),
    .O(\blk00000001/sig00000025 )
  );
  LUT6 #(
    .INIT ( 64'h999999996969696C ))
  \blk00000001/blk0000002b  (
    .I0(a[1]),
    .I1(a[5]),
    .I2(a[0]),
    .I3(a[3]),
    .I4(a[2]),
    .I5(a[4]),
    .O(\blk00000001/sig00000026 )
  );
  LUT6 #(
    .INIT ( 64'h6A5666556A566654 ))
  \blk00000001/blk0000002a  (
    .I0(a[2]),
    .I1(a[5]),
    .I2(a[4]),
    .I3(a[1]),
    .I4(a[0]),
    .I5(a[3]),
    .O(\blk00000001/sig00000027 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA66A65564 ))
  \blk00000001/blk00000029  (
    .I0(a[3]),
    .I1(a[5]),
    .I2(a[0]),
    .I3(a[4]),
    .I4(a[1]),
    .I5(a[2]),
    .O(\blk00000001/sig00000028 )
  );
  LUT6 #(
    .INIT ( 64'hA8AAA9A8A9AAA9A8 ))
  \blk00000001/blk00000028  (
    .I0(a[4]),
    .I1(a[2]),
    .I2(a[3]),
    .I3(a[5]),
    .I4(a[1]),
    .I5(a[0]),
    .O(\blk00000001/sig00000029 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAA8A8A8 ))
  \blk00000001/blk00000027  (
    .I0(a[5]),
    .I1(a[4]),
    .I2(a[2]),
    .I3(a[0]),
    .I4(a[1]),
    .I5(a[3]),
    .O(\blk00000001/sig0000002a )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000026  (
    .I0(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000040 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000025  (
    .I0(\blk00000001/sig0000001f ),
    .O(\blk00000001/sig0000003f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000024  (
    .I0(\blk00000001/sig00000020 ),
    .O(\blk00000001/sig0000003e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000023  (
    .C(clk),
    .D(a[0]),
    .Q(p[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000022  (
    .C(clk),
    .D(\blk00000001/sig00000022 ),
    .Q(p[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(clk),
    .D(\blk00000001/sig00000023 ),
    .Q(p[4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000020  (
    .C(clk),
    .D(\blk00000001/sig00000024 ),
    .Q(p[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001f  (
    .C(clk),
    .D(\blk00000001/sig00000025 ),
    .Q(p[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001e  (
    .C(clk),
    .D(\blk00000001/sig00000026 ),
    .Q(p[7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d  (
    .C(clk),
    .D(\blk00000001/sig00000036 ),
    .Q(p[8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001c  (
    .C(clk),
    .D(\blk00000001/sig00000037 ),
    .Q(p[9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001b  (
    .C(clk),
    .D(\blk00000001/sig00000038 ),
    .Q(p[10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001a  (
    .C(clk),
    .D(\blk00000001/sig00000039 ),
    .Q(p[11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000019  (
    .C(clk),
    .D(\blk00000001/sig0000003a ),
    .Q(p[12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000018  (
    .C(clk),
    .D(\blk00000001/sig0000003b ),
    .Q(p[13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000017  (
    .C(clk),
    .D(\blk00000001/sig0000003c ),
    .Q(p[14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000016  (
    .C(clk),
    .D(\blk00000001/sig0000003d ),
    .Q(p[15])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000015  (
    .I0(\blk00000001/sig00000027 ),
    .I1(a[6]),
    .O(\blk00000001/sig00000035 )
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(NlwRenamedSig_OI_p[0]),
    .DI(\blk00000001/sig00000027 ),
    .S(\blk00000001/sig00000035 ),
    .O(\blk00000001/sig00000034 )
  );
  XORCY   \blk00000001/blk00000013  (
    .CI(NlwRenamedSig_OI_p[0]),
    .LI(\blk00000001/sig00000035 ),
    .O(\blk00000001/sig00000036 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000012  (
    .I0(\blk00000001/sig00000028 ),
    .I1(\blk00000001/sig0000001b ),
    .O(\blk00000001/sig00000033 )
  );
  MUXCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig00000034 ),
    .DI(\blk00000001/sig00000028 ),
    .S(\blk00000001/sig00000033 ),
    .O(\blk00000001/sig00000032 )
  );
  XORCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000034 ),
    .LI(\blk00000001/sig00000033 ),
    .O(\blk00000001/sig00000037 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000f  (
    .I0(\blk00000001/sig00000029 ),
    .I1(\blk00000001/sig0000001c ),
    .O(\blk00000001/sig00000031 )
  );
  MUXCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000032 ),
    .DI(\blk00000001/sig00000029 ),
    .S(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig00000030 )
  );
  XORCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig00000032 ),
    .LI(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig00000038 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000c  (
    .I0(\blk00000001/sig0000002a ),
    .I1(\blk00000001/sig0000001d ),
    .O(\blk00000001/sig0000002f )
  );
  MUXCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig00000030 ),
    .DI(\blk00000001/sig0000002a ),
    .S(\blk00000001/sig0000002f ),
    .O(\blk00000001/sig0000002e )
  );
  XORCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig00000030 ),
    .LI(\blk00000001/sig0000002f ),
    .O(\blk00000001/sig00000039 )
  );
  MUXCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig0000002e ),
    .DI(NlwRenamedSig_OI_p[0]),
    .S(\blk00000001/sig00000040 ),
    .O(\blk00000001/sig0000002d )
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig0000002e ),
    .LI(\blk00000001/sig00000040 ),
    .O(\blk00000001/sig0000003a )
  );
  MUXCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig0000002d ),
    .DI(NlwRenamedSig_OI_p[0]),
    .S(\blk00000001/sig0000003f ),
    .O(\blk00000001/sig0000002c )
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig0000002d ),
    .LI(\blk00000001/sig0000003f ),
    .O(\blk00000001/sig0000003b )
  );
  MUXCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig0000002c ),
    .DI(NlwRenamedSig_OI_p[0]),
    .S(\blk00000001/sig0000003e ),
    .O(\blk00000001/sig0000002b )
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig0000002c ),
    .LI(\blk00000001/sig0000003e ),
    .O(\blk00000001/sig0000003c )
  );
  XORCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig0000002b ),
    .LI(\blk00000001/sig00000021 ),
    .O(\blk00000001/sig0000003d )
  );
  GND   \blk00000001/blk00000002  (
    .G(NlwRenamedSig_OI_p[0])
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
