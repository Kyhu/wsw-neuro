////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.61xd
//  \   \         Application: netgen
//  /   /         Filename: add_sub_u16_u16.v
// /___/   /\     Timestamp: Mon Mar  4 21:45:11 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/alric/Desktop/pbus/ipcore_dir/tmp/_cg/add_sub_u16_u16.ngc /home/alric/Desktop/pbus/ipcore_dir/tmp/_cg/add_sub_u16_u16.v 
// Device	: 7vx485tffg1761-2
// Input file	: /home/alric/Desktop/pbus/ipcore_dir/tmp/_cg/add_sub_u16_u16.ngc
// Output file	: /home/alric/Desktop/pbus/ipcore_dir/tmp/_cg/add_sub_u16_u16.v
// # of Modules	: 1
// Design Name	: add_sub_u16_u16
// Xilinx        : /home/alric/ISE_DS/ISE/
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

module add_sub_u16_u16 (
  clk, add, a, b, s
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input add;
  input [15 : 0] a;
  input [16 : 0] b;
  output [17 : 0] s;
  
  // synthesis translate_off
  
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<9> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<8> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<7> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<6> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<5> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<4> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<3> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<2> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<1> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<9> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<8> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<7> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<6> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<5> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<4> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<3> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<2> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<1> ;
  wire N1;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<1> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<2> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<3> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<4> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<5> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<6> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<7> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<8> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<9> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q_c_out.i_simple.add_q_cout.q_c_outreg/fd/output_1_63 ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.i_addsub.stages[2].addpipereg/fd/output_1_64 ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<8> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<7> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<6> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<5> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<4> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<3> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<2> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<1> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<0> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<7> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<6> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<5> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<4> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<3> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<2> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<1> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<8> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<0> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<7> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<6> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<5> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<4> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<3> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<2> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<1> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<8> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<0> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/c_in_i ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<8> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<7> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<6> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<5> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<4> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<3> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<2> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<1> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<0> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<6> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<5> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<4> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<3> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<2> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<1> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<0> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<7> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<6> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<5> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<4> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<3> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<2> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<1> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<0> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/c_in_i ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/b_or_not_b<7> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<8> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<7> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<6> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<5> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<4> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<3> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<2> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<1> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<7> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<6> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<5> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<4> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<3> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<2> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<1> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<8> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<0> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<7> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<6> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<5> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<4> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<3> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<2> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<1> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<0> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<0> ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/c_in_i1 ;
  wire N2;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_7_147 ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_9_148 ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_8_149 ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_6_150 ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_5_151 ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_4_152 ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_3_153 ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_2_154 ;
  wire \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_1_155 ;
  wire \NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.muxtop.carrymuxtop_O_UNCONNECTED ;
  wire \NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_7_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_9_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_8_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_6_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_5_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_4_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_3_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_2_Q15_UNCONNECTED ;
  wire \NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_1_Q15_UNCONNECTED ;
  assign
    s[17] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<9> 
,
    s[16] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<8> 
,
    s[15] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<7> 
,
    s[14] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<6> 
,
    s[13] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<5> 
,
    s[12] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<4> 
,
    s[11] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<3> 
,
    s[10] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<2> 
,
    s[9] = 
\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<1> 
,
    s[8] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<9> ,
    s[7] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<8> ,
    s[6] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<7> ,
    s[5] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<6> ,
    s[4] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<5> ,
    s[3] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<4> ,
    s[2] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<3> ,
    s[1] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<2> ,
    s[0] = \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<1> ;
  GND   XST_GND (
    .G(N1)
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.i_addsub.stages[2].addpipereg/fd/output_1  (
    .C(clk),
    .D(add),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.i_addsub.stages[2].addpipereg/fd/output_1_64 )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carryxortop  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<7> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<8> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<8> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[7].carryxor  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<6> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<7> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<7> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[6].carryxor  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<5> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<6> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<6> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[5].carryxor  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<4> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<5> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<5> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[4].carryxor  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<3> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<4> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<4> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[3].carryxor  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<2> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<3> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<3> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[2].carryxor  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<1> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<2> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<2> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[1].carryxor  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<0> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<1> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<1> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.carryxor0  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/c_in_i ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<0> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<0> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[7].carrymux  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<6> ),
    .DI(a[7]),
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<7> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<7> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[6].carrymux  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<5> ),
    .DI(a[6]),
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<6> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<6> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[5].carrymux  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<4> ),
    .DI(a[5]),
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<5> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<5> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[4].carrymux  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<3> ),
    .DI(a[4]),
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<4> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<4> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[3].carrymux  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<2> ),
    .DI(a[3]),
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<3> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<3> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[2].carrymux  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<1> ),
    .DI(a[2]),
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<2> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<2> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[1].carrymux  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<0> ),
    .DI(a[1]),
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<1> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<1> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.muxtop.carrymuxtop  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<7> ),
    .DI(a[8]),
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<8> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<8> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.carrymux0  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/c_in_i ),
    .DI(a[0]),
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<0> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<0> )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q_c_out.i_simple.add_q_cout.q_c_outreg/fd/output_1  (
    .C(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<8> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q_c_out.i_simple.add_q_cout.q_c_outreg/fd/output_1_63 )

  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_1  (
    .C(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<0> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<1> )

  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_2  (
    .C(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<1> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<2> )

  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_3  (
    .C(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<2> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<3> )

  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_4  (
    .C(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<3> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<4> )

  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_5  (
    .C(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<4> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<5> )

  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_6  (
    .C(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<5> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<6> )

  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_7  (
    .C(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<6> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<7> )

  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_8  (
    .C(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<7> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<8> )

  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_9  (
    .C(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<8> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<9> )

  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carryxortop  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<7> ),
    .LI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/c_in_i1 ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<8> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[7].carryxor  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<6> ),
    .LI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/b_or_not_b<7> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<7> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[6].carryxor  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<5> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<6> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<6> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[5].carryxor  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<4> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<5> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<5> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[4].carryxor  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<3> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<4> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<4> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[3].carryxor  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<2> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<3> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<3> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[2].carryxor  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<1> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<2> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<2> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[1].carryxor  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<0> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<1> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<1> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.carryxor0  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/c_in_i ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<0> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<0> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[7].carrymux  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<6> ),
    .DI(N1),
    .S(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/b_or_not_b<7> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<7> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[6].carrymux  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<5> ),
    .DI(a[15]),
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<6> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<6> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[5].carrymux  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<4> ),
    .DI(a[14]),
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<5> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<5> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[4].carrymux  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<3> ),
    .DI(a[13]),
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<4> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<4> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[3].carrymux  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<2> ),
    .DI(a[12]),
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<3> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<3> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[2].carrymux  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<1> ),
    .DI(a[11]),
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<2> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<2> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[1].carrymux  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<0> ),
    .DI(a[10]),
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<1> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<1> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.carrymux0  (
    .CI(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/c_in_i ),
    .DI(a[9]),
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<0> ),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/carry_simple<0> )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_1  (
    .C(clk),
    .D
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<0> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<1> )

  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_2  (
    .C(clk),
    .D
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<1> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<2> )

  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_3  (
    .C(clk),
    .D
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<2> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<3> )

  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_4  (
    .C(clk),
    .D
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<3> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<4> )

  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_5  (
    .C(clk),
    .D
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<4> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<5> )

  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_6  (
    .C(clk),
    .D
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<5> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<6> )

  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_7  (
    .C(clk),
    .D
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<6> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<7> )

  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_8  (
    .C(clk),
    .D
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<7> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<8> )

  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output_9  (
    .C(clk),
    .D
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<8> ),
    .Q
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<9> )

  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carryxortop  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<7> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<8> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<8> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[7].carryxor  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<6> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<7> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<7> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[6].carryxor  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<5> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<6> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<6> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[5].carryxor  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<4> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<5> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<5> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[4].carryxor  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<3> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<4> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<4> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[3].carryxor  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<2> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<3> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<3> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[2].carryxor  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<1> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<2> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<2> )
  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[1].carryxor  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<0> ),
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<1> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<1> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[7].carrymux  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<6> ),
    .DI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<8> )
,
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<7> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<7> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[6].carrymux  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<5> ),
    .DI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<7> )
,
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<6> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<6> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[5].carrymux  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<4> ),
    .DI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<6> )
,
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<5> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<5> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[4].carrymux  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<3> ),
    .DI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<5> )
,
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<4> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<4> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[3].carrymux  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<2> ),
    .DI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<4> )
,
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<3> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<3> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[2].carrymux  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<1> ),
    .DI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<3> )
,
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<2> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<2> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.carrychaingen[1].carrymux  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<0> ),
    .DI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<2> )
,
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<1> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<1> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.muxtop.carrymuxtop  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<7> ),
    .DI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<9> )
,
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<8> )
,
    .O
(\NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.i_gt_1.muxtop.carrymuxtop_O_UNCONNECTED )

  );
  XORCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.carryxor0  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q_c_out.i_simple.add_q_cout.q_c_outreg/fd/output_1_63 )
,
    .LI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<0> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/sum_simple<0> )
  );
  MUXCY 
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.carrymux0  (
    .CI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q_c_out.i_simple.add_q_cout.q_c_outreg/fd/output_1_63 )
,
    .DI
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<1> )
,
    .S
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<0> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/carry_simple<0> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<0>1  (
    .I0(a[0]),
    .I1(b[0]),
    .I2(add),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<0> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<1>1  (
    .I0(a[1]),
    .I1(b[1]),
    .I2(add),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<1> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<2>1  (
    .I0(a[2]),
    .I1(b[2]),
    .I2(add),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<2> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<3>1  (
    .I0(a[3]),
    .I1(b[3]),
    .I2(add),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<3> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<4>1  (
    .I0(a[4]),
    .I1(b[4]),
    .I2(add),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<4> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<5>1  (
    .I0(a[5]),
    .I1(b[5]),
    .I2(add),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<5> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<6>1  (
    .I0(a[6]),
    .I1(b[6]),
    .I2(add),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<6> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<7>1  (
    .I0(a[7]),
    .I1(b[7]),
    .I2(add),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<7> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<8>1  (
    .I0(a[8]),
    .I1(b[8]),
    .I2(add),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<8> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<0>1  (
    .I0(a[9]),
    .I1(b[9]),
    .I2(add),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<0> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<1>1  (
    .I0(a[10]),
    .I1(b[10]),
    .I2(add),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<1> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<2>1  (
    .I0(a[11]),
    .I1(b[11]),
    .I2(add),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<2> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<3>1  (
    .I0(a[12]),
    .I1(b[12]),
    .I2(add),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<3> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<4>1  (
    .I0(a[13]),
    .I1(b[13]),
    .I2(add),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<4> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<5>1  (
    .I0(a[14]),
    .I1(b[14]),
    .I2(add),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<5> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<6>1  (
    .I0(a[15]),
    .I1(b[15]),
    .I2(add),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<6> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/Mmux_b_or_not_b81  (
    .I0(b[16]),
    .I1(add),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/b_or_not_b<7> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/Mxor_i_simple_model.halfsum_0_xo<0>1  (
    .I0
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<1> )
,
    .I1(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.i_addsub.stages[2].addpipereg/fd/output_1_64 ),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<0> )

  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/Mxor_i_simple_model.halfsum_1_xo<0>1  (
    .I0
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<2> )
,
    .I1(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.i_addsub.stages[2].addpipereg/fd/output_1_64 ),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<1> )

  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/Mxor_i_simple_model.halfsum_2_xo<0>1  (
    .I0
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<3> )
,
    .I1(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.i_addsub.stages[2].addpipereg/fd/output_1_64 ),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<2> )

  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/Mxor_i_simple_model.halfsum_3_xo<0>1  (
    .I0
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<4> )
,
    .I1(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.i_addsub.stages[2].addpipereg/fd/output_1_64 ),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<3> )

  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/Mxor_i_simple_model.halfsum_4_xo<0>1  (
    .I0
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<5> )
,
    .I1(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.i_addsub.stages[2].addpipereg/fd/output_1_64 ),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<4> )

  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/Mxor_i_simple_model.halfsum_5_xo<0>1  (
    .I0
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<6> )
,
    .I1(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.i_addsub.stages[2].addpipereg/fd/output_1_64 ),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<5> )

  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/Mxor_i_simple_model.halfsum_6_xo<0>1  (
    .I0
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<7> )
,
    .I1(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.i_addsub.stages[2].addpipereg/fd/output_1_64 ),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<6> )

  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/Mxor_i_simple_model.halfsum_7_xo<0>1  (
    .I0
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<8> )
,
    .I1(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.i_addsub.stages[2].addpipereg/fd/output_1_64 ),
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<7> )

  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/Mxor_i_simple_model.halfsum_8_xo<0>1  (
    .I0(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.i_addsub.stages[2].addpipereg/fd/output_1_64 ),
    .I1
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/i_q.i_simple.qreg/fd/output<9> )
,
    .O
(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[2].laststage.diagonal.diagonal_adder/i_lut6.i_lut6_addsub/i_simple_model.halfsum<8> )

  );
  INV   \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/c_in_i1_INV_0  (
    .I(add),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/c_in_i )
  );
  INV   \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/c_in_i1_INV_0  (
    .I(add),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/c_in_i )
  );
  INV   \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/c_in_i11_INV_0  (
    .I(add),
    .O(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[2].first.first_stage_adder/i_lut6.i_lut6_addsub/c_in_i1 )
  );
  VCC   XST_VCC (
    .P(N2)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_7  (
    .A0(N1),
    .A1(N1),
    .A2(N1),
    .A3(N1),
    .CE(N2),
    .CLK(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<6> ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_7_147 ),
    .Q15
(\NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_7_Q15_UNCONNECTED )

  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output_7  (
    .C(clk),
    .CE(N2),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_7_147 ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<7> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_9  (
    .A0(N1),
    .A1(N1),
    .A2(N1),
    .A3(N1),
    .CE(N2),
    .CLK(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<8> ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_9_148 ),
    .Q15
(\NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_9_Q15_UNCONNECTED )

  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output_9  (
    .C(clk),
    .CE(N2),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_9_148 ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<9> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_8  (
    .A0(N1),
    .A1(N1),
    .A2(N1),
    .A3(N1),
    .CE(N2),
    .CLK(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<7> ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_8_149 ),
    .Q15
(\NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_8_Q15_UNCONNECTED )

  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output_8  (
    .C(clk),
    .CE(N2),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_8_149 ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<8> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_6  (
    .A0(N1),
    .A1(N1),
    .A2(N1),
    .A3(N1),
    .CE(N2),
    .CLK(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<5> ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_6_150 ),
    .Q15
(\NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_6_Q15_UNCONNECTED )

  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output_6  (
    .C(clk),
    .CE(N2),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_6_150 ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<6> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_5  (
    .A0(N1),
    .A1(N1),
    .A2(N1),
    .A3(N1),
    .CE(N2),
    .CLK(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<4> ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_5_151 ),
    .Q15
(\NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_5_Q15_UNCONNECTED )

  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output_5  (
    .C(clk),
    .CE(N2),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_5_151 ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<5> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_4  (
    .A0(N1),
    .A1(N1),
    .A2(N1),
    .A3(N1),
    .CE(N2),
    .CLK(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<3> ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_4_152 ),
    .Q15
(\NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_4_Q15_UNCONNECTED )

  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output_4  (
    .C(clk),
    .CE(N2),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_4_152 ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<4> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_3  (
    .A0(N1),
    .A1(N1),
    .A2(N1),
    .A3(N1),
    .CE(N2),
    .CLK(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<2> ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_3_153 ),
    .Q15
(\NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_3_Q15_UNCONNECTED )

  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output_3  (
    .C(clk),
    .CE(N2),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_3_153 ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<3> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_2  (
    .A0(N1),
    .A1(N1),
    .A2(N1),
    .A3(N1),
    .CE(N2),
    .CLK(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<1> ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_2_154 ),
    .Q15
(\NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_2_Q15_UNCONNECTED )

  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output_2  (
    .C(clk),
    .CE(N2),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_2_154 ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<2> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_1  (
    .A0(N1),
    .A1(N1),
    .A2(N1),
    .A3(N1),
    .CE(N2),
    .CLK(clk),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[1].slices[1].first.first_stage_adder/i_lut6.i_lut6_addsub/sum_simple<0> ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_1_155 ),
    .Q15
(\NLW_U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_1_Q15_UNCONNECTED )

  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output_1  (
    .C(clk),
    .CE(N2),
    .D(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/Mshreg_output_1_155 ),
    .Q(\U0/xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[2].slices[1].laststage.belowdiagonal.piperegister/fd/output<1> )
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
