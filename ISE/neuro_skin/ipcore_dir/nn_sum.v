////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: nn_sum.v
// /___/   /\     Timestamp: Tue Jan 20 20:40:32 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/kyhu/Workspace/WSW/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/nn_sum.ngc /home/kyhu/Workspace/WSW/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/nn_sum.v 
// Device	: 6slx45csg324-2
// Input file	: /home/kyhu/Workspace/WSW/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/nn_sum.ngc
// Output file	: /home/kyhu/Workspace/WSW/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/nn_sum.v
// # of Modules	: 1
// Design Name	: nn_sum
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

module nn_sum (
  clk, ce, a, b, s
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input [16 : 0] a;
  input [19 : 0] b;
  output [19 : 0] s;
  
  // synthesis translate_off
  
  wire \blk00000001/sig000000a9 ;
  wire \blk00000001/sig000000a8 ;
  wire \blk00000001/sig000000a7 ;
  wire \blk00000001/sig000000a6 ;
  wire \blk00000001/sig000000a5 ;
  wire \blk00000001/sig000000a4 ;
  wire \blk00000001/sig000000a3 ;
  wire \blk00000001/sig000000a2 ;
  wire \blk00000001/sig000000a1 ;
  wire \blk00000001/sig000000a0 ;
  wire \blk00000001/sig0000009f ;
  wire \blk00000001/sig0000009e ;
  wire \blk00000001/sig0000009d ;
  wire \blk00000001/sig0000009c ;
  wire \blk00000001/sig0000009b ;
  wire \blk00000001/sig0000009a ;
  wire \blk00000001/sig00000099 ;
  wire \blk00000001/sig00000098 ;
  wire \blk00000001/sig00000097 ;
  wire \blk00000001/sig00000096 ;
  wire \blk00000001/sig00000095 ;
  wire \blk00000001/sig00000094 ;
  wire \blk00000001/sig00000093 ;
  wire \blk00000001/sig00000092 ;
  wire \blk00000001/sig00000091 ;
  wire \blk00000001/sig00000090 ;
  wire \blk00000001/sig0000008f ;
  wire \blk00000001/sig0000008e ;
  wire \blk00000001/sig0000008d ;
  wire \blk00000001/sig0000008c ;
  wire \blk00000001/sig0000008b ;
  wire \blk00000001/sig0000008a ;
  wire \blk00000001/sig00000089 ;
  wire \blk00000001/sig00000088 ;
  wire \blk00000001/sig00000087 ;
  wire \blk00000001/sig00000086 ;
  wire \blk00000001/sig00000085 ;
  wire \blk00000001/sig00000084 ;
  wire \blk00000001/sig00000083 ;
  wire \blk00000001/sig00000082 ;
  wire \blk00000001/sig00000081 ;
  wire \blk00000001/sig00000080 ;
  wire \blk00000001/sig0000007f ;
  wire \blk00000001/sig0000007e ;
  wire \blk00000001/sig0000007d ;
  wire \blk00000001/sig0000007c ;
  wire \blk00000001/sig0000007b ;
  wire \blk00000001/sig0000007a ;
  wire \blk00000001/sig00000079 ;
  wire \blk00000001/sig00000078 ;
  wire \blk00000001/sig00000077 ;
  wire \blk00000001/sig00000076 ;
  wire \blk00000001/sig00000075 ;
  wire \blk00000001/sig00000074 ;
  wire \blk00000001/sig00000073 ;
  wire \blk00000001/sig00000072 ;
  wire \blk00000001/sig00000071 ;
  wire \blk00000001/sig00000070 ;
  wire \blk00000001/sig0000006f ;
  wire \blk00000001/sig0000006e ;
  wire \blk00000001/sig0000006d ;
  wire \blk00000001/sig0000006c ;
  wire \blk00000001/sig0000006b ;
  wire \blk00000001/sig0000006a ;
  wire \blk00000001/sig00000069 ;
  wire \blk00000001/sig00000068 ;
  wire \blk00000001/sig00000067 ;
  wire \blk00000001/sig00000066 ;
  wire \blk00000001/sig00000065 ;
  wire \blk00000001/sig00000064 ;
  wire \blk00000001/sig00000063 ;
  wire \blk00000001/sig00000062 ;
  wire \blk00000001/sig00000061 ;
  wire \blk00000001/sig00000060 ;
  wire \blk00000001/sig0000005f ;
  wire \blk00000001/sig0000005e ;
  wire \blk00000001/sig0000005d ;
  wire \blk00000001/sig0000005c ;
  wire \blk00000001/sig0000005b ;
  wire \blk00000001/sig0000005a ;
  wire \blk00000001/sig00000059 ;
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
  wire \NLW_blk00000001/blk00000083_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000081_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007f_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007d_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000007b_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000079_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000077_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000075_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000073_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000071_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000004b_O_UNCONNECTED ;
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000084  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a9 ),
    .Q(s[0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000083  (
    .A0(\blk00000001/sig0000003c ),
    .A1(\blk00000001/sig0000003c ),
    .A2(\blk00000001/sig0000003c ),
    .A3(\blk00000001/sig0000003c ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000048 ),
    .Q(\blk00000001/sig000000a9 ),
    .Q15(\NLW_blk00000001/blk00000083_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000082  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a8 ),
    .Q(s[1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000081  (
    .A0(\blk00000001/sig0000003c ),
    .A1(\blk00000001/sig0000003c ),
    .A2(\blk00000001/sig0000003c ),
    .A3(\blk00000001/sig0000003c ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000051 ),
    .Q(\blk00000001/sig000000a8 ),
    .Q15(\NLW_blk00000001/blk00000081_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000080  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a7 ),
    .Q(s[3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007f  (
    .A0(\blk00000001/sig0000003c ),
    .A1(\blk00000001/sig0000003c ),
    .A2(\blk00000001/sig0000003c ),
    .A3(\blk00000001/sig0000003c ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000004f ),
    .Q(\blk00000001/sig000000a7 ),
    .Q15(\NLW_blk00000001/blk0000007f_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a6 ),
    .Q(s[4])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007d  (
    .A0(\blk00000001/sig0000003c ),
    .A1(\blk00000001/sig0000003c ),
    .A2(\blk00000001/sig0000003c ),
    .A3(\blk00000001/sig0000003c ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000004e ),
    .Q(\blk00000001/sig000000a6 ),
    .Q15(\NLW_blk00000001/blk0000007d_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a5 ),
    .Q(s[2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000007b  (
    .A0(\blk00000001/sig0000003c ),
    .A1(\blk00000001/sig0000003c ),
    .A2(\blk00000001/sig0000003c ),
    .A3(\blk00000001/sig0000003c ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000050 ),
    .Q(\blk00000001/sig000000a5 ),
    .Q15(\NLW_blk00000001/blk0000007b_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a4 ),
    .Q(s[5])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000079  (
    .A0(\blk00000001/sig0000003c ),
    .A1(\blk00000001/sig0000003c ),
    .A2(\blk00000001/sig0000003c ),
    .A3(\blk00000001/sig0000003c ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000004d ),
    .Q(\blk00000001/sig000000a4 ),
    .Q15(\NLW_blk00000001/blk00000079_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000078  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a3 ),
    .Q(s[6])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000077  (
    .A0(\blk00000001/sig0000003c ),
    .A1(\blk00000001/sig0000003c ),
    .A2(\blk00000001/sig0000003c ),
    .A3(\blk00000001/sig0000003c ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000004c ),
    .Q(\blk00000001/sig000000a3 ),
    .Q15(\NLW_blk00000001/blk00000077_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000076  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a2 ),
    .Q(s[8])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000075  (
    .A0(\blk00000001/sig0000003c ),
    .A1(\blk00000001/sig0000003c ),
    .A2(\blk00000001/sig0000003c ),
    .A3(\blk00000001/sig0000003c ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000004a ),
    .Q(\blk00000001/sig000000a2 ),
    .Q15(\NLW_blk00000001/blk00000075_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000074  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a1 ),
    .Q(s[9])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000073  (
    .A0(\blk00000001/sig0000003c ),
    .A1(\blk00000001/sig0000003c ),
    .A2(\blk00000001/sig0000003c ),
    .A3(\blk00000001/sig0000003c ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000049 ),
    .Q(\blk00000001/sig000000a1 ),
    .Q15(\NLW_blk00000001/blk00000073_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000072  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig000000a0 ),
    .Q(s[7])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000071  (
    .A0(\blk00000001/sig0000003c ),
    .A1(\blk00000001/sig0000003c ),
    .A2(\blk00000001/sig0000003c ),
    .A3(\blk00000001/sig0000003c ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000004b ),
    .Q(\blk00000001/sig000000a0 ),
    .Q15(\NLW_blk00000001/blk00000071_Q15_UNCONNECTED )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000070  (
    .I0(\blk00000001/sig0000003d ),
    .O(\blk00000001/sig0000009f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006f  (
    .I0(\blk00000001/sig0000003e ),
    .O(\blk00000001/sig0000009e )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006e  (
    .I0(\blk00000001/sig0000003f ),
    .O(\blk00000001/sig0000009d )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006d  (
    .I0(\blk00000001/sig00000046 ),
    .O(\blk00000001/sig0000009c )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006c  (
    .I0(\blk00000001/sig00000040 ),
    .O(\blk00000001/sig0000009b )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006b  (
    .I0(\blk00000001/sig00000041 ),
    .O(\blk00000001/sig0000009a )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000006a  (
    .I0(\blk00000001/sig00000042 ),
    .O(\blk00000001/sig00000099 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000069  (
    .I0(\blk00000001/sig00000043 ),
    .O(\blk00000001/sig00000098 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000068  (
    .I0(\blk00000001/sig00000044 ),
    .O(\blk00000001/sig00000097 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000067  (
    .I0(\blk00000001/sig00000045 ),
    .O(\blk00000001/sig00000096 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000066  (
    .I0(a[16]),
    .I1(b[19]),
    .O(\blk00000001/sig00000078 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000065  (
    .I0(a[16]),
    .I1(b[18]),
    .O(\blk00000001/sig00000070 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000064  (
    .I0(a[16]),
    .I1(b[17]),
    .O(\blk00000001/sig00000071 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000063  (
    .I0(a[16]),
    .I1(b[16]),
    .O(\blk00000001/sig00000072 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000062  (
    .I0(a[15]),
    .I1(b[15]),
    .O(\blk00000001/sig00000073 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000061  (
    .I0(a[14]),
    .I1(b[14]),
    .O(\blk00000001/sig00000074 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000060  (
    .I0(a[13]),
    .I1(b[13]),
    .O(\blk00000001/sig00000075 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005f  (
    .I0(a[12]),
    .I1(b[12]),
    .O(\blk00000001/sig00000076 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005e  (
    .I0(a[11]),
    .I1(b[11]),
    .O(\blk00000001/sig00000077 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005d  (
    .I0(a[10]),
    .I1(b[10]),
    .O(\blk00000001/sig00000079 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005c  (
    .I0(a[9]),
    .I1(b[9]),
    .O(\blk00000001/sig0000005a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005b  (
    .I0(a[8]),
    .I1(b[8]),
    .O(\blk00000001/sig00000052 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005a  (
    .I0(a[7]),
    .I1(b[7]),
    .O(\blk00000001/sig00000053 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000059  (
    .I0(a[6]),
    .I1(b[6]),
    .O(\blk00000001/sig00000054 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000058  (
    .I0(a[5]),
    .I1(b[5]),
    .O(\blk00000001/sig00000055 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000057  (
    .I0(a[4]),
    .I1(b[4]),
    .O(\blk00000001/sig00000056 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000056  (
    .I0(a[3]),
    .I1(b[3]),
    .O(\blk00000001/sig00000057 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000055  (
    .I0(a[2]),
    .I1(b[2]),
    .O(\blk00000001/sig00000058 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000054  (
    .I0(a[1]),
    .I1(b[1]),
    .O(\blk00000001/sig00000059 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000053  (
    .I0(a[0]),
    .I1(b[0]),
    .O(\blk00000001/sig0000005b )
  );
  MUXCY   \blk00000001/blk00000052  (
    .CI(\blk00000001/sig00000047 ),
    .DI(\blk00000001/sig0000003c ),
    .S(\blk00000001/sig0000009f ),
    .O(\blk00000001/sig00000095 )
  );
  XORCY   \blk00000001/blk00000051  (
    .CI(\blk00000001/sig00000047 ),
    .LI(\blk00000001/sig0000009f ),
    .O(\blk00000001/sig00000094 )
  );
  MUXCY   \blk00000001/blk00000050  (
    .CI(\blk00000001/sig00000095 ),
    .DI(\blk00000001/sig0000003c ),
    .S(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig00000093 )
  );
  XORCY   \blk00000001/blk0000004f  (
    .CI(\blk00000001/sig00000095 ),
    .LI(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig00000092 )
  );
  MUXCY   \blk00000001/blk0000004e  (
    .CI(\blk00000001/sig00000093 ),
    .DI(\blk00000001/sig0000003c ),
    .S(\blk00000001/sig0000009d ),
    .O(\blk00000001/sig00000091 )
  );
  XORCY   \blk00000001/blk0000004d  (
    .CI(\blk00000001/sig00000093 ),
    .LI(\blk00000001/sig0000009d ),
    .O(\blk00000001/sig00000090 )
  );
  XORCY   \blk00000001/blk0000004c  (
    .CI(\blk00000001/sig00000084 ),
    .LI(\blk00000001/sig0000009c ),
    .O(\blk00000001/sig0000008f )
  );
  MUXCY   \blk00000001/blk0000004b  (
    .CI(\blk00000001/sig00000084 ),
    .DI(\blk00000001/sig0000003c ),
    .S(\blk00000001/sig0000009c ),
    .O(\NLW_blk00000001/blk0000004b_O_UNCONNECTED )
  );
  MUXCY   \blk00000001/blk0000004a  (
    .CI(\blk00000001/sig00000091 ),
    .DI(\blk00000001/sig0000003c ),
    .S(\blk00000001/sig0000009b ),
    .O(\blk00000001/sig0000008e )
  );
  XORCY   \blk00000001/blk00000049  (
    .CI(\blk00000001/sig00000091 ),
    .LI(\blk00000001/sig0000009b ),
    .O(\blk00000001/sig0000008d )
  );
  MUXCY   \blk00000001/blk00000048  (
    .CI(\blk00000001/sig0000008e ),
    .DI(\blk00000001/sig0000003c ),
    .S(\blk00000001/sig0000009a ),
    .O(\blk00000001/sig0000008c )
  );
  XORCY   \blk00000001/blk00000047  (
    .CI(\blk00000001/sig0000008e ),
    .LI(\blk00000001/sig0000009a ),
    .O(\blk00000001/sig0000008b )
  );
  MUXCY   \blk00000001/blk00000046  (
    .CI(\blk00000001/sig0000008c ),
    .DI(\blk00000001/sig0000003c ),
    .S(\blk00000001/sig00000099 ),
    .O(\blk00000001/sig0000008a )
  );
  XORCY   \blk00000001/blk00000045  (
    .CI(\blk00000001/sig0000008c ),
    .LI(\blk00000001/sig00000099 ),
    .O(\blk00000001/sig00000089 )
  );
  MUXCY   \blk00000001/blk00000044  (
    .CI(\blk00000001/sig0000008a ),
    .DI(\blk00000001/sig0000003c ),
    .S(\blk00000001/sig00000098 ),
    .O(\blk00000001/sig00000088 )
  );
  XORCY   \blk00000001/blk00000043  (
    .CI(\blk00000001/sig0000008a ),
    .LI(\blk00000001/sig00000098 ),
    .O(\blk00000001/sig00000087 )
  );
  MUXCY   \blk00000001/blk00000042  (
    .CI(\blk00000001/sig00000088 ),
    .DI(\blk00000001/sig0000003c ),
    .S(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig00000086 )
  );
  XORCY   \blk00000001/blk00000041  (
    .CI(\blk00000001/sig00000088 ),
    .LI(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig00000085 )
  );
  MUXCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig00000086 ),
    .DI(\blk00000001/sig0000003c ),
    .S(\blk00000001/sig00000096 ),
    .O(\blk00000001/sig00000084 )
  );
  XORCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig00000086 ),
    .LI(\blk00000001/sig00000096 ),
    .O(\blk00000001/sig00000083 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000008f ),
    .Q(s[19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000083 ),
    .Q(s[18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000085 ),
    .Q(s[17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000087 ),
    .Q(s[16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000003a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000089 ),
    .Q(s[15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000039  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000008b ),
    .Q(s[14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000038  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000008d ),
    .Q(s[13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000037  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000090 ),
    .Q(s[12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000036  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000092 ),
    .Q(s[11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000035  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000094 ),
    .Q(s[10])
  );
  MUXCY   \blk00000001/blk00000034  (
    .CI(\blk00000001/sig0000003c ),
    .DI(a[10]),
    .S(\blk00000001/sig00000079 ),
    .O(\blk00000001/sig00000082 )
  );
  MUXCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig00000082 ),
    .DI(a[11]),
    .S(\blk00000001/sig00000077 ),
    .O(\blk00000001/sig00000081 )
  );
  MUXCY   \blk00000001/blk00000032  (
    .CI(\blk00000001/sig00000081 ),
    .DI(a[12]),
    .S(\blk00000001/sig00000076 ),
    .O(\blk00000001/sig00000080 )
  );
  MUXCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig00000080 ),
    .DI(a[13]),
    .S(\blk00000001/sig00000075 ),
    .O(\blk00000001/sig0000007f )
  );
  MUXCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig0000007f ),
    .DI(a[14]),
    .S(\blk00000001/sig00000074 ),
    .O(\blk00000001/sig0000007e )
  );
  MUXCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig0000007e ),
    .DI(a[15]),
    .S(\blk00000001/sig00000073 ),
    .O(\blk00000001/sig0000007d )
  );
  MUXCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig0000007d ),
    .DI(a[16]),
    .S(\blk00000001/sig00000072 ),
    .O(\blk00000001/sig0000007c )
  );
  MUXCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig0000007c ),
    .DI(a[16]),
    .S(\blk00000001/sig00000071 ),
    .O(\blk00000001/sig0000007b )
  );
  MUXCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig0000007b ),
    .DI(a[16]),
    .S(\blk00000001/sig00000070 ),
    .O(\blk00000001/sig0000007a )
  );
  XORCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig00000082 ),
    .LI(\blk00000001/sig00000077 ),
    .O(\blk00000001/sig0000006f )
  );
  XORCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig00000081 ),
    .LI(\blk00000001/sig00000076 ),
    .O(\blk00000001/sig0000006e )
  );
  XORCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig00000080 ),
    .LI(\blk00000001/sig00000075 ),
    .O(\blk00000001/sig0000006d )
  );
  XORCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig0000007f ),
    .LI(\blk00000001/sig00000074 ),
    .O(\blk00000001/sig0000006c )
  );
  XORCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig0000007e ),
    .LI(\blk00000001/sig00000073 ),
    .O(\blk00000001/sig0000006b )
  );
  XORCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig0000007d ),
    .LI(\blk00000001/sig00000072 ),
    .O(\blk00000001/sig0000006a )
  );
  XORCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig0000007c ),
    .LI(\blk00000001/sig00000071 ),
    .O(\blk00000001/sig00000069 )
  );
  XORCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig0000007b ),
    .LI(\blk00000001/sig00000070 ),
    .O(\blk00000001/sig00000068 )
  );
  XORCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig0000007a ),
    .LI(\blk00000001/sig00000078 ),
    .O(\blk00000001/sig00000067 )
  );
  XORCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig0000003c ),
    .LI(\blk00000001/sig00000079 ),
    .O(\blk00000001/sig00000066 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000067 ),
    .Q(\blk00000001/sig00000046 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000020  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000068 ),
    .Q(\blk00000001/sig00000045 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000069 ),
    .Q(\blk00000001/sig00000044 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000006a ),
    .Q(\blk00000001/sig00000043 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000006b ),
    .Q(\blk00000001/sig00000042 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000006c ),
    .Q(\blk00000001/sig00000041 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000006d ),
    .Q(\blk00000001/sig00000040 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000006e ),
    .Q(\blk00000001/sig0000003f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000019  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000006f ),
    .Q(\blk00000001/sig0000003e )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000018  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000066 ),
    .Q(\blk00000001/sig0000003d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000017  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000064 ),
    .Q(\blk00000001/sig00000047 )
  );
  MUXCY   \blk00000001/blk00000016  (
    .CI(\blk00000001/sig0000003c ),
    .DI(a[0]),
    .S(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig00000065 )
  );
  MUXCY   \blk00000001/blk00000015  (
    .CI(\blk00000001/sig0000005c ),
    .DI(a[9]),
    .S(\blk00000001/sig0000005a ),
    .O(\blk00000001/sig00000064 )
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig00000065 ),
    .DI(a[1]),
    .S(\blk00000001/sig00000059 ),
    .O(\blk00000001/sig00000063 )
  );
  MUXCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000063 ),
    .DI(a[2]),
    .S(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig00000062 )
  );
  MUXCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig00000062 ),
    .DI(a[3]),
    .S(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000061 )
  );
  MUXCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig00000061 ),
    .DI(a[4]),
    .S(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig00000060 )
  );
  MUXCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000060 ),
    .DI(a[5]),
    .S(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig0000005f )
  );
  MUXCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig0000005f ),
    .DI(a[6]),
    .S(\blk00000001/sig00000054 ),
    .O(\blk00000001/sig0000005e )
  );
  MUXCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig0000005e ),
    .DI(a[7]),
    .S(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig0000005d )
  );
  MUXCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig0000005d ),
    .DI(a[8]),
    .S(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig0000005c )
  );
  XORCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig00000065 ),
    .LI(\blk00000001/sig00000059 ),
    .O(\blk00000001/sig00000051 )
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig00000063 ),
    .LI(\blk00000001/sig00000058 ),
    .O(\blk00000001/sig00000050 )
  );
  XORCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig00000062 ),
    .LI(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig0000004f )
  );
  XORCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig00000061 ),
    .LI(\blk00000001/sig00000056 ),
    .O(\blk00000001/sig0000004e )
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig00000060 ),
    .LI(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig0000004d )
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig0000005f ),
    .LI(\blk00000001/sig00000054 ),
    .O(\blk00000001/sig0000004c )
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig0000005e ),
    .LI(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig0000004b )
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig0000005d ),
    .LI(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig0000004a )
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig0000005c ),
    .LI(\blk00000001/sig0000005a ),
    .O(\blk00000001/sig00000049 )
  );
  XORCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig0000003c ),
    .LI(\blk00000001/sig0000005b ),
    .O(\blk00000001/sig00000048 )
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig0000003c )
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
