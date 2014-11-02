////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: mult_255.v
// /___/   /\     Timestamp: Sun Nov  2 20:02:42 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/kyhu/Workspace/WSW/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/mult_255.ngc /home/kyhu/Workspace/WSW/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/mult_255.v 
// Device	: 6slx45csg324-2
// Input file	: /home/kyhu/Workspace/WSW/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/mult_255.ngc
// Output file	: /home/kyhu/Workspace/WSW/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/mult_255.v
// # of Modules	: 1
// Design Name	: mult_255
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

module mult_255 (
  clk, a, p
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input [9 : 0] a;
  output [17 : 0] p;
  
  // synthesis translate_off
  
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
  wire \NLW_blk00000001/blk00000062_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000060_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000005e_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000005c_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000005a_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000058_Q15_UNCONNECTED ;
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000063  (
    .C(clk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig0000006d ),
    .Q(p[1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000062  (
    .A0(\blk00000001/sig0000001e ),
    .A1(\blk00000001/sig0000001e ),
    .A2(\blk00000001/sig0000001e ),
    .A3(\blk00000001/sig0000001e ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(clk),
    .D(\blk00000001/sig00000030 ),
    .Q(\blk00000001/sig0000006d ),
    .Q15(\NLW_blk00000001/blk00000062_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000061  (
    .C(clk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig0000006c ),
    .Q(p[2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000060  (
    .A0(\blk00000001/sig0000001e ),
    .A1(\blk00000001/sig0000001e ),
    .A2(\blk00000001/sig0000001e ),
    .A3(\blk00000001/sig0000001e ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(clk),
    .D(\blk00000001/sig00000031 ),
    .Q(\blk00000001/sig0000006c ),
    .Q15(\NLW_blk00000001/blk00000060_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005f  (
    .C(clk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig0000006b ),
    .Q(p[0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000005e  (
    .A0(\blk00000001/sig0000001e ),
    .A1(\blk00000001/sig0000001e ),
    .A2(\blk00000001/sig0000001e ),
    .A3(\blk00000001/sig0000001e ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(clk),
    .D(\blk00000001/sig0000002f ),
    .Q(\blk00000001/sig0000006b ),
    .Q15(\NLW_blk00000001/blk0000005e_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005d  (
    .C(clk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig0000006a ),
    .Q(p[4])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000005c  (
    .A0(\blk00000001/sig0000001e ),
    .A1(\blk00000001/sig0000001e ),
    .A2(\blk00000001/sig0000001e ),
    .A3(\blk00000001/sig0000001e ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(clk),
    .D(\blk00000001/sig00000033 ),
    .Q(\blk00000001/sig0000006a ),
    .Q15(\NLW_blk00000001/blk0000005c_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005b  (
    .C(clk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig00000069 ),
    .Q(p[5])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000005a  (
    .A0(\blk00000001/sig0000001e ),
    .A1(\blk00000001/sig0000001e ),
    .A2(\blk00000001/sig0000001e ),
    .A3(\blk00000001/sig0000001e ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(clk),
    .D(\blk00000001/sig00000034 ),
    .Q(\blk00000001/sig00000069 ),
    .Q15(\NLW_blk00000001/blk0000005a_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000059  (
    .C(clk),
    .CE(\blk00000001/sig00000067 ),
    .D(\blk00000001/sig00000068 ),
    .Q(p[3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000058  (
    .A0(\blk00000001/sig0000001e ),
    .A1(\blk00000001/sig0000001e ),
    .A2(\blk00000001/sig0000001e ),
    .A3(\blk00000001/sig0000001e ),
    .CE(\blk00000001/sig00000067 ),
    .CLK(clk),
    .D(\blk00000001/sig00000032 ),
    .Q(\blk00000001/sig00000068 ),
    .Q15(\NLW_blk00000001/blk00000058_Q15_UNCONNECTED )
  );
  VCC   \blk00000001/blk00000057  (
    .P(\blk00000001/sig00000067 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000056  (
    .I0(\blk00000001/sig00000024 ),
    .O(\blk00000001/sig00000066 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000055  (
    .I0(\blk00000001/sig00000025 ),
    .O(\blk00000001/sig00000065 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000054  (
    .I0(\blk00000001/sig00000026 ),
    .O(\blk00000001/sig00000064 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000053  (
    .C(clk),
    .D(\blk00000001/sig00000058 ),
    .Q(p[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000052  (
    .C(clk),
    .D(\blk00000001/sig00000059 ),
    .Q(p[7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000051  (
    .C(clk),
    .D(\blk00000001/sig0000005a ),
    .Q(p[8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000050  (
    .C(clk),
    .D(\blk00000001/sig0000005b ),
    .Q(p[9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004f  (
    .C(clk),
    .D(\blk00000001/sig0000005c ),
    .Q(p[10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004e  (
    .C(clk),
    .D(\blk00000001/sig0000005d ),
    .Q(p[11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d  (
    .C(clk),
    .D(\blk00000001/sig0000005e ),
    .Q(p[12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004c  (
    .C(clk),
    .D(\blk00000001/sig0000005f ),
    .Q(p[13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004b  (
    .C(clk),
    .D(\blk00000001/sig00000060 ),
    .Q(p[14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004a  (
    .C(clk),
    .D(\blk00000001/sig00000061 ),
    .Q(p[15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000049  (
    .C(clk),
    .D(\blk00000001/sig00000062 ),
    .Q(p[16])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000048  (
    .C(clk),
    .D(\blk00000001/sig00000063 ),
    .Q(p[17])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000047  (
    .I0(\blk00000001/sig0000001f ),
    .I1(\blk00000001/sig00000028 ),
    .O(\blk00000001/sig00000057 )
  );
  MUXCY   \blk00000001/blk00000046  (
    .CI(\blk00000001/sig0000001e ),
    .DI(\blk00000001/sig00000028 ),
    .S(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000056 )
  );
  XORCY   \blk00000001/blk00000045  (
    .CI(\blk00000001/sig0000001e ),
    .LI(\blk00000001/sig00000057 ),
    .O(\blk00000001/sig00000058 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000044  (
    .I0(\blk00000001/sig00000020 ),
    .I1(\blk00000001/sig00000028 ),
    .O(\blk00000001/sig00000055 )
  );
  MUXCY   \blk00000001/blk00000043  (
    .CI(\blk00000001/sig00000056 ),
    .DI(\blk00000001/sig00000028 ),
    .S(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000054 )
  );
  XORCY   \blk00000001/blk00000042  (
    .CI(\blk00000001/sig00000056 ),
    .LI(\blk00000001/sig00000055 ),
    .O(\blk00000001/sig00000059 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000041  (
    .I0(\blk00000001/sig00000029 ),
    .I1(\blk00000001/sig00000021 ),
    .O(\blk00000001/sig00000053 )
  );
  MUXCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig00000054 ),
    .DI(\blk00000001/sig00000029 ),
    .S(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig00000052 )
  );
  XORCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig00000054 ),
    .LI(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig0000005a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003e  (
    .I0(\blk00000001/sig0000002a ),
    .I1(\blk00000001/sig00000022 ),
    .O(\blk00000001/sig00000051 )
  );
  MUXCY   \blk00000001/blk0000003d  (
    .CI(\blk00000001/sig00000052 ),
    .DI(\blk00000001/sig0000002a ),
    .S(\blk00000001/sig00000051 ),
    .O(\blk00000001/sig00000050 )
  );
  XORCY   \blk00000001/blk0000003c  (
    .CI(\blk00000001/sig00000052 ),
    .LI(\blk00000001/sig00000051 ),
    .O(\blk00000001/sig0000005b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000003b  (
    .I0(\blk00000001/sig0000002b ),
    .I1(\blk00000001/sig00000023 ),
    .O(\blk00000001/sig0000004f )
  );
  MUXCY   \blk00000001/blk0000003a  (
    .CI(\blk00000001/sig00000050 ),
    .DI(\blk00000001/sig0000002b ),
    .S(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig0000004e )
  );
  XORCY   \blk00000001/blk00000039  (
    .CI(\blk00000001/sig00000050 ),
    .LI(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig0000005c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000038  (
    .I0(\blk00000001/sig0000002c ),
    .I1(\blk00000001/sig00000023 ),
    .O(\blk00000001/sig0000004d )
  );
  MUXCY   \blk00000001/blk00000037  (
    .CI(\blk00000001/sig0000004e ),
    .DI(\blk00000001/sig0000002c ),
    .S(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig0000004c )
  );
  XORCY   \blk00000001/blk00000036  (
    .CI(\blk00000001/sig0000004e ),
    .LI(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig0000005d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000035  (
    .I0(\blk00000001/sig0000002d ),
    .I1(\blk00000001/sig00000023 ),
    .O(\blk00000001/sig0000004b )
  );
  MUXCY   \blk00000001/blk00000034  (
    .CI(\blk00000001/sig0000004c ),
    .DI(\blk00000001/sig0000002d ),
    .S(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig0000004a )
  );
  XORCY   \blk00000001/blk00000033  (
    .CI(\blk00000001/sig0000004c ),
    .LI(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig0000005e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000032  (
    .I0(\blk00000001/sig0000002e ),
    .I1(\blk00000001/sig00000023 ),
    .O(\blk00000001/sig00000049 )
  );
  MUXCY   \blk00000001/blk00000031  (
    .CI(\blk00000001/sig0000004a ),
    .DI(\blk00000001/sig0000002e ),
    .S(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig00000048 )
  );
  XORCY   \blk00000001/blk00000030  (
    .CI(\blk00000001/sig0000004a ),
    .LI(\blk00000001/sig00000049 ),
    .O(\blk00000001/sig0000005f )
  );
  MUXCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig00000048 ),
    .DI(\blk00000001/sig0000001e ),
    .S(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig00000047 )
  );
  XORCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig00000048 ),
    .LI(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig00000060 )
  );
  MUXCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig00000047 ),
    .DI(\blk00000001/sig0000001e ),
    .S(\blk00000001/sig00000065 ),
    .O(\blk00000001/sig00000046 )
  );
  XORCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig00000047 ),
    .LI(\blk00000001/sig00000065 ),
    .O(\blk00000001/sig00000061 )
  );
  MUXCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig00000046 ),
    .DI(\blk00000001/sig0000001e ),
    .S(\blk00000001/sig00000064 ),
    .O(\blk00000001/sig00000045 )
  );
  XORCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig00000046 ),
    .LI(\blk00000001/sig00000064 ),
    .O(\blk00000001/sig00000062 )
  );
  XORCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig00000045 ),
    .LI(\blk00000001/sig00000027 ),
    .O(\blk00000001/sig00000063 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000028  (
    .C(clk),
    .D(\blk00000001/sig0000003c ),
    .Q(\blk00000001/sig0000001f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000027  (
    .C(clk),
    .D(\blk00000001/sig0000003d ),
    .Q(\blk00000001/sig00000020 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000026  (
    .C(clk),
    .D(\blk00000001/sig0000003e ),
    .Q(\blk00000001/sig00000021 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000025  (
    .C(clk),
    .D(\blk00000001/sig0000003f ),
    .Q(\blk00000001/sig00000022 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000024  (
    .C(clk),
    .D(\blk00000001/sig00000040 ),
    .Q(\blk00000001/sig00000023 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000023  (
    .C(clk),
    .D(\blk00000001/sig00000041 ),
    .Q(\blk00000001/sig00000024 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000022  (
    .C(clk),
    .D(\blk00000001/sig00000042 ),
    .Q(\blk00000001/sig00000025 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(clk),
    .D(\blk00000001/sig00000043 ),
    .Q(\blk00000001/sig00000026 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000020  (
    .C(clk),
    .D(\blk00000001/sig00000044 ),
    .Q(\blk00000001/sig00000027 )
  );
  RAM64X1S #(
    .INIT ( 64'h1E1E1E1E1E1E1E1E ))
  \blk00000001/blk0000001f  (
    .A0(a[6]),
    .A1(a[7]),
    .A2(a[8]),
    .A3(a[9]),
    .A4(\blk00000001/sig0000001e ),
    .A5(\blk00000001/sig0000001e ),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig0000003e )
  );
  RAM64X1S #(
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \blk00000001/blk0000001e  (
    .A0(a[6]),
    .A1(a[7]),
    .A2(a[8]),
    .A3(a[9]),
    .A4(\blk00000001/sig0000001e ),
    .A5(\blk00000001/sig0000001e ),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig0000003c )
  );
  RAM64X1S #(
    .INIT ( 64'h6666666666666666 ))
  \blk00000001/blk0000001d  (
    .A0(a[6]),
    .A1(a[7]),
    .A2(a[8]),
    .A3(a[9]),
    .A4(\blk00000001/sig0000001e ),
    .A5(\blk00000001/sig0000001e ),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig0000003d )
  );
  RAM64X1S #(
    .INIT ( 64'h01FE01FE01FE01FE ))
  \blk00000001/blk0000001c  (
    .A0(a[6]),
    .A1(a[7]),
    .A2(a[8]),
    .A3(a[9]),
    .A4(\blk00000001/sig0000001e ),
    .A5(\blk00000001/sig0000001e ),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig0000003f )
  );
  RAM64X1S #(
    .INIT ( 64'hAA54AA54AA54AA54 ))
  \blk00000001/blk0000001b  (
    .A0(a[6]),
    .A1(a[7]),
    .A2(a[8]),
    .A3(a[9]),
    .A4(\blk00000001/sig0000001e ),
    .A5(\blk00000001/sig0000001e ),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000041 )
  );
  RAM64X1S #(
    .INIT ( 64'h00FE00FE00FE00FE ))
  \blk00000001/blk0000001a  (
    .A0(a[6]),
    .A1(a[7]),
    .A2(a[8]),
    .A3(a[9]),
    .A4(\blk00000001/sig0000001e ),
    .A5(\blk00000001/sig0000001e ),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000040 )
  );
  RAM64X1S #(
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \blk00000001/blk00000019  (
    .A0(a[6]),
    .A1(a[7]),
    .A2(a[8]),
    .A3(a[9]),
    .A4(\blk00000001/sig0000001e ),
    .A5(\blk00000001/sig0000001e ),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000044 )
  );
  RAM64X1S #(
    .INIT ( 64'hCC98CC98CC98CC98 ))
  \blk00000001/blk00000018  (
    .A0(a[6]),
    .A1(a[7]),
    .A2(a[8]),
    .A3(a[9]),
    .A4(\blk00000001/sig0000001e ),
    .A5(\blk00000001/sig0000001e ),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000042 )
  );
  RAM64X1S #(
    .INIT ( 64'hF0E0F0E0F0E0F0E0 ))
  \blk00000001/blk00000017  (
    .A0(a[6]),
    .A1(a[7]),
    .A2(a[8]),
    .A3(a[9]),
    .A4(\blk00000001/sig0000001e ),
    .A5(\blk00000001/sig0000001e ),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000043 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000016  (
    .C(clk),
    .D(\blk00000001/sig00000035 ),
    .Q(\blk00000001/sig00000028 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000015  (
    .C(clk),
    .D(\blk00000001/sig00000036 ),
    .Q(\blk00000001/sig00000029 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000014  (
    .C(clk),
    .D(\blk00000001/sig00000037 ),
    .Q(\blk00000001/sig0000002a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000013  (
    .C(clk),
    .D(\blk00000001/sig00000038 ),
    .Q(\blk00000001/sig0000002b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000012  (
    .C(clk),
    .D(\blk00000001/sig00000039 ),
    .Q(\blk00000001/sig0000002c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000011  (
    .C(clk),
    .D(\blk00000001/sig0000003a ),
    .Q(\blk00000001/sig0000002d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000010  (
    .C(clk),
    .D(\blk00000001/sig0000003b ),
    .Q(\blk00000001/sig0000002e )
  );
  RAM64X1S #(
    .INIT ( 64'hAAAAAAAAAAAAAAAA ))
  \blk00000001/blk0000000f  (
    .A0(a[0]),
    .A1(a[1]),
    .A2(a[2]),
    .A3(a[3]),
    .A4(a[4]),
    .A5(a[5]),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig0000002f )
  );
  RAM64X1S #(
    .INIT ( 64'h6666666666666666 ))
  \blk00000001/blk0000000e  (
    .A0(a[0]),
    .A1(a[1]),
    .A2(a[2]),
    .A3(a[3]),
    .A4(a[4]),
    .A5(a[5]),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000030 )
  );
  RAM64X1S #(
    .INIT ( 64'h1E1E1E1E1E1E1E1E ))
  \blk00000001/blk0000000d  (
    .A0(a[0]),
    .A1(a[1]),
    .A2(a[2]),
    .A3(a[3]),
    .A4(a[4]),
    .A5(a[5]),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000031 )
  );
  RAM64X1S #(
    .INIT ( 64'h01FE01FE01FE01FE ))
  \blk00000001/blk0000000c  (
    .A0(a[0]),
    .A1(a[1]),
    .A2(a[2]),
    .A3(a[3]),
    .A4(a[4]),
    .A5(a[5]),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000032 )
  );
  RAM64X1S #(
    .INIT ( 64'h0001FFFE0001FFFE ))
  \blk00000001/blk0000000b  (
    .A0(a[0]),
    .A1(a[1]),
    .A2(a[2]),
    .A3(a[3]),
    .A4(a[4]),
    .A5(a[5]),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000033 )
  );
  RAM64X1S #(
    .INIT ( 64'h00000001FFFFFFFE ))
  \blk00000001/blk0000000a  (
    .A0(a[0]),
    .A1(a[1]),
    .A2(a[2]),
    .A3(a[3]),
    .A4(a[4]),
    .A5(a[5]),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000034 )
  );
  RAM64X1S #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \blk00000001/blk00000009  (
    .A0(a[0]),
    .A1(a[1]),
    .A2(a[2]),
    .A3(a[3]),
    .A4(a[4]),
    .A5(a[5]),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000035 )
  );
  RAM64X1S #(
    .INIT ( 64'h5555555555555554 ))
  \blk00000001/blk00000008  (
    .A0(a[0]),
    .A1(a[1]),
    .A2(a[2]),
    .A3(a[3]),
    .A4(a[4]),
    .A5(a[5]),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000036 )
  );
  RAM64X1S #(
    .INIT ( 64'h9999999999999998 ))
  \blk00000001/blk00000007  (
    .A0(a[0]),
    .A1(a[1]),
    .A2(a[2]),
    .A3(a[3]),
    .A4(a[4]),
    .A5(a[5]),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000037 )
  );
  RAM64X1S #(
    .INIT ( 64'hE1E1E1E1E1E1E1E0 ))
  \blk00000001/blk00000006  (
    .A0(a[0]),
    .A1(a[1]),
    .A2(a[2]),
    .A3(a[3]),
    .A4(a[4]),
    .A5(a[5]),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000038 )
  );
  RAM64X1S #(
    .INIT ( 64'hFFFFFFFE00000000 ))
  \blk00000001/blk00000005  (
    .A0(a[0]),
    .A1(a[1]),
    .A2(a[2]),
    .A3(a[3]),
    .A4(a[4]),
    .A5(a[5]),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig0000003b )
  );
  RAM64X1S #(
    .INIT ( 64'hFE01FE01FE01FE00 ))
  \blk00000001/blk00000004  (
    .A0(a[0]),
    .A1(a[1]),
    .A2(a[2]),
    .A3(a[3]),
    .A4(a[4]),
    .A5(a[5]),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000039 )
  );
  RAM64X1S #(
    .INIT ( 64'hFFFE0001FFFE0000 ))
  \blk00000001/blk00000003  (
    .A0(a[0]),
    .A1(a[1]),
    .A2(a[2]),
    .A3(a[3]),
    .A4(a[4]),
    .A5(a[5]),
    .D(\blk00000001/sig0000001e ),
    .WCLK(clk),
    .WE(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig0000003a )
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
