////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: mult_28_20_lm.v
// /___/   /\     Timestamp: Wed Jan 21 10:57:26 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog D:/WSW/Odrzywolek/wsw-neuro-master/ISE/neuro_skin/ipcore_dir/tmp/_cg/mult_28_20_lm.ngc D:/WSW/Odrzywolek/wsw-neuro-master/ISE/neuro_skin/ipcore_dir/tmp/_cg/mult_28_20_lm.v 
// Device	: 7vx485tffg1761-2
// Input file	: D:/WSW/Odrzywolek/wsw-neuro-master/ISE/neuro_skin/ipcore_dir/tmp/_cg/mult_28_20_lm.ngc
// Output file	: D:/WSW/Odrzywolek/wsw-neuro-master/ISE/neuro_skin/ipcore_dir/tmp/_cg/mult_28_20_lm.v
// # of Modules	: 1
// Design Name	: mult_28_20_lm
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

module mult_28_20_lm (
  clk, a, b, p
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input [27 : 0] a;
  input [19 : 0] b;
  output [47 : 0] p;
  
  // synthesis translate_off
  
  wire \blk00000001/sig00000159 ;
  wire \blk00000001/sig00000158 ;
  wire \blk00000001/sig00000157 ;
  wire \blk00000001/sig00000156 ;
  wire \blk00000001/sig00000155 ;
  wire \blk00000001/sig00000154 ;
  wire \blk00000001/sig00000153 ;
  wire \blk00000001/sig00000152 ;
  wire \blk00000001/sig00000151 ;
  wire \blk00000001/sig00000150 ;
  wire \blk00000001/sig0000014f ;
  wire \blk00000001/sig0000014e ;
  wire \blk00000001/sig0000014d ;
  wire \blk00000001/sig0000014c ;
  wire \blk00000001/sig0000014b ;
  wire \blk00000001/sig0000014a ;
  wire \blk00000001/sig00000149 ;
  wire \blk00000001/sig00000148 ;
  wire \blk00000001/sig00000147 ;
  wire \blk00000001/sig00000146 ;
  wire \blk00000001/sig00000145 ;
  wire \blk00000001/sig00000144 ;
  wire \blk00000001/sig00000143 ;
  wire \blk00000001/sig00000142 ;
  wire \blk00000001/sig00000141 ;
  wire \blk00000001/sig00000140 ;
  wire \blk00000001/sig0000013f ;
  wire \blk00000001/sig0000013e ;
  wire \blk00000001/sig0000013d ;
  wire \blk00000001/sig0000013c ;
  wire \blk00000001/sig0000013b ;
  wire \blk00000001/sig0000013a ;
  wire \blk00000001/sig00000139 ;
  wire \blk00000001/sig00000138 ;
  wire \blk00000001/sig00000137 ;
  wire \blk00000001/sig00000136 ;
  wire \blk00000001/sig00000135 ;
  wire \blk00000001/sig00000134 ;
  wire \blk00000001/sig00000133 ;
  wire \blk00000001/sig00000132 ;
  wire \blk00000001/sig00000131 ;
  wire \blk00000001/sig00000130 ;
  wire \blk00000001/sig0000012f ;
  wire \blk00000001/sig0000012e ;
  wire \blk00000001/sig0000012d ;
  wire \blk00000001/sig0000012c ;
  wire \blk00000001/sig0000012b ;
  wire \blk00000001/sig0000012a ;
  wire \blk00000001/sig00000129 ;
  wire \blk00000001/sig00000128 ;
  wire \blk00000001/sig00000127 ;
  wire \blk00000001/sig00000126 ;
  wire \blk00000001/sig00000125 ;
  wire \blk00000001/sig00000124 ;
  wire \blk00000001/sig00000123 ;
  wire \blk00000001/sig00000122 ;
  wire \blk00000001/sig00000121 ;
  wire \blk00000001/sig00000120 ;
  wire \blk00000001/sig0000011f ;
  wire \blk00000001/sig0000011e ;
  wire \blk00000001/sig0000011d ;
  wire \blk00000001/sig0000011c ;
  wire \blk00000001/sig0000011b ;
  wire \blk00000001/sig0000011a ;
  wire \blk00000001/sig00000119 ;
  wire \blk00000001/sig00000118 ;
  wire \blk00000001/sig00000117 ;
  wire \blk00000001/sig00000116 ;
  wire \blk00000001/sig00000115 ;
  wire \blk00000001/sig00000114 ;
  wire \blk00000001/sig00000113 ;
  wire \blk00000001/sig00000112 ;
  wire \blk00000001/sig00000111 ;
  wire \blk00000001/sig00000110 ;
  wire \blk00000001/sig0000010f ;
  wire \blk00000001/sig0000010e ;
  wire \blk00000001/sig0000010d ;
  wire \blk00000001/sig0000010c ;
  wire \blk00000001/sig0000010b ;
  wire \blk00000001/sig0000010a ;
  wire \blk00000001/sig00000109 ;
  wire \blk00000001/sig00000108 ;
  wire \blk00000001/sig00000107 ;
  wire \blk00000001/sig00000106 ;
  wire \blk00000001/sig00000105 ;
  wire \blk00000001/sig00000104 ;
  wire \blk00000001/sig00000103 ;
  wire \blk00000001/sig00000102 ;
  wire \blk00000001/sig00000101 ;
  wire \blk00000001/sig00000100 ;
  wire \blk00000001/sig000000ff ;
  wire \blk00000001/sig000000fe ;
  wire \blk00000001/sig000000fd ;
  wire \blk00000001/sig000000fc ;
  wire \blk00000001/sig000000fb ;
  wire \blk00000001/sig000000fa ;
  wire \blk00000001/sig000000f9 ;
  wire \blk00000001/sig000000f8 ;
  wire \blk00000001/sig000000f7 ;
  wire \blk00000001/sig000000f6 ;
  wire \blk00000001/sig000000f5 ;
  wire \blk00000001/sig000000f4 ;
  wire \blk00000001/sig000000f3 ;
  wire \blk00000001/sig000000f2 ;
  wire \blk00000001/sig000000f1 ;
  wire \blk00000001/sig000000f0 ;
  wire \blk00000001/sig000000ef ;
  wire \blk00000001/sig000000ee ;
  wire \blk00000001/sig000000ed ;
  wire \blk00000001/sig000000ec ;
  wire \blk00000001/sig000000eb ;
  wire \blk00000001/sig000000ea ;
  wire \blk00000001/sig000000e9 ;
  wire \blk00000001/sig000000e8 ;
  wire \blk00000001/sig000000e7 ;
  wire \blk00000001/sig000000e6 ;
  wire \blk00000001/sig000000e5 ;
  wire \blk00000001/sig000000e4 ;
  wire \blk00000001/sig000000e3 ;
  wire \blk00000001/sig000000e2 ;
  wire \blk00000001/sig000000e1 ;
  wire \blk00000001/sig000000e0 ;
  wire \blk00000001/sig000000df ;
  wire \blk00000001/sig000000de ;
  wire \blk00000001/sig000000dd ;
  wire \blk00000001/sig000000dc ;
  wire \blk00000001/sig000000db ;
  wire \blk00000001/sig000000da ;
  wire \blk00000001/sig000000d9 ;
  wire \blk00000001/sig000000d8 ;
  wire \blk00000001/sig000000d7 ;
  wire \blk00000001/sig000000d6 ;
  wire \blk00000001/sig000000d5 ;
  wire \blk00000001/sig000000d4 ;
  wire \blk00000001/sig000000d3 ;
  wire \blk00000001/sig000000d2 ;
  wire \blk00000001/sig000000d1 ;
  wire \blk00000001/sig000000d0 ;
  wire \blk00000001/sig000000cf ;
  wire \blk00000001/sig000000ce ;
  wire \blk00000001/sig000000cd ;
  wire \blk00000001/sig000000cc ;
  wire \blk00000001/sig000000cb ;
  wire \blk00000001/sig000000ca ;
  wire \blk00000001/sig000000c9 ;
  wire \blk00000001/sig000000c8 ;
  wire \blk00000001/sig000000c7 ;
  wire \blk00000001/sig000000c6 ;
  wire \blk00000001/sig000000c5 ;
  wire \blk00000001/sig000000c4 ;
  wire \blk00000001/sig000000c3 ;
  wire \blk00000001/sig000000c2 ;
  wire \blk00000001/sig000000c1 ;
  wire \blk00000001/sig000000c0 ;
  wire \blk00000001/sig000000bf ;
  wire \blk00000001/sig000000be ;
  wire \blk00000001/sig000000bd ;
  wire \blk00000001/sig000000bc ;
  wire \blk00000001/sig000000bb ;
  wire \blk00000001/sig000000ba ;
  wire \blk00000001/sig000000b9 ;
  wire \blk00000001/sig000000b8 ;
  wire \blk00000001/sig000000b7 ;
  wire \blk00000001/sig000000b6 ;
  wire \blk00000001/sig000000b5 ;
  wire \blk00000001/sig000000b4 ;
  wire \blk00000001/sig000000b3 ;
  wire \blk00000001/sig000000b2 ;
  wire \blk00000001/sig000000b1 ;
  wire \blk00000001/sig000000b0 ;
  wire \blk00000001/sig000000af ;
  wire \blk00000001/sig000000ae ;
  wire \blk00000001/sig000000ad ;
  wire \blk00000001/sig000000ac ;
  wire \blk00000001/sig000000ab ;
  wire \blk00000001/sig000000aa ;
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
  wire \NLW_blk00000001/blk0000005e_Q_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000005d_Q_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000005c_Q_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000005b_Q_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000005a_Q_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000059_Q_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000058_Q_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000057_Q_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000056_Q_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000055_Q_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000054_Q_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000053_Q_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_UNDERFLOW_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_OVERFLOW_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<47>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<46>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<45>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<44>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<43>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<42>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<41>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<40>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<39>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<38>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<37>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<36>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<35>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<34>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<33>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<32>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<31>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<30>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<29>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<28>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<27>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<26>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<25>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<24>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<23>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<22>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<21>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<20>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<19>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<18>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000005_P<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_UNDERFLOW_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_OVERFLOW_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<47>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<46>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<45>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<44>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<43>_UNCONNECTED ;
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007d  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000159 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[17])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007c  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000158 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[18])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007b  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000157 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[19])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000007a  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000156 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[20])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000079  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000155 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[21])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000078  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000154 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[22])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000077  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000153 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[23])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000076  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000152 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[24])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000075  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000151 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[25])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000074  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000150 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[26])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000073  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000014f ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[27])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000072  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000014e ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[28])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000071  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000014d ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[29])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000070  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000014c ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[30])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000006f  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000014b ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[31])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000006e  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000014a ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[32])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000006d  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000149 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[33])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000006c  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000148 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[34])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000006b  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000147 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[35])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000006a  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000146 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[36])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000069  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000145 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[37])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000068  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000144 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[38])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000067  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000143 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[39])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000066  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000142 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[40])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000065  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000141 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[41])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000064  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000140 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[42])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000063  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000013f ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[43])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000062  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000013e ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[44])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000061  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000013d ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[45])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000060  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000013c ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[46])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005f  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000013b ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[47])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005e  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000013a ),
    .R(\blk00000001/sig00000093 ),
    .Q(\NLW_blk00000001/blk0000005e_Q_UNCONNECTED )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005d  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000139 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\NLW_blk00000001/blk0000005d_Q_UNCONNECTED )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005c  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000138 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\NLW_blk00000001/blk0000005c_Q_UNCONNECTED )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005b  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000137 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\NLW_blk00000001/blk0000005b_Q_UNCONNECTED )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000005a  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000136 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\NLW_blk00000001/blk0000005a_Q_UNCONNECTED )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000059  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000135 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\NLW_blk00000001/blk00000059_Q_UNCONNECTED )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000058  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000134 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\NLW_blk00000001/blk00000058_Q_UNCONNECTED )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000057  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000133 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\NLW_blk00000001/blk00000057_Q_UNCONNECTED )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000056  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000132 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\NLW_blk00000001/blk00000056_Q_UNCONNECTED )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000055  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000131 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\NLW_blk00000001/blk00000055_Q_UNCONNECTED )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000054  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000130 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\NLW_blk00000001/blk00000054_Q_UNCONNECTED )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000053  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000012f ),
    .R(\blk00000001/sig00000093 ),
    .Q(\NLW_blk00000001/blk00000053_Q_UNCONNECTED )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000052  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig00000094 ),
    .Q(\blk00000001/sig00000159 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000051  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig00000095 ),
    .Q(\blk00000001/sig00000158 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000050  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig00000096 ),
    .Q(\blk00000001/sig00000157 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000004f  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig00000097 ),
    .Q(\blk00000001/sig00000156 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000004e  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig00000098 ),
    .Q(\blk00000001/sig00000155 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000004d  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig00000099 ),
    .Q(\blk00000001/sig00000154 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000004c  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig0000009a ),
    .Q(\blk00000001/sig00000153 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000004b  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig0000009b ),
    .Q(\blk00000001/sig00000152 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000004a  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig0000009c ),
    .Q(\blk00000001/sig00000151 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000049  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig0000009d ),
    .Q(\blk00000001/sig00000150 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000048  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig0000009e ),
    .Q(\blk00000001/sig0000014f )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000047  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig0000009f ),
    .Q(\blk00000001/sig0000014e )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000046  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000a0 ),
    .Q(\blk00000001/sig0000014d )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000045  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000a1 ),
    .Q(\blk00000001/sig0000014c )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000044  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000a2 ),
    .Q(\blk00000001/sig0000014b )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000043  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000a3 ),
    .Q(\blk00000001/sig0000014a )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000042  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000a4 ),
    .Q(\blk00000001/sig00000149 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000041  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000a5 ),
    .Q(\blk00000001/sig00000148 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000040  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000a6 ),
    .Q(\blk00000001/sig00000147 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000003f  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000a7 ),
    .Q(\blk00000001/sig00000146 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000003e  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000a8 ),
    .Q(\blk00000001/sig00000145 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000003d  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000a9 ),
    .Q(\blk00000001/sig00000144 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000003c  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000aa ),
    .Q(\blk00000001/sig00000143 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000003b  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000ab ),
    .Q(\blk00000001/sig00000142 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000003a  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000ac ),
    .Q(\blk00000001/sig00000141 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000039  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000ad ),
    .Q(\blk00000001/sig00000140 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000038  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000ae ),
    .Q(\blk00000001/sig0000013f )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000037  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000af ),
    .Q(\blk00000001/sig0000013e )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000036  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000b0 ),
    .Q(\blk00000001/sig0000013d )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000035  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000b1 ),
    .Q(\blk00000001/sig0000013c )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000034  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000b2 ),
    .Q(\blk00000001/sig0000013b )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000033  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000b3 ),
    .Q(\blk00000001/sig0000013a )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000032  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000b4 ),
    .Q(\blk00000001/sig00000139 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000031  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000b5 ),
    .Q(\blk00000001/sig00000138 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000030  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000b6 ),
    .Q(\blk00000001/sig00000137 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000002f  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000b7 ),
    .Q(\blk00000001/sig00000136 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000002e  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000b8 ),
    .Q(\blk00000001/sig00000135 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000002d  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000b9 ),
    .Q(\blk00000001/sig00000134 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000002c  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000ba ),
    .Q(\blk00000001/sig00000133 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000002b  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000bb ),
    .Q(\blk00000001/sig00000132 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000002a  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000bc ),
    .Q(\blk00000001/sig00000131 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000029  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000bd ),
    .Q(\blk00000001/sig00000130 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000028  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000be ),
    .Q(\blk00000001/sig0000012f )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000027  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000012e ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000026  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000012d ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000025  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000012c ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000024  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000012b ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000023  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000012a ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000022  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000129 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000021  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000128 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000020  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000127 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001f  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000126 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001e  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000125 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000124 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[10])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001c  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000123 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[11])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001b  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000122 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[12])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001a  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000121 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[13])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000019  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig00000120 ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[14])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000018  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000011f ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[15])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000017  (
    .C(clk),
    .CE(\blk00000001/sig00000092 ),
    .D(\blk00000001/sig0000011e ),
    .R(\blk00000001/sig00000093 ),
    .Q(p[16])
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000016  (
    .A0(\blk00000001/sig00000092 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000ef ),
    .Q(\blk00000001/sig0000012e )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000015  (
    .A0(\blk00000001/sig00000092 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000f0 ),
    .Q(\blk00000001/sig0000012d )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000014  (
    .A0(\blk00000001/sig00000092 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000f1 ),
    .Q(\blk00000001/sig0000012c )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000013  (
    .A0(\blk00000001/sig00000092 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000f2 ),
    .Q(\blk00000001/sig0000012b )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000012  (
    .A0(\blk00000001/sig00000092 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000f3 ),
    .Q(\blk00000001/sig0000012a )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000011  (
    .A0(\blk00000001/sig00000092 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000f4 ),
    .Q(\blk00000001/sig00000129 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000010  (
    .A0(\blk00000001/sig00000092 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000f5 ),
    .Q(\blk00000001/sig00000128 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000000f  (
    .A0(\blk00000001/sig00000092 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000f6 ),
    .Q(\blk00000001/sig00000127 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000000e  (
    .A0(\blk00000001/sig00000092 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000f7 ),
    .Q(\blk00000001/sig00000126 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000000d  (
    .A0(\blk00000001/sig00000092 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000f8 ),
    .Q(\blk00000001/sig00000125 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000000c  (
    .A0(\blk00000001/sig00000092 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000f9 ),
    .Q(\blk00000001/sig00000124 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000000b  (
    .A0(\blk00000001/sig00000092 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000fa ),
    .Q(\blk00000001/sig00000123 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000000a  (
    .A0(\blk00000001/sig00000092 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000fb ),
    .Q(\blk00000001/sig00000122 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000009  (
    .A0(\blk00000001/sig00000092 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000fc ),
    .Q(\blk00000001/sig00000121 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000008  (
    .A0(\blk00000001/sig00000092 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000fd ),
    .Q(\blk00000001/sig00000120 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000007  (
    .A0(\blk00000001/sig00000092 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000fe ),
    .Q(\blk00000001/sig0000011f )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000006  (
    .A0(\blk00000001/sig00000092 ),
    .A1(\blk00000001/sig00000092 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000092 ),
    .CLK(clk),
    .D(\blk00000001/sig000000ff ),
    .Q(\blk00000001/sig0000011e )
  );
  DSP48E1 #(
    .ACASCREG ( 1 ),
    .ADREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .AREG ( 1 ),
    .AUTORESET_PATDET ( "NO_RESET" ),
    .A_INPUT ( "DIRECT" ),
    .BCASCREG ( 1 ),
    .BREG ( 1 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .CREG ( 0 ),
    .DREG ( 0 ),
    .INMODEREG ( 0 ),
    .MASK ( 48'h000000000000 ),
    .MREG ( 1 ),
    .OPMODEREG ( 0 ),
    .PATTERN ( 48'h000000000000 ),
    .PREG ( 1 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .USE_DPORT ( "FALSE" ),
    .USE_MULT ( "MULTIPLY" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .USE_SIMD ( "ONE48" ))
  \blk00000001/blk00000005  (
    .PATTERNBDETECT(\NLW_blk00000001/blk00000005_PATTERNBDETECT_UNCONNECTED ),
    .RSTC(\blk00000001/sig00000093 ),
    .CEB1(\blk00000001/sig00000093 ),
    .CEAD(\blk00000001/sig00000093 ),
    .MULTSIGNOUT(\NLW_blk00000001/blk00000005_MULTSIGNOUT_UNCONNECTED ),
    .CEC(\blk00000001/sig00000093 ),
    .RSTM(\blk00000001/sig00000093 ),
    .MULTSIGNIN(\blk00000001/sig00000093 ),
    .CEB2(\blk00000001/sig00000092 ),
    .RSTCTRL(\blk00000001/sig00000093 ),
    .CEP(\blk00000001/sig00000092 ),
    .CARRYCASCOUT(\NLW_blk00000001/blk00000005_CARRYCASCOUT_UNCONNECTED ),
    .RSTA(\blk00000001/sig00000093 ),
    .CECARRYIN(\blk00000001/sig00000093 ),
    .UNDERFLOW(\NLW_blk00000001/blk00000005_UNDERFLOW_UNCONNECTED ),
    .PATTERNDETECT(\NLW_blk00000001/blk00000005_PATTERNDETECT_UNCONNECTED ),
    .RSTALUMODE(\blk00000001/sig00000093 ),
    .RSTALLCARRYIN(\blk00000001/sig00000093 ),
    .CED(\blk00000001/sig00000093 ),
    .RSTD(\blk00000001/sig00000093 ),
    .CEALUMODE(\blk00000001/sig00000093 ),
    .CEA2(\blk00000001/sig00000092 ),
    .CLK(clk),
    .CEA1(\blk00000001/sig00000093 ),
    .RSTB(\blk00000001/sig00000093 ),
    .OVERFLOW(\NLW_blk00000001/blk00000005_OVERFLOW_UNCONNECTED ),
    .CECTRL(\blk00000001/sig00000093 ),
    .CEM(\blk00000001/sig00000092 ),
    .CARRYIN(\blk00000001/sig00000093 ),
    .CARRYCASCIN(\blk00000001/sig00000093 ),
    .RSTINMODE(\blk00000001/sig00000093 ),
    .CEINMODE(\blk00000001/sig00000093 ),
    .RSTP(\blk00000001/sig00000093 ),
    .ACOUT({\blk00000001/sig0000011d , \blk00000001/sig0000011c , \blk00000001/sig0000011b , \blk00000001/sig0000011a , \blk00000001/sig00000119 , 
\blk00000001/sig00000118 , \blk00000001/sig00000117 , \blk00000001/sig00000116 , \blk00000001/sig00000115 , \blk00000001/sig00000114 , 
\blk00000001/sig00000113 , \blk00000001/sig00000112 , \blk00000001/sig00000111 , \blk00000001/sig00000110 , \blk00000001/sig0000010f , 
\blk00000001/sig0000010e , \blk00000001/sig0000010d , \blk00000001/sig0000010c , \blk00000001/sig0000010b , \blk00000001/sig0000010a , 
\blk00000001/sig00000109 , \blk00000001/sig00000108 , \blk00000001/sig00000107 , \blk00000001/sig00000106 , \blk00000001/sig00000105 , 
\blk00000001/sig00000104 , \blk00000001/sig00000103 , \blk00000001/sig00000102 , \blk00000001/sig00000101 , \blk00000001/sig00000100 }),
    .OPMODE({\blk00000001/sig00000093 , \blk00000001/sig00000092 , \blk00000001/sig00000092 , \blk00000001/sig00000093 , \blk00000001/sig00000092 , 
\blk00000001/sig00000093 , \blk00000001/sig00000092 }),
    .PCIN({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 }),
    .ALUMODE({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 }),
    .C({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 }),
    .CARRYOUT({\NLW_blk00000001/blk00000005_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000001/blk00000005_CARRYOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_CARRYOUT<1>_UNCONNECTED , \NLW_blk00000001/blk00000005_CARRYOUT<0>_UNCONNECTED }),
    .INMODE({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 }),
    .BCIN({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 }),
    .B({\blk00000001/sig00000093 , a[16], a[15], a[14], a[13], a[12], a[11], a[10], a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0]}),
    .BCOUT({\NLW_blk00000001/blk00000005_BCOUT<17>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_BCOUT<15>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_BCOUT<13>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_BCOUT<11>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_BCOUT<9>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_BCOUT<7>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_BCOUT<5>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_BCOUT<3>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_BCOUT<1>_UNCONNECTED , \NLW_blk00000001/blk00000005_BCOUT<0>_UNCONNECTED }),
    .D({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 }),
    .P({\NLW_blk00000001/blk00000005_P<47>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<46>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_P<45>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<44>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<43>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_P<42>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<41>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<40>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_P<39>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<38>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<37>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_P<36>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<35>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<34>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_P<33>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<32>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<31>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_P<30>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<29>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<28>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_P<27>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<26>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<25>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_P<24>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<23>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<22>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_P<21>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<20>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<19>_UNCONNECTED , 
\NLW_blk00000001/blk00000005_P<18>_UNCONNECTED , \NLW_blk00000001/blk00000005_P<17>_UNCONNECTED , \blk00000001/sig000000ff , \blk00000001/sig000000fe 
, \blk00000001/sig000000fd , \blk00000001/sig000000fc , \blk00000001/sig000000fb , \blk00000001/sig000000fa , \blk00000001/sig000000f9 , 
\blk00000001/sig000000f8 , \blk00000001/sig000000f7 , \blk00000001/sig000000f6 , \blk00000001/sig000000f5 , \blk00000001/sig000000f4 , 
\blk00000001/sig000000f3 , \blk00000001/sig000000f2 , \blk00000001/sig000000f1 , \blk00000001/sig000000f0 , \blk00000001/sig000000ef }),
    .A({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , b[19], 
b[19], b[19], b[19], b[19], b[19], b[18], b[17], b[16], b[15], b[14], b[13], b[12], b[11], b[10], b[9], b[8], b[7], b[6], b[5], b[4], b[3], b[2], b[1]
, b[0]}),
    .PCOUT({\blk00000001/sig000000ee , \blk00000001/sig000000ed , \blk00000001/sig000000ec , \blk00000001/sig000000eb , \blk00000001/sig000000ea , 
\blk00000001/sig000000e9 , \blk00000001/sig000000e8 , \blk00000001/sig000000e7 , \blk00000001/sig000000e6 , \blk00000001/sig000000e5 , 
\blk00000001/sig000000e4 , \blk00000001/sig000000e3 , \blk00000001/sig000000e2 , \blk00000001/sig000000e1 , \blk00000001/sig000000e0 , 
\blk00000001/sig000000df , \blk00000001/sig000000de , \blk00000001/sig000000dd , \blk00000001/sig000000dc , \blk00000001/sig000000db , 
\blk00000001/sig000000da , \blk00000001/sig000000d9 , \blk00000001/sig000000d8 , \blk00000001/sig000000d7 , \blk00000001/sig000000d6 , 
\blk00000001/sig000000d5 , \blk00000001/sig000000d4 , \blk00000001/sig000000d3 , \blk00000001/sig000000d2 , \blk00000001/sig000000d1 , 
\blk00000001/sig000000d0 , \blk00000001/sig000000cf , \blk00000001/sig000000ce , \blk00000001/sig000000cd , \blk00000001/sig000000cc , 
\blk00000001/sig000000cb , \blk00000001/sig000000ca , \blk00000001/sig000000c9 , \blk00000001/sig000000c8 , \blk00000001/sig000000c7 , 
\blk00000001/sig000000c6 , \blk00000001/sig000000c5 , \blk00000001/sig000000c4 , \blk00000001/sig000000c3 , \blk00000001/sig000000c2 , 
\blk00000001/sig000000c1 , \blk00000001/sig000000c0 , \blk00000001/sig000000bf }),
    .ACIN({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 }),
    .CARRYINSEL({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 })
  );
  DSP48E1 #(
    .ACASCREG ( 1 ),
    .ADREG ( 0 ),
    .ALUMODEREG ( 1 ),
    .AREG ( 1 ),
    .AUTORESET_PATDET ( "NO_RESET" ),
    .A_INPUT ( "CASCADE" ),
    .BCASCREG ( 2 ),
    .BREG ( 2 ),
    .B_INPUT ( "DIRECT" ),
    .CARRYINREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .CREG ( 0 ),
    .DREG ( 0 ),
    .INMODEREG ( 0 ),
    .MASK ( 48'h000000000000 ),
    .MREG ( 1 ),
    .OPMODEREG ( 0 ),
    .PATTERN ( 48'h000000000000 ),
    .PREG ( 1 ),
    .SEL_MASK ( "MASK" ),
    .SEL_PATTERN ( "PATTERN" ),
    .USE_DPORT ( "FALSE" ),
    .USE_MULT ( "MULTIPLY" ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .USE_SIMD ( "ONE48" ))
  \blk00000001/blk00000004  (
    .PATTERNBDETECT(\NLW_blk00000001/blk00000004_PATTERNBDETECT_UNCONNECTED ),
    .RSTC(\blk00000001/sig00000093 ),
    .CEB1(\blk00000001/sig00000092 ),
    .CEAD(\blk00000001/sig00000093 ),
    .MULTSIGNOUT(\NLW_blk00000001/blk00000004_MULTSIGNOUT_UNCONNECTED ),
    .CEC(\blk00000001/sig00000093 ),
    .RSTM(\blk00000001/sig00000093 ),
    .MULTSIGNIN(\blk00000001/sig00000093 ),
    .CEB2(\blk00000001/sig00000092 ),
    .RSTCTRL(\blk00000001/sig00000093 ),
    .CEP(\blk00000001/sig00000092 ),
    .CARRYCASCOUT(\NLW_blk00000001/blk00000004_CARRYCASCOUT_UNCONNECTED ),
    .RSTA(\blk00000001/sig00000093 ),
    .CECARRYIN(\blk00000001/sig00000093 ),
    .UNDERFLOW(\NLW_blk00000001/blk00000004_UNDERFLOW_UNCONNECTED ),
    .PATTERNDETECT(\NLW_blk00000001/blk00000004_PATTERNDETECT_UNCONNECTED ),
    .RSTALUMODE(\blk00000001/sig00000093 ),
    .RSTALLCARRYIN(\blk00000001/sig00000093 ),
    .CED(\blk00000001/sig00000093 ),
    .RSTD(\blk00000001/sig00000093 ),
    .CEALUMODE(\blk00000001/sig00000092 ),
    .CEA2(\blk00000001/sig00000092 ),
    .CLK(clk),
    .CEA1(\blk00000001/sig00000093 ),
    .RSTB(\blk00000001/sig00000093 ),
    .OVERFLOW(\NLW_blk00000001/blk00000004_OVERFLOW_UNCONNECTED ),
    .CECTRL(\blk00000001/sig00000093 ),
    .CEM(\blk00000001/sig00000092 ),
    .CARRYIN(\blk00000001/sig00000093 ),
    .CARRYCASCIN(\blk00000001/sig00000093 ),
    .RSTINMODE(\blk00000001/sig00000093 ),
    .CEINMODE(\blk00000001/sig00000093 ),
    .RSTP(\blk00000001/sig00000093 ),
    .ACOUT({\NLW_blk00000001/blk00000004_ACOUT<29>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<28>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<27>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<26>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<25>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<24>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<23>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<22>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<21>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<20>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<19>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<18>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<17>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<16>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<15>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<14>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<13>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<12>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<11>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<10>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<9>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<8>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<7>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<6>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<5>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<4>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<3>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<1>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<0>_UNCONNECTED }),
    .OPMODE({\blk00000001/sig00000092 , \blk00000001/sig00000093 , \blk00000001/sig00000092 , \blk00000001/sig00000093 , \blk00000001/sig00000092 , 
\blk00000001/sig00000093 , \blk00000001/sig00000092 }),
    .PCIN({\blk00000001/sig000000ee , \blk00000001/sig000000ed , \blk00000001/sig000000ec , \blk00000001/sig000000eb , \blk00000001/sig000000ea , 
\blk00000001/sig000000e9 , \blk00000001/sig000000e8 , \blk00000001/sig000000e7 , \blk00000001/sig000000e6 , \blk00000001/sig000000e5 , 
\blk00000001/sig000000e4 , \blk00000001/sig000000e3 , \blk00000001/sig000000e2 , \blk00000001/sig000000e1 , \blk00000001/sig000000e0 , 
\blk00000001/sig000000df , \blk00000001/sig000000de , \blk00000001/sig000000dd , \blk00000001/sig000000dc , \blk00000001/sig000000db , 
\blk00000001/sig000000da , \blk00000001/sig000000d9 , \blk00000001/sig000000d8 , \blk00000001/sig000000d7 , \blk00000001/sig000000d6 , 
\blk00000001/sig000000d5 , \blk00000001/sig000000d4 , \blk00000001/sig000000d3 , \blk00000001/sig000000d2 , \blk00000001/sig000000d1 , 
\blk00000001/sig000000d0 , \blk00000001/sig000000cf , \blk00000001/sig000000ce , \blk00000001/sig000000cd , \blk00000001/sig000000cc , 
\blk00000001/sig000000cb , \blk00000001/sig000000ca , \blk00000001/sig000000c9 , \blk00000001/sig000000c8 , \blk00000001/sig000000c7 , 
\blk00000001/sig000000c6 , \blk00000001/sig000000c5 , \blk00000001/sig000000c4 , \blk00000001/sig000000c3 , \blk00000001/sig000000c2 , 
\blk00000001/sig000000c1 , \blk00000001/sig000000c0 , \blk00000001/sig000000bf }),
    .ALUMODE({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 }),
    .C({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 }),
    .CARRYOUT({\NLW_blk00000001/blk00000004_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000001/blk00000004_CARRYOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_CARRYOUT<1>_UNCONNECTED , \NLW_blk00000001/blk00000004_CARRYOUT<0>_UNCONNECTED }),
    .INMODE({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 }),
    .BCIN({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 }),
    .B({a[27], a[27], a[27], a[27], a[27], a[27], a[27], a[27], a[26], a[25], a[24], a[23], a[22], a[21], a[20], a[19], a[18], a[17]}),
    .BCOUT({\NLW_blk00000001/blk00000004_BCOUT<17>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<15>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<13>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<11>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<9>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<7>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<5>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<3>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<1>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<0>_UNCONNECTED }),
    .D({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 }),
    .P({\NLW_blk00000001/blk00000004_P<47>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<46>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P<45>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<44>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<43>_UNCONNECTED , 
\blk00000001/sig000000be , \blk00000001/sig000000bd , \blk00000001/sig000000bc , \blk00000001/sig000000bb , \blk00000001/sig000000ba , 
\blk00000001/sig000000b9 , \blk00000001/sig000000b8 , \blk00000001/sig000000b7 , \blk00000001/sig000000b6 , \blk00000001/sig000000b5 , 
\blk00000001/sig000000b4 , \blk00000001/sig000000b3 , \blk00000001/sig000000b2 , \blk00000001/sig000000b1 , \blk00000001/sig000000b0 , 
\blk00000001/sig000000af , \blk00000001/sig000000ae , \blk00000001/sig000000ad , \blk00000001/sig000000ac , \blk00000001/sig000000ab , 
\blk00000001/sig000000aa , \blk00000001/sig000000a9 , \blk00000001/sig000000a8 , \blk00000001/sig000000a7 , \blk00000001/sig000000a6 , 
\blk00000001/sig000000a5 , \blk00000001/sig000000a4 , \blk00000001/sig000000a3 , \blk00000001/sig000000a2 , \blk00000001/sig000000a1 , 
\blk00000001/sig000000a0 , \blk00000001/sig0000009f , \blk00000001/sig0000009e , \blk00000001/sig0000009d , \blk00000001/sig0000009c , 
\blk00000001/sig0000009b , \blk00000001/sig0000009a , \blk00000001/sig00000099 , \blk00000001/sig00000098 , \blk00000001/sig00000097 , 
\blk00000001/sig00000096 , \blk00000001/sig00000095 , \blk00000001/sig00000094 }),
    .A({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 }),
    .PCOUT({\blk00000001/sig00000062 , \blk00000001/sig00000063 , \blk00000001/sig00000064 , \blk00000001/sig00000065 , \blk00000001/sig00000066 , 
\blk00000001/sig00000067 , \blk00000001/sig00000068 , \blk00000001/sig00000069 , \blk00000001/sig0000006a , \blk00000001/sig0000006b , 
\blk00000001/sig0000006c , \blk00000001/sig0000006d , \blk00000001/sig0000006e , \blk00000001/sig0000006f , \blk00000001/sig00000070 , 
\blk00000001/sig00000071 , \blk00000001/sig00000072 , \blk00000001/sig00000073 , \blk00000001/sig00000074 , \blk00000001/sig00000075 , 
\blk00000001/sig00000076 , \blk00000001/sig00000077 , \blk00000001/sig00000078 , \blk00000001/sig00000079 , \blk00000001/sig0000007a , 
\blk00000001/sig0000007b , \blk00000001/sig0000007c , \blk00000001/sig0000007d , \blk00000001/sig0000007e , \blk00000001/sig0000007f , 
\blk00000001/sig00000080 , \blk00000001/sig00000081 , \blk00000001/sig00000082 , \blk00000001/sig00000083 , \blk00000001/sig00000084 , 
\blk00000001/sig00000085 , \blk00000001/sig00000086 , \blk00000001/sig00000087 , \blk00000001/sig00000088 , \blk00000001/sig00000089 , 
\blk00000001/sig0000008a , \blk00000001/sig0000008b , \blk00000001/sig0000008c , \blk00000001/sig0000008d , \blk00000001/sig0000008e , 
\blk00000001/sig0000008f , \blk00000001/sig00000090 , \blk00000001/sig00000091 }),
    .ACIN({\blk00000001/sig0000011d , \blk00000001/sig0000011c , \blk00000001/sig0000011b , \blk00000001/sig0000011a , \blk00000001/sig00000119 , 
\blk00000001/sig00000118 , \blk00000001/sig00000117 , \blk00000001/sig00000116 , \blk00000001/sig00000115 , \blk00000001/sig00000114 , 
\blk00000001/sig00000113 , \blk00000001/sig00000112 , \blk00000001/sig00000111 , \blk00000001/sig00000110 , \blk00000001/sig0000010f , 
\blk00000001/sig0000010e , \blk00000001/sig0000010d , \blk00000001/sig0000010c , \blk00000001/sig0000010b , \blk00000001/sig0000010a , 
\blk00000001/sig00000109 , \blk00000001/sig00000108 , \blk00000001/sig00000107 , \blk00000001/sig00000106 , \blk00000001/sig00000105 , 
\blk00000001/sig00000104 , \blk00000001/sig00000103 , \blk00000001/sig00000102 , \blk00000001/sig00000101 , \blk00000001/sig00000100 }),
    .CARRYINSEL({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 })
  );
  GND   \blk00000001/blk00000003  (
    .G(\blk00000001/sig00000093 )
  );
  VCC   \blk00000001/blk00000002  (
    .P(\blk00000001/sig00000092 )
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
