////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: adder.v
// /___/   /\     Timestamp: Sat Jan 10 01:55:59 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog "C:/Users/gosia/Desktop/wsw studia miczal/wsw/ipcore_dir/tmp/_cg/adder.ngc" "C:/Users/gosia/Desktop/wsw studia miczal/wsw/ipcore_dir/tmp/_cg/adder.v" 
// Device	: 7a100tcsg324-3
// Input file	: C:/Users/gosia/Desktop/wsw studia miczal/wsw/ipcore_dir/tmp/_cg/adder.ngc
// Output file	: C:/Users/gosia/Desktop/wsw studia miczal/wsw/ipcore_dir/tmp/_cg/adder.v
// # of Modules	: 1
// Design Name	: adder
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
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

module adder17 (
  clk, ce, a, b, s
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input [16 : 0] a;
  input [16 : 0] b;
  output [17 : 0] s;
  
  // synthesis translate_off
  
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
  wire \blk00000001/sig0000003b ;
  wire \blk00000001/sig0000003a ;
  wire \blk00000001/sig00000039 ;
  wire \blk00000001/sig00000038 ;
  wire \blk00000001/sig00000037 ;
  wire \NLW_blk00000001/blk00000076_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000074_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000072_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000070_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000006e_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000006c_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000006a_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000068_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000066_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000043_O_UNCONNECTED ;
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000077  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000099 ),
    .Q(s[0])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000076  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000037 ),
    .A2(\blk00000001/sig00000037 ),
    .A3(\blk00000001/sig00000037 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000042 ),
    .Q(\blk00000001/sig00000099 ),
    .Q15(\NLW_blk00000001/blk00000076_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000075  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000098 ),
    .Q(s[1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000074  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000037 ),
    .A2(\blk00000001/sig00000037 ),
    .A3(\blk00000001/sig00000037 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig0000004a ),
    .Q(\blk00000001/sig00000098 ),
    .Q15(\NLW_blk00000001/blk00000074_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000073  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000097 ),
    .Q(s[2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000072  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000037 ),
    .A2(\blk00000001/sig00000037 ),
    .A3(\blk00000001/sig00000037 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000049 ),
    .Q(\blk00000001/sig00000097 ),
    .Q15(\NLW_blk00000001/blk00000072_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000071  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000096 ),
    .Q(s[3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000070  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000037 ),
    .A2(\blk00000001/sig00000037 ),
    .A3(\blk00000001/sig00000037 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000048 ),
    .Q(\blk00000001/sig00000096 ),
    .Q15(\NLW_blk00000001/blk00000070_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000006f  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000095 ),
    .Q(s[4])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000006e  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000037 ),
    .A2(\blk00000001/sig00000037 ),
    .A3(\blk00000001/sig00000037 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000047 ),
    .Q(\blk00000001/sig00000095 ),
    .Q15(\NLW_blk00000001/blk0000006e_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000006d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000094 ),
    .Q(s[5])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000006c  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000037 ),
    .A2(\blk00000001/sig00000037 ),
    .A3(\blk00000001/sig00000037 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000046 ),
    .Q(\blk00000001/sig00000094 ),
    .Q15(\NLW_blk00000001/blk0000006c_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000006b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000093 ),
    .Q(s[7])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000006a  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000037 ),
    .A2(\blk00000001/sig00000037 ),
    .A3(\blk00000001/sig00000037 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000044 ),
    .Q(\blk00000001/sig00000093 ),
    .Q15(\NLW_blk00000001/blk0000006a_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000069  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000092 ),
    .Q(s[8])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000068  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000037 ),
    .A2(\blk00000001/sig00000037 ),
    .A3(\blk00000001/sig00000037 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000043 ),
    .Q(\blk00000001/sig00000092 ),
    .Q15(\NLW_blk00000001/blk00000068_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000067  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000091 ),
    .Q(s[6])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000066  (
    .A0(\blk00000001/sig00000037 ),
    .A1(\blk00000001/sig00000037 ),
    .A2(\blk00000001/sig00000037 ),
    .A3(\blk00000001/sig00000037 ),
    .CE(ce),
    .CLK(clk),
    .D(\blk00000001/sig00000045 ),
    .Q(\blk00000001/sig00000091 ),
    .Q15(\NLW_blk00000001/blk00000066_Q15_UNCONNECTED )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000065  (
    .I0(\blk00000001/sig00000038 ),
    .O(\blk00000001/sig00000090 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000064  (
    .I0(\blk00000001/sig00000039 ),
    .O(\blk00000001/sig0000008f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000063  (
    .I0(\blk00000001/sig0000003a ),
    .O(\blk00000001/sig0000008e )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000062  (
    .I0(\blk00000001/sig00000040 ),
    .O(\blk00000001/sig0000008d )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000061  (
    .I0(\blk00000001/sig0000003b ),
    .O(\blk00000001/sig0000008c )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000060  (
    .I0(\blk00000001/sig0000003c ),
    .O(\blk00000001/sig0000008b )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000005f  (
    .I0(\blk00000001/sig0000003d ),
    .O(\blk00000001/sig0000008a )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000005e  (
    .I0(\blk00000001/sig0000003e ),
    .O(\blk00000001/sig00000089 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000005d  (
    .I0(\blk00000001/sig0000003f ),
    .O(\blk00000001/sig00000088 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005c  (
    .I0(a[16]),
    .I1(b[16]),
    .O(\blk00000001/sig00000087 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005b  (
    .I0(a[16]),
    .I1(b[16]),
    .O(\blk00000001/sig00000066 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000005a  (
    .I0(a[15]),
    .I1(b[15]),
    .O(\blk00000001/sig00000067 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000059  (
    .I0(a[14]),
    .I1(b[14]),
    .O(\blk00000001/sig00000068 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000058  (
    .I0(a[13]),
    .I1(b[13]),
    .O(\blk00000001/sig00000069 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000057  (
    .I0(a[12]),
    .I1(b[12]),
    .O(\blk00000001/sig0000006a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000056  (
    .I0(a[11]),
    .I1(b[11]),
    .O(\blk00000001/sig0000006b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000055  (
    .I0(a[10]),
    .I1(b[10]),
    .O(\blk00000001/sig0000006c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000054  (
    .I0(a[9]),
    .I1(b[9]),
    .O(\blk00000001/sig0000006d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000053  (
    .I0(a[8]),
    .I1(b[8]),
    .O(\blk00000001/sig00000052 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000052  (
    .I0(a[7]),
    .I1(b[7]),
    .O(\blk00000001/sig0000004b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000051  (
    .I0(a[6]),
    .I1(b[6]),
    .O(\blk00000001/sig0000004c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000050  (
    .I0(a[5]),
    .I1(b[5]),
    .O(\blk00000001/sig0000004d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004f  (
    .I0(a[4]),
    .I1(b[4]),
    .O(\blk00000001/sig0000004e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004e  (
    .I0(a[3]),
    .I1(b[3]),
    .O(\blk00000001/sig0000004f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004d  (
    .I0(a[2]),
    .I1(b[2]),
    .O(\blk00000001/sig00000050 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004c  (
    .I0(a[1]),
    .I1(b[1]),
    .O(\blk00000001/sig00000051 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004b  (
    .I0(a[0]),
    .I1(b[0]),
    .O(\blk00000001/sig00000053 )
  );
  MUXCY   \blk00000001/blk0000004a  (
    .CI(\blk00000001/sig00000041 ),
    .DI(\blk00000001/sig00000037 ),
    .S(\blk00000001/sig00000090 ),
    .O(\blk00000001/sig00000086 )
  );
  XORCY   \blk00000001/blk00000049  (
    .CI(\blk00000001/sig00000041 ),
    .LI(\blk00000001/sig00000090 ),
    .O(\blk00000001/sig00000085 )
  );
  MUXCY   \blk00000001/blk00000048  (
    .CI(\blk00000001/sig00000086 ),
    .DI(\blk00000001/sig00000037 ),
    .S(\blk00000001/sig0000008f ),
    .O(\blk00000001/sig00000084 )
  );
  XORCY   \blk00000001/blk00000047  (
    .CI(\blk00000001/sig00000086 ),
    .LI(\blk00000001/sig0000008f ),
    .O(\blk00000001/sig00000083 )
  );
  MUXCY   \blk00000001/blk00000046  (
    .CI(\blk00000001/sig00000084 ),
    .DI(\blk00000001/sig00000037 ),
    .S(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig00000082 )
  );
  XORCY   \blk00000001/blk00000045  (
    .CI(\blk00000001/sig00000084 ),
    .LI(\blk00000001/sig0000008e ),
    .O(\blk00000001/sig00000081 )
  );
  XORCY   \blk00000001/blk00000044  (
    .CI(\blk00000001/sig00000077 ),
    .LI(\blk00000001/sig0000008d ),
    .O(\blk00000001/sig00000080 )
  );
  MUXCY   \blk00000001/blk00000043  (
    .CI(\blk00000001/sig00000077 ),
    .DI(\blk00000001/sig00000037 ),
    .S(\blk00000001/sig0000008d ),
    .O(\NLW_blk00000001/blk00000043_O_UNCONNECTED )
  );
  MUXCY   \blk00000001/blk00000042  (
    .CI(\blk00000001/sig00000082 ),
    .DI(\blk00000001/sig00000037 ),
    .S(\blk00000001/sig0000008c ),
    .O(\blk00000001/sig0000007f )
  );
  XORCY   \blk00000001/blk00000041  (
    .CI(\blk00000001/sig00000082 ),
    .LI(\blk00000001/sig0000008c ),
    .O(\blk00000001/sig0000007e )
  );
  MUXCY   \blk00000001/blk00000040  (
    .CI(\blk00000001/sig0000007f ),
    .DI(\blk00000001/sig00000037 ),
    .S(\blk00000001/sig0000008b ),
    .O(\blk00000001/sig0000007d )
  );
  XORCY   \blk00000001/blk0000003f  (
    .CI(\blk00000001/sig0000007f ),
    .LI(\blk00000001/sig0000008b ),
    .O(\blk00000001/sig0000007c )
  );
  MUXCY   \blk00000001/blk0000003e  (
    .CI(\blk00000001/sig0000007d ),
    .DI(\blk00000001/sig00000037 ),
    .S(\blk00000001/sig0000008a ),
    .O(\blk00000001/sig0000007b )
  );
  XORCY   \blk00000001/blk0000003d  (
    .CI(\blk00000001/sig0000007d ),
    .LI(\blk00000001/sig0000008a ),
    .O(\blk00000001/sig0000007a )
  );
  MUXCY   \blk00000001/blk0000003c  (
    .CI(\blk00000001/sig0000007b ),
    .DI(\blk00000001/sig00000037 ),
    .S(\blk00000001/sig00000089 ),
    .O(\blk00000001/sig00000079 )
  );
  XORCY   \blk00000001/blk0000003b  (
    .CI(\blk00000001/sig0000007b ),
    .LI(\blk00000001/sig00000089 ),
    .O(\blk00000001/sig00000078 )
  );
  MUXCY   \blk00000001/blk0000003a  (
    .CI(\blk00000001/sig00000079 ),
    .DI(\blk00000001/sig00000037 ),
    .S(\blk00000001/sig00000088 ),
    .O(\blk00000001/sig00000077 )
  );
  XORCY   \blk00000001/blk00000039  (
    .CI(\blk00000001/sig00000079 ),
    .LI(\blk00000001/sig00000088 ),
    .O(\blk00000001/sig00000076 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000038  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000080 ),
    .Q(s[17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000037  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000076 ),
    .Q(s[16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000036  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000078 ),
    .Q(s[15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000035  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000007a ),
    .Q(s[14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000034  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000007c ),
    .Q(s[13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000033  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000007e ),
    .Q(s[12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000032  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000081 ),
    .Q(s[11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000031  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000083 ),
    .Q(s[10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000030  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000085 ),
    .Q(s[9])
  );
  MUXCY   \blk00000001/blk0000002f  (
    .CI(\blk00000001/sig00000037 ),
    .DI(a[9]),
    .S(\blk00000001/sig0000006d ),
    .O(\blk00000001/sig00000075 )
  );
  MUXCY   \blk00000001/blk0000002e  (
    .CI(\blk00000001/sig00000075 ),
    .DI(a[10]),
    .S(\blk00000001/sig0000006c ),
    .O(\blk00000001/sig00000074 )
  );
  MUXCY   \blk00000001/blk0000002d  (
    .CI(\blk00000001/sig00000074 ),
    .DI(a[11]),
    .S(\blk00000001/sig0000006b ),
    .O(\blk00000001/sig00000073 )
  );
  MUXCY   \blk00000001/blk0000002c  (
    .CI(\blk00000001/sig00000073 ),
    .DI(a[12]),
    .S(\blk00000001/sig0000006a ),
    .O(\blk00000001/sig00000072 )
  );
  MUXCY   \blk00000001/blk0000002b  (
    .CI(\blk00000001/sig00000072 ),
    .DI(a[13]),
    .S(\blk00000001/sig00000069 ),
    .O(\blk00000001/sig00000071 )
  );
  MUXCY   \blk00000001/blk0000002a  (
    .CI(\blk00000001/sig00000071 ),
    .DI(a[14]),
    .S(\blk00000001/sig00000068 ),
    .O(\blk00000001/sig00000070 )
  );
  MUXCY   \blk00000001/blk00000029  (
    .CI(\blk00000001/sig00000070 ),
    .DI(a[15]),
    .S(\blk00000001/sig00000067 ),
    .O(\blk00000001/sig0000006f )
  );
  MUXCY   \blk00000001/blk00000028  (
    .CI(\blk00000001/sig0000006f ),
    .DI(a[16]),
    .S(\blk00000001/sig00000087 ),
    .O(\blk00000001/sig0000006e )
  );
  XORCY   \blk00000001/blk00000027  (
    .CI(\blk00000001/sig00000075 ),
    .LI(\blk00000001/sig0000006c ),
    .O(\blk00000001/sig00000065 )
  );
  XORCY   \blk00000001/blk00000026  (
    .CI(\blk00000001/sig00000074 ),
    .LI(\blk00000001/sig0000006b ),
    .O(\blk00000001/sig00000064 )
  );
  XORCY   \blk00000001/blk00000025  (
    .CI(\blk00000001/sig00000073 ),
    .LI(\blk00000001/sig0000006a ),
    .O(\blk00000001/sig00000063 )
  );
  XORCY   \blk00000001/blk00000024  (
    .CI(\blk00000001/sig00000072 ),
    .LI(\blk00000001/sig00000069 ),
    .O(\blk00000001/sig00000062 )
  );
  XORCY   \blk00000001/blk00000023  (
    .CI(\blk00000001/sig00000071 ),
    .LI(\blk00000001/sig00000068 ),
    .O(\blk00000001/sig00000061 )
  );
  XORCY   \blk00000001/blk00000022  (
    .CI(\blk00000001/sig00000070 ),
    .LI(\blk00000001/sig00000067 ),
    .O(\blk00000001/sig00000060 )
  );
  XORCY   \blk00000001/blk00000021  (
    .CI(\blk00000001/sig0000006f ),
    .LI(\blk00000001/sig00000087 ),
    .O(\blk00000001/sig0000005f )
  );
  XORCY   \blk00000001/blk00000020  (
    .CI(\blk00000001/sig0000006e ),
    .LI(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig0000005e )
  );
  XORCY   \blk00000001/blk0000001f  (
    .CI(\blk00000001/sig00000037 ),
    .LI(\blk00000001/sig0000006d ),
    .O(\blk00000001/sig0000005d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001e  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000005e ),
    .Q(\blk00000001/sig00000040 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000005f ),
    .Q(\blk00000001/sig0000003f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001c  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000060 ),
    .Q(\blk00000001/sig0000003e )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001b  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000061 ),
    .Q(\blk00000001/sig0000003d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001a  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000062 ),
    .Q(\blk00000001/sig0000003c )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000019  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000063 ),
    .Q(\blk00000001/sig0000003b )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000018  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000064 ),
    .Q(\blk00000001/sig0000003a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000017  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig00000065 ),
    .Q(\blk00000001/sig00000039 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000016  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000005d ),
    .Q(\blk00000001/sig00000038 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000015  (
    .C(clk),
    .CE(ce),
    .D(\blk00000001/sig0000005b ),
    .Q(\blk00000001/sig00000041 )
  );
  MUXCY   \blk00000001/blk00000014  (
    .CI(\blk00000001/sig00000037 ),
    .DI(a[0]),
    .S(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig0000005c )
  );
  MUXCY   \blk00000001/blk00000013  (
    .CI(\blk00000001/sig00000054 ),
    .DI(a[8]),
    .S(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig0000005b )
  );
  MUXCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig0000005c ),
    .DI(a[1]),
    .S(\blk00000001/sig00000051 ),
    .O(\blk00000001/sig0000005a )
  );
  MUXCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig0000005a ),
    .DI(a[2]),
    .S(\blk00000001/sig00000050 ),
    .O(\blk00000001/sig00000059 )
  );
  MUXCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000059 ),
    .DI(a[3]),
    .S(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig00000058 )
  );
  MUXCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig00000058 ),
    .DI(a[4]),
    .S(\blk00000001/sig0000004e ),
    .O(\blk00000001/sig00000057 )
  );
  MUXCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig00000057 ),
    .DI(a[5]),
    .S(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig00000056 )
  );
  MUXCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig00000056 ),
    .DI(a[6]),
    .S(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig00000055 )
  );
  MUXCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig00000055 ),
    .DI(a[7]),
    .S(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig00000054 )
  );
  XORCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig0000005c ),
    .LI(\blk00000001/sig00000051 ),
    .O(\blk00000001/sig0000004a )
  );
  XORCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig0000005a ),
    .LI(\blk00000001/sig00000050 ),
    .O(\blk00000001/sig00000049 )
  );
  XORCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig00000059 ),
    .LI(\blk00000001/sig0000004f ),
    .O(\blk00000001/sig00000048 )
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig00000058 ),
    .LI(\blk00000001/sig0000004e ),
    .O(\blk00000001/sig00000047 )
  );
  XORCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig00000057 ),
    .LI(\blk00000001/sig0000004d ),
    .O(\blk00000001/sig00000046 )
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig00000056 ),
    .LI(\blk00000001/sig0000004c ),
    .O(\blk00000001/sig00000045 )
  );
  XORCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig00000055 ),
    .LI(\blk00000001/sig0000004b ),
    .O(\blk00000001/sig00000044 )
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig00000054 ),
    .LI(\blk00000001/sig00000052 ),
    .O(\blk00000001/sig00000043 )
  );
  XORCY   \blk00000001/blk00000003  (
    .CI(\blk00000001/sig00000037 ),
    .LI(\blk00000001/sig00000053 ),
    .O(\blk00000001/sig00000042 )
  );
  GND   \blk00000001/blk00000002  (
    .G(\blk00000001/sig00000037 )
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
