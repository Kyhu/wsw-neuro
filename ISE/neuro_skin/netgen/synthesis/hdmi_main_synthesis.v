////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: hdmi_main_synthesis.v
// /___/   /\     Timestamp: Mon Nov 17 20:52:33 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim hdmi_main.ngc hdmi_main_synthesis.v 
// Device	: xc6slx45-2-csg324
// Input file	: hdmi_main.ngc
// Output file	: /home/kyhu/Workspace/WSW/wsw-neuro/ISE/neuro_skin/netgen/synthesis/hdmi_main_synthesis.v
// # of Modules	: 1
// Design Name	: hdmi_main
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

module hdmi_main (
  rstbtn_n, clk100, RX1_TMDS, RX1_TMDSB, SW, TX0_TMDS, TX0_TMDSB, LED
)/* synthesis syn_black_box syn_noprune=1 */;
  input rstbtn_n;
  input clk100;
  input [3 : 0] RX1_TMDS;
  input [3 : 0] RX1_TMDSB;
  input [2 : 0] SW;
  output [3 : 0] TX0_TMDS;
  output [3 : 0] TX0_TMDSB;
  output [7 : 0] LED;
  
  // synthesis translate_off
  
  wire SW_2_IBUF_8;
  wire SW_1_IBUF_9;
  wire SW_0_IBUF_10;
  wire rstbtn_n_IBUF_11;
  wire clk100_IBUF_12;
  wire rstbtn_n_INV_31_o;
  wire clk25m;
  wire rx_reset;
  wire rx_pclk;
  wire rx_pllclk1;
  wire \dvi_rx1/dec_b/c1_42 ;
  wire \dvi_rx1/dec_b/de_43 ;
  wire \dvi_rx1/dec_b/cbnd/iamrdy_44 ;
  wire \dvi_rx1/dec_g/cbnd/iamrdy_45 ;
  wire \dvi_rx1/dec_r/cbnd/iamrdy_46 ;
  wire tx_de;
  wire tx_hsync;
  wire tx_vsync;
  wire \ycbcr_converter/Y_delay/[1].delay_i/val<7> ;
  wire \ycbcr_converter/Y_delay/[1].delay_i/val<6> ;
  wire \ycbcr_converter/Y_delay/[1].delay_i/val<5> ;
  wire \ycbcr_converter/Y_delay/[1].delay_i/val<4> ;
  wire \ycbcr_converter/Y_delay/[1].delay_i/val<3> ;
  wire \ycbcr_converter/Y_delay/[1].delay_i/val<2> ;
  wire \ycbcr_converter/Y_delay/[1].delay_i/val<1> ;
  wire \ycbcr_converter/Y_delay/[1].delay_i/val<0> ;
  wire \ycbcr_converter/sync_delay/[5].delay_i/val<2> ;
  wire \ycbcr_converter/sync_delay/[5].delay_i/val<1> ;
  wire \ycbcr_converter/sync_delay/[5].delay_i/val<0> ;
  wire \dvi_rx1/dec_b/c0_125 ;
  wire tx_clkfbout;
  wire tx_pllclk0;
  wire tx_pllclk2;
  wire tx_plllckd;
  wire tx_pclk;
  wire tx_clkfbin;
  wire tx_pclkx10;
  wire tx_serdesstrobe;
  wire tx_pclkx2;
  wire N0;
  wire \dvi_rx1/clkfbout ;
  wire \dvi_rx1/pclkx2 ;
  wire \dvi_rx1/serdesstrobe ;
  wire \dvi_rx1/bufpll_lock ;
  wire \dvi_rx1/pclkx10 ;
  wire \dvi_rx1/rxclk ;
  wire \dvi_rx1/pll_lckd ;
  wire \dvi_rx1/pllclk2 ;
  wire \dvi_rx1/pllclk0 ;
  wire \dvi_rx1/dec_r/phsalgn_0/psaligned_154 ;
  wire \dvi_rx1/dec_g/phsalgn_0/psaligned_155 ;
  wire \dvi_rx1/dec_b/phsalgn_0/psaligned_156 ;
  wire \dvi_rx1/rxclkint ;
  wire \dvi_rx1/dec_r/n0050_inv ;
  wire \dvi_rx1/dec_r/data[7]_data[7]_MUX_117_o ;
  wire \dvi_rx1/dec_r/data[6]_data[6]_MUX_116_o ;
  wire \dvi_rx1/dec_r/data[5]_data[5]_MUX_115_o ;
  wire \dvi_rx1/dec_r/data[4]_data[4]_MUX_114_o ;
  wire \dvi_rx1/dec_r/data[3]_data[3]_MUX_113_o ;
  wire \dvi_rx1/dec_r/data[2]_data[2]_MUX_112_o ;
  wire \dvi_rx1/dec_r/data[1]_data[1]_MUX_111_o ;
  wire \dvi_rx1/dec_r/rx_toggle ;
  wire \dvi_rx1/dec_r/toggle_INV_3_o ;
  wire \dvi_rx1/dec_r/bitslip_bitslip_q_AND_1_o ;
  wire \dvi_rx1/dec_r/flipgearx2_180 ;
  wire \dvi_rx1/dec_r/bitslipx2_181 ;
  wire \dvi_rx1/dec_r/bitslip_q_182 ;
  wire \dvi_rx1/dec_r/phsalgn_0/bitslip_198 ;
  wire \dvi_rx1/dec_r/phsalgn_0/flipgear_199 ;
  wire \dvi_rx1/dec_g/n0050_inv ;
  wire \dvi_rx1/dec_g/data[7]_data[7]_MUX_117_o ;
  wire \dvi_rx1/dec_g/data[6]_data[6]_MUX_116_o ;
  wire \dvi_rx1/dec_g/data[5]_data[5]_MUX_115_o ;
  wire \dvi_rx1/dec_g/data[4]_data[4]_MUX_114_o ;
  wire \dvi_rx1/dec_g/data[3]_data[3]_MUX_113_o ;
  wire \dvi_rx1/dec_g/data[2]_data[2]_MUX_112_o ;
  wire \dvi_rx1/dec_g/data[1]_data[1]_MUX_111_o ;
  wire \dvi_rx1/dec_g/rx_toggle ;
  wire \dvi_rx1/dec_g/bitslip_bitslip_q_AND_1_o ;
  wire \dvi_rx1/dec_g/flipgearx2_226 ;
  wire \dvi_rx1/dec_g/bitslipx2_227 ;
  wire \dvi_rx1/dec_g/bitslip_q_228 ;
  wire \dvi_rx1/dec_g/phsalgn_0/bitslip_244 ;
  wire \dvi_rx1/dec_g/phsalgn_0/flipgear_245 ;
  wire \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o1_251 ;
  wire \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o2_252 ;
  wire \dvi_rx1/dec_b/n0050_inv ;
  wire \dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ;
  wire \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o ;
  wire \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_16_o ;
  wire \dvi_rx1/dec_b/data[7]_data[7]_MUX_117_o ;
  wire \dvi_rx1/dec_b/data[6]_data[6]_MUX_116_o ;
  wire \dvi_rx1/dec_b/data[5]_data[5]_MUX_115_o ;
  wire \dvi_rx1/dec_b/data[4]_data[4]_MUX_114_o ;
  wire \dvi_rx1/dec_b/data[3]_data[3]_MUX_113_o ;
  wire \dvi_rx1/dec_b/data[2]_data[2]_MUX_112_o ;
  wire \dvi_rx1/dec_b/data[1]_data[1]_MUX_111_o ;
  wire \dvi_rx1/dec_b/rx_toggle ;
  wire \dvi_rx1/dec_b/bitslip_bitslip_q_AND_1_o ;
  wire \dvi_rx1/dec_b/flipgearx2_277 ;
  wire \dvi_rx1/dec_b/bitslipx2_278 ;
  wire \dvi_rx1/dec_b/bitslip_q_279 ;
  wire \dvi_rx1/dec_r/toggle_295 ;
  wire \dvi_rx1/dec_b/phsalgn_0/bitslip_296 ;
  wire \dvi_rx1/dec_b/phsalgn_0/flipgear_297 ;
  wire \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ;
  wire \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd2-In ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd3-In ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd4-In ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter8 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter7 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter6 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter5 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter4 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter3 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter2 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter1 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter ;
  wire \dvi_rx1/dec_b/des_0/counter<8>_inv ;
  wire \dvi_rx1/dec_b/des_0/_n0278_inv ;
  wire \dvi_rx1/dec_b/des_0/GND_10_o_GND_10_o_equal_45_o_inv ;
  wire \dvi_rx1/dec_b/des_0/reset_inv ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_4_o ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_equal_48_o ;
  wire \dvi_rx1/dec_b/des_0/incdec_data_d_pdcounter[4]_AND_5_o ;
  wire \dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ;
  wire \dvi_rx1/dec_b/des_0/inc_data_int_357 ;
  wire \dvi_rx1/dec_b/des_0/rst_data_358 ;
  wire \dvi_rx1/dec_b/des_0/ce_data_359 ;
  wire \dvi_rx1/dec_b/des_0/valid_data_d_360 ;
  wire \dvi_rx1/dec_b/des_0/incdec_data_d_361 ;
  wire \dvi_rx1/dec_b/des_0/busy_data_d_362 ;
  wire \dvi_rx1/dec_b/des_0/flag_363 ;
  wire \dvi_rx1/dec_b/des_0/ce_data_inta_364 ;
  wire \dvi_rx1/dec_b/des_0/enable_365 ;
  wire \dvi_rx1/dec_b/des_0/cal_data_sint_366 ;
  wire \dvi_rx1/dec_b/des_0/cal_data_master_367 ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd4_372 ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd3_373 ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd2_374 ;
  wire \dvi_rx1/dec_b/des_0/pd_edge ;
  wire \dvi_rx1/dec_b/des_0/valid_data_im ;
  wire \dvi_rx1/dec_b/des_0/cascade ;
  wire \dvi_rx1/dec_b/des_0/incdec_data_im ;
  wire \dvi_rx1/dec_b/des_0/ddly_s ;
  wire \dvi_rx1/dec_b/des_0/ddly_m ;
  wire \dvi_rx1/dec_b/des_0/rx_data_in ;
  wire \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ;
  wire \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd2-In ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd3-In ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd4-In ;
  wire \dvi_rx1/dec_g/des_0/_n0278_inv ;
  wire \dvi_rx1/dec_g/des_0/GND_10_o_GND_10_o_equal_45_o_inv ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_4_o ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_equal_48_o ;
  wire \dvi_rx1/dec_g/des_0/incdec_data_d_pdcounter[4]_AND_5_o ;
  wire \dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ;
  wire \dvi_rx1/dec_g/des_0/_n0260 ;
  wire \dvi_rx1/dec_g/des_0/inc_data_int_405 ;
  wire \dvi_rx1/dec_g/des_0/rst_data_406 ;
  wire \dvi_rx1/dec_g/des_0/ce_data_407 ;
  wire \dvi_rx1/dec_g/des_0/valid_data_d_408 ;
  wire \dvi_rx1/dec_g/des_0/incdec_data_d_409 ;
  wire \dvi_rx1/dec_g/des_0/busy_data_d_410 ;
  wire \dvi_rx1/dec_g/des_0/flag_411 ;
  wire \dvi_rx1/dec_g/des_0/ce_data_inta_412 ;
  wire \dvi_rx1/dec_g/des_0/cal_data_sint_413 ;
  wire \dvi_rx1/dec_g/des_0/cal_data_master_414 ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd4_419 ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd3_420 ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd2_421 ;
  wire \dvi_rx1/dec_g/des_0/pd_edge ;
  wire \dvi_rx1/dec_g/des_0/valid_data_im ;
  wire \dvi_rx1/dec_g/des_0/cascade ;
  wire \dvi_rx1/dec_g/des_0/incdec_data_im ;
  wire \dvi_rx1/dec_g/des_0/ddly_s ;
  wire \dvi_rx1/dec_g/des_0/ddly_m ;
  wire \dvi_rx1/dec_g/des_0/rx_data_in ;
  wire \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ;
  wire \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd2-In ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd3-In ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd4-In ;
  wire \dvi_rx1/dec_r/des_0/_n0278_inv ;
  wire \dvi_rx1/dec_r/des_0/GND_10_o_GND_10_o_equal_45_o_inv ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_4_o ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_equal_48_o ;
  wire \dvi_rx1/dec_r/des_0/incdec_data_d_pdcounter[4]_AND_5_o ;
  wire \dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ;
  wire \dvi_rx1/dec_r/des_0/_n0260 ;
  wire \dvi_rx1/dec_r/des_0/inc_data_int_450 ;
  wire \dvi_rx1/dec_r/des_0/rst_data_451 ;
  wire \dvi_rx1/dec_r/des_0/ce_data_452 ;
  wire \dvi_rx1/dec_r/des_0/valid_data_d_453 ;
  wire \dvi_rx1/dec_r/des_0/incdec_data_d_454 ;
  wire \dvi_rx1/dec_r/des_0/busy_data_d_455 ;
  wire \dvi_rx1/dec_r/des_0/flag_456 ;
  wire \dvi_rx1/dec_r/des_0/ce_data_inta_457 ;
  wire \dvi_rx1/dec_r/des_0/cal_data_sint_458 ;
  wire \dvi_rx1/dec_r/des_0/cal_data_master_459 ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd4_464 ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd3_465 ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd2_466 ;
  wire \dvi_rx1/dec_r/des_0/pd_edge ;
  wire \dvi_rx1/dec_r/des_0/valid_data_im ;
  wire \dvi_rx1/dec_r/des_0/cascade ;
  wire \dvi_rx1/dec_r/des_0/incdec_data_im ;
  wire \dvi_rx1/dec_r/des_0/ddly_s ;
  wire \dvi_rx1/dec_r/des_0/ddly_m ;
  wire \dvi_rx1/dec_r/des_0/rx_data_in ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_475 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<6>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<5>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<4>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<3>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<2>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<1>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<0>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1-In ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2-In ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3-In ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4-In ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5-In_521 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6-In ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_547 ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_tout_548 ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout_549 ;
  wire \dvi_rx1/dec_b/phsalgn_0/blnkbgn_550 ;
  wire \dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_q_551 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_552 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_553 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_554 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_555 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_556 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6_557 ;
  wire \dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0_558 ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_559 ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_560 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_562 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<6>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<5>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<4>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<3>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<2>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<1>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<0>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1-In ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2-In ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3-In ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4-In ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5-In_608 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6-In ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_634 ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_tout_635 ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout_636 ;
  wire \dvi_rx1/dec_g/phsalgn_0/blnkbgn_637 ;
  wire \dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_q_638 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_639 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_640 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_641 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_642 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_643 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6_644 ;
  wire \dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0_645 ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_646 ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_647 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_649 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<6>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<5>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<4>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<3>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<2>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<1>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<0>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1-In ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2-In ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3-In ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4-In ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5-In_695 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6-In ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_721 ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_tout_722 ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout_723 ;
  wire \dvi_rx1/dec_r/phsalgn_0/blnkbgn_724 ;
  wire \dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_q_725 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_726 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_727 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_728 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_729 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_730 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6_731 ;
  wire \dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0_732 ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_733 ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_734 ;
  wire \dvi_rx1/dec_b/cbnd/Result<3>1 ;
  wire \dvi_rx1/dec_b/cbnd/Result<2>1 ;
  wire \dvi_rx1/dec_b/cbnd/Result<1>1 ;
  wire \dvi_rx1/dec_b/cbnd/Result<0>1 ;
  wire \dvi_rx1/dec_b/cbnd/rawdata_vld_inv ;
  wire \dvi_rx1/dec_b/cbnd/rawdata_vld_rawdata_vld_q_AND_23_o_norst ;
  wire \dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o ;
  wire \dvi_rx1/dec_b/cbnd/rawdata_vld_rising_other_ch0_rdy_OR_127_o ;
  wire \dvi_rx1/dec_b/cbnd/rawdata_vld ;
  wire \dvi_rx1/dec_b/cbnd/ra_en_756 ;
  wire \dvi_rx1/dec_b/cbnd/skip_line_757 ;
  wire \dvi_rx1/dec_b/cbnd/rawdata_vld_rising_758 ;
  wire \dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ;
  wire \dvi_rx1/dec_b/cbnd/blnkbgn_760 ;
  wire \dvi_rx1/dec_b/cbnd/rcvd_ctkn_q_761 ;
  wire \dvi_rx1/dec_b/cbnd/rcvd_ctkn_762 ;
  wire \dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o ;
  wire \dvi_rx1/dec_g/cbnd/ra_en_782 ;
  wire \dvi_rx1/dec_g/cbnd/skip_line_783 ;
  wire \dvi_rx1/dec_g/cbnd/blnkbgn_784 ;
  wire \dvi_rx1/dec_g/cbnd/rcvd_ctkn_q_785 ;
  wire \dvi_rx1/dec_g/cbnd/rcvd_ctkn_786 ;
  wire \dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o ;
  wire \dvi_rx1/dec_r/cbnd/ra_en_806 ;
  wire \dvi_rx1/dec_r/cbnd/skip_line_807 ;
  wire \dvi_rx1/dec_r/cbnd/blnkbgn_808 ;
  wire \dvi_rx1/dec_r/cbnd/rcvd_ctkn_q_809 ;
  wire \dvi_rx1/dec_r/cbnd/rcvd_ctkn_810 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<4>_955 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<4>_956 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi4_957 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<3>_958 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<3>_959 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi3_960 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<2>_961 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<2>_962 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi2_963 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<1>_964 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<1>_965 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi1_966 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<0>_967 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<0>_968 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi_969 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<4>_970 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<4>_971 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi4_972 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<3>_973 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<3>_974 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi3_975 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<2>_976 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<2>_977 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi2_978 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<1>_979 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<1>_980 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi1_981 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<0>_982 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<0>_983 ;
  wire \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi_984 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<4>_985 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<4>_986 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi4_987 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<3>_988 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<3>_989 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi3_990 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<2>_991 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<2>_992 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi2_993 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<1>_994 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<1>_995 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi1_996 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<0>_997 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<0>_998 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi_999 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<4>_1000 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<4>_1001 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi4_1002 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<3>_1003 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<3>_1004 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi3_1005 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<2>_1006 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<2>_1007 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi2_1008 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<1>_1009 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<1>_1010 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi1_1011 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<0>_1012 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<0>_1013 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi_1014 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<4>_1015 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<4>_1016 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi4_1017 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<3>_1018 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<3>_1019 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi3_1020 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<2>_1021 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<2>_1022 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi2_1023 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<1>_1024 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<1>_1025 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi1_1026 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<0>_1027 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<0>_1028 ;
  wire \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi_1029 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<4>_1030 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<4>_1031 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi4_1032 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<3>_1033 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<3>_1034 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi3_1035 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<2>_1036 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<2>_1037 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi2_1038 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<1>_1039 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<1>_1040 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi1_1041 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<0>_1042 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<0>_1043 ;
  wire \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi_1044 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<4>_1045 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<4>_1046 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi4_1047 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<3>_1048 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<3>_1049 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi3_1050 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<2>_1051 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<2>_1052 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi2_1053 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<1>_1054 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<1>_1055 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi1_1056 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<0>_1057 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<0>_1058 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi_1059 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<4>_1060 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<4>_1061 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi4_1062 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<3>_1063 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<3>_1064 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi3_1065 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<2>_1066 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<2>_1067 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi2_1068 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<1>_1069 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<1>_1070 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi1_1071 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<0>_1072 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<0>_1073 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi_1074 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<4>_1075 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<4>_1076 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi4_1077 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<3>_1078 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<3>_1079 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi3_1080 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<2>_1081 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<2>_1082 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi2_1083 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<1>_1084 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<1>_1085 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi1_1086 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<0>_1087 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<0>_1088 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi_1089 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<4>_1090 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<4>_1091 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi4_1092 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<3>_1093 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<3>_1094 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi3_1095 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<2>_1096 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<2>_1097 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi2_1098 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<1>_1099 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<1>_1100 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi1_1101 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<0>_1102 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<0>_1103 ;
  wire \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi_1104 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<4>_1105 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<4>_1106 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi4_1107 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<3>_1108 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<3>_1109 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi3_1110 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<2>_1111 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<2>_1112 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi2_1113 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<1>_1114 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<1>_1115 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi1_1116 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<0>_1117 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<0>_1118 ;
  wire \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi_1119 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<4>_1120 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<4>_1121 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi4_1122 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<3>_1123 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<3>_1124 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi3_1125 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<2>_1126 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<2>_1127 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi2_1128 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<1>_1129 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<1>_1130 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi1_1131 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<0>_1132 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<0>_1133 ;
  wire \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi_1134 ;
  wire \hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<8> ;
  wire \hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<7> ;
  wire \hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<6> ;
  wire \hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<5> ;
  wire \hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<4> ;
  wire \hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<3> ;
  wire \hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<2> ;
  wire \hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<1> ;
  wire \hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<0> ;
  wire \hsv_converter/min_calculator/green[9]_green[9]_AND_40_o ;
  wire \hsv_converter/min_calculator/Reset_OR_DriverANDClockEnable ;
  wire \hsv_converter/min_calculator/_n0036_inv ;
  wire \hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<8> ;
  wire \hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<7> ;
  wire \hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<6> ;
  wire \hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<5> ;
  wire \hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<4> ;
  wire \hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<3> ;
  wire \hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<2> ;
  wire \hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<1> ;
  wire \hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<0> ;
  wire \hsv_converter/max_calculator/red[9]_blue[9]_AND_37_o ;
  wire \hsv_converter/max_calculator/Reset_OR_DriverANDClockEnable ;
  wire \hsv_converter/max_calculator/_n0036_inv ;
  wire \hsv_converter/v_01[9]_GND_30_o_LessThan_5_o ;
  wire \hsv_converter/subtr_RGB/r_value[0] ;
  wire \hsv_converter/subtr_RGB/r_value[1] ;
  wire \hsv_converter/subtr_RGB/r_value[2] ;
  wire \hsv_converter/subtr_RGB/r_value[3] ;
  wire \hsv_converter/subtr_RGB/r_value[4] ;
  wire \hsv_converter/subtr_RGB/r_value[5] ;
  wire \hsv_converter/subtr_RGB/r_value[6] ;
  wire \hsv_converter/subtr_RGB/r_value[7] ;
  wire \hsv_converter/subtr_RGB/r_value[9] ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<8>_1284 ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<7>_1285 ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<7>_1286 ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<6>_1287 ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<6>_1288 ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<5>_1289 ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<5>_1290 ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<4>_1291 ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<4>_1292 ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<3>_1293 ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<3>_1294 ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<2>_1295 ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<2>_1296 ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<1>_1297 ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<1>_1298 ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<0>_1299 ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<0>_1300 ;
  wire \hsv_converter/subtr_RGB/_n0046_inv ;
  wire \hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<0> ;
  wire \hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<1> ;
  wire \hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<2> ;
  wire \hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<3> ;
  wire \hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<4> ;
  wire \hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<5> ;
  wire \hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<6> ;
  wire \hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<7> ;
  wire \hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<9> ;
  wire \hsv_converter/subtr_RGB/min_index[1]_max_index[1]_equal_2_o ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<0> ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<1> ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<2> ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<3> ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<4> ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<5> ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<6> ;
  wire \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<7> ;
  wire \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<8>_1320 ;
  wire \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<7>_1321 ;
  wire \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<7>_1322 ;
  wire \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<6>_1323 ;
  wire \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<6>_1324 ;
  wire \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<5>_1325 ;
  wire \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<5>_1326 ;
  wire \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<4>_1327 ;
  wire \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<4>_1328 ;
  wire \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<3>_1329 ;
  wire \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<3>_1330 ;
  wire \hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<3> ;
  wire \hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<4> ;
  wire \hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<5> ;
  wire \hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<6> ;
  wire \hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<7> ;
  wire \hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<8> ;
  wire \hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<9> ;
  wire \dvi_tx/clkout/cascade_di ;
  wire \dvi_tx/clkout/cascade_ti ;
  wire \dvi_tx/clkout/cascade_do ;
  wire \dvi_tx/clkout/cascade_to ;
  wire \dvi_tx/oserdes0/cascade_di ;
  wire \dvi_tx/oserdes0/cascade_ti ;
  wire \dvi_tx/oserdes0/cascade_do ;
  wire \dvi_tx/oserdes0/cascade_to ;
  wire \dvi_tx/oserdes1/cascade_di ;
  wire \dvi_tx/oserdes1/cascade_ti ;
  wire \dvi_tx/oserdes1/cascade_do ;
  wire \dvi_tx/oserdes1/cascade_to ;
  wire \dvi_tx/oserdes2/cascade_di ;
  wire \dvi_tx/oserdes2/cascade_ti ;
  wire \dvi_tx/oserdes2/cascade_do ;
  wire \dvi_tx/oserdes2/cascade_to ;
  wire \dvi_tx/toggle_inv ;
  wire \dvi_tx/toggle_1356 ;
  wire \dvi_tx/tmdsclk ;
  wire \dvi_tx/encr/Mmux_q_m<3>12 ;
  wire \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 ;
  wire \dvi_tx/encr/Mmux_q_m<3>11 ;
  wire \dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>16 ;
  wire \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ;
  wire \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 ;
  wire \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT63 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 ;
  wire \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT811 ;
  wire \dvi_tx/encr/Msub_n0236_xor<3>11_1415 ;
  wire \dvi_tx/encr/Msub_n0233_xor<3>11 ;
  wire \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT61_1417 ;
  wire \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT81_1418 ;
  wire \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT101 ;
  wire \dvi_tx/encr/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<2> ;
  wire \dvi_tx/encr/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_cy<0>2 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_lut<0>1 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd9 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd8 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy<0>2 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd4 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd3 ;
  wire \dvi_tx/encr/Madd_cnt[4]_GND_48_o_add_47_OUT1 ;
  wire \dvi_tx/encr/Madd_cnt[4]_GND_48_o_add_50_OUT_cy<0>2 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd_29 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd_19 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd_24 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd_14 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd_04 ;
  wire \dvi_tx/encr/decision3_1457 ;
  wire \dvi_tx/encr/decision2_1458 ;
  wire \dvi_tx/encr/GND_48_o_cnt[4]_mux_55_OUT<1> ;
  wire \dvi_tx/encr/GND_48_o_cnt[4]_mux_55_OUT<2> ;
  wire \dvi_tx/encr/GND_48_o_cnt[4]_mux_55_OUT<3> ;
  wire \dvi_tx/encr/GND_48_o_cnt[4]_mux_55_OUT<4> ;
  wire \dvi_tx/encg/Mmux_q_m<3>12 ;
  wire \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 ;
  wire \dvi_tx/encg/Mmux_q_m<3>11 ;
  wire \dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>16 ;
  wire \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ;
  wire \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 ;
  wire \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT63 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 ;
  wire \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT811 ;
  wire \dvi_tx/encg/Msub_n0236_xor<3>11_1516 ;
  wire \dvi_tx/encg/Msub_n0233_xor<3>11 ;
  wire \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT61_1518 ;
  wire \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT81_1519 ;
  wire \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT101 ;
  wire \dvi_tx/encg/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<2> ;
  wire \dvi_tx/encg/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_cy<0>2 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_lut<0>1 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd9 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd8 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_cy<0>2 ;
  wire \dvi_tx/encg/Madd_cnt[4]_GND_48_o_add_47_OUT1 ;
  wire \dvi_tx/encg/Madd_cnt[4]_GND_48_o_add_50_OUT_cy<0>2 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd_29 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd_19 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd_24 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd_14 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd_04 ;
  wire \dvi_tx/encg/decision3_1554 ;
  wire \dvi_tx/encg/decision2_1555 ;
  wire \dvi_tx/encg/GND_48_o_cnt[4]_mux_55_OUT<1> ;
  wire \dvi_tx/encg/GND_48_o_cnt[4]_mux_55_OUT<2> ;
  wire \dvi_tx/encg/GND_48_o_cnt[4]_mux_55_OUT<3> ;
  wire \dvi_tx/encg/GND_48_o_cnt[4]_mux_55_OUT<4> ;
  wire \dvi_tx/encb/Mmux_q_m<3>12 ;
  wire \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 ;
  wire \dvi_tx/encb/Mmux_q_m<3>11 ;
  wire \dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>16 ;
  wire \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ;
  wire \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 ;
  wire \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT63 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 ;
  wire \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT811 ;
  wire \dvi_tx/encb/Msub_n0236_xor<3>11_1613 ;
  wire \dvi_tx/encb/Msub_n0233_xor<3>11 ;
  wire \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT61_1615 ;
  wire \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT81_1616 ;
  wire \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT101 ;
  wire \dvi_tx/encb/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<2> ;
  wire \dvi_tx/encb/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> ;
  wire \dvi_tx/encb/c0_reg_1627 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_cy<0>2 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_lut<0>1 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd9 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd8 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy<0>2 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd4 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd3 ;
  wire \dvi_tx/encb/Madd_cnt[4]_GND_48_o_add_47_OUT1 ;
  wire \dvi_tx/encb/Madd_cnt[4]_GND_48_o_add_50_OUT_cy<0>2 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd_29 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd_19 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd_24 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd_14 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd_04 ;
  wire \dvi_tx/encb/decision3_1656 ;
  wire \dvi_tx/encb/decision2_1657 ;
  wire \dvi_tx/encb/GND_48_o_cnt[4]_mux_55_OUT<1> ;
  wire \dvi_tx/encb/GND_48_o_cnt[4]_mux_55_OUT<2> ;
  wire \dvi_tx/encb/GND_48_o_cnt[4]_mux_55_OUT<3> ;
  wire \dvi_tx/encb/GND_48_o_cnt[4]_mux_55_OUT<4> ;
  wire \dvi_tx/encb/c1_reg_1675 ;
  wire \dvi_tx/encb/c1_q_1689 ;
  wire \dvi_tx/encb/c0_q_1690 ;
  wire \dvi_tx/encr/de_reg_1691 ;
  wire \dvi_tx/encr/de_q_1692 ;
  wire \dvi_tx/pixel2x/Mram_ra_d3 ;
  wire \dvi_tx/pixel2x/Mram_ra_d2 ;
  wire \dvi_tx/pixel2x/Mram_ra_d1 ;
  wire \dvi_tx/pixel2x/Mram_ra_d ;
  wire \dvi_tx/pixel2x/Mram_wa_d3 ;
  wire \dvi_tx/pixel2x/Mram_wa_d2 ;
  wire \dvi_tx/pixel2x/Mram_wa_d1 ;
  wire \dvi_tx/pixel2x/Mram_wa_d ;
  wire \dvi_tx/pixel2x/sync_INV_61_o ;
  wire \dvi_tx/pixel2x/sync ;
  wire \dvi_tx/pixel2x/rstp ;
  wire \dvi_tx/pixel2x/rstsync_q ;
  wire \dvi_tx/pixel2x/rstsync ;
  wire \dvi_rx1/dec_r/n0050_inv2_1807 ;
  wire \dvi_rx1/dec_g/n0050_inv2_1808 ;
  wire N2;
  wire N4;
  wire \dvi_rx1/dec_b/des_0/_n0278_inv1_1811 ;
  wire \dvi_rx1/dec_g/des_0/_n0278_inv1_1812 ;
  wire \dvi_rx1/dec_r/des_0/_n0278_inv1_1813 ;
  wire N18;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1816 ;
  wire \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1817 ;
  wire \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1818 ;
  wire N20;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1821 ;
  wire \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1822 ;
  wire \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1823 ;
  wire N22;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1826 ;
  wire \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1827 ;
  wire \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1828 ;
  wire \dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o2_1829 ;
  wire \dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o2_1830 ;
  wire \dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o2_1831 ;
  wire N24;
  wire \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT8 ;
  wire \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT83 ;
  wire \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT6 ;
  wire N26;
  wire N28;
  wire \dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>1 ;
  wire \dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>11_1839 ;
  wire \dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>12_1840 ;
  wire N30;
  wire N32;
  wire \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT8 ;
  wire \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT83 ;
  wire \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT6 ;
  wire N34;
  wire N36;
  wire \dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>1 ;
  wire \dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>11_1849 ;
  wire \dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>12_1850 ;
  wire N38;
  wire N40;
  wire \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT8 ;
  wire \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT83 ;
  wire \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT6 ;
  wire N42;
  wire N44;
  wire \dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>1 ;
  wire \dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>11_1859 ;
  wire \dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>12_1860 ;
  wire N46;
  wire N48;
  wire \dvi_rx1/dec_b/cbnd/skip_line_glue_set_1876 ;
  wire \dvi_rx1/dec_b/cbnd/iamrdy_glue_set_1877 ;
  wire \dvi_rx1/dec_g/cbnd/skip_line_glue_set_1878 ;
  wire \dvi_rx1/dec_g/cbnd/iamrdy_glue_set_1879 ;
  wire \dvi_rx1/dec_r/cbnd/skip_line_glue_set_1880 ;
  wire \dvi_rx1/dec_r/cbnd/iamrdy_glue_set_1881 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1882 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1883 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1884 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1885 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1886 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1887 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1888 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1889 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1890 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1891 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1892 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1893 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1894 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1895 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1896 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1897 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1898 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1899 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1900 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1901 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1902 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1903 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1904 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1905 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1906 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1907 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1908 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1909 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1910 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1911 ;
  wire \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<8>_rt_1912 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1913 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1914 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1915 ;
  wire \dvi_rx1/dec_b/des_0/cal_data_master_rstpot_1916 ;
  wire \dvi_rx1/dec_b/des_0/ce_data_inta_rstpot_1917 ;
  wire \dvi_rx1/dec_b/des_0/enable_rstpot_1918 ;
  wire \dvi_rx1/dec_b/des_0/cal_data_sint_rstpot_1919 ;
  wire \dvi_rx1/dec_b/des_0/rst_data_rstpot_1920 ;
  wire \dvi_rx1/dec_b/des_0/flag_rstpot_1921 ;
  wire \dvi_rx1/dec_g/des_0/cal_data_master_rstpot_1922 ;
  wire \dvi_rx1/dec_g/des_0/ce_data_inta_rstpot_1923 ;
  wire \dvi_rx1/dec_g/des_0/cal_data_sint_rstpot_1924 ;
  wire \dvi_rx1/dec_g/des_0/rst_data_rstpot_1925 ;
  wire \dvi_rx1/dec_g/des_0/flag_rstpot_1926 ;
  wire \dvi_rx1/dec_r/des_0/cal_data_master_rstpot_1927 ;
  wire \dvi_rx1/dec_r/des_0/ce_data_inta_rstpot_1928 ;
  wire \dvi_rx1/dec_r/des_0/cal_data_sint_rstpot_1929 ;
  wire \dvi_rx1/dec_r/des_0/rst_data_rstpot_1930 ;
  wire \dvi_rx1/dec_r/des_0/flag_rstpot_1931 ;
  wire \dvi_rx1/dec_b/phsalgn_0/blnkbgn_rstpot_1932 ;
  wire \dvi_rx1/dec_g/phsalgn_0/blnkbgn_rstpot_1933 ;
  wire \dvi_rx1/dec_r/phsalgn_0/blnkbgn_rstpot_1934 ;
  wire \dvi_rx1/dec_b/cbnd/blnkbgn_rstpot_1935 ;
  wire \dvi_rx1/dec_g/cbnd/blnkbgn_rstpot_1936 ;
  wire \dvi_rx1/dec_r/cbnd/blnkbgn_rstpot_1937 ;
  wire \dvi_rx1/dec_b/des_0/inc_data_int_rstpot_1938 ;
  wire \dvi_rx1/dec_b/des_0/ce_data_rstpot_1939 ;
  wire \dvi_rx1/dec_g/des_0/inc_data_int_rstpot_1940 ;
  wire \dvi_rx1/dec_g/des_0/ce_data_rstpot_1941 ;
  wire \dvi_rx1/dec_r/des_0/inc_data_int_rstpot_1942 ;
  wire \dvi_rx1/dec_r/des_0/ce_data_rstpot_1943 ;
  wire \dvi_rx1/dec_b/cbnd/ra_en_rstpot_1944 ;
  wire \dvi_rx1/dec_g/cbnd/ra_en_rstpot_1945 ;
  wire \dvi_rx1/dec_r/cbnd/ra_en_rstpot_1946 ;
  wire \dvi_rx1/dec_b/des_0/rst_data_rstpot1_1947 ;
  wire \dvi_rx1/dec_g/des_0/rst_data_rstpot1_1948 ;
  wire \dvi_rx1/dec_r/des_0/rst_data_rstpot1_1949 ;
  wire \hsv_converter/min_calculator/r_index_0_rstpot1_1950 ;
  wire \hsv_converter/min_calculator/r_index_1_rstpot1_1951 ;
  wire \hsv_converter/max_calculator/r_index_0_rstpot1_1952 ;
  wire \hsv_converter/max_calculator/r_index_1_rstpot1_1953 ;
  wire N56;
  wire N58;
  wire N60;
  wire N62;
  wire N64;
  wire N66;
  wire N70;
  wire N71;
  wire N78;
  wire N88;
  wire N89;
  wire N90;
  wire N92;
  wire N94;
  wire N96;
  wire N98;
  wire N100;
  wire N102;
  wire N104;
  wire N106;
  wire N108;
  wire N110;
  wire N118;
  wire N119;
  wire N120;
  wire N121;
  wire N123;
  wire N124;
  wire N125;
  wire N126;
  wire N128;
  wire N129;
  wire N130;
  wire N131;
  wire N139;
  wire N141;
  wire N143;
  wire N145;
  wire N147;
  wire N149;
  wire N151;
  wire N152;
  wire N153;
  wire N154;
  wire N155;
  wire N156;
  wire N157;
  wire N158;
  wire N159;
  wire N160;
  wire N161;
  wire N162;
  wire N163;
  wire N164;
  wire N165;
  wire N166;
  wire N167;
  wire N168;
  wire N169;
  wire N170;
  wire N171;
  wire N172;
  wire N173;
  wire N174;
  wire N175;
  wire N177;
  wire N179;
  wire N181;
  wire N183;
  wire N185;
  wire N188;
  wire N189;
  wire N190;
  wire N191;
  wire N193;
  wire N195;
  wire N197;
  wire N199;
  wire N201;
  wire N203;
  wire N205;
  wire N207;
  wire N209;
  wire N211;
  wire N213;
  wire N214;
  wire N215;
  wire N216;
  wire N217;
  wire N218;
  wire N219;
  wire N220;
  wire N221;
  wire N222;
  wire N223;
  wire N224;
  wire N225;
  wire N226;
  wire N227;
  wire N228;
  wire N229;
  wire N230;
  wire N231;
  wire N232;
  wire N233;
  wire N234;
  wire N235;
  wire N236;
  wire N237;
  wire N238;
  wire \ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_2_2064 ;
  wire \ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_0_2065 ;
  wire \ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_1_2066 ;
  wire \ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_5_2067 ;
  wire \ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_7_2068 ;
  wire \ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_6_2069 ;
  wire \ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_2_2070 ;
  wire \ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_4_2071 ;
  wire \ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_3_2072 ;
  wire \ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_1_2073 ;
  wire \ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_0_2074 ;
  wire NLW_sysclk_div_IOCLK_UNCONNECTED;
  wire NLW_sysclk_div_SERDESSTROBE_UNCONNECTED;
  wire NLW_clk25_buf_O_UNCONNECTED;
  wire NLW_tx_ioclk_buf_LOCK_UNCONNECTED;
  wire \NLW_dvi_rx1/tmdsclk_bufg_O_UNCONNECTED ;
  wire \NLW_dvi_rx1/bufio_tmdsclk_IOCLK_UNCONNECTED ;
  wire \NLW_dvi_rx1/bufio_tmdsclk_SERDESSTROBE_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q3_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_INCDEC_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_VALID_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_m_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_m_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_m_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_m_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_s_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_s_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_s_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_m_BUSY_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_m_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_m_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_m_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q3_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_INCDEC_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_VALID_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_m_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_m_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_m_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_m_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_s_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_s_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_s_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_m_BUSY_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_m_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_m_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_m_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q3_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_INCDEC_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_VALID_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_m_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_m_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_m_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_m_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_s_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_s_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_s_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_m_BUSY_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_m_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_m_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_m_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_m_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_m_SHIFTOUT3_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_m_SHIFTOUT4_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_s_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_s_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_s_OQ_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_s_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_m_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_m_SHIFTOUT3_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_m_SHIFTOUT4_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_s_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_s_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_s_OQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_s_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_m_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_m_SHIFTOUT3_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_m_SHIFTOUT4_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_s_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_s_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_s_OQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_s_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_m_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_m_SHIFTOUT3_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_m_SHIFTOUT4_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_s_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_s_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_s_OQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_s_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[29].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[28].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[27].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[26].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[25].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[24].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[23].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[22].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[21].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[20].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[19].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[18].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[17].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[16].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[15].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[14].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[13].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[12].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[11].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[10].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_2_Q15_UNCONNECTED ;
  wire \NLW_ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_0_Q15_UNCONNECTED ;
  wire \NLW_ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_1_Q15_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_5_Q15_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_7_Q15_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_6_Q15_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_2_Q15_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_4_Q15_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_3_Q15_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_1_Q15_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_0_Q15_UNCONNECTED ;
  wire NLW_PLL_OSERDES_0_CLKOUT3_UNCONNECTED;
  wire NLW_PLL_OSERDES_0_CLKOUT1_UNCONNECTED;
  wire NLW_PLL_OSERDES_0_CLKOUT4_UNCONNECTED;
  wire NLW_PLL_OSERDES_0_CLKOUT5_UNCONNECTED;
  wire \NLW_dvi_rx1/PLL_ISERDES_CLKOUT3_UNCONNECTED ;
  wire \NLW_dvi_rx1/PLL_ISERDES_CLKOUT4_UNCONNECTED ;
  wire \NLW_dvi_rx1/PLL_ISERDES_CLKOUT5_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<35>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<34>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<33>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<32>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<31>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<30>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<29>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<28>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<27>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<26>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<16>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<15>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<14>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<13>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<12>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<11>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<10>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<9>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<8>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<7>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<6>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<5>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<4>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<3>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<2>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<1>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_B_p<0>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<35>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<34>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<33>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<32>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<31>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<30>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<29>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<28>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<27>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<26>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<16>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<15>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<14>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<13>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<12>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<11>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<10>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<9>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<8>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<7>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<6>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<5>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<4>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<3>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<2>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<1>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_G_p<0>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<35>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<34>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<33>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<32>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<31>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<30>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<29>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<28>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<27>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<26>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<16>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<15>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<14>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<13>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<12>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<11>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<10>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<9>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<8>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<7>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<6>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<5>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<4>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<3>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<2>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<1>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_R_p<0>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<35>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<34>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<33>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<32>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<31>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<30>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<29>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<28>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<27>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<26>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<16>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<15>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<14>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<13>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<12>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<11>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<10>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<9>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<8>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<7>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<6>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<5>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<4>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<3>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<2>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<1>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_B_p<0>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<35>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<34>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<33>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<32>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<31>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<30>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<29>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<28>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<27>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<26>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<16>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<15>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<14>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<13>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<12>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<11>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<10>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<9>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<8>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<7>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<6>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<5>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<4>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<3>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<2>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<1>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_G_p<0>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<35>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<34>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<33>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<32>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<31>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<30>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<29>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<28>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<27>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<26>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<16>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<15>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<14>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<13>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<12>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<11>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<10>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<9>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<8>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<7>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<6>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<5>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<4>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<3>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<2>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<1>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_R_p<0>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<35>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<34>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<33>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<32>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<31>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<30>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<29>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<28>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<27>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<26>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<16>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<15>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<14>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<13>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<12>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<11>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<10>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<9>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<8>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<7>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<6>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<5>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<4>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<3>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<2>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<1>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_B_p<0>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<35>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<34>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<33>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<32>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<31>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<30>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<29>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<28>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<27>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<26>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<16>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<15>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<14>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<13>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<12>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<11>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<10>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<9>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<8>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<7>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<6>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<5>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<4>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<3>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<2>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<1>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_G_p<0>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<35>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<34>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<33>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<32>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<31>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<30>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<29>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<28>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<27>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<26>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<16>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<15>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<14>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<13>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<12>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<11>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<10>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<9>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<8>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<7>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<6>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<5>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<4>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<3>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<2>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<1>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_R_p<0>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cr_adder3_s<8>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Cb_adder3_s<8>_UNCONNECTED ;
  wire \NLW_ycbcr_converter/Y_adder2_s<8>_UNCONNECTED ;
  wire \NLW_hsv_converter/b_div_255_quotient<7>_UNCONNECTED ;
  wire \NLW_hsv_converter/b_div_255_quotient<6>_UNCONNECTED ;
  wire \NLW_hsv_converter/b_div_255_quotient<5>_UNCONNECTED ;
  wire \NLW_hsv_converter/b_div_255_quotient<4>_UNCONNECTED ;
  wire \NLW_hsv_converter/b_div_255_quotient<3>_UNCONNECTED ;
  wire \NLW_hsv_converter/b_div_255_quotient<2>_UNCONNECTED ;
  wire \NLW_hsv_converter/b_div_255_quotient<1>_UNCONNECTED ;
  wire \NLW_hsv_converter/b_div_255_rfd_UNCONNECTED ;
  wire \NLW_hsv_converter/g_div_255_quotient<7>_UNCONNECTED ;
  wire \NLW_hsv_converter/g_div_255_quotient<6>_UNCONNECTED ;
  wire \NLW_hsv_converter/g_div_255_quotient<5>_UNCONNECTED ;
  wire \NLW_hsv_converter/g_div_255_quotient<4>_UNCONNECTED ;
  wire \NLW_hsv_converter/g_div_255_quotient<3>_UNCONNECTED ;
  wire \NLW_hsv_converter/g_div_255_quotient<2>_UNCONNECTED ;
  wire \NLW_hsv_converter/g_div_255_quotient<1>_UNCONNECTED ;
  wire \NLW_hsv_converter/g_div_255_rfd_UNCONNECTED ;
  wire \NLW_hsv_converter/r_div_255_quotient<7>_UNCONNECTED ;
  wire \NLW_hsv_converter/r_div_255_quotient<6>_UNCONNECTED ;
  wire \NLW_hsv_converter/r_div_255_quotient<5>_UNCONNECTED ;
  wire \NLW_hsv_converter/r_div_255_quotient<4>_UNCONNECTED ;
  wire \NLW_hsv_converter/r_div_255_quotient<3>_UNCONNECTED ;
  wire \NLW_hsv_converter/r_div_255_quotient<2>_UNCONNECTED ;
  wire \NLW_hsv_converter/r_div_255_quotient<1>_UNCONNECTED ;
  wire \NLW_hsv_converter/r_div_255_rfd_UNCONNECTED ;
  wire \NLW_hsv_converter/sub_div_diff_quotient<9>_UNCONNECTED ;
  wire \NLW_hsv_converter/sub_div_diff_quotient<8>_UNCONNECTED ;
  wire \NLW_hsv_converter/sub_div_diff_quotient<7>_UNCONNECTED ;
  wire \NLW_hsv_converter/sub_div_diff_quotient<6>_UNCONNECTED ;
  wire \NLW_hsv_converter/sub_div_diff_quotient<5>_UNCONNECTED ;
  wire \NLW_hsv_converter/sub_div_diff_quotient<4>_UNCONNECTED ;
  wire \NLW_hsv_converter/sub_div_diff_quotient<3>_UNCONNECTED ;
  wire \NLW_hsv_converter/sub_div_diff_quotient<2>_UNCONNECTED ;
  wire \NLW_hsv_converter/sub_div_diff_quotient<1>_UNCONNECTED ;
  wire \NLW_hsv_converter/sub_div_diff_rfd_UNCONNECTED ;
  wire \NLW_hsv_converter/sub_div_diff_fractional<9>_UNCONNECTED ;
  wire \NLW_hsv_converter/sub_div_diff_fractional<0>_UNCONNECTED ;
  wire \NLW_hsv_converter/diff_div_v_quotient<9>_UNCONNECTED ;
  wire \NLW_hsv_converter/diff_div_v_quotient<8>_UNCONNECTED ;
  wire \NLW_hsv_converter/diff_div_v_quotient<7>_UNCONNECTED ;
  wire \NLW_hsv_converter/diff_div_v_quotient<6>_UNCONNECTED ;
  wire \NLW_hsv_converter/diff_div_v_quotient<5>_UNCONNECTED ;
  wire \NLW_hsv_converter/diff_div_v_quotient<4>_UNCONNECTED ;
  wire \NLW_hsv_converter/diff_div_v_quotient<3>_UNCONNECTED ;
  wire \NLW_hsv_converter/diff_div_v_quotient<2>_UNCONNECTED ;
  wire \NLW_hsv_converter/diff_div_v_quotient<1>_UNCONNECTED ;
  wire \NLW_hsv_converter/diff_div_v_rfd_UNCONNECTED ;
  wire \NLW_hsv_converter/diff_div_v_fractional<9>_UNCONNECTED ;
  wire \NLW_hsv_converter/diff_div_v_fractional<0>_UNCONNECTED ;
  wire \NLW_hsv_converter/m60_p<5>_UNCONNECTED ;
  wire \NLW_hsv_converter/m60_p<4>_UNCONNECTED ;
  wire \NLW_hsv_converter/m60_p<3>_UNCONNECTED ;
  wire \NLW_hsv_converter/m60_p<2>_UNCONNECTED ;
  wire \NLW_hsv_converter/m60_p<1>_UNCONNECTED ;
  wire \NLW_hsv_converter/m60_p<0>_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_quotient<15>_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_quotient<14>_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_quotient<13>_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_quotient<12>_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_quotient<11>_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_quotient<10>_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_quotient<9>_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_quotient<8>_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_quotient<7>_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_quotient<6>_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_quotient<5>_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_quotient<4>_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_quotient<3>_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_quotient<2>_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_quotient<1>_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_rfd_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_fractional<9>_UNCONNECTED ;
  wire \NLW_hsv_converter/h_div_360_fractional<0>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_S_p<13>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_S_p<12>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_S_p<3>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_S_p<2>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_S_p<1>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_S_p<0>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_H_p<13>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_H_p<12>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_H_p<3>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_H_p<2>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_H_p<1>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_H_p<0>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_V_p<13>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_V_p<12>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_V_p<3>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_V_p<2>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_V_p<1>_UNCONNECTED ;
  wire \NLW_hsv_converter/mult_V_p<0>_UNCONNECTED ;
  wire [7 : 0] \dvi_rx1/dec_r/dout ;
  wire [7 : 0] \dvi_rx1/dec_g/dout ;
  wire [7 : 0] \dvi_rx1/dec_b/dout ;
  wire [7 : 0] tx_blue;
  wire [7 : 0] tx_green;
  wire [7 : 0] tx_red;
  wire [7 : 0] Cb;
  wire [7 : 0] Cr;
  wire [7 : 0] H;
  wire [7 : 0] S;
  wire [7 : 0] V;
  wire [1 : 1] \b_mux<3> ;
  wire [0 : 0] \dvi_rx1/dec_r/data ;
  wire [9 : 0] \dvi_rx1/dec_r/rawword ;
  wire [4 : 0] \dvi_rx1/dec_r/raw5bit_q ;
  wire [9 : 0] \dvi_rx1/dec_r/cbnd/sdata ;
  wire [4 : 0] \dvi_rx1/dec_r/raw5bit ;
  wire [0 : 0] \dvi_rx1/dec_g/data ;
  wire [9 : 0] \dvi_rx1/dec_g/rawword ;
  wire [4 : 0] \dvi_rx1/dec_g/raw5bit_q ;
  wire [9 : 0] \dvi_rx1/dec_g/cbnd/sdata ;
  wire [4 : 0] \dvi_rx1/dec_g/raw5bit ;
  wire [0 : 0] \dvi_rx1/dec_b/data ;
  wire [9 : 0] \dvi_rx1/dec_b/rawword ;
  wire [4 : 0] \dvi_rx1/dec_b/raw5bit_q ;
  wire [9 : 0] \dvi_rx1/dec_b/cbnd/sdata ;
  wire [4 : 0] \dvi_rx1/dec_b/raw5bit ;
  wire [4 : 0] \dvi_rx1/dec_b/des_0/pdcounter ;
  wire [7 : 0] \dvi_rx1/dec_b/des_0/Mcount_counter_cy ;
  wire [7 : 0] \dvi_rx1/dec_b/des_0/Mcount_counter_lut ;
  wire [8 : 0] \dvi_rx1/dec_b/des_0/counter ;
  wire [0 : 0] \dvi_rx1/dec_b/des_0/busy_data_or ;
  wire [4 : 0] \dvi_rx1/dec_g/des_0/pdcounter ;
  wire [0 : 0] \dvi_rx1/dec_g/des_0/busy_data_or ;
  wire [4 : 0] \dvi_rx1/dec_r/des_0/pdcounter ;
  wire [0 : 0] \dvi_rx1/dec_r/des_0/busy_data_or ;
  wire [6 : 0] \dvi_rx1/dec_b/phsalgn_0/ctkn_counter ;
  wire [10 : 0] \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy ;
  wire [0 : 0] \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_lut ;
  wire [2 : 0] \dvi_rx1/dec_b/phsalgn_0/bitslip_cnt ;
  wire [11 : 0] \dvi_rx1/dec_b/phsalgn_0/Result ;
  wire [11 : 0] \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer ;
  wire [6 : 0] \dvi_rx1/dec_g/phsalgn_0/ctkn_counter ;
  wire [10 : 0] \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy ;
  wire [0 : 0] \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_lut ;
  wire [2 : 0] \dvi_rx1/dec_g/phsalgn_0/bitslip_cnt ;
  wire [11 : 0] \dvi_rx1/dec_g/phsalgn_0/Result ;
  wire [11 : 0] \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer ;
  wire [6 : 0] \dvi_rx1/dec_r/phsalgn_0/ctkn_counter ;
  wire [10 : 0] \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy ;
  wire [0 : 0] \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_lut ;
  wire [2 : 0] \dvi_rx1/dec_r/phsalgn_0/bitslip_cnt ;
  wire [11 : 0] \dvi_rx1/dec_r/phsalgn_0/Result ;
  wire [11 : 0] \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer ;
  wire [3 : 0] \dvi_rx1/dec_b/cbnd/ra ;
  wire [3 : 0] \dvi_rx1/dec_b/cbnd/wa ;
  wire [3 : 0] \dvi_rx1/dec_b/cbnd/Result ;
  wire [9 : 0] \dvi_rx1/dec_b/cbnd/dpfo_dout ;
  wire [3 : 0] \dvi_rx1/dec_g/cbnd/ra ;
  wire [3 : 0] \dvi_rx1/dec_g/cbnd/Result ;
  wire [9 : 0] \dvi_rx1/dec_g/cbnd/dpfo_dout ;
  wire [3 : 0] \dvi_rx1/dec_r/cbnd/ra ;
  wire [3 : 0] \dvi_rx1/dec_r/cbnd/Result ;
  wire [9 : 0] \dvi_rx1/dec_r/cbnd/dpfo_dout ;
  wire [8 : 0] \ycbcr_converter/Cr_added_2 ;
  wire [8 : 0] \ycbcr_converter/Cr_added_1 ;
  wire [25 : 17] \ycbcr_converter/Cr_B_w ;
  wire [25 : 17] \ycbcr_converter/Cr_G_w ;
  wire [25 : 17] \ycbcr_converter/Cr_R_w ;
  wire [8 : 0] \ycbcr_converter/Cb_added_2 ;
  wire [8 : 0] \ycbcr_converter/Cb_added_1 ;
  wire [25 : 17] \ycbcr_converter/Cb_B_w ;
  wire [25 : 17] \ycbcr_converter/Cb_G_w ;
  wire [25 : 17] \ycbcr_converter/Cb_R_w ;
  wire [7 : 0] \ycbcr_converter/Y_added_2 ;
  wire [8 : 0] \ycbcr_converter/Y_added_1 ;
  wire [25 : 17] \ycbcr_converter/Y_B_w ;
  wire [25 : 17] \ycbcr_converter/Y_G_w ;
  wire [25 : 17] \ycbcr_converter/Y_R_w ;
  wire [8 : 0] \hsv_converter/s_01 ;
  wire [8 : 1] \hsv_converter/h_01_f ;
  wire [0 : 0] \hsv_converter/h_01_q ;
  wire [9 : 0] \hsv_converter/add_to_h/r_value ;
  wire [15 : 6] \hsv_converter/temp_1 ;
  wire [8 : 1] \hsv_converter/sub_diff_f ;
  wire [0 : 0] \hsv_converter/sub_diff_q ;
  wire [8 : 1] \hsv_converter/s_01_f ;
  wire [0 : 0] \hsv_converter/s_01_q ;
  wire [9 : 0] \hsv_converter/diff_value ;
  wire [1 : 0] \hsv_converter/min_calculator/r_index ;
  wire [8 : 0] \hsv_converter/min_calculator/r_value ;
  wire [1 : 0] \hsv_converter/max_calculator/r_index ;
  wire [8 : 0] \hsv_converter/max_calculator/r_value ;
  wire [7 : 0] \hsv_converter/f_b ;
  wire [0 : 0] \hsv_converter/q_b ;
  wire [7 : 0] \hsv_converter/f_g ;
  wire [0 : 0] \hsv_converter/q_g ;
  wire [7 : 0] \hsv_converter/f_r ;
  wire [0 : 0] \hsv_converter/q_r ;
  wire [0 : 0] \dvi_tx/tmdsclkint ;
  wire [2 : 0] \dvi_tx/tmdsint ;
  wire [14 : 0] \dvi_tx/n0011 ;
  wire [9 : 0] \dvi_tx/encr/dout ;
  wire [9 : 0] \dvi_tx/encg/dout ;
  wire [9 : 0] \dvi_tx/encb/dout ;
  wire [0 : 0] \dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut ;
  wire [0 : 0] \dvi_tx/encr/ADDERTREE_INTERNAL_Madd_lut ;
  wire [3 : 3] \dvi_tx/encr/Msub_n0236_cy ;
  wire [3 : 3] \dvi_tx/encr/Msub_n0233_cy ;
  wire [3 : 1] \dvi_tx/encr/Msub_n0233_lut ;
  wire [0 : 0] \dvi_tx/encr/ADDERTREE_INTERNAL_Madd8_lut ;
  wire [0 : 0] \dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy ;
  wire [0 : 0] \dvi_tx/encr/ADDERTREE_INTERNAL_Madd3_lut ;
  wire [3 : 1] \dvi_tx/encr/PWR_47_o_BUS_0017_sub_29_OUT ;
  wire [8 : 1] \dvi_tx/encr/q_m ;
  wire [3 : 2] \dvi_tx/encr/n0236 ;
  wire [2 : 2] \dvi_tx/encr/n0233 ;
  wire [9 : 0] \dvi_tx/encr/c1_reg_decision3_mux_54_OUT ;
  wire [3 : 0] \dvi_tx/encr/n1d ;
  wire [8 : 0] \dvi_tx/encr/q_m_reg ;
  wire [3 : 1] \dvi_tx/encr/n0q_m ;
  wire [3 : 1] \dvi_tx/encr/n1q_m ;
  wire [4 : 1] \dvi_tx/encr/cnt ;
  wire [7 : 0] \dvi_tx/encr/din_q ;
  wire [0 : 0] \dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut ;
  wire [3 : 3] \dvi_tx/encg/Msub_n0236_cy ;
  wire [3 : 3] \dvi_tx/encg/Msub_n0233_cy ;
  wire [3 : 1] \dvi_tx/encg/Msub_n0233_lut ;
  wire [0 : 0] \dvi_tx/encg/ADDERTREE_INTERNAL_Madd8_lut ;
  wire [0 : 0] \dvi_tx/encg/ADDERTREE_INTERNAL_Madd3_lut ;
  wire [3 : 1] \dvi_tx/encg/PWR_47_o_BUS_0017_sub_29_OUT ;
  wire [8 : 1] \dvi_tx/encg/q_m ;
  wire [3 : 2] \dvi_tx/encg/n0236 ;
  wire [2 : 2] \dvi_tx/encg/n0233 ;
  wire [9 : 0] \dvi_tx/encg/c1_reg_decision3_mux_54_OUT ;
  wire [3 : 0] \dvi_tx/encg/n1d ;
  wire [8 : 0] \dvi_tx/encg/q_m_reg ;
  wire [3 : 1] \dvi_tx/encg/n0q_m ;
  wire [3 : 1] \dvi_tx/encg/n1q_m ;
  wire [4 : 1] \dvi_tx/encg/cnt ;
  wire [7 : 0] \dvi_tx/encg/din_q ;
  wire [0 : 0] \dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut ;
  wire [0 : 0] \dvi_tx/encb/ADDERTREE_INTERNAL_Madd_lut ;
  wire [3 : 3] \dvi_tx/encb/Msub_n0236_cy ;
  wire [3 : 3] \dvi_tx/encb/Msub_n0233_cy ;
  wire [3 : 1] \dvi_tx/encb/Msub_n0233_lut ;
  wire [0 : 0] \dvi_tx/encb/ADDERTREE_INTERNAL_Madd8_lut ;
  wire [0 : 0] \dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy ;
  wire [0 : 0] \dvi_tx/encb/ADDERTREE_INTERNAL_Madd3_lut ;
  wire [3 : 1] \dvi_tx/encb/PWR_47_o_BUS_0017_sub_29_OUT ;
  wire [8 : 1] \dvi_tx/encb/q_m ;
  wire [3 : 2] \dvi_tx/encb/n0236 ;
  wire [2 : 2] \dvi_tx/encb/n0233 ;
  wire [9 : 0] \dvi_tx/encb/c1_reg_decision3_mux_54_OUT ;
  wire [3 : 0] \dvi_tx/encb/n1d ;
  wire [8 : 0] \dvi_tx/encb/q_m_reg ;
  wire [3 : 1] \dvi_tx/encb/n0q_m ;
  wire [3 : 1] \dvi_tx/encb/n1q_m ;
  wire [4 : 1] \dvi_tx/encb/cnt ;
  wire [7 : 0] \dvi_tx/encb/din_q ;
  wire [14 : 0] \dvi_tx/pixel2x/mux ;
  wire [29 : 0] \dvi_tx/pixel2x/db ;
  wire [3 : 0] \dvi_tx/pixel2x/ra ;
  wire [3 : 0] \dvi_tx/pixel2x/wa ;
  wire [29 : 0] \dvi_tx/pixel2x/dataint ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(\b_mux<3> [1])
  );
  BUFIO2 #(
    .DIVIDE_BYPASS ( "FALSE" ),
    .I_INVERT ( "FALSE" ),
    .USE_DOUBLER ( "FALSE" ),
    .DIVIDE ( 5 ))
  sysclk_div (
    .DIVCLK(clk25m),
    .IOCLK(NLW_sysclk_div_IOCLK_UNCONNECTED),
    .I(clk100_IBUF_12),
    .SERDESSTROBE(NLW_sysclk_div_SERDESSTROBE_UNCONNECTED)
  );
  BUFG   clk25_buf (
    .O(NLW_clk25_buf_O_UNCONNECTED),
    .I(clk25m)
  );
  BUFGMUX #(
    .CLK_SEL_TYPE ( "SYNC" ))
  tx_bufg_pclk (
    .S(N0),
    .O(tx_pclk),
    .I0(rx_pllclk1),
    .I1(rx_pllclk1)
  );
  BUFG   tx_clkfb_buf (
    .O(tx_clkfbin),
    .I(tx_clkfbout)
  );
  BUFPLL #(
    .ENABLE_SYNC ( "TRUE" ),
    .DIVIDE ( 5 ))
  tx_ioclk_buf (
    .IOCLK(tx_pclkx10),
    .LOCK(NLW_tx_ioclk_buf_LOCK_UNCONNECTED),
    .SERDESSTROBE(tx_serdesstrobe),
    .PLLIN(tx_pllclk0),
    .GCLK(tx_pclkx2),
    .LOCKED(tx_plllckd)
  );
  BUFG   tx0_pclkx2_buf (
    .O(tx_pclkx2),
    .I(tx_pllclk2)
  );
  BUFG   \dvi_rx1/tmdsclk_bufg  (
    .O(\NLW_dvi_rx1/tmdsclk_bufg_O_UNCONNECTED ),
    .I(\dvi_rx1/rxclk )
  );
  BUFG   \dvi_rx1/pclkx2bufg  (
    .O(\dvi_rx1/pclkx2 ),
    .I(\dvi_rx1/pllclk2 )
  );
  BUFG   \dvi_rx1/pclkbufg  (
    .O(rx_pclk),
    .I(rx_pllclk1)
  );
  BUFPLL #(
    .ENABLE_SYNC ( "TRUE" ),
    .DIVIDE ( 5 ))
  \dvi_rx1/ioclk_buf  (
    .IOCLK(\dvi_rx1/pclkx10 ),
    .LOCK(\dvi_rx1/bufpll_lock ),
    .SERDESSTROBE(\dvi_rx1/serdesstrobe ),
    .PLLIN(\dvi_rx1/pllclk0 ),
    .GCLK(\dvi_rx1/pclkx2 ),
    .LOCKED(\dvi_rx1/pll_lckd )
  );
  BUFIO2 #(
    .DIVIDE_BYPASS ( "TRUE" ),
    .I_INVERT ( "FALSE" ),
    .USE_DOUBLER ( "FALSE" ),
    .DIVIDE ( 1 ))
  \dvi_rx1/bufio_tmdsclk  (
    .DIVCLK(\dvi_rx1/rxclk ),
    .IOCLK(\NLW_dvi_rx1/bufio_tmdsclk_IOCLK_UNCONNECTED ),
    .I(\dvi_rx1/rxclkint ),
    .SERDESSTROBE(\NLW_dvi_rx1/bufio_tmdsclk_SERDESSTROBE_UNCONNECTED )
  );
  IBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DIFF_TERM ( "FALSE" ),
    .DQS_BIAS ( "FALSE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "TMDS_33" ))
  \dvi_rx1/ibuf_rxclk  (
    .I(RX1_TMDS[3]),
    .IB(RX1_TMDSB[3]),
    .O(\dvi_rx1/rxclkint )
  );
  FDRE   \dvi_rx1/dec_r/dout_7  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[7]_data[7]_MUX_117_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [7])
  );
  FDRE   \dvi_rx1/dec_r/dout_6  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[6]_data[6]_MUX_116_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [6])
  );
  FDRE   \dvi_rx1/dec_r/dout_5  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[5]_data[5]_MUX_115_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [5])
  );
  FDRE   \dvi_rx1/dec_r/dout_4  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[4]_data[4]_MUX_114_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [4])
  );
  FDRE   \dvi_rx1/dec_r/dout_3  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[3]_data[3]_MUX_113_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [3])
  );
  FDRE   \dvi_rx1/dec_r/dout_2  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[2]_data[2]_MUX_112_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [2])
  );
  FDRE   \dvi_rx1/dec_r/dout_1  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[1]_data[1]_MUX_111_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [1])
  );
  FDRE   \dvi_rx1/dec_r/dout_0  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data [0]),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/bitslip_q  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/phsalgn_0/bitslip_198 ),
    .Q(\dvi_rx1/dec_r/bitslip_q_182 )
  );
  FDE   \dvi_rx1/dec_r/rawword_9  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit [4]),
    .Q(\dvi_rx1/dec_r/rawword [9])
  );
  FDE   \dvi_rx1/dec_r/rawword_8  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit [3]),
    .Q(\dvi_rx1/dec_r/rawword [8])
  );
  FDE   \dvi_rx1/dec_r/rawword_7  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit [2]),
    .Q(\dvi_rx1/dec_r/rawword [7])
  );
  FDE   \dvi_rx1/dec_r/rawword_6  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit [1]),
    .Q(\dvi_rx1/dec_r/rawword [6])
  );
  FDE   \dvi_rx1/dec_r/rawword_5  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit [0]),
    .Q(\dvi_rx1/dec_r/rawword [5])
  );
  FDE   \dvi_rx1/dec_r/rawword_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit_q [4]),
    .Q(\dvi_rx1/dec_r/rawword [4])
  );
  FDE   \dvi_rx1/dec_r/rawword_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit_q [3]),
    .Q(\dvi_rx1/dec_r/rawword [3])
  );
  FDE   \dvi_rx1/dec_r/rawword_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit_q [2]),
    .Q(\dvi_rx1/dec_r/rawword [2])
  );
  FDE   \dvi_rx1/dec_r/rawword_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit_q [1]),
    .Q(\dvi_rx1/dec_r/rawword [1])
  );
  FDE   \dvi_rx1/dec_r/rawword_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit_q [0]),
    .Q(\dvi_rx1/dec_r/rawword [0])
  );
  FD   \dvi_rx1/dec_r/raw5bit_q_4  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/raw5bit [4]),
    .Q(\dvi_rx1/dec_r/raw5bit_q [4])
  );
  FD   \dvi_rx1/dec_r/raw5bit_q_3  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/raw5bit [3]),
    .Q(\dvi_rx1/dec_r/raw5bit_q [3])
  );
  FD   \dvi_rx1/dec_r/raw5bit_q_2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/raw5bit [2]),
    .Q(\dvi_rx1/dec_r/raw5bit_q [2])
  );
  FD   \dvi_rx1/dec_r/raw5bit_q_1  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/raw5bit [1]),
    .Q(\dvi_rx1/dec_r/raw5bit_q [1])
  );
  FD   \dvi_rx1/dec_r/raw5bit_q_0  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/raw5bit [0]),
    .Q(\dvi_rx1/dec_r/raw5bit_q [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/bitslipx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/bitslip_bitslip_q_AND_1_o ),
    .Q(\dvi_rx1/dec_r/bitslipx2_181 )
  );
  FD   \dvi_rx1/dec_r/flipgearx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/phsalgn_0/flipgear_199 ),
    .Q(\dvi_rx1/dec_r/flipgearx2_180 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/toggle  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/toggle_INV_3_o ),
    .Q(\dvi_rx1/dec_r/toggle_295 )
  );
  FDRE   \dvi_rx1/dec_g/dout_7  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[7]_data[7]_MUX_117_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [7])
  );
  FDRE   \dvi_rx1/dec_g/dout_6  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[6]_data[6]_MUX_116_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [6])
  );
  FDRE   \dvi_rx1/dec_g/dout_5  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[5]_data[5]_MUX_115_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [5])
  );
  FDRE   \dvi_rx1/dec_g/dout_4  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[4]_data[4]_MUX_114_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [4])
  );
  FDRE   \dvi_rx1/dec_g/dout_3  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[3]_data[3]_MUX_113_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [3])
  );
  FDRE   \dvi_rx1/dec_g/dout_2  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[2]_data[2]_MUX_112_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [2])
  );
  FDRE   \dvi_rx1/dec_g/dout_1  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[1]_data[1]_MUX_111_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [1])
  );
  FDRE   \dvi_rx1/dec_g/dout_0  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data [0]),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/bitslip_q  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/phsalgn_0/bitslip_244 ),
    .Q(\dvi_rx1/dec_g/bitslip_q_228 )
  );
  FDE   \dvi_rx1/dec_g/rawword_9  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit [4]),
    .Q(\dvi_rx1/dec_g/rawword [9])
  );
  FDE   \dvi_rx1/dec_g/rawword_8  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit [3]),
    .Q(\dvi_rx1/dec_g/rawword [8])
  );
  FDE   \dvi_rx1/dec_g/rawword_7  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit [2]),
    .Q(\dvi_rx1/dec_g/rawword [7])
  );
  FDE   \dvi_rx1/dec_g/rawword_6  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit [1]),
    .Q(\dvi_rx1/dec_g/rawword [6])
  );
  FDE   \dvi_rx1/dec_g/rawword_5  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit [0]),
    .Q(\dvi_rx1/dec_g/rawword [5])
  );
  FDE   \dvi_rx1/dec_g/rawword_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit_q [4]),
    .Q(\dvi_rx1/dec_g/rawword [4])
  );
  FDE   \dvi_rx1/dec_g/rawword_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit_q [3]),
    .Q(\dvi_rx1/dec_g/rawword [3])
  );
  FDE   \dvi_rx1/dec_g/rawword_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit_q [2]),
    .Q(\dvi_rx1/dec_g/rawword [2])
  );
  FDE   \dvi_rx1/dec_g/rawword_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit_q [1]),
    .Q(\dvi_rx1/dec_g/rawword [1])
  );
  FDE   \dvi_rx1/dec_g/rawword_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit_q [0]),
    .Q(\dvi_rx1/dec_g/rawword [0])
  );
  FD   \dvi_rx1/dec_g/raw5bit_q_4  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/raw5bit [4]),
    .Q(\dvi_rx1/dec_g/raw5bit_q [4])
  );
  FD   \dvi_rx1/dec_g/raw5bit_q_3  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/raw5bit [3]),
    .Q(\dvi_rx1/dec_g/raw5bit_q [3])
  );
  FD   \dvi_rx1/dec_g/raw5bit_q_2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/raw5bit [2]),
    .Q(\dvi_rx1/dec_g/raw5bit_q [2])
  );
  FD   \dvi_rx1/dec_g/raw5bit_q_1  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/raw5bit [1]),
    .Q(\dvi_rx1/dec_g/raw5bit_q [1])
  );
  FD   \dvi_rx1/dec_g/raw5bit_q_0  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/raw5bit [0]),
    .Q(\dvi_rx1/dec_g/raw5bit_q [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/bitslipx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/bitslip_bitslip_q_AND_1_o ),
    .Q(\dvi_rx1/dec_g/bitslipx2_227 )
  );
  FD   \dvi_rx1/dec_g/flipgearx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/phsalgn_0/flipgear_245 ),
    .Q(\dvi_rx1/dec_g/flipgearx2_226 )
  );
  FDRE   \dvi_rx1/dec_b/dout_7  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[7]_data[7]_MUX_117_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [7])
  );
  FDRE   \dvi_rx1/dec_b/dout_6  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[6]_data[6]_MUX_116_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [6])
  );
  FDRE   \dvi_rx1/dec_b/dout_5  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[5]_data[5]_MUX_115_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [5])
  );
  FDRE   \dvi_rx1/dec_b/dout_4  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[4]_data[4]_MUX_114_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [4])
  );
  FDRE   \dvi_rx1/dec_b/dout_3  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[3]_data[3]_MUX_113_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [3])
  );
  FDRE   \dvi_rx1/dec_b/dout_2  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[2]_data[2]_MUX_112_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [2])
  );
  FDRE   \dvi_rx1/dec_b/dout_1  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[1]_data[1]_MUX_111_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [1])
  );
  FDRE   \dvi_rx1/dec_b/dout_0  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data [0]),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/bitslip_q  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/phsalgn_0/bitslip_296 ),
    .Q(\dvi_rx1/dec_b/bitslip_q_279 )
  );
  FDE   \dvi_rx1/dec_b/rawword_9  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit [4]),
    .Q(\dvi_rx1/dec_b/rawword [9])
  );
  FDE   \dvi_rx1/dec_b/rawword_8  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit [3]),
    .Q(\dvi_rx1/dec_b/rawword [8])
  );
  FDE   \dvi_rx1/dec_b/rawword_7  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit [2]),
    .Q(\dvi_rx1/dec_b/rawword [7])
  );
  FDE   \dvi_rx1/dec_b/rawword_6  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit [1]),
    .Q(\dvi_rx1/dec_b/rawword [6])
  );
  FDE   \dvi_rx1/dec_b/rawword_5  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit [0]),
    .Q(\dvi_rx1/dec_b/rawword [5])
  );
  FDE   \dvi_rx1/dec_b/rawword_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit_q [4]),
    .Q(\dvi_rx1/dec_b/rawword [4])
  );
  FDE   \dvi_rx1/dec_b/rawword_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit_q [3]),
    .Q(\dvi_rx1/dec_b/rawword [3])
  );
  FDE   \dvi_rx1/dec_b/rawword_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit_q [2]),
    .Q(\dvi_rx1/dec_b/rawword [2])
  );
  FDE   \dvi_rx1/dec_b/rawword_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit_q [1]),
    .Q(\dvi_rx1/dec_b/rawword [1])
  );
  FDE   \dvi_rx1/dec_b/rawword_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit_q [0]),
    .Q(\dvi_rx1/dec_b/rawword [0])
  );
  FD   \dvi_rx1/dec_b/raw5bit_q_4  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/raw5bit [4]),
    .Q(\dvi_rx1/dec_b/raw5bit_q [4])
  );
  FD   \dvi_rx1/dec_b/raw5bit_q_3  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/raw5bit [3]),
    .Q(\dvi_rx1/dec_b/raw5bit_q [3])
  );
  FD   \dvi_rx1/dec_b/raw5bit_q_2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/raw5bit [2]),
    .Q(\dvi_rx1/dec_b/raw5bit_q [2])
  );
  FD   \dvi_rx1/dec_b/raw5bit_q_1  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/raw5bit [1]),
    .Q(\dvi_rx1/dec_b/raw5bit_q [1])
  );
  FD   \dvi_rx1/dec_b/raw5bit_q_0  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/raw5bit [0]),
    .Q(\dvi_rx1/dec_b/raw5bit_q [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/bitslipx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/bitslip_bitslip_q_AND_1_o ),
    .Q(\dvi_rx1/dec_b/bitslipx2_278 )
  );
  FD   \dvi_rx1/dec_b/flipgearx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/phsalgn_0/flipgear_297 ),
    .Q(\dvi_rx1/dec_b/flipgearx2_277 )
  );
  FDR   \dvi_rx1/dec_b/de  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/n0050_inv ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/de_43 )
  );
  FDR   \dvi_rx1/dec_b/c1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/c1_42 )
  );
  FDR   \dvi_rx1/dec_b/c0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_16_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/c0_125 )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_b/des_0/iserdes_s  (
    .CFB0(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q3_UNCONNECTED ),
    .DFB(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_DFB_UNCONNECTED ),
    .CE0(N0),
    .CFB1(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_CFB1_UNCONNECTED ),
    .INCDEC(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_INCDEC_UNCONNECTED ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_b/des_0/cascade ),
    .VALID(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_VALID_UNCONNECTED ),
    .Q4(\dvi_rx1/dec_b/raw5bit [0]),
    .Q2(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q2_UNCONNECTED ),
    .Q1(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q1_UNCONNECTED ),
    .FABRICOUT(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_FABRICOUT_UNCONNECTED ),
    .CLK1(\b_mux<3> [1]),
    .D(\dvi_rx1/dec_b/des_0/ddly_s ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_b/bitslipx2_278 ),
    .SHIFTOUT(\dvi_rx1/dec_b/des_0/pd_edge )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_b/des_0/iserdes_m  (
    .CFB0(\NLW_dvi_rx1/dec_b/des_0/iserdes_m_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\dvi_rx1/dec_b/raw5bit [3]),
    .DFB(\NLW_dvi_rx1/dec_b/des_0/iserdes_m_DFB_UNCONNECTED ),
    .CE0(N0),
    .CFB1(\NLW_dvi_rx1/dec_b/des_0/iserdes_m_CFB1_UNCONNECTED ),
    .INCDEC(\dvi_rx1/dec_b/des_0/incdec_data_im ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_b/des_0/pd_edge ),
    .VALID(\dvi_rx1/dec_b/des_0/valid_data_im ),
    .Q4(\dvi_rx1/dec_b/raw5bit [4]),
    .Q2(\dvi_rx1/dec_b/raw5bit [2]),
    .Q1(\dvi_rx1/dec_b/raw5bit [1]),
    .FABRICOUT(\NLW_dvi_rx1/dec_b/des_0/iserdes_m_FABRICOUT_UNCONNECTED ),
    .CLK1(\b_mux<3> [1]),
    .D(\dvi_rx1/dec_b/des_0/ddly_m ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_b/bitslipx2_278 ),
    .SHIFTOUT(\dvi_rx1/dec_b/des_0/cascade )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "WRAPAROUND" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "SLAVE" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_b/des_0/iodelay_s  (
    .BUSY(\dvi_rx1/dec_b/des_0/busy_data_or [0]),
    .T(N0),
    .CAL(\dvi_rx1/dec_b/des_0/cal_data_sint_366 ),
    .DOUT(\NLW_dvi_rx1/dec_b/des_0/iodelay_s_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(\b_mux<3> [1]),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_b/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_b/des_0/inc_data_int_357 ),
    .CE(\dvi_rx1/dec_b/des_0/ce_data_359 ),
    .DATAOUT(\dvi_rx1/dec_b/des_0/ddly_s ),
    .DATAOUT2(\NLW_dvi_rx1/dec_b/des_0/iodelay_s_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_b/des_0/rst_data_358 ),
    .ODATAIN(\b_mux<3> [1]),
    .TOUT(\NLW_dvi_rx1/dec_b/des_0/iodelay_s_TOUT_UNCONNECTED )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "STAY_AT_LIMIT" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "MASTER" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_b/des_0/iodelay_m  (
    .BUSY(\NLW_dvi_rx1/dec_b/des_0/iodelay_m_BUSY_UNCONNECTED ),
    .T(N0),
    .CAL(\dvi_rx1/dec_b/des_0/cal_data_master_367 ),
    .DOUT(\NLW_dvi_rx1/dec_b/des_0/iodelay_m_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(\b_mux<3> [1]),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_b/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_b/des_0/inc_data_int_357 ),
    .CE(\dvi_rx1/dec_b/des_0/ce_data_359 ),
    .DATAOUT(\dvi_rx1/dec_b/des_0/ddly_m ),
    .DATAOUT2(\NLW_dvi_rx1/dec_b/des_0/iodelay_m_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_b/des_0/rst_data_358 ),
    .ODATAIN(\b_mux<3> [1]),
    .TOUT(\NLW_dvi_rx1/dec_b/des_0/iodelay_m_TOUT_UNCONNECTED )
  );
  IBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DIFF_TERM ( "FALSE" ),
    .DQS_BIAS ( "FALSE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \dvi_rx1/dec_b/des_0/data_in  (
    .I(RX1_TMDS[0]),
    .IB(RX1_TMDSB[0]),
    .O(\dvi_rx1/dec_b/des_0/rx_data_in )
  );
  FDC   \dvi_rx1/dec_b/des_0/state_FSM_FFd2  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/state_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_374 )
  );
  FDC   \dvi_rx1/dec_b/des_0/state_FSM_FFd3  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/state_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_373 )
  );
  FDC   \dvi_rx1/dec_b/des_0/state_FSM_FFd4  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/state_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_372 )
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_8  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter8 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [8])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_7  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter7 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [7])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_6  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter6 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [6])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_5  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter5 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [5])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter4 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [4])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter3 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [3])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter2 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [2])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter1 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [1])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter ),
    .Q(\dvi_rx1/dec_b/des_0/counter [0])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<8>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [7]),
    .LI(\b_mux<3> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter8 )
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<7>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [6]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [7]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter7 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<7>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [6]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [7]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<7>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [7]),
    .I2(\b_mux<3> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [7])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<6>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [5]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [6]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter6 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<6>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [5]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [6]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<6>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [6]),
    .I2(\b_mux<3> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [6])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<5>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [4]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [5]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter5 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<5>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [4]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [5]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<5>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [5]),
    .I2(\b_mux<3> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [5])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<4>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [3]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [4]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter4 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<4>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [3]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [4]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<4>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [4]),
    .I2(\b_mux<3> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [4])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<3>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [2]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [3]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter3 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<3>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [2]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [3]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<3>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [3]),
    .I2(\b_mux<3> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [3])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<2>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [1]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [2]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter2 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<2>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [1]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [2]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<2>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [2]),
    .I2(\b_mux<3> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [2])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<1>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [0]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter1 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<1>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [0]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<1>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [1]),
    .I2(\b_mux<3> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [1])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<0>  (
    .CI(\dvi_rx1/dec_b/des_0/counter<8>_inv ),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [0]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<0>  (
    .CI(\dvi_rx1/dec_b/des_0/counter<8>_inv ),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [0]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<0>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [0]),
    .I2(\b_mux<3> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [0])
  );
  FDE   \dvi_rx1/dec_b/des_0/valid_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_b/des_0/valid_data_im ),
    .Q(\dvi_rx1/dec_b/des_0/valid_data_d_360 )
  );
  FDE   \dvi_rx1/dec_b/des_0/incdec_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_b/des_0/incdec_data_im ),
    .Q(\dvi_rx1/dec_b/des_0/incdec_data_d_361 )
  );
  FDCE   \dvi_rx1/dec_b/des_0/pdcounter_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/_n0278_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ),
    .Q(\dvi_rx1/dec_b/des_0/pdcounter [4])
  );
  FDPE   \dvi_rx1/dec_b/des_0/pdcounter_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/_n0278_inv ),
    .D(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_b/des_0/pdcounter [3])
  );
  FDCE   \dvi_rx1/dec_b/des_0/pdcounter_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/_n0278_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ),
    .Q(\dvi_rx1/dec_b/des_0/pdcounter [2])
  );
  FDCE   \dvi_rx1/dec_b/des_0/pdcounter_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/_n0278_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ),
    .Q(\dvi_rx1/dec_b/des_0/pdcounter [1])
  );
  FDCE   \dvi_rx1/dec_b/des_0/pdcounter_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/_n0278_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> ),
    .Q(\dvi_rx1/dec_b/des_0/pdcounter [0])
  );
  FDE   \dvi_rx1/dec_b/des_0/busy_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_b/des_0/busy_data_or [0]),
    .Q(\dvi_rx1/dec_b/des_0/busy_data_d_362 )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_g/des_0/iserdes_s  (
    .CFB0(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q3_UNCONNECTED ),
    .DFB(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_DFB_UNCONNECTED ),
    .CE0(N0),
    .CFB1(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_CFB1_UNCONNECTED ),
    .INCDEC(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_INCDEC_UNCONNECTED ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_g/des_0/cascade ),
    .VALID(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_VALID_UNCONNECTED ),
    .Q4(\dvi_rx1/dec_g/raw5bit [0]),
    .Q2(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q2_UNCONNECTED ),
    .Q1(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q1_UNCONNECTED ),
    .FABRICOUT(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_FABRICOUT_UNCONNECTED ),
    .CLK1(\b_mux<3> [1]),
    .D(\dvi_rx1/dec_g/des_0/ddly_s ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_g/bitslipx2_227 ),
    .SHIFTOUT(\dvi_rx1/dec_g/des_0/pd_edge )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_g/des_0/iserdes_m  (
    .CFB0(\NLW_dvi_rx1/dec_g/des_0/iserdes_m_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\dvi_rx1/dec_g/raw5bit [3]),
    .DFB(\NLW_dvi_rx1/dec_g/des_0/iserdes_m_DFB_UNCONNECTED ),
    .CE0(N0),
    .CFB1(\NLW_dvi_rx1/dec_g/des_0/iserdes_m_CFB1_UNCONNECTED ),
    .INCDEC(\dvi_rx1/dec_g/des_0/incdec_data_im ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_g/des_0/pd_edge ),
    .VALID(\dvi_rx1/dec_g/des_0/valid_data_im ),
    .Q4(\dvi_rx1/dec_g/raw5bit [4]),
    .Q2(\dvi_rx1/dec_g/raw5bit [2]),
    .Q1(\dvi_rx1/dec_g/raw5bit [1]),
    .FABRICOUT(\NLW_dvi_rx1/dec_g/des_0/iserdes_m_FABRICOUT_UNCONNECTED ),
    .CLK1(\b_mux<3> [1]),
    .D(\dvi_rx1/dec_g/des_0/ddly_m ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_g/bitslipx2_227 ),
    .SHIFTOUT(\dvi_rx1/dec_g/des_0/cascade )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "WRAPAROUND" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "SLAVE" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_g/des_0/iodelay_s  (
    .BUSY(\dvi_rx1/dec_g/des_0/busy_data_or [0]),
    .T(N0),
    .CAL(\dvi_rx1/dec_g/des_0/cal_data_sint_413 ),
    .DOUT(\NLW_dvi_rx1/dec_g/des_0/iodelay_s_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(\b_mux<3> [1]),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_g/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_g/des_0/inc_data_int_405 ),
    .CE(\dvi_rx1/dec_g/des_0/ce_data_407 ),
    .DATAOUT(\dvi_rx1/dec_g/des_0/ddly_s ),
    .DATAOUT2(\NLW_dvi_rx1/dec_g/des_0/iodelay_s_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_g/des_0/rst_data_406 ),
    .ODATAIN(\b_mux<3> [1]),
    .TOUT(\NLW_dvi_rx1/dec_g/des_0/iodelay_s_TOUT_UNCONNECTED )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "STAY_AT_LIMIT" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "MASTER" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_g/des_0/iodelay_m  (
    .BUSY(\NLW_dvi_rx1/dec_g/des_0/iodelay_m_BUSY_UNCONNECTED ),
    .T(N0),
    .CAL(\dvi_rx1/dec_g/des_0/cal_data_master_414 ),
    .DOUT(\NLW_dvi_rx1/dec_g/des_0/iodelay_m_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(\b_mux<3> [1]),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_g/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_g/des_0/inc_data_int_405 ),
    .CE(\dvi_rx1/dec_g/des_0/ce_data_407 ),
    .DATAOUT(\dvi_rx1/dec_g/des_0/ddly_m ),
    .DATAOUT2(\NLW_dvi_rx1/dec_g/des_0/iodelay_m_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_g/des_0/rst_data_406 ),
    .ODATAIN(\b_mux<3> [1]),
    .TOUT(\NLW_dvi_rx1/dec_g/des_0/iodelay_m_TOUT_UNCONNECTED )
  );
  IBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DIFF_TERM ( "FALSE" ),
    .DQS_BIAS ( "FALSE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \dvi_rx1/dec_g/des_0/data_in  (
    .I(RX1_TMDS[1]),
    .IB(RX1_TMDSB[1]),
    .O(\dvi_rx1/dec_g/des_0/rx_data_in )
  );
  FDC   \dvi_rx1/dec_g/des_0/state_FSM_FFd2  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/state_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_421 )
  );
  FDC   \dvi_rx1/dec_g/des_0/state_FSM_FFd3  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/state_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_420 )
  );
  FDC   \dvi_rx1/dec_g/des_0/state_FSM_FFd4  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/state_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_419 )
  );
  FDE   \dvi_rx1/dec_g/des_0/valid_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_g/des_0/valid_data_im ),
    .Q(\dvi_rx1/dec_g/des_0/valid_data_d_408 )
  );
  FDE   \dvi_rx1/dec_g/des_0/incdec_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_g/des_0/incdec_data_im ),
    .Q(\dvi_rx1/dec_g/des_0/incdec_data_d_409 )
  );
  FDCE   \dvi_rx1/dec_g/des_0/pdcounter_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/des_0/_n0278_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ),
    .Q(\dvi_rx1/dec_g/des_0/pdcounter [4])
  );
  FDPE   \dvi_rx1/dec_g/des_0/pdcounter_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/des_0/_n0278_inv ),
    .D(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_g/des_0/pdcounter [3])
  );
  FDCE   \dvi_rx1/dec_g/des_0/pdcounter_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/des_0/_n0278_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ),
    .Q(\dvi_rx1/dec_g/des_0/pdcounter [2])
  );
  FDCE   \dvi_rx1/dec_g/des_0/pdcounter_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/des_0/_n0278_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ),
    .Q(\dvi_rx1/dec_g/des_0/pdcounter [1])
  );
  FDCE   \dvi_rx1/dec_g/des_0/pdcounter_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/des_0/_n0278_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> ),
    .Q(\dvi_rx1/dec_g/des_0/pdcounter [0])
  );
  FDE   \dvi_rx1/dec_g/des_0/busy_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_g/des_0/busy_data_or [0]),
    .Q(\dvi_rx1/dec_g/des_0/busy_data_d_410 )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_r/des_0/iserdes_s  (
    .CFB0(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q3_UNCONNECTED ),
    .DFB(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_DFB_UNCONNECTED ),
    .CE0(N0),
    .CFB1(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_CFB1_UNCONNECTED ),
    .INCDEC(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_INCDEC_UNCONNECTED ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_r/des_0/cascade ),
    .VALID(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_VALID_UNCONNECTED ),
    .Q4(\dvi_rx1/dec_r/raw5bit [0]),
    .Q2(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q2_UNCONNECTED ),
    .Q1(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q1_UNCONNECTED ),
    .FABRICOUT(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_FABRICOUT_UNCONNECTED ),
    .CLK1(\b_mux<3> [1]),
    .D(\dvi_rx1/dec_r/des_0/ddly_s ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_r/bitslipx2_181 ),
    .SHIFTOUT(\dvi_rx1/dec_r/des_0/pd_edge )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_r/des_0/iserdes_m  (
    .CFB0(\NLW_dvi_rx1/dec_r/des_0/iserdes_m_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\dvi_rx1/dec_r/raw5bit [3]),
    .DFB(\NLW_dvi_rx1/dec_r/des_0/iserdes_m_DFB_UNCONNECTED ),
    .CE0(N0),
    .CFB1(\NLW_dvi_rx1/dec_r/des_0/iserdes_m_CFB1_UNCONNECTED ),
    .INCDEC(\dvi_rx1/dec_r/des_0/incdec_data_im ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_r/des_0/pd_edge ),
    .VALID(\dvi_rx1/dec_r/des_0/valid_data_im ),
    .Q4(\dvi_rx1/dec_r/raw5bit [4]),
    .Q2(\dvi_rx1/dec_r/raw5bit [2]),
    .Q1(\dvi_rx1/dec_r/raw5bit [1]),
    .FABRICOUT(\NLW_dvi_rx1/dec_r/des_0/iserdes_m_FABRICOUT_UNCONNECTED ),
    .CLK1(\b_mux<3> [1]),
    .D(\dvi_rx1/dec_r/des_0/ddly_m ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_r/bitslipx2_181 ),
    .SHIFTOUT(\dvi_rx1/dec_r/des_0/cascade )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "WRAPAROUND" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "SLAVE" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_r/des_0/iodelay_s  (
    .BUSY(\dvi_rx1/dec_r/des_0/busy_data_or [0]),
    .T(N0),
    .CAL(\dvi_rx1/dec_r/des_0/cal_data_sint_458 ),
    .DOUT(\NLW_dvi_rx1/dec_r/des_0/iodelay_s_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(\b_mux<3> [1]),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_r/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_r/des_0/inc_data_int_450 ),
    .CE(\dvi_rx1/dec_r/des_0/ce_data_452 ),
    .DATAOUT(\dvi_rx1/dec_r/des_0/ddly_s ),
    .DATAOUT2(\NLW_dvi_rx1/dec_r/des_0/iodelay_s_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_r/des_0/rst_data_451 ),
    .ODATAIN(\b_mux<3> [1]),
    .TOUT(\NLW_dvi_rx1/dec_r/des_0/iodelay_s_TOUT_UNCONNECTED )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "STAY_AT_LIMIT" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "MASTER" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_r/des_0/iodelay_m  (
    .BUSY(\NLW_dvi_rx1/dec_r/des_0/iodelay_m_BUSY_UNCONNECTED ),
    .T(N0),
    .CAL(\dvi_rx1/dec_r/des_0/cal_data_master_459 ),
    .DOUT(\NLW_dvi_rx1/dec_r/des_0/iodelay_m_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(\b_mux<3> [1]),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_r/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_r/des_0/inc_data_int_450 ),
    .CE(\dvi_rx1/dec_r/des_0/ce_data_452 ),
    .DATAOUT(\dvi_rx1/dec_r/des_0/ddly_m ),
    .DATAOUT2(\NLW_dvi_rx1/dec_r/des_0/iodelay_m_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_r/des_0/rst_data_451 ),
    .ODATAIN(\b_mux<3> [1]),
    .TOUT(\NLW_dvi_rx1/dec_r/des_0/iodelay_m_TOUT_UNCONNECTED )
  );
  IBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DIFF_TERM ( "FALSE" ),
    .DQS_BIAS ( "FALSE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \dvi_rx1/dec_r/des_0/data_in  (
    .I(RX1_TMDS[2]),
    .IB(RX1_TMDSB[2]),
    .O(\dvi_rx1/dec_r/des_0/rx_data_in )
  );
  FDC   \dvi_rx1/dec_r/des_0/state_FSM_FFd2  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/state_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_466 )
  );
  FDC   \dvi_rx1/dec_r/des_0/state_FSM_FFd3  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/state_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_465 )
  );
  FDC   \dvi_rx1/dec_r/des_0/state_FSM_FFd4  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/state_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_464 )
  );
  FDE   \dvi_rx1/dec_r/des_0/valid_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_r/des_0/valid_data_im ),
    .Q(\dvi_rx1/dec_r/des_0/valid_data_d_453 )
  );
  FDE   \dvi_rx1/dec_r/des_0/incdec_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_r/des_0/incdec_data_im ),
    .Q(\dvi_rx1/dec_r/des_0/incdec_data_d_454 )
  );
  FDCE   \dvi_rx1/dec_r/des_0/pdcounter_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/des_0/_n0278_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ),
    .Q(\dvi_rx1/dec_r/des_0/pdcounter [4])
  );
  FDPE   \dvi_rx1/dec_r/des_0/pdcounter_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/des_0/_n0278_inv ),
    .D(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_r/des_0/pdcounter [3])
  );
  FDCE   \dvi_rx1/dec_r/des_0/pdcounter_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/des_0/_n0278_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ),
    .Q(\dvi_rx1/dec_r/des_0/pdcounter [2])
  );
  FDCE   \dvi_rx1/dec_r/des_0/pdcounter_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/des_0/_n0278_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ),
    .Q(\dvi_rx1/dec_r/des_0/pdcounter [1])
  );
  FDCE   \dvi_rx1/dec_r/des_0/pdcounter_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/des_0/_n0278_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> ),
    .Q(\dvi_rx1/dec_r/des_0/pdcounter [0])
  );
  FDE   \dvi_rx1/dec_r/des_0/busy_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_r/des_0/busy_data_or [0]),
    .Q(\dvi_rx1/dec_r/des_0/busy_data_d_455 )
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [10]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1913 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [11])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<10>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1882 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [10])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1882 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [10])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<9>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1883 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [9])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1883 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [9])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<8>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1884 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [8])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1884 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [8])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<7>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1885 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [7])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1885 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [7])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<6>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1886 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [6])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1886 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [6])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<5>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1887 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [5])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1887 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [5])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<4>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1888 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [4])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1888 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [4])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<3>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1889 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [3])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1889 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [3])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<2>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1890 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [2])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1890 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [2])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<1>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1891 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [1])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1891 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [1])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<0>  (
    .CI(\b_mux<3> [1]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [0])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<0>  (
    .CI(\b_mux<3> [1]),
    .DI(N0),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [0])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_11  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [11]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_560 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [11])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_10  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [10]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_560 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [10])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_9  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [9]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_560 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [9])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_8  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [8]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_560 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [8])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_7  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [7]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_560 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [7])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [6]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_560 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [6])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [5]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_560 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [5])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [4]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_560 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [4])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [3]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_560 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [3])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [2]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_560 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [2])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [1]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_560 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [1])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [0]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_560 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [0])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<6>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_559 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [6])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<5>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_559 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [5])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<4>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_559 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [4])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<3>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_559 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [3])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<2>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_559 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<1>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_559 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<0>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_559 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1-In ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_552 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_553 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_555 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5-In_521 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_556 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_554 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6-In ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6_557 )
  );
  FD   \dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_q  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_547 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_q_551 )
  );
  FD   \dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_547 )
  );
  FD   \dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_tout  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_tout_548 )
  );
  FD   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout_549 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0_558 )
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/flipgear  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/flipgear_297 )
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/bitslip  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/bitslip_296 )
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/psaligned  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/psaligned_156 )
  );
  FDP   \dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_559 )
  );
  FDP   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_560 )
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/bitslip_cnt_2  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [2])
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/bitslip_cnt_1  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [1])
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/bitslip_cnt_0  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [0])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [10]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1914 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [11])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<10>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1892 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [10])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1892 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [10])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<9>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1893 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [9])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1893 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [9])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<8>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1894 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [8])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1894 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [8])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<7>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1895 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [7])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1895 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [7])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<6>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1896 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [6])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1896 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [6])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<5>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1897 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [5])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1897 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [5])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<4>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1898 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [4])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1898 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [4])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<3>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1899 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [3])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1899 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [3])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<2>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1900 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [2])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1900 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [2])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<1>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1901 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [1])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1901 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [1])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<0>  (
    .CI(\b_mux<3> [1]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [0])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<0>  (
    .CI(\b_mux<3> [1]),
    .DI(N0),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [0])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_11  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [11]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_647 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [11])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_10  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [10]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_647 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [10])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_9  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [9]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_647 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [9])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_8  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [8]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_647 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [8])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_7  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [7]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_647 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [7])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [6]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_647 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [6])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [5]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_647 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [5])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [4]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_647 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [4])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [3]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_647 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [3])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [2]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_647 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [2])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [1]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_647 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [1])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [0]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_647 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [0])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<6>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_646 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [6])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<5>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_646 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [5])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<4>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_646 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [4])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<3>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_646 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [3])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<2>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_646 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<1>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_646 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<0>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_646 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1-In ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_639 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_640 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_642 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5-In_608 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_643 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_641 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6-In ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6_644 )
  );
  FD   \dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_q  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_634 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_q_638 )
  );
  FD   \dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_634 )
  );
  FD   \dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_tout  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_tout_635 )
  );
  FD   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout_636 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0_645 )
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/flipgear  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/flipgear_245 )
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/bitslip  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/bitslip_244 )
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/psaligned  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/psaligned_155 )
  );
  FDP   \dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_646 )
  );
  FDP   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_647 )
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/bitslip_cnt_2  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [2])
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/bitslip_cnt_1  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [1])
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/bitslip_cnt_0  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [0])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [10]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1915 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [11])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<10>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1902 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [10])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1902 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [10])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<9>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1903 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [9])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1903 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [9])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<8>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1904 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [8])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1904 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [8])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<7>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1905 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [7])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1905 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [7])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<6>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1906 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [6])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1906 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [6])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<5>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1907 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [5])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1907 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [5])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<4>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1908 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [4])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1908 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [4])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<3>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1909 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [3])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1909 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [3])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<2>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1910 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [2])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1910 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [2])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<1>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1911 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [1])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .DI(\b_mux<3> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1911 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [1])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<0>  (
    .CI(\b_mux<3> [1]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [0])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<0>  (
    .CI(\b_mux<3> [1]),
    .DI(N0),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [0])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_11  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [11]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_734 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [11])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_10  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [10]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_734 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [10])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_9  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [9]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_734 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [9])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_8  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [8]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_734 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [8])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_7  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [7]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_734 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [7])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [6]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_734 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [6])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [5]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_734 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [5])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [4]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_734 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [4])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [3]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_734 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [3])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [2]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_734 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [2])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [1]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_734 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [1])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [0]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_734 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [0])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<6>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_733 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [6])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<5>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_733 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [5])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<4>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_733 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [4])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<3>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_733 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [3])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<2>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_733 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<1>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_733 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<0>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_733 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1-In ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_726 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_727 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_729 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5-In_695 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_730 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_728 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6-In ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6_731 )
  );
  FD   \dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_q  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_721 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_q_725 )
  );
  FD   \dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_721 )
  );
  FD   \dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_tout  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_tout_722 )
  );
  FD   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout_723 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0_732 )
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/flipgear  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/flipgear_199 )
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/bitslip  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/bitslip_198 )
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/psaligned  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/psaligned_154 )
  );
  FDP   \dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_733 )
  );
  FDP   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_734 )
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/bitslip_cnt_2  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [2])
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/bitslip_cnt_1  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [1])
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/bitslip_cnt_0  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [0])
  );
  FDR   \dvi_rx1/dec_b/cbnd/wa_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/Result<3>1 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/wa [3])
  );
  FDR   \dvi_rx1/dec_b/cbnd/wa_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/Result<2>1 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/wa [2])
  );
  FDR   \dvi_rx1/dec_b/cbnd/wa_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/Result<1>1 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/wa [1])
  );
  FDR   \dvi_rx1/dec_b/cbnd/wa_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/Result<0>1 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/wa [0])
  );
  FDRE   \dvi_rx1/dec_b/cbnd/ra_3  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/cbnd/ra_en_756 ),
    .D(\dvi_rx1/dec_b/cbnd/Result [3]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/ra [3])
  );
  FDRE   \dvi_rx1/dec_b/cbnd/ra_2  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/cbnd/ra_en_756 ),
    .D(\dvi_rx1/dec_b/cbnd/Result [2]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/ra [2])
  );
  FDRE   \dvi_rx1/dec_b/cbnd/ra_1  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/cbnd/ra_en_756 ),
    .D(\dvi_rx1/dec_b/cbnd/Result [1]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/ra [1])
  );
  FDRE   \dvi_rx1/dec_b/cbnd/ra_0  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/cbnd/ra_en_756 ),
    .D(\dvi_rx1/dec_b/cbnd/Result [0]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/ra [0])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_9  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [9]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [9])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_8  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [8]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [8])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_7  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [7]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [7])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [6]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [6])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [5]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [5])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [4]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [4])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [3]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [3])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [2]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [2])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [1]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [1])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [0]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [0])
  );
  FD   \dvi_rx1/dec_b/cbnd/rcvd_ctkn_q  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/rcvd_ctkn_762 ),
    .Q(\dvi_rx1/dec_b/cbnd/rcvd_ctkn_q_761 )
  );
  FDR   \dvi_rx1/dec_b/cbnd/rawdata_vld_rising  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/rawdata_vld_rawdata_vld_q_AND_23_o_norst ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_758 )
  );
  FD   \dvi_rx1/dec_b/cbnd/rawdata_vld_q  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/rawdata_vld ),
    .Q(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 )
  );
  FD   \dvi_rx1/dec_b/cbnd/rcvd_ctkn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o ),
    .Q(\dvi_rx1/dec_b/cbnd/rcvd_ctkn_762 )
  );
  FDRE   \dvi_rx1/dec_g/cbnd/ra_3  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/cbnd/ra_en_782 ),
    .D(\dvi_rx1/dec_g/cbnd/Result [3]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/ra [3])
  );
  FDRE   \dvi_rx1/dec_g/cbnd/ra_2  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/cbnd/ra_en_782 ),
    .D(\dvi_rx1/dec_g/cbnd/Result [2]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/ra [2])
  );
  FDRE   \dvi_rx1/dec_g/cbnd/ra_1  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/cbnd/ra_en_782 ),
    .D(\dvi_rx1/dec_g/cbnd/Result [1]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/ra [1])
  );
  FDRE   \dvi_rx1/dec_g/cbnd/ra_0  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/cbnd/ra_en_782 ),
    .D(\dvi_rx1/dec_g/cbnd/Result [0]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/ra [0])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_9  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [9]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [9])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_8  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [8]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [8])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_7  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [7]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [7])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [6]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [6])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [5]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [5])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [4]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [4])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [3]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [3])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [2]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [2])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [1]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [1])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [0]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [0])
  );
  FD   \dvi_rx1/dec_g/cbnd/rcvd_ctkn_q  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/rcvd_ctkn_786 ),
    .Q(\dvi_rx1/dec_g/cbnd/rcvd_ctkn_q_785 )
  );
  FD   \dvi_rx1/dec_g/cbnd/rcvd_ctkn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o ),
    .Q(\dvi_rx1/dec_g/cbnd/rcvd_ctkn_786 )
  );
  FDRE   \dvi_rx1/dec_r/cbnd/ra_3  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/cbnd/ra_en_806 ),
    .D(\dvi_rx1/dec_r/cbnd/Result [3]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/ra [3])
  );
  FDRE   \dvi_rx1/dec_r/cbnd/ra_2  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/cbnd/ra_en_806 ),
    .D(\dvi_rx1/dec_r/cbnd/Result [2]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/ra [2])
  );
  FDRE   \dvi_rx1/dec_r/cbnd/ra_1  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/cbnd/ra_en_806 ),
    .D(\dvi_rx1/dec_r/cbnd/Result [1]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/ra [1])
  );
  FDRE   \dvi_rx1/dec_r/cbnd/ra_0  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/cbnd/ra_en_806 ),
    .D(\dvi_rx1/dec_r/cbnd/Result [0]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/ra [0])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_9  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [9]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [9])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_8  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [8]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [8])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_7  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [7]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [7])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [6]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [6])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [5]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [5])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [4]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [4])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [3]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [3])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [2]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [2])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [1]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [1])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [0]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [0])
  );
  FD   \dvi_rx1/dec_r/cbnd/rcvd_ctkn_q  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/rcvd_ctkn_810 ),
    .Q(\dvi_rx1/dec_r/cbnd/rcvd_ctkn_q_809 )
  );
  FD   \dvi_rx1/dec_r/cbnd/rcvd_ctkn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o ),
    .Q(\dvi_rx1/dec_r/cbnd/rcvd_ctkn_810 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [9]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [9])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [8]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [8])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [7]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [7])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [6]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [6])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [5]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [5])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [4]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [3]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [2]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [2])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [1]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [1])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [0]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [0])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [9]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [9])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [8]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [8])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [7]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [7])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [6]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [6])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [5]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [5])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [4]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [3]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [2]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [2])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [1]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [1])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [0]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [0])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [9]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [9])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [8]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [8])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [7]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [7])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [6]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [6])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [5]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [5])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [4]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [3]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [2]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [2])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [1]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [1])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [0]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [0])
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<4>  (
    .CI(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<3>_958 ),
    .DI(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi4_957 ),
    .S(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<4>_956 ),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<4>_955 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<4>  (
    .I0(\hsv_converter/q_b [0]),
    .I1(\hsv_converter/q_r [0]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<4>_956 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi4  (
    .I0(\hsv_converter/q_r [0]),
    .I1(\hsv_converter/q_b [0]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi4_957 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<3>  (
    .CI(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<2>_961 ),
    .DI(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi3_960 ),
    .S(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<3>_959 ),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<3>_958 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<3>  (
    .I0(\hsv_converter/f_b [6]),
    .I1(\hsv_converter/f_r [6]),
    .I2(\hsv_converter/f_b [7]),
    .I3(\hsv_converter/f_r [7]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<3>_959 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi3  (
    .I0(\hsv_converter/f_r [7]),
    .I1(\hsv_converter/f_r [6]),
    .I2(\hsv_converter/f_b [6]),
    .I3(\hsv_converter/f_b [7]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi3_960 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<2>  (
    .CI(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<1>_964 ),
    .DI(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi2_963 ),
    .S(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<2>_962 ),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<2>_961 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<2>  (
    .I0(\hsv_converter/f_b [4]),
    .I1(\hsv_converter/f_r [4]),
    .I2(\hsv_converter/f_b [5]),
    .I3(\hsv_converter/f_r [5]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<2>_962 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi2  (
    .I0(\hsv_converter/f_r [5]),
    .I1(\hsv_converter/f_r [4]),
    .I2(\hsv_converter/f_b [4]),
    .I3(\hsv_converter/f_b [5]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi2_963 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<1>  (
    .CI(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<0>_967 ),
    .DI(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi1_966 ),
    .S(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<1>_965 ),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<1>_964 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<1>  (
    .I0(\hsv_converter/f_b [2]),
    .I1(\hsv_converter/f_r [2]),
    .I2(\hsv_converter/f_b [3]),
    .I3(\hsv_converter/f_r [3]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<1>_965 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi1  (
    .I0(\hsv_converter/f_r [3]),
    .I1(\hsv_converter/f_r [2]),
    .I2(\hsv_converter/f_b [2]),
    .I3(\hsv_converter/f_b [3]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi1_966 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<0>  (
    .CI(N0),
    .DI(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi_969 ),
    .S(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<0>_968 ),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<0>_967 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<0>  (
    .I0(\hsv_converter/f_b [0]),
    .I1(\hsv_converter/f_r [0]),
    .I2(\hsv_converter/f_b [1]),
    .I3(\hsv_converter/f_r [1]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lut<0>_968 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi  (
    .I0(\hsv_converter/f_r [1]),
    .I1(\hsv_converter/f_r [0]),
    .I2(\hsv_converter/f_b [0]),
    .I3(\hsv_converter/f_b [1]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_lutdi_969 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<4>  (
    .CI(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<3>_973 ),
    .DI(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi4_972 ),
    .S(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<4>_971 ),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<4>_970 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<4>  (
    .I0(\hsv_converter/q_g [0]),
    .I1(\hsv_converter/q_r [0]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<4>_971 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi4  (
    .I0(\hsv_converter/q_r [0]),
    .I1(\hsv_converter/q_g [0]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi4_972 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<3>  (
    .CI(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<2>_976 ),
    .DI(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi3_975 ),
    .S(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<3>_974 ),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<3>_973 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<3>  (
    .I0(\hsv_converter/f_g [6]),
    .I1(\hsv_converter/f_r [6]),
    .I2(\hsv_converter/f_g [7]),
    .I3(\hsv_converter/f_r [7]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<3>_974 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi3  (
    .I0(\hsv_converter/f_r [7]),
    .I1(\hsv_converter/f_r [6]),
    .I2(\hsv_converter/f_g [6]),
    .I3(\hsv_converter/f_g [7]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi3_975 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<2>  (
    .CI(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<1>_979 ),
    .DI(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi2_978 ),
    .S(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<2>_977 ),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<2>_976 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<2>  (
    .I0(\hsv_converter/f_g [4]),
    .I1(\hsv_converter/f_r [4]),
    .I2(\hsv_converter/f_g [5]),
    .I3(\hsv_converter/f_r [5]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<2>_977 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi2  (
    .I0(\hsv_converter/f_r [5]),
    .I1(\hsv_converter/f_r [4]),
    .I2(\hsv_converter/f_g [4]),
    .I3(\hsv_converter/f_g [5]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi2_978 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<1>  (
    .CI(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<0>_982 ),
    .DI(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi1_981 ),
    .S(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<1>_980 ),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<1>_979 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<1>  (
    .I0(\hsv_converter/f_g [2]),
    .I1(\hsv_converter/f_r [2]),
    .I2(\hsv_converter/f_g [3]),
    .I3(\hsv_converter/f_r [3]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<1>_980 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi1  (
    .I0(\hsv_converter/f_r [3]),
    .I1(\hsv_converter/f_r [2]),
    .I2(\hsv_converter/f_g [2]),
    .I3(\hsv_converter/f_g [3]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi1_981 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<0>  (
    .CI(N0),
    .DI(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi_984 ),
    .S(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<0>_983 ),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<0>_982 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<0>  (
    .I0(\hsv_converter/f_g [0]),
    .I1(\hsv_converter/f_r [0]),
    .I2(\hsv_converter/f_g [1]),
    .I3(\hsv_converter/f_r [1]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lut<0>_983 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi  (
    .I0(\hsv_converter/f_r [1]),
    .I1(\hsv_converter/f_r [0]),
    .I2(\hsv_converter/f_g [0]),
    .I3(\hsv_converter/f_g [1]),
    .O(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_lutdi_984 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<4>  (
    .CI(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<3>_988 ),
    .DI(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi4_987 ),
    .S(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<4>_986 ),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<4>_985 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<4>  (
    .I0(\hsv_converter/q_r [0]),
    .I1(\hsv_converter/q_b [0]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<4>_986 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi4  (
    .I0(\hsv_converter/q_b [0]),
    .I1(\hsv_converter/q_r [0]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi4_987 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<3>  (
    .CI(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<2>_991 ),
    .DI(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi3_990 ),
    .S(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<3>_989 ),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<3>_988 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<3>  (
    .I0(\hsv_converter/f_r [6]),
    .I1(\hsv_converter/f_b [6]),
    .I2(\hsv_converter/f_r [7]),
    .I3(\hsv_converter/f_b [7]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<3>_989 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi3  (
    .I0(\hsv_converter/f_b [7]),
    .I1(\hsv_converter/f_b [6]),
    .I2(\hsv_converter/f_r [6]),
    .I3(\hsv_converter/f_r [7]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi3_990 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<2>  (
    .CI(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<1>_994 ),
    .DI(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi2_993 ),
    .S(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<2>_992 ),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<2>_991 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<2>  (
    .I0(\hsv_converter/f_r [4]),
    .I1(\hsv_converter/f_b [4]),
    .I2(\hsv_converter/f_r [5]),
    .I3(\hsv_converter/f_b [5]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<2>_992 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi2  (
    .I0(\hsv_converter/f_b [5]),
    .I1(\hsv_converter/f_b [4]),
    .I2(\hsv_converter/f_r [4]),
    .I3(\hsv_converter/f_r [5]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi2_993 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<1>  (
    .CI(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<0>_997 ),
    .DI(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi1_996 ),
    .S(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<1>_995 ),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<1>_994 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<1>  (
    .I0(\hsv_converter/f_r [2]),
    .I1(\hsv_converter/f_b [2]),
    .I2(\hsv_converter/f_r [3]),
    .I3(\hsv_converter/f_b [3]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<1>_995 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi1  (
    .I0(\hsv_converter/f_b [3]),
    .I1(\hsv_converter/f_b [2]),
    .I2(\hsv_converter/f_r [2]),
    .I3(\hsv_converter/f_r [3]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi1_996 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<0>  (
    .CI(N0),
    .DI(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi_999 ),
    .S(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<0>_998 ),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<0>_997 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<0>  (
    .I0(\hsv_converter/f_r [0]),
    .I1(\hsv_converter/f_b [0]),
    .I2(\hsv_converter/f_r [1]),
    .I3(\hsv_converter/f_b [1]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lut<0>_998 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi  (
    .I0(\hsv_converter/f_b [1]),
    .I1(\hsv_converter/f_b [0]),
    .I2(\hsv_converter/f_r [0]),
    .I3(\hsv_converter/f_r [1]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_lutdi_999 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<4>  (
    .CI(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<3>_1003 ),
    .DI(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi4_1002 ),
    .S(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<4>_1001 ),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<4>_1000 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<4>  (
    .I0(\hsv_converter/q_r [0]),
    .I1(\hsv_converter/q_g [0]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<4>_1001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi4  (
    .I0(\hsv_converter/q_g [0]),
    .I1(\hsv_converter/q_r [0]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi4_1002 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<3>  (
    .CI(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<2>_1006 ),
    .DI(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi3_1005 ),
    .S(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<3>_1004 ),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<3>_1003 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<3>  (
    .I0(\hsv_converter/f_r [6]),
    .I1(\hsv_converter/f_g [6]),
    .I2(\hsv_converter/f_r [7]),
    .I3(\hsv_converter/f_g [7]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<3>_1004 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi3  (
    .I0(\hsv_converter/f_g [7]),
    .I1(\hsv_converter/f_g [6]),
    .I2(\hsv_converter/f_r [6]),
    .I3(\hsv_converter/f_r [7]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi3_1005 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<2>  (
    .CI(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<1>_1009 ),
    .DI(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi2_1008 ),
    .S(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<2>_1007 ),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<2>_1006 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<2>  (
    .I0(\hsv_converter/f_r [4]),
    .I1(\hsv_converter/f_g [4]),
    .I2(\hsv_converter/f_r [5]),
    .I3(\hsv_converter/f_g [5]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<2>_1007 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi2  (
    .I0(\hsv_converter/f_g [5]),
    .I1(\hsv_converter/f_g [4]),
    .I2(\hsv_converter/f_r [4]),
    .I3(\hsv_converter/f_r [5]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi2_1008 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<1>  (
    .CI(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<0>_1012 ),
    .DI(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi1_1011 ),
    .S(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<1>_1010 ),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<1>_1009 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<1>  (
    .I0(\hsv_converter/f_r [2]),
    .I1(\hsv_converter/f_g [2]),
    .I2(\hsv_converter/f_r [3]),
    .I3(\hsv_converter/f_g [3]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<1>_1010 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi1  (
    .I0(\hsv_converter/f_g [3]),
    .I1(\hsv_converter/f_g [2]),
    .I2(\hsv_converter/f_r [2]),
    .I3(\hsv_converter/f_r [3]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi1_1011 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<0>  (
    .CI(N0),
    .DI(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi_1014 ),
    .S(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<0>_1013 ),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<0>_1012 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<0>  (
    .I0(\hsv_converter/f_r [0]),
    .I1(\hsv_converter/f_g [0]),
    .I2(\hsv_converter/f_r [1]),
    .I3(\hsv_converter/f_g [1]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lut<0>_1013 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi  (
    .I0(\hsv_converter/f_g [1]),
    .I1(\hsv_converter/f_g [0]),
    .I2(\hsv_converter/f_r [0]),
    .I3(\hsv_converter/f_r [1]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_lutdi_1014 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<4>  (
    .CI(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<3>_1018 ),
    .DI(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi4_1017 ),
    .S(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<4>_1016 ),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<4>_1015 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<4>  (
    .I0(\hsv_converter/q_g [0]),
    .I1(\hsv_converter/q_b [0]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<4>_1016 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi4  (
    .I0(\hsv_converter/q_b [0]),
    .I1(\hsv_converter/q_g [0]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi4_1017 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<3>  (
    .CI(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<2>_1021 ),
    .DI(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi3_1020 ),
    .S(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<3>_1019 ),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<3>_1018 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<3>  (
    .I0(\hsv_converter/f_g [6]),
    .I1(\hsv_converter/f_b [6]),
    .I2(\hsv_converter/f_g [7]),
    .I3(\hsv_converter/f_b [7]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<3>_1019 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi3  (
    .I0(\hsv_converter/f_b [7]),
    .I1(\hsv_converter/f_b [6]),
    .I2(\hsv_converter/f_g [6]),
    .I3(\hsv_converter/f_g [7]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi3_1020 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<2>  (
    .CI(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<1>_1024 ),
    .DI(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi2_1023 ),
    .S(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<2>_1022 ),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<2>_1021 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<2>  (
    .I0(\hsv_converter/f_g [4]),
    .I1(\hsv_converter/f_b [4]),
    .I2(\hsv_converter/f_g [5]),
    .I3(\hsv_converter/f_b [5]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<2>_1022 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi2  (
    .I0(\hsv_converter/f_b [5]),
    .I1(\hsv_converter/f_b [4]),
    .I2(\hsv_converter/f_g [4]),
    .I3(\hsv_converter/f_g [5]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi2_1023 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<1>  (
    .CI(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<0>_1027 ),
    .DI(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi1_1026 ),
    .S(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<1>_1025 ),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<1>_1024 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<1>  (
    .I0(\hsv_converter/f_g [2]),
    .I1(\hsv_converter/f_b [2]),
    .I2(\hsv_converter/f_g [3]),
    .I3(\hsv_converter/f_b [3]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<1>_1025 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi1  (
    .I0(\hsv_converter/f_b [3]),
    .I1(\hsv_converter/f_b [2]),
    .I2(\hsv_converter/f_g [2]),
    .I3(\hsv_converter/f_g [3]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi1_1026 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<0>  (
    .CI(N0),
    .DI(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi_1029 ),
    .S(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<0>_1028 ),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<0>_1027 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<0>  (
    .I0(\hsv_converter/f_g [0]),
    .I1(\hsv_converter/f_b [0]),
    .I2(\hsv_converter/f_g [1]),
    .I3(\hsv_converter/f_b [1]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lut<0>_1028 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi  (
    .I0(\hsv_converter/f_b [1]),
    .I1(\hsv_converter/f_b [0]),
    .I2(\hsv_converter/f_g [0]),
    .I3(\hsv_converter/f_g [1]),
    .O(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_lutdi_1029 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<4>  (
    .CI(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<3>_1033 ),
    .DI(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi4_1032 ),
    .S(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<4>_1031 ),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<4>_1030 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<4>  (
    .I0(\hsv_converter/q_b [0]),
    .I1(\hsv_converter/q_g [0]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<4>_1031 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi4  (
    .I0(\hsv_converter/q_g [0]),
    .I1(\hsv_converter/q_b [0]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi4_1032 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<3>  (
    .CI(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<2>_1036 ),
    .DI(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi3_1035 ),
    .S(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<3>_1034 ),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<3>_1033 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<3>  (
    .I0(\hsv_converter/f_b [6]),
    .I1(\hsv_converter/f_g [6]),
    .I2(\hsv_converter/f_b [7]),
    .I3(\hsv_converter/f_g [7]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<3>_1034 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi3  (
    .I0(\hsv_converter/f_g [7]),
    .I1(\hsv_converter/f_g [6]),
    .I2(\hsv_converter/f_b [6]),
    .I3(\hsv_converter/f_b [7]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi3_1035 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<2>  (
    .CI(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<1>_1039 ),
    .DI(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi2_1038 ),
    .S(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<2>_1037 ),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<2>_1036 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<2>  (
    .I0(\hsv_converter/f_b [4]),
    .I1(\hsv_converter/f_g [4]),
    .I2(\hsv_converter/f_b [5]),
    .I3(\hsv_converter/f_g [5]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<2>_1037 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi2  (
    .I0(\hsv_converter/f_g [5]),
    .I1(\hsv_converter/f_g [4]),
    .I2(\hsv_converter/f_b [4]),
    .I3(\hsv_converter/f_b [5]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi2_1038 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<1>  (
    .CI(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<0>_1042 ),
    .DI(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi1_1041 ),
    .S(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<1>_1040 ),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<1>_1039 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<1>  (
    .I0(\hsv_converter/f_b [2]),
    .I1(\hsv_converter/f_g [2]),
    .I2(\hsv_converter/f_b [3]),
    .I3(\hsv_converter/f_g [3]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<1>_1040 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi1  (
    .I0(\hsv_converter/f_g [3]),
    .I1(\hsv_converter/f_g [2]),
    .I2(\hsv_converter/f_b [2]),
    .I3(\hsv_converter/f_b [3]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi1_1041 )
  );
  MUXCY   \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<0>  (
    .CI(N0),
    .DI(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi_1044 ),
    .S(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<0>_1043 ),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<0>_1042 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<0>  (
    .I0(\hsv_converter/f_b [0]),
    .I1(\hsv_converter/f_g [0]),
    .I2(\hsv_converter/f_b [1]),
    .I3(\hsv_converter/f_g [1]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lut<0>_1043 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi  (
    .I0(\hsv_converter/f_g [1]),
    .I1(\hsv_converter/f_g [0]),
    .I2(\hsv_converter/f_b [0]),
    .I3(\hsv_converter/f_b [1]),
    .O(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_lutdi_1044 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<4>  (
    .CI(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<3>_1048 ),
    .DI(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi4_1047 ),
    .S(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<4>_1046 ),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<4>_1045 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<4>  (
    .I0(\hsv_converter/q_r [0]),
    .I1(\hsv_converter/q_b [0]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<4>_1046 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi4  (
    .I0(\hsv_converter/q_b [0]),
    .I1(\hsv_converter/q_r [0]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi4_1047 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<3>  (
    .CI(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<2>_1051 ),
    .DI(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi3_1050 ),
    .S(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<3>_1049 ),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<3>_1048 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<3>  (
    .I0(\hsv_converter/f_r [6]),
    .I1(\hsv_converter/f_b [6]),
    .I2(\hsv_converter/f_r [7]),
    .I3(\hsv_converter/f_b [7]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<3>_1049 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi3  (
    .I0(\hsv_converter/f_b [7]),
    .I1(\hsv_converter/f_b [6]),
    .I2(\hsv_converter/f_r [6]),
    .I3(\hsv_converter/f_r [7]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi3_1050 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<2>  (
    .CI(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<1>_1054 ),
    .DI(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi2_1053 ),
    .S(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<2>_1052 ),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<2>_1051 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<2>  (
    .I0(\hsv_converter/f_r [4]),
    .I1(\hsv_converter/f_b [4]),
    .I2(\hsv_converter/f_r [5]),
    .I3(\hsv_converter/f_b [5]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<2>_1052 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi2  (
    .I0(\hsv_converter/f_b [5]),
    .I1(\hsv_converter/f_b [4]),
    .I2(\hsv_converter/f_r [4]),
    .I3(\hsv_converter/f_r [5]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi2_1053 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<1>  (
    .CI(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<0>_1057 ),
    .DI(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi1_1056 ),
    .S(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<1>_1055 ),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<1>_1054 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<1>  (
    .I0(\hsv_converter/f_r [2]),
    .I1(\hsv_converter/f_b [2]),
    .I2(\hsv_converter/f_r [3]),
    .I3(\hsv_converter/f_b [3]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<1>_1055 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi1  (
    .I0(\hsv_converter/f_b [3]),
    .I1(\hsv_converter/f_b [2]),
    .I2(\hsv_converter/f_r [2]),
    .I3(\hsv_converter/f_r [3]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi1_1056 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<0>  (
    .CI(N0),
    .DI(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi_1059 ),
    .S(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<0>_1058 ),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<0>_1057 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<0>  (
    .I0(\hsv_converter/f_r [0]),
    .I1(\hsv_converter/f_b [0]),
    .I2(\hsv_converter/f_r [1]),
    .I3(\hsv_converter/f_b [1]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lut<0>_1058 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi  (
    .I0(\hsv_converter/f_b [1]),
    .I1(\hsv_converter/f_b [0]),
    .I2(\hsv_converter/f_r [0]),
    .I3(\hsv_converter/f_r [1]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_lutdi_1059 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<4>  (
    .CI(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<3>_1063 ),
    .DI(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi4_1062 ),
    .S(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<4>_1061 ),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<4>_1060 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<4>  (
    .I0(\hsv_converter/q_r [0]),
    .I1(\hsv_converter/q_g [0]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<4>_1061 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi4  (
    .I0(\hsv_converter/q_g [0]),
    .I1(\hsv_converter/q_r [0]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi4_1062 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<3>  (
    .CI(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<2>_1066 ),
    .DI(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi3_1065 ),
    .S(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<3>_1064 ),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<3>_1063 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<3>  (
    .I0(\hsv_converter/f_r [6]),
    .I1(\hsv_converter/f_g [6]),
    .I2(\hsv_converter/f_r [7]),
    .I3(\hsv_converter/f_g [7]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<3>_1064 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi3  (
    .I0(\hsv_converter/f_g [7]),
    .I1(\hsv_converter/f_g [6]),
    .I2(\hsv_converter/f_r [6]),
    .I3(\hsv_converter/f_r [7]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi3_1065 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<2>  (
    .CI(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<1>_1069 ),
    .DI(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi2_1068 ),
    .S(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<2>_1067 ),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<2>_1066 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<2>  (
    .I0(\hsv_converter/f_r [4]),
    .I1(\hsv_converter/f_g [4]),
    .I2(\hsv_converter/f_r [5]),
    .I3(\hsv_converter/f_g [5]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<2>_1067 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi2  (
    .I0(\hsv_converter/f_g [5]),
    .I1(\hsv_converter/f_g [4]),
    .I2(\hsv_converter/f_r [4]),
    .I3(\hsv_converter/f_r [5]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi2_1068 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<1>  (
    .CI(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<0>_1072 ),
    .DI(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi1_1071 ),
    .S(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<1>_1070 ),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<1>_1069 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<1>  (
    .I0(\hsv_converter/f_r [2]),
    .I1(\hsv_converter/f_g [2]),
    .I2(\hsv_converter/f_r [3]),
    .I3(\hsv_converter/f_g [3]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<1>_1070 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi1  (
    .I0(\hsv_converter/f_g [3]),
    .I1(\hsv_converter/f_g [2]),
    .I2(\hsv_converter/f_r [2]),
    .I3(\hsv_converter/f_r [3]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi1_1071 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<0>  (
    .CI(N0),
    .DI(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi_1074 ),
    .S(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<0>_1073 ),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<0>_1072 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<0>  (
    .I0(\hsv_converter/f_r [0]),
    .I1(\hsv_converter/f_g [0]),
    .I2(\hsv_converter/f_r [1]),
    .I3(\hsv_converter/f_g [1]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lut<0>_1073 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi  (
    .I0(\hsv_converter/f_g [1]),
    .I1(\hsv_converter/f_g [0]),
    .I2(\hsv_converter/f_r [0]),
    .I3(\hsv_converter/f_r [1]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_lutdi_1074 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<4>  (
    .CI(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<3>_1078 ),
    .DI(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi4_1077 ),
    .S(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<4>_1076 ),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<4>_1075 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<4>  (
    .I0(\hsv_converter/q_b [0]),
    .I1(\hsv_converter/q_r [0]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<4>_1076 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi4  (
    .I0(\hsv_converter/q_r [0]),
    .I1(\hsv_converter/q_b [0]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi4_1077 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<3>  (
    .CI(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<2>_1081 ),
    .DI(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi3_1080 ),
    .S(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<3>_1079 ),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<3>_1078 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<3>  (
    .I0(\hsv_converter/f_b [6]),
    .I1(\hsv_converter/f_r [6]),
    .I2(\hsv_converter/f_b [7]),
    .I3(\hsv_converter/f_r [7]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<3>_1079 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi3  (
    .I0(\hsv_converter/f_r [7]),
    .I1(\hsv_converter/f_r [6]),
    .I2(\hsv_converter/f_b [6]),
    .I3(\hsv_converter/f_b [7]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi3_1080 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<2>  (
    .CI(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<1>_1084 ),
    .DI(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi2_1083 ),
    .S(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<2>_1082 ),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<2>_1081 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<2>  (
    .I0(\hsv_converter/f_b [4]),
    .I1(\hsv_converter/f_r [4]),
    .I2(\hsv_converter/f_b [5]),
    .I3(\hsv_converter/f_r [5]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<2>_1082 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi2  (
    .I0(\hsv_converter/f_r [5]),
    .I1(\hsv_converter/f_r [4]),
    .I2(\hsv_converter/f_b [4]),
    .I3(\hsv_converter/f_b [5]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi2_1083 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<1>  (
    .CI(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<0>_1087 ),
    .DI(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi1_1086 ),
    .S(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<1>_1085 ),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<1>_1084 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<1>  (
    .I0(\hsv_converter/f_b [2]),
    .I1(\hsv_converter/f_r [2]),
    .I2(\hsv_converter/f_b [3]),
    .I3(\hsv_converter/f_r [3]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<1>_1085 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi1  (
    .I0(\hsv_converter/f_r [3]),
    .I1(\hsv_converter/f_r [2]),
    .I2(\hsv_converter/f_b [2]),
    .I3(\hsv_converter/f_b [3]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi1_1086 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<0>  (
    .CI(N0),
    .DI(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi_1089 ),
    .S(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<0>_1088 ),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<0>_1087 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<0>  (
    .I0(\hsv_converter/f_b [0]),
    .I1(\hsv_converter/f_r [0]),
    .I2(\hsv_converter/f_b [1]),
    .I3(\hsv_converter/f_r [1]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lut<0>_1088 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi  (
    .I0(\hsv_converter/f_r [1]),
    .I1(\hsv_converter/f_r [0]),
    .I2(\hsv_converter/f_b [0]),
    .I3(\hsv_converter/f_b [1]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_lutdi_1089 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<4>  (
    .CI(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<3>_1093 ),
    .DI(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi4_1092 ),
    .S(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<4>_1091 ),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<4>_1090 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<4>  (
    .I0(\hsv_converter/q_g [0]),
    .I1(\hsv_converter/q_r [0]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<4>_1091 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi4  (
    .I0(\hsv_converter/q_r [0]),
    .I1(\hsv_converter/q_g [0]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi4_1092 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<3>  (
    .CI(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<2>_1096 ),
    .DI(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi3_1095 ),
    .S(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<3>_1094 ),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<3>_1093 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<3>  (
    .I0(\hsv_converter/f_g [6]),
    .I1(\hsv_converter/f_r [6]),
    .I2(\hsv_converter/f_g [7]),
    .I3(\hsv_converter/f_r [7]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<3>_1094 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi3  (
    .I0(\hsv_converter/f_r [7]),
    .I1(\hsv_converter/f_r [6]),
    .I2(\hsv_converter/f_g [6]),
    .I3(\hsv_converter/f_g [7]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi3_1095 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<2>  (
    .CI(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<1>_1099 ),
    .DI(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi2_1098 ),
    .S(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<2>_1097 ),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<2>_1096 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<2>  (
    .I0(\hsv_converter/f_g [4]),
    .I1(\hsv_converter/f_r [4]),
    .I2(\hsv_converter/f_g [5]),
    .I3(\hsv_converter/f_r [5]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<2>_1097 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi2  (
    .I0(\hsv_converter/f_r [5]),
    .I1(\hsv_converter/f_r [4]),
    .I2(\hsv_converter/f_g [4]),
    .I3(\hsv_converter/f_g [5]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi2_1098 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<1>  (
    .CI(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<0>_1102 ),
    .DI(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi1_1101 ),
    .S(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<1>_1100 ),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<1>_1099 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<1>  (
    .I0(\hsv_converter/f_g [2]),
    .I1(\hsv_converter/f_r [2]),
    .I2(\hsv_converter/f_g [3]),
    .I3(\hsv_converter/f_r [3]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<1>_1100 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi1  (
    .I0(\hsv_converter/f_r [3]),
    .I1(\hsv_converter/f_r [2]),
    .I2(\hsv_converter/f_g [2]),
    .I3(\hsv_converter/f_g [3]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi1_1101 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<0>  (
    .CI(N0),
    .DI(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi_1104 ),
    .S(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<0>_1103 ),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<0>_1102 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<0>  (
    .I0(\hsv_converter/f_g [0]),
    .I1(\hsv_converter/f_r [0]),
    .I2(\hsv_converter/f_g [1]),
    .I3(\hsv_converter/f_r [1]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lut<0>_1103 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi  (
    .I0(\hsv_converter/f_r [1]),
    .I1(\hsv_converter/f_r [0]),
    .I2(\hsv_converter/f_g [0]),
    .I3(\hsv_converter/f_g [1]),
    .O(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_lutdi_1104 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<4>  (
    .CI(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<3>_1108 ),
    .DI(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi4_1107 ),
    .S(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<4>_1106 ),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<4>_1105 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<4>  (
    .I0(\hsv_converter/q_b [0]),
    .I1(\hsv_converter/q_g [0]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<4>_1106 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi4  (
    .I0(\hsv_converter/q_g [0]),
    .I1(\hsv_converter/q_b [0]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi4_1107 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<3>  (
    .CI(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<2>_1111 ),
    .DI(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi3_1110 ),
    .S(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<3>_1109 ),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<3>_1108 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<3>  (
    .I0(\hsv_converter/f_b [6]),
    .I1(\hsv_converter/f_g [6]),
    .I2(\hsv_converter/f_b [7]),
    .I3(\hsv_converter/f_g [7]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<3>_1109 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi3  (
    .I0(\hsv_converter/f_g [7]),
    .I1(\hsv_converter/f_g [6]),
    .I2(\hsv_converter/f_b [6]),
    .I3(\hsv_converter/f_b [7]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi3_1110 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<2>  (
    .CI(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<1>_1114 ),
    .DI(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi2_1113 ),
    .S(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<2>_1112 ),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<2>_1111 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<2>  (
    .I0(\hsv_converter/f_b [4]),
    .I1(\hsv_converter/f_g [4]),
    .I2(\hsv_converter/f_b [5]),
    .I3(\hsv_converter/f_g [5]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<2>_1112 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi2  (
    .I0(\hsv_converter/f_g [5]),
    .I1(\hsv_converter/f_g [4]),
    .I2(\hsv_converter/f_b [4]),
    .I3(\hsv_converter/f_b [5]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi2_1113 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<1>  (
    .CI(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<0>_1117 ),
    .DI(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi1_1116 ),
    .S(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<1>_1115 ),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<1>_1114 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<1>  (
    .I0(\hsv_converter/f_b [2]),
    .I1(\hsv_converter/f_g [2]),
    .I2(\hsv_converter/f_b [3]),
    .I3(\hsv_converter/f_g [3]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<1>_1115 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi1  (
    .I0(\hsv_converter/f_g [3]),
    .I1(\hsv_converter/f_g [2]),
    .I2(\hsv_converter/f_b [2]),
    .I3(\hsv_converter/f_b [3]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi1_1116 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<0>  (
    .CI(N0),
    .DI(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi_1119 ),
    .S(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<0>_1118 ),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<0>_1117 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<0>  (
    .I0(\hsv_converter/f_b [0]),
    .I1(\hsv_converter/f_g [0]),
    .I2(\hsv_converter/f_b [1]),
    .I3(\hsv_converter/f_g [1]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lut<0>_1118 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi  (
    .I0(\hsv_converter/f_g [1]),
    .I1(\hsv_converter/f_g [0]),
    .I2(\hsv_converter/f_b [0]),
    .I3(\hsv_converter/f_b [1]),
    .O(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_lutdi_1119 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<4>  (
    .CI(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<3>_1123 ),
    .DI(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi4_1122 ),
    .S(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<4>_1121 ),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<4>_1120 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<4>  (
    .I0(\hsv_converter/q_g [0]),
    .I1(\hsv_converter/q_b [0]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<4>_1121 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi4  (
    .I0(\hsv_converter/q_b [0]),
    .I1(\hsv_converter/q_g [0]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi4_1122 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<3>  (
    .CI(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<2>_1126 ),
    .DI(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi3_1125 ),
    .S(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<3>_1124 ),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<3>_1123 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<3>  (
    .I0(\hsv_converter/f_g [6]),
    .I1(\hsv_converter/f_b [6]),
    .I2(\hsv_converter/f_g [7]),
    .I3(\hsv_converter/f_b [7]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<3>_1124 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi3  (
    .I0(\hsv_converter/f_b [7]),
    .I1(\hsv_converter/f_b [6]),
    .I2(\hsv_converter/f_g [6]),
    .I3(\hsv_converter/f_g [7]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi3_1125 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<2>  (
    .CI(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<1>_1129 ),
    .DI(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi2_1128 ),
    .S(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<2>_1127 ),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<2>_1126 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<2>  (
    .I0(\hsv_converter/f_g [4]),
    .I1(\hsv_converter/f_b [4]),
    .I2(\hsv_converter/f_g [5]),
    .I3(\hsv_converter/f_b [5]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<2>_1127 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi2  (
    .I0(\hsv_converter/f_b [5]),
    .I1(\hsv_converter/f_b [4]),
    .I2(\hsv_converter/f_g [4]),
    .I3(\hsv_converter/f_g [5]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi2_1128 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<1>  (
    .CI(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<0>_1132 ),
    .DI(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi1_1131 ),
    .S(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<1>_1130 ),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<1>_1129 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<1>  (
    .I0(\hsv_converter/f_g [2]),
    .I1(\hsv_converter/f_b [2]),
    .I2(\hsv_converter/f_g [3]),
    .I3(\hsv_converter/f_b [3]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<1>_1130 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi1  (
    .I0(\hsv_converter/f_b [3]),
    .I1(\hsv_converter/f_b [2]),
    .I2(\hsv_converter/f_g [2]),
    .I3(\hsv_converter/f_g [3]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi1_1131 )
  );
  MUXCY   \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<0>  (
    .CI(N0),
    .DI(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi_1134 ),
    .S(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<0>_1133 ),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<0>_1132 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<0>  (
    .I0(\hsv_converter/f_g [0]),
    .I1(\hsv_converter/f_b [0]),
    .I2(\hsv_converter/f_g [1]),
    .I3(\hsv_converter/f_b [1]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lut<0>_1133 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi  (
    .I0(\hsv_converter/f_b [1]),
    .I1(\hsv_converter/f_b [0]),
    .I2(\hsv_converter/f_g [0]),
    .I3(\hsv_converter/f_g [1]),
    .O(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_lutdi_1134 )
  );
  FDE   \hsv_converter/min_calculator/r_value_0  (
    .C(rx_pclk),
    .CE(\hsv_converter/min_calculator/_n0036_inv ),
    .D(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<0> ),
    .Q(\hsv_converter/min_calculator/r_value [0])
  );
  FDE   \hsv_converter/min_calculator/r_value_1  (
    .C(rx_pclk),
    .CE(\hsv_converter/min_calculator/_n0036_inv ),
    .D(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<1> ),
    .Q(\hsv_converter/min_calculator/r_value [1])
  );
  FDE   \hsv_converter/min_calculator/r_value_2  (
    .C(rx_pclk),
    .CE(\hsv_converter/min_calculator/_n0036_inv ),
    .D(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<2> ),
    .Q(\hsv_converter/min_calculator/r_value [2])
  );
  FDE   \hsv_converter/min_calculator/r_value_3  (
    .C(rx_pclk),
    .CE(\hsv_converter/min_calculator/_n0036_inv ),
    .D(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<3> ),
    .Q(\hsv_converter/min_calculator/r_value [3])
  );
  FDE   \hsv_converter/min_calculator/r_value_4  (
    .C(rx_pclk),
    .CE(\hsv_converter/min_calculator/_n0036_inv ),
    .D(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<4> ),
    .Q(\hsv_converter/min_calculator/r_value [4])
  );
  FDE   \hsv_converter/min_calculator/r_value_5  (
    .C(rx_pclk),
    .CE(\hsv_converter/min_calculator/_n0036_inv ),
    .D(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<5> ),
    .Q(\hsv_converter/min_calculator/r_value [5])
  );
  FDE   \hsv_converter/min_calculator/r_value_6  (
    .C(rx_pclk),
    .CE(\hsv_converter/min_calculator/_n0036_inv ),
    .D(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<6> ),
    .Q(\hsv_converter/min_calculator/r_value [6])
  );
  FDE   \hsv_converter/min_calculator/r_value_7  (
    .C(rx_pclk),
    .CE(\hsv_converter/min_calculator/_n0036_inv ),
    .D(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<7> ),
    .Q(\hsv_converter/min_calculator/r_value [7])
  );
  FDE   \hsv_converter/min_calculator/r_value_8  (
    .C(rx_pclk),
    .CE(\hsv_converter/min_calculator/_n0036_inv ),
    .D(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<8> ),
    .Q(\hsv_converter/min_calculator/r_value [8])
  );
  FDE   \hsv_converter/max_calculator/r_value_0  (
    .C(rx_pclk),
    .CE(\hsv_converter/max_calculator/_n0036_inv ),
    .D(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<0> ),
    .Q(\hsv_converter/max_calculator/r_value [0])
  );
  FDE   \hsv_converter/max_calculator/r_value_1  (
    .C(rx_pclk),
    .CE(\hsv_converter/max_calculator/_n0036_inv ),
    .D(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<1> ),
    .Q(\hsv_converter/max_calculator/r_value [1])
  );
  FDE   \hsv_converter/max_calculator/r_value_2  (
    .C(rx_pclk),
    .CE(\hsv_converter/max_calculator/_n0036_inv ),
    .D(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<2> ),
    .Q(\hsv_converter/max_calculator/r_value [2])
  );
  FDE   \hsv_converter/max_calculator/r_value_3  (
    .C(rx_pclk),
    .CE(\hsv_converter/max_calculator/_n0036_inv ),
    .D(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<3> ),
    .Q(\hsv_converter/max_calculator/r_value [3])
  );
  FDE   \hsv_converter/max_calculator/r_value_4  (
    .C(rx_pclk),
    .CE(\hsv_converter/max_calculator/_n0036_inv ),
    .D(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<4> ),
    .Q(\hsv_converter/max_calculator/r_value [4])
  );
  FDE   \hsv_converter/max_calculator/r_value_5  (
    .C(rx_pclk),
    .CE(\hsv_converter/max_calculator/_n0036_inv ),
    .D(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<5> ),
    .Q(\hsv_converter/max_calculator/r_value [5])
  );
  FDE   \hsv_converter/max_calculator/r_value_6  (
    .C(rx_pclk),
    .CE(\hsv_converter/max_calculator/_n0036_inv ),
    .D(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<6> ),
    .Q(\hsv_converter/max_calculator/r_value [6])
  );
  FDE   \hsv_converter/max_calculator/r_value_7  (
    .C(rx_pclk),
    .CE(\hsv_converter/max_calculator/_n0036_inv ),
    .D(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<7> ),
    .Q(\hsv_converter/max_calculator/r_value [7])
  );
  FDE   \hsv_converter/max_calculator/r_value_8  (
    .C(rx_pclk),
    .CE(\hsv_converter/max_calculator/_n0036_inv ),
    .D(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<8> ),
    .Q(\hsv_converter/max_calculator/r_value [8])
  );
  XORCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_xor<9>  (
    .CI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<8>_1284 ),
    .LI(N0),
    .O(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<9> )
  );
  MUXCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<8>  (
    .CI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<7>_1285 ),
    .DI(\b_mux<3> [1]),
    .S(N0),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<8>_1284 )
  );
  XORCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_xor<7>  (
    .CI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<6>_1287 ),
    .LI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<7>_1286 ),
    .O(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<7> )
  );
  MUXCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<7>  (
    .CI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<6>_1287 ),
    .DI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<7> ),
    .S(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<7>_1286 ),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<7>_1285 )
  );
  XORCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_xor<6>  (
    .CI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<5>_1289 ),
    .LI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<6>_1288 ),
    .O(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<6> )
  );
  MUXCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<6>  (
    .CI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<5>_1289 ),
    .DI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<6> ),
    .S(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<6>_1288 ),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<6>_1287 )
  );
  XORCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_xor<5>  (
    .CI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<4>_1291 ),
    .LI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<5>_1290 ),
    .O(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<5> )
  );
  MUXCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<5>  (
    .CI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<4>_1291 ),
    .DI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<5> ),
    .S(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<5>_1290 ),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<5>_1289 )
  );
  XORCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_xor<4>  (
    .CI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<3>_1293 ),
    .LI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<4>_1292 ),
    .O(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<4> )
  );
  MUXCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<4>  (
    .CI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<3>_1293 ),
    .DI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<4> ),
    .S(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<4>_1292 ),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<4>_1291 )
  );
  XORCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_xor<3>  (
    .CI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<2>_1295 ),
    .LI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<3>_1294 ),
    .O(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<3> )
  );
  MUXCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<3>  (
    .CI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<2>_1295 ),
    .DI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<3> ),
    .S(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<3>_1294 ),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<3>_1293 )
  );
  XORCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_xor<2>  (
    .CI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<1>_1297 ),
    .LI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<2>_1296 ),
    .O(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<2> )
  );
  MUXCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<2>  (
    .CI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<1>_1297 ),
    .DI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<2> ),
    .S(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<2>_1296 ),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<2>_1295 )
  );
  XORCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_xor<1>  (
    .CI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<0>_1299 ),
    .LI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<1>_1298 ),
    .O(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<1> )
  );
  MUXCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<1>  (
    .CI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<0>_1299 ),
    .DI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<1> ),
    .S(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<1>_1298 ),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<1>_1297 )
  );
  XORCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_xor<0>  (
    .CI(N0),
    .LI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<0>_1300 ),
    .O(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<0> )
  );
  MUXCY   \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<0>  (
    .CI(N0),
    .DI(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<0> ),
    .S(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<0>_1300 ),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_cy<0>_1299 )
  );
  FDRE   \hsv_converter/subtr_RGB/r_value_9  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<9> ),
    .R(\hsv_converter/subtr_RGB/min_index[1]_max_index[1]_equal_2_o ),
    .Q(\hsv_converter/subtr_RGB/r_value[9] )
  );
  FDRE   \hsv_converter/subtr_RGB/r_value_7  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<7> ),
    .R(\hsv_converter/subtr_RGB/min_index[1]_max_index[1]_equal_2_o ),
    .Q(\hsv_converter/subtr_RGB/r_value[7] )
  );
  FDRE   \hsv_converter/subtr_RGB/r_value_6  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<6> ),
    .R(\hsv_converter/subtr_RGB/min_index[1]_max_index[1]_equal_2_o ),
    .Q(\hsv_converter/subtr_RGB/r_value[6] )
  );
  FDRE   \hsv_converter/subtr_RGB/r_value_5  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<5> ),
    .R(\hsv_converter/subtr_RGB/min_index[1]_max_index[1]_equal_2_o ),
    .Q(\hsv_converter/subtr_RGB/r_value[5] )
  );
  FDRE   \hsv_converter/subtr_RGB/r_value_4  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<4> ),
    .R(\hsv_converter/subtr_RGB/min_index[1]_max_index[1]_equal_2_o ),
    .Q(\hsv_converter/subtr_RGB/r_value[4] )
  );
  FDRE   \hsv_converter/subtr_RGB/r_value_3  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<3> ),
    .R(\hsv_converter/subtr_RGB/min_index[1]_max_index[1]_equal_2_o ),
    .Q(\hsv_converter/subtr_RGB/r_value[3] )
  );
  FDRE   \hsv_converter/subtr_RGB/r_value_2  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<2> ),
    .R(\hsv_converter/subtr_RGB/min_index[1]_max_index[1]_equal_2_o ),
    .Q(\hsv_converter/subtr_RGB/r_value[2] )
  );
  FDRE   \hsv_converter/subtr_RGB/r_value_1  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<1> ),
    .R(\hsv_converter/subtr_RGB/min_index[1]_max_index[1]_equal_2_o ),
    .Q(\hsv_converter/subtr_RGB/r_value[1] )
  );
  FDRE   \hsv_converter/subtr_RGB/r_value_0  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/subtr_RGB/r_value[9]_green[9]_mux_10_OUT<0> ),
    .R(\hsv_converter/subtr_RGB/min_index[1]_max_index[1]_equal_2_o ),
    .Q(\hsv_converter/subtr_RGB/r_value[0] )
  );
  XORCY   \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_xor<9>  (
    .CI(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<8>_1320 ),
    .LI(\hsv_converter/temp_1 [15]),
    .O(\hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<9> )
  );
  XORCY   \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_xor<8>  (
    .CI(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<7>_1321 ),
    .LI(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<8>_rt_1912 ),
    .O(\hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<8> )
  );
  MUXCY   \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<8>  (
    .CI(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<7>_1321 ),
    .DI(\b_mux<3> [1]),
    .S(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<8>_rt_1912 ),
    .O(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<8>_1320 )
  );
  XORCY   \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_xor<7>  (
    .CI(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<6>_1323 ),
    .LI(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<7>_1322 ),
    .O(\hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<7> )
  );
  MUXCY   \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<7>  (
    .CI(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<6>_1323 ),
    .DI(\hsv_converter/temp_1 [13]),
    .S(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<7>_1322 ),
    .O(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<7>_1321 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<7>  (
    .I0(\hsv_converter/temp_1 [13]),
    .I1(\hsv_converter/max_calculator/r_index [1]),
    .O(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<7>_1322 )
  );
  XORCY   \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_xor<6>  (
    .CI(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<5>_1325 ),
    .LI(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<6>_1324 ),
    .O(\hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<6> )
  );
  MUXCY   \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<6>  (
    .CI(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<5>_1325 ),
    .DI(\hsv_converter/temp_1 [12]),
    .S(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<6>_1324 ),
    .O(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<6>_1323 )
  );
  XORCY   \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_xor<5>  (
    .CI(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<4>_1327 ),
    .LI(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<5>_1326 ),
    .O(\hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<5> )
  );
  MUXCY   \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<5>  (
    .CI(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<4>_1327 ),
    .DI(\hsv_converter/temp_1 [11]),
    .S(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<5>_1326 ),
    .O(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<5>_1325 )
  );
  XORCY   \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_xor<4>  (
    .CI(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<3>_1329 ),
    .LI(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<4>_1328 ),
    .O(\hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<4> )
  );
  MUXCY   \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<4>  (
    .CI(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<3>_1329 ),
    .DI(\hsv_converter/temp_1 [10]),
    .S(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<4>_1328 ),
    .O(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<4>_1327 )
  );
  XORCY   \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_xor<3>  (
    .CI(\b_mux<3> [1]),
    .LI(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<3>_1330 ),
    .O(\hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<3> )
  );
  MUXCY   \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<3>  (
    .CI(\b_mux<3> [1]),
    .DI(\hsv_converter/temp_1 [9]),
    .S(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<3>_1330 ),
    .O(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<3>_1329 )
  );
  FDE   \hsv_converter/add_to_h/r_value_9  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<9> ),
    .Q(\hsv_converter/add_to_h/r_value [9])
  );
  FDE   \hsv_converter/add_to_h/r_value_8  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<8> ),
    .Q(\hsv_converter/add_to_h/r_value [8])
  );
  FDE   \hsv_converter/add_to_h/r_value_7  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<7> ),
    .Q(\hsv_converter/add_to_h/r_value [7])
  );
  FDE   \hsv_converter/add_to_h/r_value_6  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<6> ),
    .Q(\hsv_converter/add_to_h/r_value [6])
  );
  FDE   \hsv_converter/add_to_h/r_value_5  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<5> ),
    .Q(\hsv_converter/add_to_h/r_value [5])
  );
  FDE   \hsv_converter/add_to_h/r_value_4  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<4> ),
    .Q(\hsv_converter/add_to_h/r_value [4])
  );
  FDE   \hsv_converter/add_to_h/r_value_3  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/add_to_h/r_value[9]_h[9]_mux_8_OUT<3> ),
    .Q(\hsv_converter/add_to_h/r_value [3])
  );
  FDE   \hsv_converter/add_to_h/r_value_2  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/temp_1 [8]),
    .Q(\hsv_converter/add_to_h/r_value [2])
  );
  FDE   \hsv_converter/add_to_h/r_value_1  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/temp_1 [7]),
    .Q(\hsv_converter/add_to_h/r_value [1])
  );
  FDE   \hsv_converter/add_to_h/r_value_0  (
    .C(rx_pclk),
    .CE(\hsv_converter/subtr_RGB/_n0046_inv ),
    .D(\hsv_converter/temp_1 [6]),
    .Q(\hsv_converter/add_to_h/r_value [0])
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/clkout/oserdes_m  (
    .SHIFTOUT1(\dvi_tx/clkout/cascade_di ),
    .D2(\b_mux<3> [1]),
    .D3(\b_mux<3> [1]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/clkout/oserdes_m_TQ_UNCONNECTED ),
    .SHIFTIN1(N0),
    .T4(\b_mux<3> [1]),
    .OCE(N0),
    .SHIFTIN4(\dvi_tx/clkout/cascade_to ),
    .SHIFTIN3(\dvi_tx/clkout/cascade_do ),
    .SHIFTOUT3(\NLW_dvi_tx/clkout/oserdes_m_SHIFTOUT3_UNCONNECTED ),
    .OQ(\dvi_tx/tmdsclk ),
    .CLK0(tx_pclkx10),
    .T1(\b_mux<3> [1]),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(N0),
    .D1(\dvi_tx/tmdsclkint [0]),
    .D4(\b_mux<3> [1]),
    .TCE(N0),
    .T3(\b_mux<3> [1]),
    .SHIFTOUT2(\dvi_tx/clkout/cascade_ti ),
    .TRAIN(\b_mux<3> [1]),
    .CLK1(\b_mux<3> [1]),
    .RST(\b_mux<3> [1]),
    .SHIFTOUT4(\NLW_dvi_tx/clkout/oserdes_m_SHIFTOUT4_UNCONNECTED ),
    .T2(\b_mux<3> [1])
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/clkout/oserdes_s  (
    .SHIFTOUT1(\NLW_dvi_tx/clkout/oserdes_s_SHIFTOUT1_UNCONNECTED ),
    .D2(\dvi_tx/tmdsclkint [0]),
    .D3(\dvi_tx/tmdsclkint [0]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/clkout/oserdes_s_TQ_UNCONNECTED ),
    .SHIFTIN1(\dvi_tx/clkout/cascade_di ),
    .T4(\b_mux<3> [1]),
    .OCE(N0),
    .SHIFTIN4(N0),
    .SHIFTIN3(N0),
    .SHIFTOUT3(\dvi_tx/clkout/cascade_do ),
    .OQ(\NLW_dvi_tx/clkout/oserdes_s_OQ_UNCONNECTED ),
    .CLK0(tx_pclkx10),
    .T1(\b_mux<3> [1]),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(\dvi_tx/clkout/cascade_ti ),
    .D1(\dvi_tx/tmdsclkint [0]),
    .D4(\dvi_tx/tmdsclkint [0]),
    .TCE(N0),
    .T3(\b_mux<3> [1]),
    .SHIFTOUT2(\NLW_dvi_tx/clkout/oserdes_s_SHIFTOUT2_UNCONNECTED ),
    .TRAIN(\b_mux<3> [1]),
    .CLK1(\b_mux<3> [1]),
    .RST(\b_mux<3> [1]),
    .SHIFTOUT4(\dvi_tx/clkout/cascade_to ),
    .T2(\b_mux<3> [1])
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes0/oserdes_m  (
    .SHIFTOUT1(\dvi_tx/oserdes0/cascade_di ),
    .D2(\b_mux<3> [1]),
    .D3(\b_mux<3> [1]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes0/oserdes_m_TQ_UNCONNECTED ),
    .SHIFTIN1(N0),
    .T4(\b_mux<3> [1]),
    .OCE(N0),
    .SHIFTIN4(\dvi_tx/oserdes0/cascade_to ),
    .SHIFTIN3(\dvi_tx/oserdes0/cascade_do ),
    .SHIFTOUT3(\NLW_dvi_tx/oserdes0/oserdes_m_SHIFTOUT3_UNCONNECTED ),
    .OQ(\dvi_tx/tmdsint [0]),
    .CLK0(tx_pclkx10),
    .T1(\b_mux<3> [1]),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(N0),
    .D1(\dvi_tx/n0011 [4]),
    .D4(\b_mux<3> [1]),
    .TCE(N0),
    .T3(\b_mux<3> [1]),
    .SHIFTOUT2(\dvi_tx/oserdes0/cascade_ti ),
    .TRAIN(\b_mux<3> [1]),
    .CLK1(\b_mux<3> [1]),
    .RST(\b_mux<3> [1]),
    .SHIFTOUT4(\NLW_dvi_tx/oserdes0/oserdes_m_SHIFTOUT4_UNCONNECTED ),
    .T2(\b_mux<3> [1])
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes0/oserdes_s  (
    .SHIFTOUT1(\NLW_dvi_tx/oserdes0/oserdes_s_SHIFTOUT1_UNCONNECTED ),
    .D2(\dvi_tx/n0011 [1]),
    .D3(\dvi_tx/n0011 [2]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes0/oserdes_s_TQ_UNCONNECTED ),
    .SHIFTIN1(\dvi_tx/oserdes0/cascade_di ),
    .T4(\b_mux<3> [1]),
    .OCE(N0),
    .SHIFTIN4(N0),
    .SHIFTIN3(N0),
    .SHIFTOUT3(\dvi_tx/oserdes0/cascade_do ),
    .OQ(\NLW_dvi_tx/oserdes0/oserdes_s_OQ_UNCONNECTED ),
    .CLK0(tx_pclkx10),
    .T1(\b_mux<3> [1]),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(\dvi_tx/oserdes0/cascade_ti ),
    .D1(\dvi_tx/n0011 [0]),
    .D4(\dvi_tx/n0011 [3]),
    .TCE(N0),
    .T3(\b_mux<3> [1]),
    .SHIFTOUT2(\NLW_dvi_tx/oserdes0/oserdes_s_SHIFTOUT2_UNCONNECTED ),
    .TRAIN(\b_mux<3> [1]),
    .CLK1(\b_mux<3> [1]),
    .RST(\b_mux<3> [1]),
    .SHIFTOUT4(\dvi_tx/oserdes0/cascade_to ),
    .T2(\b_mux<3> [1])
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes1/oserdes_m  (
    .SHIFTOUT1(\dvi_tx/oserdes1/cascade_di ),
    .D2(\b_mux<3> [1]),
    .D3(\b_mux<3> [1]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes1/oserdes_m_TQ_UNCONNECTED ),
    .SHIFTIN1(N0),
    .T4(\b_mux<3> [1]),
    .OCE(N0),
    .SHIFTIN4(\dvi_tx/oserdes1/cascade_to ),
    .SHIFTIN3(\dvi_tx/oserdes1/cascade_do ),
    .SHIFTOUT3(\NLW_dvi_tx/oserdes1/oserdes_m_SHIFTOUT3_UNCONNECTED ),
    .OQ(\dvi_tx/tmdsint [1]),
    .CLK0(tx_pclkx10),
    .T1(\b_mux<3> [1]),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(N0),
    .D1(\dvi_tx/n0011 [9]),
    .D4(\b_mux<3> [1]),
    .TCE(N0),
    .T3(\b_mux<3> [1]),
    .SHIFTOUT2(\dvi_tx/oserdes1/cascade_ti ),
    .TRAIN(\b_mux<3> [1]),
    .CLK1(\b_mux<3> [1]),
    .RST(\b_mux<3> [1]),
    .SHIFTOUT4(\NLW_dvi_tx/oserdes1/oserdes_m_SHIFTOUT4_UNCONNECTED ),
    .T2(\b_mux<3> [1])
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes1/oserdes_s  (
    .SHIFTOUT1(\NLW_dvi_tx/oserdes1/oserdes_s_SHIFTOUT1_UNCONNECTED ),
    .D2(\dvi_tx/n0011 [6]),
    .D3(\dvi_tx/n0011 [7]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes1/oserdes_s_TQ_UNCONNECTED ),
    .SHIFTIN1(\dvi_tx/oserdes1/cascade_di ),
    .T4(\b_mux<3> [1]),
    .OCE(N0),
    .SHIFTIN4(N0),
    .SHIFTIN3(N0),
    .SHIFTOUT3(\dvi_tx/oserdes1/cascade_do ),
    .OQ(\NLW_dvi_tx/oserdes1/oserdes_s_OQ_UNCONNECTED ),
    .CLK0(tx_pclkx10),
    .T1(\b_mux<3> [1]),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(\dvi_tx/oserdes1/cascade_ti ),
    .D1(\dvi_tx/n0011 [5]),
    .D4(\dvi_tx/n0011 [8]),
    .TCE(N0),
    .T3(\b_mux<3> [1]),
    .SHIFTOUT2(\NLW_dvi_tx/oserdes1/oserdes_s_SHIFTOUT2_UNCONNECTED ),
    .TRAIN(\b_mux<3> [1]),
    .CLK1(\b_mux<3> [1]),
    .RST(\b_mux<3> [1]),
    .SHIFTOUT4(\dvi_tx/oserdes1/cascade_to ),
    .T2(\b_mux<3> [1])
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes2/oserdes_m  (
    .SHIFTOUT1(\dvi_tx/oserdes2/cascade_di ),
    .D2(\b_mux<3> [1]),
    .D3(\b_mux<3> [1]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes2/oserdes_m_TQ_UNCONNECTED ),
    .SHIFTIN1(N0),
    .T4(\b_mux<3> [1]),
    .OCE(N0),
    .SHIFTIN4(\dvi_tx/oserdes2/cascade_to ),
    .SHIFTIN3(\dvi_tx/oserdes2/cascade_do ),
    .SHIFTOUT3(\NLW_dvi_tx/oserdes2/oserdes_m_SHIFTOUT3_UNCONNECTED ),
    .OQ(\dvi_tx/tmdsint [2]),
    .CLK0(tx_pclkx10),
    .T1(\b_mux<3> [1]),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(N0),
    .D1(\dvi_tx/n0011 [14]),
    .D4(\b_mux<3> [1]),
    .TCE(N0),
    .T3(\b_mux<3> [1]),
    .SHIFTOUT2(\dvi_tx/oserdes2/cascade_ti ),
    .TRAIN(\b_mux<3> [1]),
    .CLK1(\b_mux<3> [1]),
    .RST(\b_mux<3> [1]),
    .SHIFTOUT4(\NLW_dvi_tx/oserdes2/oserdes_m_SHIFTOUT4_UNCONNECTED ),
    .T2(\b_mux<3> [1])
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes2/oserdes_s  (
    .SHIFTOUT1(\NLW_dvi_tx/oserdes2/oserdes_s_SHIFTOUT1_UNCONNECTED ),
    .D2(\dvi_tx/n0011 [11]),
    .D3(\dvi_tx/n0011 [12]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes2/oserdes_s_TQ_UNCONNECTED ),
    .SHIFTIN1(\dvi_tx/oserdes2/cascade_di ),
    .T4(\b_mux<3> [1]),
    .OCE(N0),
    .SHIFTIN4(N0),
    .SHIFTIN3(N0),
    .SHIFTOUT3(\dvi_tx/oserdes2/cascade_do ),
    .OQ(\NLW_dvi_tx/oserdes2/oserdes_s_OQ_UNCONNECTED ),
    .CLK0(tx_pclkx10),
    .T1(\b_mux<3> [1]),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(\dvi_tx/oserdes2/cascade_ti ),
    .D1(\dvi_tx/n0011 [10]),
    .D4(\dvi_tx/n0011 [13]),
    .TCE(N0),
    .T3(\b_mux<3> [1]),
    .SHIFTOUT2(\NLW_dvi_tx/oserdes2/oserdes_s_SHIFTOUT2_UNCONNECTED ),
    .TRAIN(\b_mux<3> [1]),
    .CLK1(\b_mux<3> [1]),
    .RST(\b_mux<3> [1]),
    .SHIFTOUT4(\dvi_tx/oserdes2/cascade_to ),
    .T2(\b_mux<3> [1])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \dvi_tx/TMDS2  (
    .I(\dvi_tx/tmdsint [2]),
    .O(TX0_TMDS[2]),
    .OB(TX0_TMDSB[2])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \dvi_tx/TMDS1  (
    .I(\dvi_tx/tmdsint [1]),
    .O(TX0_TMDS[1]),
    .OB(TX0_TMDSB[1])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \dvi_tx/TMDS0  (
    .I(\dvi_tx/tmdsint [0]),
    .O(TX0_TMDS[0]),
    .OB(TX0_TMDSB[0])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \dvi_tx/TMDS3  (
    .I(\dvi_tx/tmdsclk ),
    .O(TX0_TMDS[3]),
    .OB(TX0_TMDSB[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/toggle  (
    .C(tx_pclkx2),
    .D(\dvi_tx/toggle_inv ),
    .Q(\dvi_tx/toggle_1356 )
  );
  FD   \dvi_tx/encr/n0q_m_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/PWR_47_o_BUS_0017_sub_29_OUT [3]),
    .Q(\dvi_tx/encr/n0q_m [3])
  );
  FD   \dvi_tx/encr/n0q_m_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/PWR_47_o_BUS_0017_sub_29_OUT [2]),
    .Q(\dvi_tx/encr/n0q_m [2])
  );
  FD   \dvi_tx/encr/n0q_m_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/PWR_47_o_BUS_0017_sub_29_OUT [1]),
    .Q(\dvi_tx/encr/n0q_m [1])
  );
  FD   \dvi_tx/encr/n1q_m_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .Q(\dvi_tx/encr/n1q_m [3])
  );
  FD   \dvi_tx/encr/n1q_m_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_29 ),
    .Q(\dvi_tx/encr/n1q_m [2])
  );
  FD   \dvi_tx/encr/n1q_m_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_19 ),
    .Q(\dvi_tx/encr/n1q_m [1])
  );
  FD   \dvi_tx/encr/q_m_reg_8  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/q_m [8]),
    .Q(\dvi_tx/encr/q_m_reg [8])
  );
  FD   \dvi_tx/encr/q_m_reg_7  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/q_m [7]),
    .Q(\dvi_tx/encr/q_m_reg [7])
  );
  FD   \dvi_tx/encr/q_m_reg_6  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/q_m [6]),
    .Q(\dvi_tx/encr/q_m_reg [6])
  );
  FD   \dvi_tx/encr/q_m_reg_5  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/q_m [5]),
    .Q(\dvi_tx/encr/q_m_reg [5])
  );
  FD   \dvi_tx/encr/q_m_reg_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/q_m [4]),
    .Q(\dvi_tx/encr/q_m_reg [4])
  );
  FD   \dvi_tx/encr/q_m_reg_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/q_m [3]),
    .Q(\dvi_tx/encr/q_m_reg [3])
  );
  FD   \dvi_tx/encr/q_m_reg_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/q_m [2]),
    .Q(\dvi_tx/encr/q_m_reg [2])
  );
  FD   \dvi_tx/encr/q_m_reg_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/q_m [1]),
    .Q(\dvi_tx/encr/q_m_reg [1])
  );
  FD   \dvi_tx/encr/q_m_reg_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/din_q [0]),
    .Q(\dvi_tx/encr/q_m_reg [0])
  );
  FD   \dvi_tx/encr/n1d_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy<0>2 ),
    .Q(\dvi_tx/encr/n1d [3])
  );
  FD   \dvi_tx/encr/n1d_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_24 ),
    .Q(\dvi_tx/encr/n1d [2])
  );
  FD   \dvi_tx/encr/n1d_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_14 ),
    .Q(\dvi_tx/encr/n1d [1])
  );
  FD   \dvi_tx/encr/n1d_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_04 ),
    .Q(\dvi_tx/encr/n1d [0])
  );
  FD   \dvi_tx/encr/de_reg  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/de_q_1692 ),
    .Q(\dvi_tx/encr/de_reg_1691 )
  );
  FD   \dvi_tx/encr/de_q  (
    .C(tx_pclk),
    .D(tx_de),
    .Q(\dvi_tx/encr/de_q_1692 )
  );
  FD   \dvi_tx/encr/din_q_7  (
    .C(tx_pclk),
    .D(tx_red[7]),
    .Q(\dvi_tx/encr/din_q [7])
  );
  FD   \dvi_tx/encr/din_q_6  (
    .C(tx_pclk),
    .D(tx_red[6]),
    .Q(\dvi_tx/encr/din_q [6])
  );
  FD   \dvi_tx/encr/din_q_5  (
    .C(tx_pclk),
    .D(tx_red[5]),
    .Q(\dvi_tx/encr/din_q [5])
  );
  FD   \dvi_tx/encr/din_q_4  (
    .C(tx_pclk),
    .D(tx_red[4]),
    .Q(\dvi_tx/encr/din_q [4])
  );
  FD   \dvi_tx/encr/din_q_3  (
    .C(tx_pclk),
    .D(tx_red[3]),
    .Q(\dvi_tx/encr/din_q [3])
  );
  FD   \dvi_tx/encr/din_q_2  (
    .C(tx_pclk),
    .D(tx_red[2]),
    .Q(\dvi_tx/encr/din_q [2])
  );
  FD   \dvi_tx/encr/din_q_1  (
    .C(tx_pclk),
    .D(tx_red[1]),
    .Q(\dvi_tx/encr/din_q [1])
  );
  FD   \dvi_tx/encr/din_q_0  (
    .C(tx_pclk),
    .D(tx_red[0]),
    .Q(\dvi_tx/encr/din_q [0])
  );
  FD   \dvi_tx/encg/n0q_m_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/PWR_47_o_BUS_0017_sub_29_OUT [3]),
    .Q(\dvi_tx/encg/n0q_m [3])
  );
  FD   \dvi_tx/encg/n0q_m_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/PWR_47_o_BUS_0017_sub_29_OUT [2]),
    .Q(\dvi_tx/encg/n0q_m [2])
  );
  FD   \dvi_tx/encg/n0q_m_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/PWR_47_o_BUS_0017_sub_29_OUT [1]),
    .Q(\dvi_tx/encg/n0q_m [1])
  );
  FD   \dvi_tx/encg/n1q_m_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .Q(\dvi_tx/encg/n1q_m [3])
  );
  FD   \dvi_tx/encg/n1q_m_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_29 ),
    .Q(\dvi_tx/encg/n1q_m [2])
  );
  FD   \dvi_tx/encg/n1q_m_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_19 ),
    .Q(\dvi_tx/encg/n1q_m [1])
  );
  FD   \dvi_tx/encg/q_m_reg_8  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/q_m [8]),
    .Q(\dvi_tx/encg/q_m_reg [8])
  );
  FD   \dvi_tx/encg/q_m_reg_7  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/q_m [7]),
    .Q(\dvi_tx/encg/q_m_reg [7])
  );
  FD   \dvi_tx/encg/q_m_reg_6  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/q_m [6]),
    .Q(\dvi_tx/encg/q_m_reg [6])
  );
  FD   \dvi_tx/encg/q_m_reg_5  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/q_m [5]),
    .Q(\dvi_tx/encg/q_m_reg [5])
  );
  FD   \dvi_tx/encg/q_m_reg_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/q_m [4]),
    .Q(\dvi_tx/encg/q_m_reg [4])
  );
  FD   \dvi_tx/encg/q_m_reg_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/q_m [3]),
    .Q(\dvi_tx/encg/q_m_reg [3])
  );
  FD   \dvi_tx/encg/q_m_reg_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/q_m [2]),
    .Q(\dvi_tx/encg/q_m_reg [2])
  );
  FD   \dvi_tx/encg/q_m_reg_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/q_m [1]),
    .Q(\dvi_tx/encg/q_m_reg [1])
  );
  FD   \dvi_tx/encg/q_m_reg_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/din_q [0]),
    .Q(\dvi_tx/encg/q_m_reg [0])
  );
  FD   \dvi_tx/encg/n1d_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_cy<0>2 ),
    .Q(\dvi_tx/encg/n1d [3])
  );
  FD   \dvi_tx/encg/n1d_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_24 ),
    .Q(\dvi_tx/encg/n1d [2])
  );
  FD   \dvi_tx/encg/n1d_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_14 ),
    .Q(\dvi_tx/encg/n1d [1])
  );
  FD   \dvi_tx/encg/n1d_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_04 ),
    .Q(\dvi_tx/encg/n1d [0])
  );
  FD   \dvi_tx/encg/din_q_7  (
    .C(tx_pclk),
    .D(tx_green[7]),
    .Q(\dvi_tx/encg/din_q [7])
  );
  FD   \dvi_tx/encg/din_q_6  (
    .C(tx_pclk),
    .D(tx_green[6]),
    .Q(\dvi_tx/encg/din_q [6])
  );
  FD   \dvi_tx/encg/din_q_5  (
    .C(tx_pclk),
    .D(tx_green[5]),
    .Q(\dvi_tx/encg/din_q [5])
  );
  FD   \dvi_tx/encg/din_q_4  (
    .C(tx_pclk),
    .D(tx_green[4]),
    .Q(\dvi_tx/encg/din_q [4])
  );
  FD   \dvi_tx/encg/din_q_3  (
    .C(tx_pclk),
    .D(tx_green[3]),
    .Q(\dvi_tx/encg/din_q [3])
  );
  FD   \dvi_tx/encg/din_q_2  (
    .C(tx_pclk),
    .D(tx_green[2]),
    .Q(\dvi_tx/encg/din_q [2])
  );
  FD   \dvi_tx/encg/din_q_1  (
    .C(tx_pclk),
    .D(tx_green[1]),
    .Q(\dvi_tx/encg/din_q [1])
  );
  FD   \dvi_tx/encg/din_q_0  (
    .C(tx_pclk),
    .D(tx_green[0]),
    .Q(\dvi_tx/encg/din_q [0])
  );
  FD   \dvi_tx/encb/n0q_m_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/PWR_47_o_BUS_0017_sub_29_OUT [3]),
    .Q(\dvi_tx/encb/n0q_m [3])
  );
  FD   \dvi_tx/encb/n0q_m_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/PWR_47_o_BUS_0017_sub_29_OUT [2]),
    .Q(\dvi_tx/encb/n0q_m [2])
  );
  FD   \dvi_tx/encb/n0q_m_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/PWR_47_o_BUS_0017_sub_29_OUT [1]),
    .Q(\dvi_tx/encb/n0q_m [1])
  );
  FD   \dvi_tx/encb/n1q_m_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .Q(\dvi_tx/encb/n1q_m [3])
  );
  FD   \dvi_tx/encb/n1q_m_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_29 ),
    .Q(\dvi_tx/encb/n1q_m [2])
  );
  FD   \dvi_tx/encb/n1q_m_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_19 ),
    .Q(\dvi_tx/encb/n1q_m [1])
  );
  FD   \dvi_tx/encb/q_m_reg_8  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/q_m [8]),
    .Q(\dvi_tx/encb/q_m_reg [8])
  );
  FD   \dvi_tx/encb/q_m_reg_7  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/q_m [7]),
    .Q(\dvi_tx/encb/q_m_reg [7])
  );
  FD   \dvi_tx/encb/q_m_reg_6  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/q_m [6]),
    .Q(\dvi_tx/encb/q_m_reg [6])
  );
  FD   \dvi_tx/encb/q_m_reg_5  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/q_m [5]),
    .Q(\dvi_tx/encb/q_m_reg [5])
  );
  FD   \dvi_tx/encb/q_m_reg_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/q_m [4]),
    .Q(\dvi_tx/encb/q_m_reg [4])
  );
  FD   \dvi_tx/encb/q_m_reg_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/q_m [3]),
    .Q(\dvi_tx/encb/q_m_reg [3])
  );
  FD   \dvi_tx/encb/q_m_reg_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/q_m [2]),
    .Q(\dvi_tx/encb/q_m_reg [2])
  );
  FD   \dvi_tx/encb/q_m_reg_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/q_m [1]),
    .Q(\dvi_tx/encb/q_m_reg [1])
  );
  FD   \dvi_tx/encb/q_m_reg_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/din_q [0]),
    .Q(\dvi_tx/encb/q_m_reg [0])
  );
  FD   \dvi_tx/encb/c1_reg  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_q_1689 ),
    .Q(\dvi_tx/encb/c1_reg_1675 )
  );
  FD   \dvi_tx/encb/c0_reg  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c0_q_1690 ),
    .Q(\dvi_tx/encb/c0_reg_1627 )
  );
  FD   \dvi_tx/encb/n1d_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy<0>2 ),
    .Q(\dvi_tx/encb/n1d [3])
  );
  FD   \dvi_tx/encb/n1d_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_24 ),
    .Q(\dvi_tx/encb/n1d [2])
  );
  FD   \dvi_tx/encb/n1d_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_14 ),
    .Q(\dvi_tx/encb/n1d [1])
  );
  FD   \dvi_tx/encb/n1d_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_04 ),
    .Q(\dvi_tx/encb/n1d [0])
  );
  FD   \dvi_tx/encb/c1_q  (
    .C(tx_pclk),
    .D(tx_vsync),
    .Q(\dvi_tx/encb/c1_q_1689 )
  );
  FD   \dvi_tx/encb/c0_q  (
    .C(tx_pclk),
    .D(tx_hsync),
    .Q(\dvi_tx/encb/c0_q_1690 )
  );
  FD   \dvi_tx/encb/din_q_7  (
    .C(tx_pclk),
    .D(tx_blue[7]),
    .Q(\dvi_tx/encb/din_q [7])
  );
  FD   \dvi_tx/encb/din_q_6  (
    .C(tx_pclk),
    .D(tx_blue[6]),
    .Q(\dvi_tx/encb/din_q [6])
  );
  FD   \dvi_tx/encb/din_q_5  (
    .C(tx_pclk),
    .D(tx_blue[5]),
    .Q(\dvi_tx/encb/din_q [5])
  );
  FD   \dvi_tx/encb/din_q_4  (
    .C(tx_pclk),
    .D(tx_blue[4]),
    .Q(\dvi_tx/encb/din_q [4])
  );
  FD   \dvi_tx/encb/din_q_3  (
    .C(tx_pclk),
    .D(tx_blue[3]),
    .Q(\dvi_tx/encb/din_q [3])
  );
  FD   \dvi_tx/encb/din_q_2  (
    .C(tx_pclk),
    .D(tx_blue[2]),
    .Q(\dvi_tx/encb/din_q [2])
  );
  FD   \dvi_tx/encb/din_q_1  (
    .C(tx_pclk),
    .D(tx_blue[1]),
    .Q(\dvi_tx/encb/din_q [1])
  );
  FD   \dvi_tx/encb/din_q_0  (
    .C(tx_pclk),
    .D(tx_blue[0]),
    .Q(\dvi_tx/encb/din_q [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out14  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [14]),
    .Q(\dvi_tx/n0011 [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out13  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [13]),
    .Q(\dvi_tx/n0011 [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out12  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [12]),
    .Q(\dvi_tx/n0011 [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out11  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [11]),
    .Q(\dvi_tx/n0011 [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out10  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [10]),
    .Q(\dvi_tx/n0011 [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out9  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [9]),
    .Q(\dvi_tx/n0011 [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out8  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [8]),
    .Q(\dvi_tx/n0011 [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out7  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [7]),
    .Q(\dvi_tx/n0011 [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out6  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [6]),
    .Q(\dvi_tx/n0011 [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out5  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [5]),
    .Q(\dvi_tx/n0011 [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out4  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [4]),
    .Q(\dvi_tx/n0011 [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out3  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [3]),
    .Q(\dvi_tx/n0011 [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out2  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [2]),
    .Q(\dvi_tx/n0011 [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out1  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [1]),
    .Q(\dvi_tx/n0011 [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out0  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [0]),
    .Q(\dvi_tx/n0011 [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db29  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [29]),
    .Q(\dvi_tx/pixel2x/db [29])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db28  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [28]),
    .Q(\dvi_tx/pixel2x/db [28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db27  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [27]),
    .Q(\dvi_tx/pixel2x/db [27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db26  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [26]),
    .Q(\dvi_tx/pixel2x/db [26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db25  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [25]),
    .Q(\dvi_tx/pixel2x/db [25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db24  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [24]),
    .Q(\dvi_tx/pixel2x/db [24])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db23  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [23]),
    .Q(\dvi_tx/pixel2x/db [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db22  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [22]),
    .Q(\dvi_tx/pixel2x/db [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db21  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [21]),
    .Q(\dvi_tx/pixel2x/db [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db20  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [20]),
    .Q(\dvi_tx/pixel2x/db [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db19  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [19]),
    .Q(\dvi_tx/pixel2x/db [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db18  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [18]),
    .Q(\dvi_tx/pixel2x/db [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db17  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [17]),
    .Q(\dvi_tx/pixel2x/db [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db16  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [16]),
    .Q(\dvi_tx/pixel2x/db [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db15  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [15]),
    .Q(\dvi_tx/pixel2x/db [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db14  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [14]),
    .Q(\dvi_tx/pixel2x/db [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db13  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [13]),
    .Q(\dvi_tx/pixel2x/db [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db12  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [12]),
    .Q(\dvi_tx/pixel2x/db [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db11  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [11]),
    .Q(\dvi_tx/pixel2x/db [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db10  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [10]),
    .Q(\dvi_tx/pixel2x/db [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db9  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [9]),
    .Q(\dvi_tx/pixel2x/db [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db8  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [8]),
    .Q(\dvi_tx/pixel2x/db [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db7  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [7]),
    .Q(\dvi_tx/pixel2x/db [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db6  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [6]),
    .Q(\dvi_tx/pixel2x/db [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db5  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [5]),
    .Q(\dvi_tx/pixel2x/db [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db4  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [4]),
    .Q(\dvi_tx/pixel2x/db [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db3  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [3]),
    .Q(\dvi_tx/pixel2x/db [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db2  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [2]),
    .Q(\dvi_tx/pixel2x/db [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db1  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [1]),
    .Q(\dvi_tx/pixel2x/db [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db0  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [0]),
    .Q(\dvi_tx/pixel2x/db [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_ra3  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/Mram_ra_d3 ),
    .R(\dvi_tx/pixel2x/rstp ),
    .Q(\dvi_tx/pixel2x/ra [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_ra2  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/Mram_ra_d2 ),
    .R(\dvi_tx/pixel2x/rstp ),
    .Q(\dvi_tx/pixel2x/ra [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_ra1  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/Mram_ra_d1 ),
    .R(\dvi_tx/pixel2x/rstp ),
    .Q(\dvi_tx/pixel2x/ra [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_ra0  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/Mram_ra_d ),
    .R(\dvi_tx/pixel2x/rstp ),
    .Q(\dvi_tx/pixel2x/ra [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/sync_gen  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/sync_INV_61_o ),
    .R(\dvi_tx/pixel2x/rstp ),
    .Q(\dvi_tx/pixel2x/sync )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_rstp  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/rstsync_q ),
    .Q(\dvi_tx/pixel2x/rstp )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_rstsync  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/rstsync ),
    .Q(\dvi_tx/pixel2x/rstsync_q )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[29].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [9]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[29].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [29])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[28].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [8]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[28].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [28])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[27].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [7]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[27].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [27])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[26].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [6]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[26].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [26])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[25].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [5]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[25].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [25])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[24].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [9]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[24].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [24])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[23].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [8]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[23].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [23])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[22].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [7]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[22].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [22])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[21].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [6]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[21].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [21])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[20].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [5]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[20].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [20])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[19].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [9]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[19].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [19])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[18].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [8]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[18].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [18])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[17].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [7]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[17].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [17])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[16].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [6]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[16].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [16])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[15].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [5]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[15].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [15])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[14].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [4]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[14].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [14])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[13].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [3]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[13].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [13])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[12].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[12].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [12])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[11].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [1]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[11].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [11])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[10].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [0]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[10].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [10])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[9].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [4]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [9])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[8].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [3]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [8])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[7].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [7])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[6].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [1]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [6])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[5].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [0]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [5])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[4].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [4]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[3].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [3]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[2].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [2])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[1].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [1]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [1])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[0].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [0]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [0])
  );
  LUT6 #(
    .INIT ( 64'h0705030106040200 ))
  Mmux_tx_blue11 (
    .I0(SW_0_IBUF_10),
    .I1(SW_1_IBUF_9),
    .I2(SW_2_IBUF_8),
    .I3(Cr[0]),
    .I4(V[0]),
    .I5(\dvi_rx1/dec_b/dout [0]),
    .O(tx_blue[0])
  );
  LUT6 #(
    .INIT ( 64'h0705030106040200 ))
  Mmux_tx_blue21 (
    .I0(SW_0_IBUF_10),
    .I1(SW_1_IBUF_9),
    .I2(SW_2_IBUF_8),
    .I3(Cr[1]),
    .I4(V[1]),
    .I5(\dvi_rx1/dec_b/dout [1]),
    .O(tx_blue[1])
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_blue31 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_b/dout [2]),
    .I4(Cr[2]),
    .I5(V[2]),
    .O(tx_blue[2])
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_blue41 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_b/dout [3]),
    .I4(Cr[3]),
    .I5(V[3]),
    .O(tx_blue[3])
  );
  LUT6 #(
    .INIT ( 64'h0705060403010200 ))
  Mmux_tx_blue51 (
    .I0(SW_0_IBUF_10),
    .I1(SW_1_IBUF_9),
    .I2(SW_2_IBUF_8),
    .I3(Cr[4]),
    .I4(\dvi_rx1/dec_b/dout [4]),
    .I5(V[4]),
    .O(tx_blue[4])
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_blue61 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_b/dout [5]),
    .I4(Cr[5]),
    .I5(V[5]),
    .O(tx_blue[5])
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_blue71 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_b/dout [6]),
    .I4(Cr[6]),
    .I5(V[6]),
    .O(tx_blue[6])
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_blue81 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_b/dout [7]),
    .I4(Cr[7]),
    .I5(V[7]),
    .O(tx_blue[7])
  );
  LUT5 #(
    .INIT ( 32'h10105410 ))
  Mmux_tx_de11 (
    .I0(SW_2_IBUF_8),
    .I1(SW_0_IBUF_10),
    .I2(\dvi_rx1/dec_b/de_43 ),
    .I3(\ycbcr_converter/sync_delay/[5].delay_i/val<2> ),
    .I4(SW_1_IBUF_9),
    .O(tx_de)
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_green11 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_g/dout [0]),
    .I4(Cb[0]),
    .I5(S[0]),
    .O(tx_green[0])
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_green21 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_g/dout [1]),
    .I4(Cb[1]),
    .I5(S[1]),
    .O(tx_green[1])
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_green31 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_g/dout [2]),
    .I4(Cb[2]),
    .I5(S[2]),
    .O(tx_green[2])
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_green41 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_g/dout [3]),
    .I4(Cb[3]),
    .I5(S[3]),
    .O(tx_green[3])
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_green51 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_g/dout [4]),
    .I4(Cb[4]),
    .I5(S[4]),
    .O(tx_green[4])
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_green61 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_g/dout [5]),
    .I4(Cb[5]),
    .I5(S[5]),
    .O(tx_green[5])
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_green71 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_g/dout [6]),
    .I4(Cb[6]),
    .I5(S[6]),
    .O(tx_green[6])
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_green81 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_g/dout [7]),
    .I4(Cb[7]),
    .I5(S[7]),
    .O(tx_green[7])
  );
  LUT5 #(
    .INIT ( 32'h10105410 ))
  Mmux_tx_hsync11 (
    .I0(SW_2_IBUF_8),
    .I1(SW_0_IBUF_10),
    .I2(\dvi_rx1/dec_b/c0_125 ),
    .I3(\ycbcr_converter/sync_delay/[5].delay_i/val<1> ),
    .I4(SW_1_IBUF_9),
    .O(tx_hsync)
  );
  LUT6 #(
    .INIT ( 64'h0703050106020400 ))
  Mmux_tx_red11 (
    .I0(SW_0_IBUF_10),
    .I1(SW_1_IBUF_9),
    .I2(SW_2_IBUF_8),
    .I3(H[0]),
    .I4(\ycbcr_converter/Y_delay/[1].delay_i/val<0> ),
    .I5(\dvi_rx1/dec_r/dout [0]),
    .O(tx_red[0])
  );
  LUT6 #(
    .INIT ( 64'h0703050106020400 ))
  Mmux_tx_red21 (
    .I0(SW_0_IBUF_10),
    .I1(SW_1_IBUF_9),
    .I2(SW_2_IBUF_8),
    .I3(H[1]),
    .I4(\ycbcr_converter/Y_delay/[1].delay_i/val<1> ),
    .I5(\dvi_rx1/dec_r/dout [1]),
    .O(tx_red[1])
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_red31 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_r/dout [2]),
    .I4(\ycbcr_converter/Y_delay/[1].delay_i/val<2> ),
    .I5(H[2]),
    .O(tx_red[2])
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_red41 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_r/dout [3]),
    .I4(\ycbcr_converter/Y_delay/[1].delay_i/val<3> ),
    .I5(H[3]),
    .O(tx_red[3])
  );
  LUT6 #(
    .INIT ( 64'h0703050106020400 ))
  Mmux_tx_red51 (
    .I0(SW_0_IBUF_10),
    .I1(SW_1_IBUF_9),
    .I2(SW_2_IBUF_8),
    .I3(H[4]),
    .I4(\ycbcr_converter/Y_delay/[1].delay_i/val<4> ),
    .I5(\dvi_rx1/dec_r/dout [4]),
    .O(tx_red[4])
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_red61 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_r/dout [5]),
    .I4(\ycbcr_converter/Y_delay/[1].delay_i/val<5> ),
    .I5(H[5]),
    .O(tx_red[5])
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_red71 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_r/dout [6]),
    .I4(\ycbcr_converter/Y_delay/[1].delay_i/val<6> ),
    .I5(H[6]),
    .O(tx_red[6])
  );
  LUT6 #(
    .INIT ( 64'h1514050411100100 ))
  Mmux_tx_red81 (
    .I0(SW_2_IBUF_8),
    .I1(SW_1_IBUF_9),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_r/dout [7]),
    .I4(\ycbcr_converter/Y_delay/[1].delay_i/val<7> ),
    .I5(H[7]),
    .O(tx_red[7])
  );
  LUT5 #(
    .INIT ( 32'h10105410 ))
  Mmux_tx_vsync11 (
    .I0(SW_2_IBUF_8),
    .I1(SW_0_IBUF_10),
    .I2(\dvi_rx1/dec_b/c1_42 ),
    .I3(\ycbcr_converter/sync_delay/[5].delay_i/val<0> ),
    .I4(SW_1_IBUF_9),
    .O(tx_vsync)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[7]_data[7]_MUX_117_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [6]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [7]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[7]_data[7]_MUX_117_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[4]_data[4]_MUX_114_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[4]_data[4]_MUX_114_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[1]_data[1]_MUX_111_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[1]_data[1]_MUX_111_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[2]_data[2]_MUX_112_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[2]_data[2]_MUX_112_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[3]_data[3]_MUX_113_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [3]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[3]_data[3]_MUX_113_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[5]_data[5]_MUX_115_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[5]_data[5]_MUX_115_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[6]_data[6]_MUX_116_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [5]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [6]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[6]_data[6]_MUX_116_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_r/Mmux_data11  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [9]),
    .O(\dvi_rx1/dec_r/data [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_r/Mxor_rx_toggle_xo<0>1  (
    .I0(\dvi_rx1/dec_r/flipgearx2_180 ),
    .I1(\dvi_rx1/dec_r/toggle_295 ),
    .O(\dvi_rx1/dec_r/rx_toggle )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \dvi_rx1/dec_r/iamrdy_other_ch1_rdy_AND_30_o_inv1  (
    .I0(\dvi_rx1/dec_b/cbnd/iamrdy_44 ),
    .I1(\dvi_rx1/dec_g/cbnd/iamrdy_45 ),
    .I2(\dvi_rx1/dec_r/cbnd/iamrdy_46 ),
    .O(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_r/bitslip_bitslip_q_AND_1_o1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/bitslip_198 ),
    .I1(\dvi_rx1/dec_r/bitslip_q_182 ),
    .O(\dvi_rx1/dec_r/bitslip_bitslip_q_AND_1_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[7]_data[7]_MUX_117_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [6]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [7]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[7]_data[7]_MUX_117_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[4]_data[4]_MUX_114_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[4]_data[4]_MUX_114_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[1]_data[1]_MUX_111_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[1]_data[1]_MUX_111_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[2]_data[2]_MUX_112_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[2]_data[2]_MUX_112_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[3]_data[3]_MUX_113_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [3]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[3]_data[3]_MUX_113_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[5]_data[5]_MUX_115_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[5]_data[5]_MUX_115_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[6]_data[6]_MUX_116_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [5]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [6]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[6]_data[6]_MUX_116_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_g/Mmux_data11  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [9]),
    .O(\dvi_rx1/dec_g/data [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_g/Mxor_rx_toggle_xo<0>1  (
    .I0(\dvi_rx1/dec_g/flipgearx2_226 ),
    .I1(\dvi_rx1/dec_r/toggle_295 ),
    .O(\dvi_rx1/dec_g/rx_toggle )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_g/bitslip_bitslip_q_AND_1_o1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/bitslip_244 ),
    .I1(\dvi_rx1/dec_g/bitslip_q_228 ),
    .O(\dvi_rx1/dec_g/bitslip_bitslip_q_AND_1_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[7]_data[7]_MUX_117_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [7]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[7]_data[7]_MUX_117_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[4]_data[4]_MUX_114_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[4]_data[4]_MUX_114_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[1]_data[1]_MUX_111_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[1]_data[1]_MUX_111_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[2]_data[2]_MUX_112_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[2]_data[2]_MUX_112_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[3]_data[3]_MUX_113_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [3]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[3]_data[3]_MUX_113_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[5]_data[5]_MUX_115_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[5]_data[5]_MUX_115_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[6]_data[6]_MUX_116_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [5]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[6]_data[6]_MUX_116_o )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \dvi_rx1/dec_b/n0050_inv1  (
    .I0(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o1_251 ),
    .I1(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o2_252 ),
    .O(\dvi_rx1/dec_b/n0050_inv )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_16_o1  (
    .I0(\dvi_rx1/dec_b/c0_125 ),
    .I1(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o2_252 ),
    .I2(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o1_251 ),
    .O(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_16_o )
  );
  LUT4 #(
    .INIT ( 16'hBDB8 ))
  \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o3  (
    .I0(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o1_251 ),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [9]),
    .I2(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o2_252 ),
    .I3(\dvi_rx1/dec_b/c1_42 ),
    .O(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_b/Mmux_data11  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [9]),
    .O(\dvi_rx1/dec_b/data [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_b/Mxor_rx_toggle_xo<0>1  (
    .I0(\dvi_rx1/dec_b/flipgearx2_277 ),
    .I1(\dvi_rx1/dec_r/toggle_295 ),
    .O(\dvi_rx1/dec_b/rx_toggle )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_b/bitslip_bitslip_q_AND_1_o1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/bitslip_296 ),
    .I1(\dvi_rx1/dec_b/bitslip_q_279 ),
    .O(\dvi_rx1/dec_b/bitslip_bitslip_q_AND_1_o )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \dvi_rx1/dec_b/des_0/GND_10_o_GND_10_o_equal_45_o_inv1  (
    .I0(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_373 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_372 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_374 ),
    .O(\dvi_rx1/dec_b/des_0/GND_10_o_GND_10_o_equal_45_o_inv )
  );
  LUT4 #(
    .INIT ( 16'hDD28 ))
  \dvi_rx1/dec_b/des_0/state_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_372 ),
    .I1(\dvi_rx1/dec_b/des_0/busy_data_d_362 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_374 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_373 ),
    .O(\dvi_rx1/dec_b/des_0/state_FSM_FFd3-In )
  );
  LUT6 #(
    .INIT ( 64'hA9B5A9B4A985A984 ))
  \dvi_rx1/dec_b/des_0/state_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_b/des_0/busy_data_d_362 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_373 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_374 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_372 ),
    .I4(\dvi_rx1/dec_b/des_0/enable_365 ),
    .I5(\dvi_rx1/dec_b/des_0/counter [8]),
    .O(\dvi_rx1/dec_b/des_0/state_FSM_FFd4-In )
  );
  LUT4 #(
    .INIT ( 16'hFF40 ))
  \dvi_rx1/dec_b/des_0/state_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_b/des_0/busy_data_d_362 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_373 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_372 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_374 ),
    .O(\dvi_rx1/dec_b/des_0/state_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o<4>1  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_equal_48_o<4>1  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_equal_48_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o1  (
    .I0(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_374 ),
    .I1(\dvi_rx1/dec_b/des_0/busy_data_d_362 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_373 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_372 ),
    .O(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \dvi_rx1/dec_g/des_0/GND_10_o_GND_10_o_equal_45_o_inv1  (
    .I0(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_420 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_419 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_421 ),
    .O(\dvi_rx1/dec_g/des_0/GND_10_o_GND_10_o_equal_45_o_inv )
  );
  LUT4 #(
    .INIT ( 16'hDD28 ))
  \dvi_rx1/dec_g/des_0/state_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_419 ),
    .I1(\dvi_rx1/dec_g/des_0/busy_data_d_410 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_421 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_420 ),
    .O(\dvi_rx1/dec_g/des_0/state_FSM_FFd3-In )
  );
  LUT6 #(
    .INIT ( 64'hA9B5A9B4A985A984 ))
  \dvi_rx1/dec_g/des_0/state_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_g/des_0/busy_data_d_410 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_420 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_421 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_419 ),
    .I4(\dvi_rx1/dec_b/des_0/enable_365 ),
    .I5(\dvi_rx1/dec_b/des_0/counter [8]),
    .O(\dvi_rx1/dec_g/des_0/state_FSM_FFd4-In )
  );
  LUT4 #(
    .INIT ( 16'hFF40 ))
  \dvi_rx1/dec_g/des_0/state_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_g/des_0/busy_data_d_410 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_420 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_419 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_421 ),
    .O(\dvi_rx1/dec_g/des_0/state_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o<4>1  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_equal_48_o<4>1  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_equal_48_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o1  (
    .I0(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_421 ),
    .I1(\dvi_rx1/dec_g/des_0/busy_data_d_410 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_420 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_419 ),
    .O(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \dvi_rx1/dec_r/des_0/GND_10_o_GND_10_o_equal_45_o_inv1  (
    .I0(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_465 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_464 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_466 ),
    .O(\dvi_rx1/dec_r/des_0/GND_10_o_GND_10_o_equal_45_o_inv )
  );
  LUT4 #(
    .INIT ( 16'hDD28 ))
  \dvi_rx1/dec_r/des_0/state_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_464 ),
    .I1(\dvi_rx1/dec_r/des_0/busy_data_d_455 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_466 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_465 ),
    .O(\dvi_rx1/dec_r/des_0/state_FSM_FFd3-In )
  );
  LUT6 #(
    .INIT ( 64'hA9B5A9B4A985A984 ))
  \dvi_rx1/dec_r/des_0/state_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_r/des_0/busy_data_d_455 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_465 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_466 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_464 ),
    .I4(\dvi_rx1/dec_b/des_0/enable_365 ),
    .I5(\dvi_rx1/dec_b/des_0/counter [8]),
    .O(\dvi_rx1/dec_r/des_0/state_FSM_FFd4-In )
  );
  LUT4 #(
    .INIT ( 16'hFF40 ))
  \dvi_rx1/dec_r/des_0/state_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_r/des_0/busy_data_d_455 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_465 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_464 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_466 ),
    .O(\dvi_rx1/dec_r/des_0/state_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o<4>1  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_equal_48_o<4>1  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_equal_48_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o1  (
    .I0(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_466 ),
    .I1(\dvi_rx1/dec_r/des_0/busy_data_d_455 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_465 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_464 ),
    .O(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAAA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_559 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_555 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_553 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_552 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6_557 ),
    .I5(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_556 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_45_o1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/bitslip_296 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_554 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_553 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_552 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_555 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_45_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_554 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_553 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_552 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_556 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_475 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_41_o1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_560 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_553 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_552 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_555 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_41_o )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<3>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [3]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<3>1 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>111  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [3]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>11 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<2>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'hEA48 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [1]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_555 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_475 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h9AAA ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<6>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [6]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [5]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<6>1 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_47_o1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/psaligned_156 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_555 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_554 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_553 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_552 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_47_o )
  );
  LUT5 #(
    .INIT ( 32'hEAAA4888 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [2]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_555 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [1]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_475 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_52_o<0>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0_558 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_556 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_555 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_554 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_552 ),
    .I5(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_553 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_52_o )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \dvi_rx1/dec_b/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o<6>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [6]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_555 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [2]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/flipgear_297 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_475 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<1>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<1>1 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1-In1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0_558 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_553 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_552 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_554 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_547 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_tout_548 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h8888F888 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_556 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_550 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_554 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_547 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_tout_548 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3-In )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_556 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_550 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout_549 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4-In )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6-In1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6_557 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout_549 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6-In )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAAA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_646 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_642 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_640 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_639 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6_644 ),
    .I5(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_643 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_45_o1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/bitslip_244 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_641 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_640 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_639 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_642 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_45_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_641 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_640 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_639 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_643 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_562 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_41_o1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_647 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_640 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_639 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_642 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_41_o )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<3>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [3]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<3>1 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>111  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [3]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>11 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<2>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'hEA48 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [1]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_642 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_562 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h9AAA ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<6>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [6]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [5]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<6>1 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_47_o1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/psaligned_155 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_642 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_641 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_640 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_639 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_47_o )
  );
  LUT5 #(
    .INIT ( 32'hEAAA4888 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [2]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_642 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [1]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_562 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_52_o<0>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0_645 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_643 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_642 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_641 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_639 ),
    .I5(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_640 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_52_o )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \dvi_rx1/dec_g/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o<6>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [6]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_642 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [2]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/flipgear_245 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_562 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<1>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<1>1 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1-In1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0_645 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_640 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_639 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_641 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_634 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_tout_635 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h8888F888 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_643 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_637 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_641 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_634 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_tout_635 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3-In )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_643 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_637 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout_636 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4-In )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6-In1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6_644 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout_636 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6-In )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAAA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_733 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_729 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_727 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_726 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6_731 ),
    .I5(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_730 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_45_o1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/bitslip_198 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_728 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_727 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_726 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_729 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_45_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_728 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_727 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_726 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_730 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_649 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_41_o1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_734 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_727 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_726 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_729 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_41_o )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<3>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [3]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<3>1 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>111  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [3]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>11 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<2>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'hEA48 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [1]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_729 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_649 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h9AAA ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<6>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [6]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [5]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<6>1 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_47_o1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/psaligned_154 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_729 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_728 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_727 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_726 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_47_o )
  );
  LUT5 #(
    .INIT ( 32'hEAAA4888 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [2]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_729 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [1]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_649 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_52_o<0>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0_732 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_730 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_729 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_728 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_726 ),
    .I5(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_727 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_52_o )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \dvi_rx1/dec_r/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o<6>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [6]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_729 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [2]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/flipgear_199 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_649 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<1>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<1>1 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1-In1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0_732 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_727 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_726 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_728 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_721 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_tout_722 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h8888F888 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_730 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_724 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_728 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_721 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_tout_722 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3-In )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_730 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_724 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout_723 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4-In )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6-In1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6_731 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout_723 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6-In )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_b/cbnd/Mcount_ra_xor<2>11  (
    .I0(\dvi_rx1/dec_b/cbnd/ra [2]),
    .I1(\dvi_rx1/dec_b/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_b/cbnd/ra [1]),
    .O(\dvi_rx1/dec_b/cbnd/Result [2])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_b/cbnd/Mcount_wa_xor<2>11  (
    .I0(\dvi_rx1/dec_b/cbnd/wa [2]),
    .I1(\dvi_rx1/dec_b/cbnd/wa [0]),
    .I2(\dvi_rx1/dec_b/cbnd/wa [1]),
    .O(\dvi_rx1/dec_b/cbnd/Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_b/cbnd/Mcount_ra_xor<3>11  (
    .I0(\dvi_rx1/dec_b/cbnd/ra [3]),
    .I1(\dvi_rx1/dec_b/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_b/cbnd/ra [1]),
    .I3(\dvi_rx1/dec_b/cbnd/ra [2]),
    .O(\dvi_rx1/dec_b/cbnd/Result [3])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_b/cbnd/Mcount_wa_xor<3>11  (
    .I0(\dvi_rx1/dec_b/cbnd/wa [3]),
    .I1(\dvi_rx1/dec_b/cbnd/wa [0]),
    .I2(\dvi_rx1/dec_b/cbnd/wa [1]),
    .I3(\dvi_rx1/dec_b/cbnd/wa [2]),
    .O(\dvi_rx1/dec_b/cbnd/Result<3>1 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \dvi_rx1/dec_b/cbnd/rawdata_vld_inv1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/psaligned_156 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/psaligned_155 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/psaligned_154 ),
    .O(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv )
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \dvi_rx1/dec_b/cbnd/rawdata_vld_rising_other_ch0_rdy_OR_127_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_758 ),
    .I1(\dvi_rx1/dec_b/cbnd/iamrdy_44 ),
    .I2(\dvi_rx1/dec_g/cbnd/iamrdy_45 ),
    .I3(\dvi_rx1/dec_r/cbnd/iamrdy_46 ),
    .O(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_other_ch0_rdy_OR_127_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_b/cbnd/Mcount_ra_xor<1>11  (
    .I0(\dvi_rx1/dec_b/cbnd/ra [1]),
    .I1(\dvi_rx1/dec_b/cbnd/ra [0]),
    .O(\dvi_rx1/dec_b/cbnd/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_b/cbnd/Mcount_wa_xor<1>11  (
    .I0(\dvi_rx1/dec_b/cbnd/wa [1]),
    .I1(\dvi_rx1/dec_b/cbnd/wa [0]),
    .O(\dvi_rx1/dec_b/cbnd/Result<1>1 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_b/cbnd/rawdata_vld1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/psaligned_156 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/psaligned_155 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/psaligned_154 ),
    .O(\dvi_rx1/dec_b/cbnd/rawdata_vld )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_g/cbnd/Mcount_ra_xor<2>11  (
    .I0(\dvi_rx1/dec_g/cbnd/ra [2]),
    .I1(\dvi_rx1/dec_g/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_g/cbnd/ra [1]),
    .O(\dvi_rx1/dec_g/cbnd/Result [2])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_g/cbnd/Mcount_ra_xor<3>11  (
    .I0(\dvi_rx1/dec_g/cbnd/ra [3]),
    .I1(\dvi_rx1/dec_g/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_g/cbnd/ra [1]),
    .I3(\dvi_rx1/dec_g/cbnd/ra [2]),
    .O(\dvi_rx1/dec_g/cbnd/Result [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_g/cbnd/Mcount_ra_xor<1>11  (
    .I0(\dvi_rx1/dec_g/cbnd/ra [1]),
    .I1(\dvi_rx1/dec_g/cbnd/ra [0]),
    .O(\dvi_rx1/dec_g/cbnd/Result [1])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_r/cbnd/Mcount_ra_xor<2>11  (
    .I0(\dvi_rx1/dec_r/cbnd/ra [2]),
    .I1(\dvi_rx1/dec_r/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_r/cbnd/ra [1]),
    .O(\dvi_rx1/dec_r/cbnd/Result [2])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_r/cbnd/Mcount_ra_xor<3>11  (
    .I0(\dvi_rx1/dec_r/cbnd/ra [3]),
    .I1(\dvi_rx1/dec_r/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_r/cbnd/ra [1]),
    .I3(\dvi_rx1/dec_r/cbnd/ra [2]),
    .O(\dvi_rx1/dec_r/cbnd/Result [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_r/cbnd/Mcount_ra_xor<1>11  (
    .I0(\dvi_rx1/dec_r/cbnd/ra [1]),
    .I1(\dvi_rx1/dec_r/cbnd/ra [0]),
    .O(\dvi_rx1/dec_r/cbnd/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \hsv_converter/Mmux_s_0111  (
    .I0(\hsv_converter/v_01[9]_GND_30_o_LessThan_5_o ),
    .I1(\hsv_converter/s_01_f [1]),
    .O(\hsv_converter/s_01 [0])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hsv_converter/min_calculator/green[9]_green[9]_AND_40_o1  (
    .I0(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<4>_1015 ),
    .I1(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<4>_985 ),
    .O(\hsv_converter/min_calculator/green[9]_green[9]_AND_40_o )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hsv_converter/max_calculator/red[9]_blue[9]_AND_37_o1  (
    .I0(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<4>_1105 ),
    .I1(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<4>_1075 ),
    .O(\hsv_converter/max_calculator/red[9]_blue[9]_AND_37_o )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \hsv_converter/subtr_RGB/min_index[1]_max_index[1]_equal_2_o21  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\hsv_converter/min_calculator/r_index [1]),
    .I2(\hsv_converter/max_calculator/r_index [0]),
    .I3(\hsv_converter/min_calculator/r_index [0]),
    .O(\hsv_converter/subtr_RGB/min_index[1]_max_index[1]_equal_2_o )
  );
  LUT5 #(
    .INIT ( 32'hEFEA4540 ))
  \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_A11  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\dvi_rx1/dec_b/dout [0]),
    .I2(\hsv_converter/max_calculator/r_index [0]),
    .I3(\dvi_rx1/dec_g/dout [0]),
    .I4(\dvi_rx1/dec_r/dout [0]),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<0> )
  );
  LUT5 #(
    .INIT ( 32'hEFEA4540 ))
  \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_A21  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\dvi_rx1/dec_b/dout [1]),
    .I2(\hsv_converter/max_calculator/r_index [0]),
    .I3(\dvi_rx1/dec_g/dout [1]),
    .I4(\dvi_rx1/dec_r/dout [1]),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<1> )
  );
  LUT5 #(
    .INIT ( 32'hEFEA4540 ))
  \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_A31  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\dvi_rx1/dec_b/dout [2]),
    .I2(\hsv_converter/max_calculator/r_index [0]),
    .I3(\dvi_rx1/dec_g/dout [2]),
    .I4(\dvi_rx1/dec_r/dout [2]),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<2> )
  );
  LUT5 #(
    .INIT ( 32'hEFEA4540 ))
  \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_A41  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\dvi_rx1/dec_b/dout [3]),
    .I2(\hsv_converter/max_calculator/r_index [0]),
    .I3(\dvi_rx1/dec_g/dout [3]),
    .I4(\dvi_rx1/dec_r/dout [3]),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<3> )
  );
  LUT5 #(
    .INIT ( 32'hEFEA4540 ))
  \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_A51  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\dvi_rx1/dec_b/dout [4]),
    .I2(\hsv_converter/max_calculator/r_index [0]),
    .I3(\dvi_rx1/dec_g/dout [4]),
    .I4(\dvi_rx1/dec_r/dout [4]),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<4> )
  );
  LUT5 #(
    .INIT ( 32'hEFEA4540 ))
  \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_A61  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\dvi_rx1/dec_b/dout [5]),
    .I2(\hsv_converter/max_calculator/r_index [0]),
    .I3(\dvi_rx1/dec_g/dout [5]),
    .I4(\dvi_rx1/dec_r/dout [5]),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<5> )
  );
  LUT5 #(
    .INIT ( 32'hEFEA4540 ))
  \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_A71  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\dvi_rx1/dec_b/dout [6]),
    .I2(\hsv_converter/max_calculator/r_index [0]),
    .I3(\dvi_rx1/dec_g/dout [6]),
    .I4(\dvi_rx1/dec_r/dout [6]),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<6> )
  );
  LUT5 #(
    .INIT ( 32'hEFEA4540 ))
  \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_A81  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\dvi_rx1/dec_b/dout [7]),
    .I2(\hsv_converter/max_calculator/r_index [0]),
    .I3(\dvi_rx1/dec_g/dout [7]),
    .I4(\dvi_rx1/dec_r/dout [7]),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_A<7> )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \hsv_converter/subtr_RGB/_n0046_inv1  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\hsv_converter/max_calculator/r_index [0]),
    .O(\hsv_converter/subtr_RGB/_n0046_inv )
  );
  LUT6 #(
    .INIT ( 64'hFF775F5F55110505 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT10411  (
    .I0(\dvi_tx/encr/cnt [3]),
    .I1(\dvi_tx/encr/cnt [1]),
    .I2(\dvi_tx/encr/cnt [2]),
    .I3(\dvi_tx/encr/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> ),
    .I4(\dvi_tx/encr/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<2> ),
    .I5(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 ),
    .O(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT91  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encr/q_m_reg [8]),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [8])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encr/Mmux_q_m<6>11  (
    .I0(\dvi_tx/encr/din_q [5]),
    .I1(\dvi_tx/encr/din_q [6]),
    .I2(\dvi_tx/encr/q_m [4]),
    .O(\dvi_tx/encr/q_m [6])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd3_lut<0>1  (
    .I0(tx_red[0]),
    .I1(tx_red[1]),
    .I2(tx_red[4]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd3_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hAAAAA955555555AA ))
  \dvi_tx/encr/Mmux_q_m<1>11  (
    .I0(\dvi_tx/encr/din_q [1]),
    .I1(\dvi_tx/encr/n1d [1]),
    .I2(\dvi_tx/encr/n1d [0]),
    .I3(\dvi_tx/encr/n1d [2]),
    .I4(\dvi_tx/encr/n1d [3]),
    .I5(\dvi_tx/encr/din_q [0]),
    .O(\dvi_tx/encr/q_m [1])
  );
  LUT5 #(
    .INIT ( 32'hFFFFA8AA ))
  \dvi_tx/encr/Mmux_q_m<3>111  (
    .I0(\dvi_tx/encr/n1d [2]),
    .I1(\dvi_tx/encr/n1d [0]),
    .I2(\dvi_tx/encr/n1d [1]),
    .I3(\dvi_tx/encr/din_q [0]),
    .I4(\dvi_tx/encr/n1d [3]),
    .O(\dvi_tx/encr/Mmux_q_m<3>11 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encr/Mmux_q_m<2>11  (
    .I0(\dvi_tx/encr/din_q [2]),
    .I1(\dvi_tx/encr/din_q [1]),
    .I2(\dvi_tx/encr/din_q [0]),
    .O(\dvi_tx/encr/q_m [2])
  );
  LUT4 #(
    .INIT ( 16'h5755 ))
  \dvi_tx/encr/Mmux_q_m<3>121  (
    .I0(\dvi_tx/encr/n1d [2]),
    .I1(\dvi_tx/encr/n1d [0]),
    .I2(\dvi_tx/encr/n1d [1]),
    .I3(\dvi_tx/encr/din_q [0]),
    .O(\dvi_tx/encr/Mmux_q_m<3>12 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd31  (
    .I0(tx_red[1]),
    .I1(tx_red[4]),
    .I2(tx_red[0]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd3 )
  );
  LUT5 #(
    .INIT ( 32'hA88A2002 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT41  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encr/decision2_1458 ),
    .I2(\dvi_tx/encr/decision3_1457 ),
    .I3(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT61_1417 ),
    .I4(\dvi_tx/encr/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> ),
    .O(\dvi_tx/encr/GND_48_o_cnt[4]_mux_55_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encr/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1>11  (
    .I0(\dvi_tx/encr/cnt [1]),
    .I1(\dvi_tx/encr/n1q_m [1]),
    .I2(\dvi_tx/encr/n0q_m [1]),
    .O(\dvi_tx/encr/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encr/Msub_n0233_lut<1>11  (
    .I0(\dvi_tx/encr/n1q_m [1]),
    .I1(\dvi_tx/encr/n0q_m [1]),
    .O(\dvi_tx/encr/Msub_n0233_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd_lut<0>1  (
    .I0(tx_red[5]),
    .I1(tx_red[6]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_lut [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encr/Msub_n0233_lut<3>1  (
    .I0(\dvi_tx/encr/n0q_m [3]),
    .I1(\dvi_tx/encr/n1q_m [3]),
    .O(\dvi_tx/encr/Msub_n0233_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encr/Msub_n0233_lut<2>1  (
    .I0(\dvi_tx/encr/n0q_m [2]),
    .I1(\dvi_tx/encr/n1q_m [2]),
    .O(\dvi_tx/encr/Msub_n0233_lut [2])
  );
  LUT6 #(
    .INIT ( 64'hFF775F5F55110505 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT10411  (
    .I0(\dvi_tx/encg/cnt [3]),
    .I1(\dvi_tx/encg/cnt [1]),
    .I2(\dvi_tx/encg/cnt [2]),
    .I3(\dvi_tx/encg/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> ),
    .I4(\dvi_tx/encg/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<2> ),
    .I5(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 ),
    .O(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT91  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [8])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encg/Mmux_q_m<6>11  (
    .I0(\dvi_tx/encg/din_q [5]),
    .I1(\dvi_tx/encg/din_q [6]),
    .I2(\dvi_tx/encg/q_m [4]),
    .O(\dvi_tx/encg/q_m [6])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd3_lut<0>1  (
    .I0(tx_green[0]),
    .I1(tx_green[1]),
    .I2(tx_green[4]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd3_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hAAAAA955555555AA ))
  \dvi_tx/encg/Mmux_q_m<1>11  (
    .I0(\dvi_tx/encg/din_q [1]),
    .I1(\dvi_tx/encg/n1d [1]),
    .I2(\dvi_tx/encg/n1d [0]),
    .I3(\dvi_tx/encg/n1d [2]),
    .I4(\dvi_tx/encg/n1d [3]),
    .I5(\dvi_tx/encg/din_q [0]),
    .O(\dvi_tx/encg/q_m [1])
  );
  LUT5 #(
    .INIT ( 32'hFFFFA8AA ))
  \dvi_tx/encg/Mmux_q_m<3>111  (
    .I0(\dvi_tx/encg/n1d [2]),
    .I1(\dvi_tx/encg/n1d [0]),
    .I2(\dvi_tx/encg/n1d [1]),
    .I3(\dvi_tx/encg/din_q [0]),
    .I4(\dvi_tx/encg/n1d [3]),
    .O(\dvi_tx/encg/Mmux_q_m<3>11 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encg/Mmux_q_m<2>11  (
    .I0(\dvi_tx/encg/din_q [2]),
    .I1(\dvi_tx/encg/din_q [1]),
    .I2(\dvi_tx/encg/din_q [0]),
    .O(\dvi_tx/encg/q_m [2])
  );
  LUT4 #(
    .INIT ( 16'h5755 ))
  \dvi_tx/encg/Mmux_q_m<3>121  (
    .I0(\dvi_tx/encg/n1d [2]),
    .I1(\dvi_tx/encg/n1d [0]),
    .I2(\dvi_tx/encg/n1d [1]),
    .I3(\dvi_tx/encg/din_q [0]),
    .O(\dvi_tx/encg/Mmux_q_m<3>12 )
  );
  LUT5 #(
    .INIT ( 32'hA88A2002 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT41  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encg/decision2_1555 ),
    .I2(\dvi_tx/encg/decision3_1554 ),
    .I3(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT61_1518 ),
    .I4(\dvi_tx/encg/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> ),
    .O(\dvi_tx/encg/GND_48_o_cnt[4]_mux_55_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encg/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1>11  (
    .I0(\dvi_tx/encg/cnt [1]),
    .I1(\dvi_tx/encg/n1q_m [1]),
    .I2(\dvi_tx/encg/n0q_m [1]),
    .O(\dvi_tx/encg/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encg/Msub_n0233_lut<1>11  (
    .I0(\dvi_tx/encg/n1q_m [1]),
    .I1(\dvi_tx/encg/n0q_m [1]),
    .O(\dvi_tx/encg/Msub_n0233_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encg/Msub_n0233_lut<3>1  (
    .I0(\dvi_tx/encg/n0q_m [3]),
    .I1(\dvi_tx/encg/n1q_m [3]),
    .O(\dvi_tx/encg/Msub_n0233_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encg/Msub_n0233_lut<2>1  (
    .I0(\dvi_tx/encg/n0q_m [2]),
    .I1(\dvi_tx/encg/n1q_m [2]),
    .O(\dvi_tx/encg/Msub_n0233_lut [2])
  );
  LUT6 #(
    .INIT ( 64'hFF775F5F55110505 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT10411  (
    .I0(\dvi_tx/encb/cnt [3]),
    .I1(\dvi_tx/encb/cnt [1]),
    .I2(\dvi_tx/encb/cnt [2]),
    .I3(\dvi_tx/encb/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> ),
    .I4(\dvi_tx/encb/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<2> ),
    .I5(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 ),
    .O(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT91  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encb/c0_reg_1627 ),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [8])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encb/Mmux_q_m<6>11  (
    .I0(\dvi_tx/encb/din_q [5]),
    .I1(\dvi_tx/encb/din_q [6]),
    .I2(\dvi_tx/encb/q_m [4]),
    .O(\dvi_tx/encb/q_m [6])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd3_lut<0>1  (
    .I0(tx_blue[0]),
    .I1(tx_blue[1]),
    .I2(tx_blue[4]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd3_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hAAAAA955555555AA ))
  \dvi_tx/encb/Mmux_q_m<1>11  (
    .I0(\dvi_tx/encb/din_q [1]),
    .I1(\dvi_tx/encb/n1d [1]),
    .I2(\dvi_tx/encb/n1d [0]),
    .I3(\dvi_tx/encb/n1d [2]),
    .I4(\dvi_tx/encb/n1d [3]),
    .I5(\dvi_tx/encb/din_q [0]),
    .O(\dvi_tx/encb/q_m [1])
  );
  LUT5 #(
    .INIT ( 32'hFFFFA8AA ))
  \dvi_tx/encb/Mmux_q_m<3>111  (
    .I0(\dvi_tx/encb/n1d [2]),
    .I1(\dvi_tx/encb/n1d [0]),
    .I2(\dvi_tx/encb/n1d [1]),
    .I3(\dvi_tx/encb/din_q [0]),
    .I4(\dvi_tx/encb/n1d [3]),
    .O(\dvi_tx/encb/Mmux_q_m<3>11 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encb/Mmux_q_m<2>11  (
    .I0(\dvi_tx/encb/din_q [2]),
    .I1(\dvi_tx/encb/din_q [1]),
    .I2(\dvi_tx/encb/din_q [0]),
    .O(\dvi_tx/encb/q_m [2])
  );
  LUT4 #(
    .INIT ( 16'h5755 ))
  \dvi_tx/encb/Mmux_q_m<3>121  (
    .I0(\dvi_tx/encb/n1d [2]),
    .I1(\dvi_tx/encb/n1d [0]),
    .I2(\dvi_tx/encb/n1d [1]),
    .I3(\dvi_tx/encb/din_q [0]),
    .O(\dvi_tx/encb/Mmux_q_m<3>12 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd31  (
    .I0(tx_blue[1]),
    .I1(tx_blue[4]),
    .I2(tx_blue[0]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd3 )
  );
  LUT5 #(
    .INIT ( 32'hA88A2002 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT41  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encb/decision2_1657 ),
    .I2(\dvi_tx/encb/decision3_1656 ),
    .I3(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT61_1615 ),
    .I4(\dvi_tx/encb/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> ),
    .O(\dvi_tx/encb/GND_48_o_cnt[4]_mux_55_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encb/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1>11  (
    .I0(\dvi_tx/encb/cnt [1]),
    .I1(\dvi_tx/encb/n1q_m [1]),
    .I2(\dvi_tx/encb/n0q_m [1]),
    .O(\dvi_tx/encb/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encb/Msub_n0233_lut<1>11  (
    .I0(\dvi_tx/encb/n1q_m [1]),
    .I1(\dvi_tx/encb/n0q_m [1]),
    .O(\dvi_tx/encb/Msub_n0233_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd_lut<0>1  (
    .I0(tx_blue[5]),
    .I1(tx_blue[6]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_lut [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encb/Msub_n0233_lut<3>1  (
    .I0(\dvi_tx/encb/n0q_m [3]),
    .I1(\dvi_tx/encb/n1q_m [3]),
    .O(\dvi_tx/encb/Msub_n0233_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encb/Msub_n0233_lut<2>1  (
    .I0(\dvi_tx/encb/n0q_m [2]),
    .I1(\dvi_tx/encb/n1q_m [2]),
    .O(\dvi_tx/encb/Msub_n0233_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_tx/pixel2x/Mram_ra_d21  (
    .I0(\dvi_tx/pixel2x/ra [2]),
    .I1(\dvi_tx/pixel2x/ra [0]),
    .I2(\dvi_tx/pixel2x/ra [1]),
    .O(\dvi_tx/pixel2x/Mram_ra_d2 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_tx/pixel2x/Mram_wa_d21  (
    .I0(\dvi_tx/pixel2x/wa [2]),
    .I1(\dvi_tx/pixel2x/wa [0]),
    .I2(\dvi_tx/pixel2x/wa [1]),
    .O(\dvi_tx/pixel2x/Mram_wa_d2 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_tx/pixel2x/Mram_ra_d31  (
    .I0(\dvi_tx/pixel2x/ra [3]),
    .I1(\dvi_tx/pixel2x/ra [0]),
    .I2(\dvi_tx/pixel2x/ra [1]),
    .I3(\dvi_tx/pixel2x/ra [2]),
    .O(\dvi_tx/pixel2x/Mram_ra_d3 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_tx/pixel2x/Mram_wa_d31  (
    .I0(\dvi_tx/pixel2x/wa [3]),
    .I1(\dvi_tx/pixel2x/wa [0]),
    .I2(\dvi_tx/pixel2x/wa [1]),
    .I3(\dvi_tx/pixel2x/wa [2]),
    .O(\dvi_tx/pixel2x/Mram_wa_d3 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux16  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [0]),
    .I2(\dvi_tx/pixel2x/db [15]),
    .O(\dvi_tx/pixel2x/mux [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux21  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [10]),
    .I2(\dvi_tx/pixel2x/db [25]),
    .O(\dvi_tx/pixel2x/mux [10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux31  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [11]),
    .I2(\dvi_tx/pixel2x/db [26]),
    .O(\dvi_tx/pixel2x/mux [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux41  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [12]),
    .I2(\dvi_tx/pixel2x/db [27]),
    .O(\dvi_tx/pixel2x/mux [12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux51  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [13]),
    .I2(\dvi_tx/pixel2x/db [28]),
    .O(\dvi_tx/pixel2x/mux [13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux61  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [14]),
    .I2(\dvi_tx/pixel2x/db [29]),
    .O(\dvi_tx/pixel2x/mux [14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux71  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [1]),
    .I2(\dvi_tx/pixel2x/db [16]),
    .O(\dvi_tx/pixel2x/mux [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux81  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [2]),
    .I2(\dvi_tx/pixel2x/db [17]),
    .O(\dvi_tx/pixel2x/mux [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux91  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [3]),
    .I2(\dvi_tx/pixel2x/db [18]),
    .O(\dvi_tx/pixel2x/mux [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux101  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [4]),
    .I2(\dvi_tx/pixel2x/db [19]),
    .O(\dvi_tx/pixel2x/mux [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux111  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [5]),
    .I2(\dvi_tx/pixel2x/db [20]),
    .O(\dvi_tx/pixel2x/mux [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux121  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [6]),
    .I2(\dvi_tx/pixel2x/db [21]),
    .O(\dvi_tx/pixel2x/mux [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux131  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [7]),
    .I2(\dvi_tx/pixel2x/db [22]),
    .O(\dvi_tx/pixel2x/mux [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux141  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [8]),
    .I2(\dvi_tx/pixel2x/db [23]),
    .O(\dvi_tx/pixel2x/mux [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux151  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [9]),
    .I2(\dvi_tx/pixel2x/db [24]),
    .O(\dvi_tx/pixel2x/mux [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_tx/pixel2x/Mram_ra_d111  (
    .I0(\dvi_tx/pixel2x/ra [0]),
    .I1(\dvi_tx/pixel2x/ra [1]),
    .O(\dvi_tx/pixel2x/Mram_ra_d1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_tx/pixel2x/Mram_wa_d111  (
    .I0(\dvi_tx/pixel2x/wa [0]),
    .I1(\dvi_tx/pixel2x/wa [1]),
    .O(\dvi_tx/pixel2x/Mram_wa_d1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \dvi_rx1/dec_r/n0050_inv2  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [5]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I5(\dvi_rx1/dec_r/cbnd/sdata [7]),
    .O(\dvi_rx1/dec_r/n0050_inv2_1807 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \dvi_rx1/dec_g/n0050_inv2  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [5]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I5(\dvi_rx1/dec_g/cbnd/sdata [7]),
    .O(\dvi_rx1/dec_g/n0050_inv2_1808 )
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o1_SW0  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [7]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [3]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I5(N2),
    .O(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o1_251 )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o2_SW0  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [7]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [5]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [3]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'h0000000010000000 ))
  \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o2  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I5(N4),
    .O(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o2_252 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0F8F2FAA ))
  \dvi_rx1/dec_b/des_0/_n0278_inv1  (
    .I0(\dvi_rx1/dec_b/des_0/valid_data_d_360 ),
    .I1(\dvi_rx1/dec_b/des_0/incdec_data_d_361 ),
    .I2(\dvi_rx1/dec_b/des_0/flag_363 ),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_equal_48_o ),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I5(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_b/des_0/_n0278_inv1_1811 )
  );
  LUT4 #(
    .INIT ( 16'h7F00 ))
  \dvi_rx1/dec_b/des_0/_n0278_inv2  (
    .I0(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_372 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_374 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_373 ),
    .I3(\dvi_rx1/dec_b/des_0/_n0278_inv1_1811 ),
    .O(\dvi_rx1/dec_b/des_0/_n0278_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0F8F2FAA ))
  \dvi_rx1/dec_g/des_0/_n0278_inv1  (
    .I0(\dvi_rx1/dec_g/des_0/valid_data_d_408 ),
    .I1(\dvi_rx1/dec_g/des_0/incdec_data_d_409 ),
    .I2(\dvi_rx1/dec_g/des_0/flag_411 ),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_equal_48_o ),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I5(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_g/des_0/_n0278_inv1_1812 )
  );
  LUT4 #(
    .INIT ( 16'h7F00 ))
  \dvi_rx1/dec_g/des_0/_n0278_inv2  (
    .I0(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_419 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_421 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_420 ),
    .I3(\dvi_rx1/dec_g/des_0/_n0278_inv1_1812 ),
    .O(\dvi_rx1/dec_g/des_0/_n0278_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0F8F2FAA ))
  \dvi_rx1/dec_r/des_0/_n0278_inv1  (
    .I0(\dvi_rx1/dec_r/des_0/valid_data_d_453 ),
    .I1(\dvi_rx1/dec_r/des_0/incdec_data_d_454 ),
    .I2(\dvi_rx1/dec_r/des_0/flag_456 ),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_equal_48_o ),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I5(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_r/des_0/_n0278_inv1_1813 )
  );
  LUT4 #(
    .INIT ( 16'h7F00 ))
  \dvi_rx1/dec_r/des_0/_n0278_inv2  (
    .I0(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_464 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_466 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_465 ),
    .I3(\dvi_rx1/dec_r/des_0/_n0278_inv1_1813 ),
    .O(\dvi_rx1/dec_r/des_0/_n0278_inv )
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5-In_SW0  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_553 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0_558 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_554 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_547 ),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFF8F8FDF8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5-In  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout_549 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6_557 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_555 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_556 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_550 ),
    .I5(N18),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5-In_521 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [7]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [6]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [9]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [8]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [11]),
    .I5(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>2  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [1]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [0]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [3]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [2]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [5]),
    .I5(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1816 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>3  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1816 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o )
  );
  LUT5 #(
    .INIT ( 32'h00000020 ))
  \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1  (
    .I0(\dvi_rx1/dec_b/rawword [2]),
    .I1(\dvi_rx1/dec_b/rawword [1]),
    .I2(\dvi_rx1/dec_b/rawword [4]),
    .I3(\dvi_rx1/dec_b/rawword [0]),
    .I4(\dvi_rx1/dec_b/rawword [3]),
    .O(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1817 )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2  (
    .I0(\dvi_rx1/dec_b/rawword [2]),
    .I1(\dvi_rx1/dec_b/rawword [0]),
    .I2(\dvi_rx1/dec_b/rawword [4]),
    .I3(\dvi_rx1/dec_b/rawword [3]),
    .I4(\dvi_rx1/dec_b/rawword [1]),
    .O(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1818 )
  );
  LUT6 #(
    .INIT ( 64'h0420002004000000 ))
  \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o3  (
    .I0(\dvi_rx1/dec_b/rawword [8]),
    .I1(\dvi_rx1/dec_b/rawword [5]),
    .I2(\dvi_rx1/dec_b/rawword [6]),
    .I3(\dvi_rx1/dec_b/rawword [7]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1818 ),
    .I5(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1817 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o )
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5-In_SW0  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_640 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0_645 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_641 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_634 ),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFF8F8FDF8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5-In  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout_636 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6_644 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_642 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_643 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_637 ),
    .I5(N20),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5-In_608 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [7]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [6]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [9]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [8]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [11]),
    .I5(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>2  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [1]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [0]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [3]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [2]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [5]),
    .I5(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1821 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>3  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1821 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o )
  );
  LUT5 #(
    .INIT ( 32'h00000020 ))
  \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1  (
    .I0(\dvi_rx1/dec_g/rawword [2]),
    .I1(\dvi_rx1/dec_g/rawword [1]),
    .I2(\dvi_rx1/dec_g/rawword [4]),
    .I3(\dvi_rx1/dec_g/rawword [0]),
    .I4(\dvi_rx1/dec_g/rawword [3]),
    .O(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1822 )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2  (
    .I0(\dvi_rx1/dec_g/rawword [2]),
    .I1(\dvi_rx1/dec_g/rawword [0]),
    .I2(\dvi_rx1/dec_g/rawword [4]),
    .I3(\dvi_rx1/dec_g/rawword [3]),
    .I4(\dvi_rx1/dec_g/rawword [1]),
    .O(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1823 )
  );
  LUT6 #(
    .INIT ( 64'h0420002004000000 ))
  \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o3  (
    .I0(\dvi_rx1/dec_g/rawword [8]),
    .I1(\dvi_rx1/dec_g/rawword [5]),
    .I2(\dvi_rx1/dec_g/rawword [6]),
    .I3(\dvi_rx1/dec_g/rawword [7]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1823 ),
    .I5(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1822 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o )
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5-In_SW0  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_727 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0_732 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_728 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_721 ),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFF8F8FDF8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5-In  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout_723 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6_731 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_729 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_730 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_724 ),
    .I5(N22),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5-In_695 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [7]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [6]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [9]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [8]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [11]),
    .I5(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>2  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [1]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [0]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [3]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [2]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [5]),
    .I5(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1826 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>3  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1826 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o )
  );
  LUT5 #(
    .INIT ( 32'h00000020 ))
  \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1  (
    .I0(\dvi_rx1/dec_r/rawword [2]),
    .I1(\dvi_rx1/dec_r/rawword [1]),
    .I2(\dvi_rx1/dec_r/rawword [4]),
    .I3(\dvi_rx1/dec_r/rawword [0]),
    .I4(\dvi_rx1/dec_r/rawword [3]),
    .O(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1827 )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2  (
    .I0(\dvi_rx1/dec_r/rawword [2]),
    .I1(\dvi_rx1/dec_r/rawword [0]),
    .I2(\dvi_rx1/dec_r/rawword [4]),
    .I3(\dvi_rx1/dec_r/rawword [3]),
    .I4(\dvi_rx1/dec_r/rawword [1]),
    .O(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1828 )
  );
  LUT6 #(
    .INIT ( 64'h0420002004000000 ))
  \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o3  (
    .I0(\dvi_rx1/dec_r/rawword [8]),
    .I1(\dvi_rx1/dec_r/rawword [5]),
    .I2(\dvi_rx1/dec_r/rawword [6]),
    .I3(\dvi_rx1/dec_r/rawword [7]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1828 ),
    .I5(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1827 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o2  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I5(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .O(\dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o2_1829 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o2  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I5(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .O(\dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o2_1830 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o2  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I5(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .O(\dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o2_1831 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \hsv_converter/v_01[9]_GND_30_o_LessThan_5_o1_SW0  (
    .I0(\hsv_converter/max_calculator/r_value [0]),
    .I1(\hsv_converter/max_calculator/r_value [6]),
    .I2(\hsv_converter/max_calculator/r_value [8]),
    .I3(\hsv_converter/max_calculator/r_value [1]),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \hsv_converter/v_01[9]_GND_30_o_LessThan_5_o1  (
    .I0(\hsv_converter/max_calculator/r_value [3]),
    .I1(\hsv_converter/max_calculator/r_value [2]),
    .I2(\hsv_converter/max_calculator/r_value [7]),
    .I3(\hsv_converter/max_calculator/r_value [5]),
    .I4(\hsv_converter/max_calculator/r_value [4]),
    .I5(N24),
    .O(\hsv_converter/v_01[9]_GND_30_o_LessThan_5_o )
  );
  LUT6 #(
    .INIT ( 64'hAAA288808880AAA2 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT85  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encr/decision2_1458 ),
    .I2(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT8 ),
    .I3(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT83 ),
    .I4(\dvi_tx/encr/cnt [3]),
    .I5(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT81_1418 ),
    .O(\dvi_tx/encr/GND_48_o_cnt[4]_mux_55_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h99996666A55A5AA5 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT61  (
    .I0(\dvi_tx/encr/cnt [2]),
    .I1(\dvi_tx/encr/n0233 [2]),
    .I2(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT61_1417 ),
    .I3(\dvi_tx/encr/n0236 [2]),
    .I4(\dvi_tx/encr/Madd_cnt[4]_GND_48_o_add_47_OUT1 ),
    .I5(\dvi_tx/encr/decision3_1457 ),
    .O(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT6 )
  );
  LUT6 #(
    .INIT ( 64'h2AA22A2A08800808 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT62  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encr/decision2_1458 ),
    .I2(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT63 ),
    .I3(\dvi_tx/encr/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> ),
    .I4(\dvi_tx/encr/cnt [1]),
    .I5(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT6 ),
    .O(\dvi_tx/encr/GND_48_o_cnt[4]_mux_55_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h0F0FF0F066996699 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT81  (
    .I0(N26),
    .I1(\dvi_tx/encr/n0236 [3]),
    .I2(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 ),
    .I3(\dvi_tx/encr/Madd_cnt[4]_GND_48_o_add_50_OUT_cy<0>2 ),
    .I4(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT811 ),
    .I5(\dvi_tx/encr/decision3_1457 ),
    .O(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT81_1418 )
  );
  LUT6 #(
    .INIT ( 64'h7F55BFAA3F003F00 ))
  \dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<3>1  (
    .I0(\dvi_tx/encr/q_m [2]),
    .I1(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N28),
    .I3(\dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>16 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .O(\dvi_tx/encr/PWR_47_o_BUS_0017_sub_29_OUT [3])
  );
  LUT5 #(
    .INIT ( 32'hCCCC0C48 ))
  \dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>12  (
    .I0(\dvi_tx/encr/q_m [2]),
    .I1(\dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>1 ),
    .I2(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9 ),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>11_1839 )
  );
  LUT4 #(
    .INIT ( 16'hE400 ))
  \dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>13  (
    .I0(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encr/q_m [5]),
    .I2(\dvi_tx/encr/q_m [7]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>12_1840 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFD5EAFFFFC0C0 ))
  \dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>14  (
    .I0(\dvi_tx/encr/q_m [2]),
    .I1(\dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>16 ),
    .I2(\dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>12_1840 ),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>11_1839 ),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .O(\dvi_tx/encr/PWR_47_o_BUS_0017_sub_29_OUT [2])
  );
  LUT3 #(
    .INIT ( 8'hDB ))
  \dvi_tx/encr/decision3_SW0  (
    .I0(\dvi_tx/encr/cnt [4]),
    .I1(\dvi_tx/encr/n1q_m [1]),
    .I2(\dvi_tx/encr/n0q_m [1]),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'h42D24B42DBD24BDB ))
  \dvi_tx/encr/decision3  (
    .I0(\dvi_tx/encr/n1q_m [3]),
    .I1(\dvi_tx/encr/n0q_m [3]),
    .I2(\dvi_tx/encr/cnt [4]),
    .I3(\dvi_tx/encr/n1q_m [2]),
    .I4(\dvi_tx/encr/n0q_m [2]),
    .I5(N30),
    .O(\dvi_tx/encr/decision3_1457 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \dvi_tx/encr/decision2_SW0  (
    .I0(\dvi_tx/encr/cnt [3]),
    .I1(\dvi_tx/encr/cnt [4]),
    .O(N32)
  );
  LUT6 #(
    .INIT ( 64'hF0F1001100110011 ))
  \dvi_tx/encr/decision2  (
    .I0(\dvi_tx/encr/cnt [1]),
    .I1(\dvi_tx/encr/cnt [2]),
    .I2(\dvi_tx/encr/Msub_n0233_lut [3]),
    .I3(N32),
    .I4(\dvi_tx/encr/Msub_n0233_lut [2]),
    .I5(\dvi_tx/encr/Msub_n0233_lut [1]),
    .O(\dvi_tx/encr/decision2_1458 )
  );
  LUT6 #(
    .INIT ( 64'hAAA288808880AAA2 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT85  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encg/decision2_1555 ),
    .I2(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT8 ),
    .I3(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT83 ),
    .I4(\dvi_tx/encg/cnt [3]),
    .I5(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT81_1519 ),
    .O(\dvi_tx/encg/GND_48_o_cnt[4]_mux_55_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h99996666A55A5AA5 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT61  (
    .I0(\dvi_tx/encg/cnt [2]),
    .I1(\dvi_tx/encg/n0233 [2]),
    .I2(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT61_1518 ),
    .I3(\dvi_tx/encg/n0236 [2]),
    .I4(\dvi_tx/encg/Madd_cnt[4]_GND_48_o_add_47_OUT1 ),
    .I5(\dvi_tx/encg/decision3_1554 ),
    .O(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT6 )
  );
  LUT6 #(
    .INIT ( 64'h2AA22A2A08800808 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT62  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encg/decision2_1555 ),
    .I2(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT63 ),
    .I3(\dvi_tx/encg/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> ),
    .I4(\dvi_tx/encg/cnt [1]),
    .I5(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT6 ),
    .O(\dvi_tx/encg/GND_48_o_cnt[4]_mux_55_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h0F0FF0F066996699 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT81  (
    .I0(N34),
    .I1(\dvi_tx/encg/n0236 [3]),
    .I2(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 ),
    .I3(\dvi_tx/encg/Madd_cnt[4]_GND_48_o_add_50_OUT_cy<0>2 ),
    .I4(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT811 ),
    .I5(\dvi_tx/encg/decision3_1554 ),
    .O(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT81_1519 )
  );
  LUT6 #(
    .INIT ( 64'h7F55BFAA3F003F00 ))
  \dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<3>1  (
    .I0(\dvi_tx/encg/q_m [2]),
    .I1(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N36),
    .I3(\dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>16 ),
    .I4(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .O(\dvi_tx/encg/PWR_47_o_BUS_0017_sub_29_OUT [3])
  );
  LUT5 #(
    .INIT ( 32'hCCCC0C48 ))
  \dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>12  (
    .I0(\dvi_tx/encg/q_m [2]),
    .I1(\dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>1 ),
    .I2(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9 ),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>11_1849 )
  );
  LUT4 #(
    .INIT ( 16'hE400 ))
  \dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>13  (
    .I0(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encg/q_m [5]),
    .I2(\dvi_tx/encg/q_m [7]),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>12_1850 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFD5EAFFFFC0C0 ))
  \dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>14  (
    .I0(\dvi_tx/encg/q_m [2]),
    .I1(\dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>16 ),
    .I2(\dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>12_1850 ),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>11_1849 ),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .O(\dvi_tx/encg/PWR_47_o_BUS_0017_sub_29_OUT [2])
  );
  LUT3 #(
    .INIT ( 8'hDB ))
  \dvi_tx/encg/decision3_SW0  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/n1q_m [1]),
    .I2(\dvi_tx/encg/n0q_m [1]),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'h42D24B42DBD24BDB ))
  \dvi_tx/encg/decision3  (
    .I0(\dvi_tx/encg/n1q_m [3]),
    .I1(\dvi_tx/encg/n0q_m [3]),
    .I2(\dvi_tx/encg/cnt [4]),
    .I3(\dvi_tx/encg/n1q_m [2]),
    .I4(\dvi_tx/encg/n0q_m [2]),
    .I5(N38),
    .O(\dvi_tx/encg/decision3_1554 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \dvi_tx/encg/decision2_SW0  (
    .I0(\dvi_tx/encg/cnt [3]),
    .I1(\dvi_tx/encg/cnt [4]),
    .O(N40)
  );
  LUT6 #(
    .INIT ( 64'hFF01010101010101 ))
  \dvi_tx/encg/decision2  (
    .I0(\dvi_tx/encg/cnt [1]),
    .I1(\dvi_tx/encg/cnt [2]),
    .I2(N40),
    .I3(\dvi_tx/encg/Msub_n0233_lut [3]),
    .I4(\dvi_tx/encg/Msub_n0233_lut [2]),
    .I5(\dvi_tx/encg/Msub_n0233_lut [1]),
    .O(\dvi_tx/encg/decision2_1555 )
  );
  LUT6 #(
    .INIT ( 64'hAAA288808880AAA2 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT85  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encb/decision2_1657 ),
    .I2(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT8 ),
    .I3(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT83 ),
    .I4(\dvi_tx/encb/cnt [3]),
    .I5(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT81_1616 ),
    .O(\dvi_tx/encb/GND_48_o_cnt[4]_mux_55_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h99996666A55A5AA5 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT61  (
    .I0(\dvi_tx/encb/cnt [2]),
    .I1(\dvi_tx/encb/n0233 [2]),
    .I2(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT61_1615 ),
    .I3(\dvi_tx/encb/n0236 [2]),
    .I4(\dvi_tx/encb/Madd_cnt[4]_GND_48_o_add_47_OUT1 ),
    .I5(\dvi_tx/encb/decision3_1656 ),
    .O(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT6 )
  );
  LUT6 #(
    .INIT ( 64'h2AA22A2A08800808 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT62  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encb/decision2_1657 ),
    .I2(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT63 ),
    .I3(\dvi_tx/encb/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> ),
    .I4(\dvi_tx/encb/cnt [1]),
    .I5(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT6 ),
    .O(\dvi_tx/encb/GND_48_o_cnt[4]_mux_55_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h0F0FF0F066996699 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT81  (
    .I0(N42),
    .I1(\dvi_tx/encb/n0236 [3]),
    .I2(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 ),
    .I3(\dvi_tx/encb/Madd_cnt[4]_GND_48_o_add_50_OUT_cy<0>2 ),
    .I4(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT811 ),
    .I5(\dvi_tx/encb/decision3_1656 ),
    .O(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT81_1616 )
  );
  LUT6 #(
    .INIT ( 64'h7F55BFAA3F003F00 ))
  \dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<3>1  (
    .I0(\dvi_tx/encb/q_m [2]),
    .I1(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N44),
    .I3(\dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>16 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .O(\dvi_tx/encb/PWR_47_o_BUS_0017_sub_29_OUT [3])
  );
  LUT5 #(
    .INIT ( 32'hCCCC0C48 ))
  \dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>12  (
    .I0(\dvi_tx/encb/q_m [2]),
    .I1(\dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>1 ),
    .I2(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9 ),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>11_1859 )
  );
  LUT4 #(
    .INIT ( 16'hE400 ))
  \dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>13  (
    .I0(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encb/q_m [5]),
    .I2(\dvi_tx/encb/q_m [7]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>12_1860 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFD5EAFFFFC0C0 ))
  \dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>14  (
    .I0(\dvi_tx/encb/q_m [2]),
    .I1(\dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>16 ),
    .I2(\dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>12_1860 ),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>11_1859 ),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .O(\dvi_tx/encb/PWR_47_o_BUS_0017_sub_29_OUT [2])
  );
  LUT3 #(
    .INIT ( 8'hDB ))
  \dvi_tx/encb/decision3_SW0  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/n1q_m [1]),
    .I2(\dvi_tx/encb/n0q_m [1]),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'h42D24B42DBD24BDB ))
  \dvi_tx/encb/decision3  (
    .I0(\dvi_tx/encb/n1q_m [3]),
    .I1(\dvi_tx/encb/n0q_m [3]),
    .I2(\dvi_tx/encb/cnt [4]),
    .I3(\dvi_tx/encb/n1q_m [2]),
    .I4(\dvi_tx/encb/n0q_m [2]),
    .I5(N46),
    .O(\dvi_tx/encb/decision3_1656 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \dvi_tx/encb/decision2_SW0  (
    .I0(\dvi_tx/encb/cnt [3]),
    .I1(\dvi_tx/encb/cnt [4]),
    .O(N48)
  );
  LUT6 #(
    .INIT ( 64'hF0F1001100110011 ))
  \dvi_tx/encb/decision2  (
    .I0(\dvi_tx/encb/cnt [1]),
    .I1(\dvi_tx/encb/cnt [2]),
    .I2(\dvi_tx/encb/Msub_n0233_lut [3]),
    .I3(N48),
    .I4(\dvi_tx/encb/Msub_n0233_lut [2]),
    .I5(\dvi_tx/encb/Msub_n0233_lut [1]),
    .O(\dvi_tx/encb/decision2_1657 )
  );
  IBUF   clk100_IBUF (
    .I(clk100),
    .O(clk100_IBUF_12)
  );
  IBUF   SW_2_IBUF (
    .I(SW[2]),
    .O(SW_2_IBUF_8)
  );
  IBUF   SW_1_IBUF (
    .I(SW[1]),
    .O(SW_1_IBUF_9)
  );
  IBUF   SW_0_IBUF (
    .I(SW[0]),
    .O(SW_0_IBUF_10)
  );
  IBUF   rstbtn_n_IBUF (
    .I(rstbtn_n),
    .O(rstbtn_n_IBUF_11)
  );
  OBUF   LED_7_OBUF (
    .I(\dvi_rx1/dec_r/cbnd/iamrdy_46 ),
    .O(LED[7])
  );
  OBUF   LED_6_OBUF (
    .I(\dvi_rx1/dec_g/cbnd/iamrdy_45 ),
    .O(LED[6])
  );
  OBUF   LED_5_OBUF (
    .I(\dvi_rx1/dec_b/cbnd/iamrdy_44 ),
    .O(LED[5])
  );
  OBUF   LED_4_OBUF (
    .I(\dvi_rx1/dec_r/cbnd/iamrdy_46 ),
    .O(LED[4])
  );
  OBUF   LED_3_OBUF (
    .I(\dvi_rx1/dec_g/cbnd/iamrdy_45 ),
    .O(LED[3])
  );
  OBUF   LED_2_OBUF (
    .I(\dvi_rx1/dec_b/cbnd/iamrdy_44 ),
    .O(LED[2])
  );
  OBUF   LED_1_OBUF (
    .I(\dvi_rx1/dec_b/de_43 ),
    .O(LED[1])
  );
  OBUF   LED_0_OBUF (
    .I(\dvi_rx1/dec_b/de_43 ),
    .O(LED[0])
  );
  FDR   \dvi_rx1/dec_b/cbnd/skip_line  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/skip_line_glue_set_1876 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/skip_line_757 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \dvi_rx1/dec_b/cbnd/skip_line_glue_set  (
    .I0(\dvi_rx1/dec_b/cbnd/skip_line_757 ),
    .I1(\dvi_rx1/dec_b/cbnd/blnkbgn_760 ),
    .O(\dvi_rx1/dec_b/cbnd/skip_line_glue_set_1876 )
  );
  FDR   \dvi_rx1/dec_b/cbnd/iamrdy  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/iamrdy_glue_set_1877 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/iamrdy_44 )
  );
  FDR   \dvi_rx1/dec_g/cbnd/skip_line  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/skip_line_glue_set_1878 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/skip_line_783 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \dvi_rx1/dec_g/cbnd/skip_line_glue_set  (
    .I0(\dvi_rx1/dec_g/cbnd/skip_line_783 ),
    .I1(\dvi_rx1/dec_g/cbnd/blnkbgn_784 ),
    .O(\dvi_rx1/dec_g/cbnd/skip_line_glue_set_1878 )
  );
  FDR   \dvi_rx1/dec_g/cbnd/iamrdy  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/iamrdy_glue_set_1879 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/iamrdy_45 )
  );
  FDR   \dvi_rx1/dec_r/cbnd/skip_line  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/skip_line_glue_set_1880 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/skip_line_807 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \dvi_rx1/dec_r/cbnd/skip_line_glue_set  (
    .I0(\dvi_rx1/dec_r/cbnd/skip_line_807 ),
    .I1(\dvi_rx1/dec_r/cbnd/blnkbgn_808 ),
    .O(\dvi_rx1/dec_r/cbnd/skip_line_glue_set_1880 )
  );
  FDR   \dvi_rx1/dec_r/cbnd/iamrdy  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/iamrdy_glue_set_1881 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/iamrdy_46 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1882 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [9]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1883 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [8]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1884 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [7]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1885 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [6]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1886 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [5]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1887 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1888 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [3]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1889 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [2]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1890 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [1]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1891 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1892 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [9]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1893 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [8]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1894 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [7]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1895 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [6]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1896 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [5]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1897 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1898 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [3]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1899 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [2]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1900 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [1]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1901 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1902 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [9]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1903 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [8]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1904 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [7]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1905 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [6]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1906 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [5]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1907 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1908 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [3]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1909 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [2]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1910 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [1]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1911 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<8>_rt  (
    .I0(\hsv_converter/temp_1 [14]),
    .O(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_cy<8>_rt_1912 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [11]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1913 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [11]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1914 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [11]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1915 )
  );
  FDC   \dvi_rx1/dec_b/des_0/cal_data_master  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/cal_data_master_rstpot_1916 ),
    .Q(\dvi_rx1/dec_b/des_0/cal_data_master_367 )
  );
  FDC   \dvi_rx1/dec_b/des_0/ce_data_inta  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/ce_data_inta_rstpot_1917 ),
    .Q(\dvi_rx1/dec_b/des_0/ce_data_inta_364 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/enable_rstpot  (
    .I0(\dvi_rx1/dec_b/des_0/counter [5]),
    .I1(\dvi_rx1/dec_b/des_0/enable_365 ),
    .I2(N0),
    .O(\dvi_rx1/dec_b/des_0/enable_rstpot_1918 )
  );
  FDC   \dvi_rx1/dec_b/des_0/enable  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/enable_rstpot_1918 ),
    .Q(\dvi_rx1/dec_b/des_0/enable_365 )
  );
  FDC   \dvi_rx1/dec_b/des_0/cal_data_sint  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/cal_data_sint_rstpot_1919 ),
    .Q(\dvi_rx1/dec_b/des_0/cal_data_sint_366 )
  );
  FDC   \dvi_rx1/dec_b/des_0/flag  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/flag_rstpot_1921 ),
    .Q(\dvi_rx1/dec_b/des_0/flag_363 )
  );
  FDC   \dvi_rx1/dec_g/des_0/cal_data_master  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/cal_data_master_rstpot_1922 ),
    .Q(\dvi_rx1/dec_g/des_0/cal_data_master_414 )
  );
  FDC   \dvi_rx1/dec_g/des_0/ce_data_inta  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/ce_data_inta_rstpot_1923 ),
    .Q(\dvi_rx1/dec_g/des_0/ce_data_inta_412 )
  );
  FDC   \dvi_rx1/dec_g/des_0/cal_data_sint  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/cal_data_sint_rstpot_1924 ),
    .Q(\dvi_rx1/dec_g/des_0/cal_data_sint_413 )
  );
  FDC   \dvi_rx1/dec_g/des_0/flag  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/flag_rstpot_1926 ),
    .Q(\dvi_rx1/dec_g/des_0/flag_411 )
  );
  FDC   \dvi_rx1/dec_r/des_0/cal_data_master  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/cal_data_master_rstpot_1927 ),
    .Q(\dvi_rx1/dec_r/des_0/cal_data_master_459 )
  );
  FDC   \dvi_rx1/dec_r/des_0/ce_data_inta  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/ce_data_inta_rstpot_1928 ),
    .Q(\dvi_rx1/dec_r/des_0/ce_data_inta_457 )
  );
  FDC   \dvi_rx1/dec_r/des_0/cal_data_sint  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/cal_data_sint_rstpot_1929 ),
    .Q(\dvi_rx1/dec_r/des_0/cal_data_sint_458 )
  );
  FDC   \dvi_rx1/dec_r/des_0/flag  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/flag_rstpot_1931 ),
    .Q(\dvi_rx1/dec_r/des_0/flag_456 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_547 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_q_551 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_rstpot_1932 )
  );
  FD   \dvi_rx1/dec_b/phsalgn_0/blnkbgn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_rstpot_1932 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_550 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_634 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_q_638 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_rstpot_1933 )
  );
  FD   \dvi_rx1/dec_g/phsalgn_0/blnkbgn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_rstpot_1933 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_637 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_721 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_q_725 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_rstpot_1934 )
  );
  FD   \dvi_rx1/dec_r/phsalgn_0/blnkbgn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_rstpot_1934 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_724 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_b/cbnd/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_b/cbnd/rcvd_ctkn_762 ),
    .I1(\dvi_rx1/dec_b/cbnd/rcvd_ctkn_q_761 ),
    .O(\dvi_rx1/dec_b/cbnd/blnkbgn_rstpot_1935 )
  );
  FD   \dvi_rx1/dec_b/cbnd/blnkbgn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/blnkbgn_rstpot_1935 ),
    .Q(\dvi_rx1/dec_b/cbnd/blnkbgn_760 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_g/cbnd/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_g/cbnd/rcvd_ctkn_786 ),
    .I1(\dvi_rx1/dec_g/cbnd/rcvd_ctkn_q_785 ),
    .O(\dvi_rx1/dec_g/cbnd/blnkbgn_rstpot_1936 )
  );
  FD   \dvi_rx1/dec_g/cbnd/blnkbgn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/blnkbgn_rstpot_1936 ),
    .Q(\dvi_rx1/dec_g/cbnd/blnkbgn_784 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_r/cbnd/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_r/cbnd/rcvd_ctkn_810 ),
    .I1(\dvi_rx1/dec_r/cbnd/rcvd_ctkn_q_809 ),
    .O(\dvi_rx1/dec_r/cbnd/blnkbgn_rstpot_1937 )
  );
  FD   \dvi_rx1/dec_r/cbnd/blnkbgn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/blnkbgn_rstpot_1937 ),
    .Q(\dvi_rx1/dec_r/cbnd/blnkbgn_808 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/tmdsclkint_0  (
    .C(tx_pclkx2),
    .D(\dvi_tx/toggle_1356 ),
    .Q(\dvi_tx/tmdsclkint [0])
  );
  FD   \dvi_rx1/dec_b/des_0/inc_data_int  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/des_0/inc_data_int_rstpot_1938 ),
    .Q(\dvi_rx1/dec_b/des_0/inc_data_int_357 )
  );
  FD   \dvi_rx1/dec_b/des_0/ce_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/des_0/ce_data_rstpot_1939 ),
    .Q(\dvi_rx1/dec_b/des_0/ce_data_359 )
  );
  FD   \dvi_rx1/dec_g/des_0/inc_data_int  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/des_0/inc_data_int_rstpot_1940 ),
    .Q(\dvi_rx1/dec_g/des_0/inc_data_int_405 )
  );
  FD   \dvi_rx1/dec_g/des_0/ce_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/des_0/ce_data_rstpot_1941 ),
    .Q(\dvi_rx1/dec_g/des_0/ce_data_407 )
  );
  FD   \dvi_rx1/dec_r/des_0/inc_data_int  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/des_0/inc_data_int_rstpot_1942 ),
    .Q(\dvi_rx1/dec_r/des_0/inc_data_int_450 )
  );
  FD   \dvi_rx1/dec_r/des_0/ce_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/des_0/ce_data_rstpot_1943 ),
    .Q(\dvi_rx1/dec_r/des_0/ce_data_452 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/cbnd/ra_en  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/ra_en_rstpot_1944 ),
    .Q(\dvi_rx1/dec_b/cbnd/ra_en_756 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/cbnd/ra_en  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/ra_en_rstpot_1945 ),
    .Q(\dvi_rx1/dec_g/cbnd/ra_en_782 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/cbnd/ra_en  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/ra_en_rstpot_1946 ),
    .Q(\dvi_rx1/dec_r/cbnd/ra_en_806 )
  );
  FD   \dvi_rx1/dec_b/des_0/rst_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/des_0/rst_data_rstpot1_1947 ),
    .Q(\dvi_rx1/dec_b/des_0/rst_data_358 )
  );
  FD   \dvi_rx1/dec_g/des_0/rst_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/des_0/rst_data_rstpot1_1948 ),
    .Q(\dvi_rx1/dec_g/des_0/rst_data_406 )
  );
  FD   \dvi_rx1/dec_r/des_0/rst_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/des_0/rst_data_rstpot1_1949 ),
    .Q(\dvi_rx1/dec_r/des_0/rst_data_451 )
  );
  FD   \hsv_converter/min_calculator/r_index_0  (
    .C(rx_pclk),
    .D(\hsv_converter/min_calculator/r_index_0_rstpot1_1950 ),
    .Q(\hsv_converter/min_calculator/r_index [0])
  );
  FD   \hsv_converter/min_calculator/r_index_1  (
    .C(rx_pclk),
    .D(\hsv_converter/min_calculator/r_index_1_rstpot1_1951 ),
    .Q(\hsv_converter/min_calculator/r_index [1])
  );
  FD   \hsv_converter/max_calculator/r_index_0  (
    .C(rx_pclk),
    .D(\hsv_converter/max_calculator/r_index_0_rstpot1_1952 ),
    .Q(\hsv_converter/max_calculator/r_index [0])
  );
  FD   \hsv_converter/max_calculator/r_index_1  (
    .C(rx_pclk),
    .D(\hsv_converter/max_calculator/r_index_1_rstpot1_1953 ),
    .Q(\hsv_converter/max_calculator/r_index [1])
  );
  LUT6 #(
    .INIT ( 64'hD841412727BEBED8 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_lut<0>11  (
    .I0(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encr/q_m [3]),
    .I2(\dvi_tx/encr/q_m [5]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8_lut [0]),
    .I4(\dvi_tx/encr/q_m [7]),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_lut<0>1 )
  );
  LUT6 #(
    .INIT ( 64'hD841412727BEBED8 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_lut<0>11  (
    .I0(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encg/q_m [3]),
    .I2(\dvi_tx/encg/q_m [5]),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8_lut [0]),
    .I4(\dvi_tx/encg/q_m [7]),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_lut<0>1 )
  );
  LUT6 #(
    .INIT ( 64'hD841412727BEBED8 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_lut<0>11  (
    .I0(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encb/q_m [3]),
    .I2(\dvi_tx/encb/q_m [5]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8_lut [0]),
    .I4(\dvi_tx/encb/q_m [7]),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_lut<0>1 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \dvi_tx/encr/Mmux_q_m<4>11  (
    .I0(\dvi_tx/encr/din_q [4]),
    .I1(\dvi_tx/encr/din_q [3]),
    .I2(\dvi_tx/encr/din_q [2]),
    .I3(\dvi_tx/encr/din_q [1]),
    .I4(\dvi_tx/encr/din_q [0]),
    .O(\dvi_tx/encr/q_m [4])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \dvi_tx/encg/Mmux_q_m<4>11  (
    .I0(\dvi_tx/encg/din_q [4]),
    .I1(\dvi_tx/encg/din_q [3]),
    .I2(\dvi_tx/encg/din_q [2]),
    .I3(\dvi_tx/encg/din_q [1]),
    .I4(\dvi_tx/encg/din_q [0]),
    .O(\dvi_tx/encg/q_m [4])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \dvi_tx/encb/Mmux_q_m<4>11  (
    .I0(\dvi_tx/encb/din_q [4]),
    .I1(\dvi_tx/encb/din_q [3]),
    .I2(\dvi_tx/encb/din_q [2]),
    .I3(\dvi_tx/encb/din_q [1]),
    .I4(\dvi_tx/encb/din_q [0]),
    .O(\dvi_tx/encb/q_m [4])
  );
  LUT6 #(
    .INIT ( 64'h80800000C000C000 ))
  \dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>1411  (
    .I0(\dvi_tx/encr/q_m [2]),
    .I1(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N28),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_cy<0>2 )
  );
  LUT6 #(
    .INIT ( 64'h80800000C000C000 ))
  \dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>1411  (
    .I0(\dvi_tx/encg/q_m [2]),
    .I1(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N36),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9 ),
    .I4(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_cy<0>2 )
  );
  LUT6 #(
    .INIT ( 64'h80800000C000C000 ))
  \dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>1411  (
    .I0(\dvi_tx/encb/q_m [2]),
    .I1(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N44),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_cy<0>2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_tx/encr/Mmux_q_m<6>11_SW0  (
    .I0(\dvi_tx/encr/din_q [7]),
    .I1(\dvi_tx/encr/din_q [5]),
    .O(N56)
  );
  LUT6 #(
    .INIT ( 64'h7B5A2100B7A51200 ))
  \dvi_tx/encr/Mmux_q_m<7>11  (
    .I0(\dvi_tx/encr/din_q [6]),
    .I1(\dvi_tx/encr/n1d [3]),
    .I2(N56),
    .I3(\dvi_tx/encr/Mmux_q_m<3>12 ),
    .I4(\dvi_tx/encr/Mmux_q_m<3>11 ),
    .I5(\dvi_tx/encr/q_m [4]),
    .O(\dvi_tx/encr/q_m [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_tx/encg/Mmux_q_m<6>11_SW0  (
    .I0(\dvi_tx/encg/din_q [7]),
    .I1(\dvi_tx/encg/din_q [5]),
    .O(N58)
  );
  LUT6 #(
    .INIT ( 64'h7B5A2100B7A51200 ))
  \dvi_tx/encg/Mmux_q_m<7>11  (
    .I0(\dvi_tx/encg/din_q [6]),
    .I1(\dvi_tx/encg/n1d [3]),
    .I2(N58),
    .I3(\dvi_tx/encg/Mmux_q_m<3>12 ),
    .I4(\dvi_tx/encg/Mmux_q_m<3>11 ),
    .I5(\dvi_tx/encg/q_m [4]),
    .O(\dvi_tx/encg/q_m [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_tx/encb/Mmux_q_m<6>11_SW0  (
    .I0(\dvi_tx/encb/din_q [7]),
    .I1(\dvi_tx/encb/din_q [5]),
    .O(N60)
  );
  LUT6 #(
    .INIT ( 64'h7B5A2100B7A51200 ))
  \dvi_tx/encb/Mmux_q_m<7>11  (
    .I0(\dvi_tx/encb/din_q [6]),
    .I1(\dvi_tx/encb/n1d [3]),
    .I2(N60),
    .I3(\dvi_tx/encb/Mmux_q_m<3>12 ),
    .I4(\dvi_tx/encb/Mmux_q_m<3>11 ),
    .I5(\dvi_tx/encb/q_m [4]),
    .O(\dvi_tx/encb/q_m [7])
  );
  LUT3 #(
    .INIT ( 8'h17 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_xor<0>21_SW0  (
    .I0(tx_green[7]),
    .I1(tx_green[3]),
    .I2(tx_green[2]),
    .O(N70)
  );
  LUT3 #(
    .INIT ( 8'h81 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_xor<0>21_SW1  (
    .I0(tx_green[7]),
    .I1(tx_green[3]),
    .I2(tx_green[2]),
    .O(N71)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hsv_converter/v_01[9]_GND_30_o_LessThan_5_o1_SW1  (
    .I0(\hsv_converter/max_calculator/r_value [3]),
    .I1(\hsv_converter/max_calculator/r_value [2]),
    .O(N78)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA8 ))
  \hsv_converter/Mmux_s_0121  (
    .I0(\hsv_converter/s_01_f [2]),
    .I1(\hsv_converter/max_calculator/r_value [4]),
    .I2(\hsv_converter/max_calculator/r_value [5]),
    .I3(\hsv_converter/max_calculator/r_value [7]),
    .I4(N78),
    .I5(N24),
    .O(\hsv_converter/s_01 [1])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA8 ))
  \hsv_converter/Mmux_s_0131  (
    .I0(\hsv_converter/s_01_f [3]),
    .I1(\hsv_converter/max_calculator/r_value [4]),
    .I2(\hsv_converter/max_calculator/r_value [5]),
    .I3(\hsv_converter/max_calculator/r_value [7]),
    .I4(N78),
    .I5(N24),
    .O(\hsv_converter/s_01 [2])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA8 ))
  \hsv_converter/Mmux_s_0161  (
    .I0(\hsv_converter/s_01_f [6]),
    .I1(\hsv_converter/max_calculator/r_value [4]),
    .I2(\hsv_converter/max_calculator/r_value [5]),
    .I3(\hsv_converter/max_calculator/r_value [7]),
    .I4(N78),
    .I5(N24),
    .O(\hsv_converter/s_01 [5])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA8 ))
  \hsv_converter/Mmux_s_0171  (
    .I0(\hsv_converter/s_01_f [7]),
    .I1(\hsv_converter/max_calculator/r_value [4]),
    .I2(\hsv_converter/max_calculator/r_value [5]),
    .I3(\hsv_converter/max_calculator/r_value [7]),
    .I4(N78),
    .I5(N24),
    .O(\hsv_converter/s_01 [6])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA8 ))
  \hsv_converter/Mmux_s_0181  (
    .I0(\hsv_converter/s_01_f [8]),
    .I1(\hsv_converter/max_calculator/r_value [4]),
    .I2(\hsv_converter/max_calculator/r_value [5]),
    .I3(\hsv_converter/max_calculator/r_value [7]),
    .I4(N78),
    .I5(N24),
    .O(\hsv_converter/s_01 [7])
  );
  LUT5 #(
    .INIT ( 32'h71F960E8 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_xor<0>31  (
    .I0(tx_green[7]),
    .I1(tx_green[3]),
    .I2(N89),
    .I3(N90),
    .I4(N88),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_24 )
  );
  LUT6 #(
    .INIT ( 64'h906050A0A0509060 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT82  (
    .I0(\dvi_tx/encr/n0236 [3]),
    .I1(\dvi_tx/encr/n0236 [2]),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/cnt [3]),
    .I4(\dvi_tx/encr/cnt [2]),
    .I5(N100),
    .O(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT8 )
  );
  LUT6 #(
    .INIT ( 64'h906050A0A0509060 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT82  (
    .I0(\dvi_tx/encg/n0236 [3]),
    .I1(\dvi_tx/encg/n0236 [2]),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/cnt [3]),
    .I4(\dvi_tx/encg/cnt [2]),
    .I5(N102),
    .O(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT8 )
  );
  LUT6 #(
    .INIT ( 64'h906050A0A0509060 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT82  (
    .I0(\dvi_tx/encb/n0236 [3]),
    .I1(\dvi_tx/encb/n0236 [2]),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .I3(\dvi_tx/encb/cnt [3]),
    .I4(\dvi_tx/encb/cnt [2]),
    .I5(N104),
    .O(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT8 )
  );
  LUT6 #(
    .INIT ( 64'h050A090606090A05 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT84  (
    .I0(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 ),
    .I1(\dvi_tx/encr/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<2> ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/cnt [3]),
    .I4(N106),
    .I5(\dvi_tx/encr/cnt [2]),
    .O(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT83 )
  );
  LUT6 #(
    .INIT ( 64'h050A090606090A05 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT84  (
    .I0(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 ),
    .I1(\dvi_tx/encg/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<2> ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/cnt [3]),
    .I4(N108),
    .I5(\dvi_tx/encg/cnt [2]),
    .O(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT83 )
  );
  LUT6 #(
    .INIT ( 64'h050A090606090A05 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT84  (
    .I0(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 ),
    .I1(\dvi_tx/encb/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<2> ),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .I3(\dvi_tx/encb/cnt [3]),
    .I4(N110),
    .I5(\dvi_tx/encb/cnt [2]),
    .O(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT83 )
  );
  LUT5 #(
    .INIT ( 32'h101010FF ))
  \hsv_converter/min_calculator/Reset_OR_DriverANDClockEnable1  (
    .I0(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<4>_1000 ),
    .I1(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<4>_1030 ),
    .I2(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<4>_985 ),
    .I3(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<4>_970 ),
    .I4(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<4>_955 ),
    .O(\hsv_converter/min_calculator/Reset_OR_DriverANDClockEnable )
  );
  LUT5 #(
    .INIT ( 32'h101010FF ))
  \hsv_converter/max_calculator/Reset_OR_DriverANDClockEnable1  (
    .I0(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<4>_1090 ),
    .I1(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<4>_1120 ),
    .I2(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<4>_1075 ),
    .I3(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<4>_1060 ),
    .I4(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<4>_1045 ),
    .O(\hsv_converter/max_calculator/Reset_OR_DriverANDClockEnable )
  );
  LUT6 #(
    .INIT ( 64'h3322CC88BE3CEBC3 ))
  \dvi_tx/encg/Madd_cnt[4]_GND_48_o_add_50_OUT_cy<0>31  (
    .I0(\dvi_tx/encg/cnt [1]),
    .I1(\dvi_tx/encg/cnt [2]),
    .I2(\dvi_tx/encg/n1q_m [1]),
    .I3(\dvi_tx/encg/q_m_reg [8]),
    .I4(\dvi_tx/encg/Msub_n0233_lut [2]),
    .I5(\dvi_tx/encg/Msub_n0233_lut [1]),
    .O(\dvi_tx/encg/Madd_cnt[4]_GND_48_o_add_50_OUT_cy<0>2 )
  );
  LUT6 #(
    .INIT ( 64'h3322CC88BE3CEBC3 ))
  \dvi_tx/encb/Madd_cnt[4]_GND_48_o_add_50_OUT_cy<0>31  (
    .I0(\dvi_tx/encb/cnt [1]),
    .I1(\dvi_tx/encb/cnt [2]),
    .I2(\dvi_tx/encb/n1q_m [1]),
    .I3(\dvi_tx/encb/q_m_reg [8]),
    .I4(\dvi_tx/encb/Msub_n0233_lut [2]),
    .I5(\dvi_tx/encb/Msub_n0233_lut [1]),
    .O(\dvi_tx/encb/Madd_cnt[4]_GND_48_o_add_50_OUT_cy<0>2 )
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_b/des_0/incdec_data_d_pdcounter[4]_AND_5_o1  (
    .I0(\dvi_rx1/dec_b/des_0/incdec_data_d_361 ),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I5(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_b/des_0/incdec_data_d_pdcounter[4]_AND_5_o )
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_g/des_0/incdec_data_d_pdcounter[4]_AND_5_o1  (
    .I0(\dvi_rx1/dec_g/des_0/incdec_data_d_409 ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I5(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_g/des_0/incdec_data_d_pdcounter[4]_AND_5_o )
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_r/des_0/incdec_data_d_pdcounter[4]_AND_5_o1  (
    .I0(\dvi_rx1/dec_r/des_0/incdec_data_d_454 ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I5(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_r/des_0/incdec_data_d_pdcounter[4]_AND_5_o )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA8 ))
  \hsv_converter/Mmux_s_0141  (
    .I0(\hsv_converter/s_01_f [4]),
    .I1(\hsv_converter/max_calculator/r_value [4]),
    .I2(\hsv_converter/max_calculator/r_value [5]),
    .I3(\hsv_converter/max_calculator/r_value [7]),
    .I4(N78),
    .I5(N24),
    .O(\hsv_converter/s_01 [3])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA8 ))
  \hsv_converter/Mmux_s_0151  (
    .I0(\hsv_converter/s_01_f [5]),
    .I1(\hsv_converter/max_calculator/r_value [4]),
    .I2(\hsv_converter/max_calculator/r_value [5]),
    .I3(\hsv_converter/max_calculator/r_value [7]),
    .I4(N78),
    .I5(N24),
    .O(\hsv_converter/s_01 [4])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA8 ))
  \hsv_converter/Mmux_s_0191  (
    .I0(\hsv_converter/s_01_q [0]),
    .I1(\hsv_converter/max_calculator/r_value [4]),
    .I2(\hsv_converter/max_calculator/r_value [5]),
    .I3(\hsv_converter/max_calculator/r_value [7]),
    .I4(N78),
    .I5(N24),
    .O(\hsv_converter/s_01 [8])
  );
  LUT6 #(
    .INIT ( 64'hFEE8E880E8808000 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_xor<0>31_SW4  (
    .I0(tx_green[4]),
    .I1(tx_green[1]),
    .I2(tx_green[0]),
    .I3(tx_green[6]),
    .I4(tx_green[5]),
    .I5(tx_green[2]),
    .O(N88)
  );
  LUT6 #(
    .INIT ( 64'hFFFEFEE8FEE8E880 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_xor<0>31_SW5  (
    .I0(tx_green[4]),
    .I1(tx_green[1]),
    .I2(tx_green[0]),
    .I3(tx_green[6]),
    .I4(tx_green[5]),
    .I5(tx_green[2]),
    .O(N89)
  );
  LUT6 #(
    .INIT ( 64'h8000000100010117 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_xor<0>31_SW6  (
    .I0(tx_green[4]),
    .I1(tx_green[1]),
    .I2(tx_green[0]),
    .I3(tx_green[6]),
    .I4(tx_green[5]),
    .I5(tx_green[2]),
    .O(N90)
  );
  LUT6 #(
    .INIT ( 64'h055F015755FF157F ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT10421  (
    .I0(\dvi_tx/encr/cnt [3]),
    .I1(\dvi_tx/encr/cnt [1]),
    .I2(\dvi_tx/encr/cnt [2]),
    .I3(\dvi_tx/encr/n0236 [3]),
    .I4(\dvi_tx/encr/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> ),
    .I5(\dvi_tx/encr/n0236 [2]),
    .O(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 )
  );
  LUT6 #(
    .INIT ( 64'h055F015755FF157F ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT10421  (
    .I0(\dvi_tx/encg/cnt [3]),
    .I1(\dvi_tx/encg/cnt [1]),
    .I2(\dvi_tx/encg/cnt [2]),
    .I3(\dvi_tx/encg/n0236 [3]),
    .I4(\dvi_tx/encg/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> ),
    .I5(\dvi_tx/encg/n0236 [2]),
    .O(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 )
  );
  LUT6 #(
    .INIT ( 64'h055F015755FF157F ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT10421  (
    .I0(\dvi_tx/encb/cnt [3]),
    .I1(\dvi_tx/encb/cnt [1]),
    .I2(\dvi_tx/encb/cnt [2]),
    .I3(\dvi_tx/encb/n0236 [3]),
    .I4(\dvi_tx/encb/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<1> ),
    .I5(\dvi_tx/encb/n0236 [2]),
    .O(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 )
  );
  LUT4 #(
    .INIT ( 16'h6966 ))
  \dvi_tx/encr/Msub_n0236_xor<2>11  (
    .I0(\dvi_tx/encr/n0q_m [2]),
    .I1(\dvi_tx/encr/n1q_m [2]),
    .I2(\dvi_tx/encr/n1q_m [1]),
    .I3(\dvi_tx/encr/n0q_m [1]),
    .O(\dvi_tx/encr/n0236 [2])
  );
  LUT4 #(
    .INIT ( 16'h6966 ))
  \dvi_tx/encg/Msub_n0236_xor<2>11  (
    .I0(\dvi_tx/encg/n0q_m [2]),
    .I1(\dvi_tx/encg/n1q_m [2]),
    .I2(\dvi_tx/encg/n1q_m [1]),
    .I3(\dvi_tx/encg/n0q_m [1]),
    .O(\dvi_tx/encg/n0236 [2])
  );
  LUT4 #(
    .INIT ( 16'h6966 ))
  \dvi_tx/encb/Msub_n0236_xor<2>11  (
    .I0(\dvi_tx/encb/n0q_m [2]),
    .I1(\dvi_tx/encb/n1q_m [2]),
    .I2(\dvi_tx/encb/n1q_m [1]),
    .I3(\dvi_tx/encb/n0q_m [1]),
    .O(\dvi_tx/encb/n0236 [2])
  );
  LUT6 #(
    .INIT ( 64'hFE76DC54BA329810 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT102  (
    .I0(\dvi_tx/encr/Msub_n0233_cy [3]),
    .I1(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT101 ),
    .I2(N118),
    .I3(N121),
    .I4(N119),
    .I5(N120),
    .O(\dvi_tx/encr/GND_48_o_cnt[4]_mux_55_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFBEA7362D9C85140 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT102  (
    .I0(\dvi_tx/encg/Msub_n0233_cy [3]),
    .I1(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT101 ),
    .I2(N125),
    .I3(N123),
    .I4(N126),
    .I5(N124),
    .O(\dvi_tx/encg/GND_48_o_cnt[4]_mux_55_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT102  (
    .I0(\dvi_tx/encb/Msub_n0233_cy [3]),
    .I1(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT101 ),
    .I2(N128),
    .I3(N129),
    .I4(N131),
    .I5(N130),
    .O(\dvi_tx/encb/GND_48_o_cnt[4]_mux_55_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_xor<0>11  (
    .I0(tx_green[7]),
    .I1(tx_green[3]),
    .I2(tx_green[6]),
    .I3(tx_green[5]),
    .I4(tx_green[2]),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd3_lut [0]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_04 )
  );
  LUT6 #(
    .INIT ( 64'h6A6AC0C03FC03FC0 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>31  (
    .I0(\dvi_tx/encr/q_m [2]),
    .I1(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N28),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_29 )
  );
  LUT6 #(
    .INIT ( 64'h6A6AC0C03FC03FC0 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>31  (
    .I0(\dvi_tx/encg/q_m [2]),
    .I1(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N36),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9 ),
    .I4(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_29 )
  );
  LUT6 #(
    .INIT ( 64'h6A6AC0C03FC03FC0 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>31  (
    .I0(\dvi_tx/encb/q_m [2]),
    .I1(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N44),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_29 )
  );
  LUT6 #(
    .INIT ( 64'h111F111F111FFFFF ))
  \hsv_converter/min_calculator/_n0036_inv1  (
    .I0(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<4>_1030 ),
    .I1(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<4>_1000 ),
    .I2(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<4>_1015 ),
    .I3(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<4>_985 ),
    .I4(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<4>_970 ),
    .I5(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<4>_955 ),
    .O(\hsv_converter/min_calculator/_n0036_inv )
  );
  LUT6 #(
    .INIT ( 64'h035703570357FFFF ))
  \hsv_converter/max_calculator/_n0036_inv1  (
    .I0(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<4>_1105 ),
    .I1(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<4>_1090 ),
    .I2(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<4>_1120 ),
    .I3(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<4>_1075 ),
    .I4(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<4>_1045 ),
    .I5(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<4>_1060 ),
    .O(\hsv_converter/max_calculator/_n0036_inv )
  );
  LUT6 #(
    .INIT ( 64'h8800EECCCF8EFCE8 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT8111  (
    .I0(\dvi_tx/encg/cnt [1]),
    .I1(\dvi_tx/encg/cnt [2]),
    .I2(\dvi_tx/encg/n0q_m [1]),
    .I3(\dvi_tx/encg/q_m_reg [8]),
    .I4(\dvi_tx/encg/Msub_n0233_lut [2]),
    .I5(\dvi_tx/encg/Msub_n0233_lut [1]),
    .O(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT811 )
  );
  LUT6 #(
    .INIT ( 64'h8800EECCCF8EFCE8 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT8111  (
    .I0(\dvi_tx/encb/cnt [1]),
    .I1(\dvi_tx/encb/cnt [2]),
    .I2(\dvi_tx/encb/n0q_m [1]),
    .I3(\dvi_tx/encb/q_m_reg [8]),
    .I4(\dvi_tx/encb/Msub_n0233_lut [2]),
    .I5(\dvi_tx/encb/Msub_n0233_lut [1]),
    .O(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT811 )
  );
  LUT6 #(
    .INIT ( 64'hDD4D4D44DD4DDD4D ))
  \dvi_tx/encr/Msub_n0236_cy<3>11  (
    .I0(\dvi_tx/encr/n0q_m [3]),
    .I1(\dvi_tx/encr/n1q_m [3]),
    .I2(\dvi_tx/encr/n0q_m [2]),
    .I3(\dvi_tx/encr/n1q_m [2]),
    .I4(\dvi_tx/encr/n1q_m [1]),
    .I5(\dvi_tx/encr/n0q_m [1]),
    .O(\dvi_tx/encr/Msub_n0236_cy [3])
  );
  LUT6 #(
    .INIT ( 64'h88AA088AEEFFAEEF ))
  \dvi_tx/encg/Msub_n0236_cy<3>11  (
    .I0(\dvi_tx/encg/n1q_m [3]),
    .I1(\dvi_tx/encg/n1q_m [2]),
    .I2(\dvi_tx/encg/n0q_m [1]),
    .I3(\dvi_tx/encg/n0q_m [2]),
    .I4(\dvi_tx/encg/n1q_m [1]),
    .I5(\dvi_tx/encg/n0q_m [3]),
    .O(\dvi_tx/encg/Msub_n0236_cy [3])
  );
  LUT6 #(
    .INIT ( 64'hDD4D4D44DD4DDD4D ))
  \dvi_tx/encb/Msub_n0236_cy<3>11  (
    .I0(\dvi_tx/encb/n0q_m [3]),
    .I1(\dvi_tx/encb/n1q_m [3]),
    .I2(\dvi_tx/encb/n0q_m [2]),
    .I3(\dvi_tx/encb/n1q_m [2]),
    .I4(\dvi_tx/encb/n1q_m [1]),
    .I5(\dvi_tx/encb/n0q_m [1]),
    .O(\dvi_tx/encb/Msub_n0236_cy [3])
  );
  LUT4 #(
    .INIT ( 16'hD4DD ))
  \dvi_tx/encr/Msub_n0236_xor<3>111  (
    .I0(\dvi_tx/encr/n0q_m [2]),
    .I1(\dvi_tx/encr/n1q_m [2]),
    .I2(\dvi_tx/encr/n1q_m [1]),
    .I3(\dvi_tx/encr/n0q_m [1]),
    .O(\dvi_tx/encr/Msub_n0236_xor<3>11_1415 )
  );
  LUT4 #(
    .INIT ( 16'hBB2B ))
  \dvi_tx/encr/Msub_n0233_xor<3>111  (
    .I0(\dvi_tx/encr/n0q_m [2]),
    .I1(\dvi_tx/encr/n1q_m [2]),
    .I2(\dvi_tx/encr/n1q_m [1]),
    .I3(\dvi_tx/encr/n0q_m [1]),
    .O(\dvi_tx/encr/Msub_n0233_xor<3>11 )
  );
  LUT4 #(
    .INIT ( 16'hBB2B ))
  \dvi_tx/encg/Msub_n0236_xor<3>111  (
    .I0(\dvi_tx/encg/n1q_m [2]),
    .I1(\dvi_tx/encg/n0q_m [2]),
    .I2(\dvi_tx/encg/n0q_m [1]),
    .I3(\dvi_tx/encg/n1q_m [1]),
    .O(\dvi_tx/encg/Msub_n0236_xor<3>11_1516 )
  );
  LUT4 #(
    .INIT ( 16'hBB2B ))
  \dvi_tx/encg/Msub_n0233_xor<3>111  (
    .I0(\dvi_tx/encg/n0q_m [2]),
    .I1(\dvi_tx/encg/n1q_m [2]),
    .I2(\dvi_tx/encg/n1q_m [1]),
    .I3(\dvi_tx/encg/n0q_m [1]),
    .O(\dvi_tx/encg/Msub_n0233_xor<3>11 )
  );
  LUT4 #(
    .INIT ( 16'hBB2B ))
  \dvi_tx/encb/Msub_n0236_xor<3>111  (
    .I0(\dvi_tx/encb/n1q_m [2]),
    .I1(\dvi_tx/encb/n0q_m [2]),
    .I2(\dvi_tx/encb/n0q_m [1]),
    .I3(\dvi_tx/encb/n1q_m [1]),
    .O(\dvi_tx/encb/Msub_n0236_xor<3>11_1613 )
  );
  LUT4 #(
    .INIT ( 16'hBB2B ))
  \dvi_tx/encb/Msub_n0233_xor<3>111  (
    .I0(\dvi_tx/encb/n0q_m [2]),
    .I1(\dvi_tx/encb/n1q_m [2]),
    .I2(\dvi_tx/encb/n1q_m [1]),
    .I3(\dvi_tx/encb/n0q_m [1]),
    .O(\dvi_tx/encb/Msub_n0233_xor<3>11 )
  );
  LUT5 #(
    .INIT ( 32'hBEEBBEBE ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1011_SW0  (
    .I0(\dvi_tx/encr/cnt [2]),
    .I1(\dvi_tx/encr/n1q_m [2]),
    .I2(\dvi_tx/encr/n0q_m [2]),
    .I3(\dvi_tx/encr/n1q_m [1]),
    .I4(\dvi_tx/encr/n0q_m [1]),
    .O(N62)
  );
  LUT5 #(
    .INIT ( 32'hFFFF6696 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1011_SW0  (
    .I0(\dvi_tx/encg/n0q_m [2]),
    .I1(\dvi_tx/encg/n1q_m [2]),
    .I2(\dvi_tx/encg/n0q_m [1]),
    .I3(\dvi_tx/encg/n1q_m [1]),
    .I4(\dvi_tx/encg/cnt [2]),
    .O(N64)
  );
  LUT5 #(
    .INIT ( 32'hBEEBBEBE ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1011_SW0  (
    .I0(\dvi_tx/encb/cnt [2]),
    .I1(\dvi_tx/encb/n1q_m [2]),
    .I2(\dvi_tx/encb/n0q_m [2]),
    .I3(\dvi_tx/encb/n1q_m [1]),
    .I4(\dvi_tx/encb/n0q_m [1]),
    .O(N66)
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o1  (
    .I0(\dvi_rx1/dec_b/des_0/flag_363 ),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o )
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o1  (
    .I0(\dvi_rx1/dec_g/des_0/flag_411 ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o )
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o1  (
    .I0(\dvi_rx1/dec_r/des_0/flag_456 ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o )
  );
  LUT6 #(
    .INIT ( 64'h6696969966966696 ))
  \dvi_tx/encr/Msub_n0236_xor<3>11  (
    .I0(\dvi_tx/encr/n0q_m [3]),
    .I1(\dvi_tx/encr/n1q_m [3]),
    .I2(\dvi_tx/encr/n0q_m [2]),
    .I3(\dvi_tx/encr/n1q_m [2]),
    .I4(\dvi_tx/encr/n1q_m [1]),
    .I5(\dvi_tx/encr/n0q_m [1]),
    .O(\dvi_tx/encr/n0236 [3])
  );
  LUT6 #(
    .INIT ( 64'h6696969966966696 ))
  \dvi_tx/encg/Msub_n0236_xor<3>11  (
    .I0(\dvi_tx/encg/n0q_m [3]),
    .I1(\dvi_tx/encg/n1q_m [3]),
    .I2(\dvi_tx/encg/n0q_m [2]),
    .I3(\dvi_tx/encg/n1q_m [2]),
    .I4(\dvi_tx/encg/n1q_m [1]),
    .I5(\dvi_tx/encg/n0q_m [1]),
    .O(\dvi_tx/encg/n0236 [3])
  );
  LUT6 #(
    .INIT ( 64'h6696969966966696 ))
  \dvi_tx/encb/Msub_n0236_xor<3>11  (
    .I0(\dvi_tx/encb/n0q_m [3]),
    .I1(\dvi_tx/encb/n1q_m [3]),
    .I2(\dvi_tx/encb/n0q_m [2]),
    .I3(\dvi_tx/encb/n1q_m [2]),
    .I4(\dvi_tx/encb/n1q_m [1]),
    .I5(\dvi_tx/encb/n0q_m [1]),
    .O(\dvi_tx/encb/n0236 [3])
  );
  LUT5 #(
    .INIT ( 32'h2A7F7F7F ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_cy<0>31_SW0_SW0_SW0  (
    .I0(SW_0_IBUF_10),
    .I1(Cb[6]),
    .I2(Cb[5]),
    .I3(\dvi_rx1/dec_g/dout [6]),
    .I4(\dvi_rx1/dec_g/dout [5]),
    .O(N139)
  );
  LUT6 #(
    .INIT ( 64'h0407000300030003 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_cy<0>31_SW0_SW0  (
    .I0(SW_0_IBUF_10),
    .I1(SW_1_IBUF_9),
    .I2(SW_2_IBUF_8),
    .I3(N139),
    .I4(S[6]),
    .I5(S[5]),
    .O(N98)
  );
  LUT6 #(
    .INIT ( 64'h00000000A8ABA8FF ))
  \hsv_converter/min_calculator/r_index_0_rstpot1  (
    .I0(\hsv_converter/min_calculator/r_index [0]),
    .I1(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<4>_1000 ),
    .I2(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<4>_1030 ),
    .I3(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<4>_1015 ),
    .I4(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<4>_985 ),
    .I5(\hsv_converter/min_calculator/Reset_OR_DriverANDClockEnable ),
    .O(\hsv_converter/min_calculator/r_index_0_rstpot1_1950 )
  );
  LUT6 #(
    .INIT ( 64'h00000000A8ABA8FF ))
  \hsv_converter/max_calculator/r_index_0_rstpot1  (
    .I0(\hsv_converter/max_calculator/r_index [0]),
    .I1(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<4>_1090 ),
    .I2(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<4>_1120 ),
    .I3(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<4>_1105 ),
    .I4(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<4>_1075 ),
    .I5(\hsv_converter/max_calculator/Reset_OR_DriverANDClockEnable ),
    .O(\hsv_converter/max_calculator/r_index_0_rstpot1_1952 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/min_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT11  (
    .I0(\hsv_converter/f_r [0]),
    .I1(\hsv_converter/f_g [0]),
    .I2(\hsv_converter/f_b [0]),
    .I3(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<4>_970 ),
    .I4(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<4>_955 ),
    .I5(\hsv_converter/min_calculator/green[9]_green[9]_AND_40_o ),
    .O(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/min_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT21  (
    .I0(\hsv_converter/f_r [1]),
    .I1(\hsv_converter/f_g [1]),
    .I2(\hsv_converter/f_b [1]),
    .I3(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<4>_970 ),
    .I4(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<4>_955 ),
    .I5(\hsv_converter/min_calculator/green[9]_green[9]_AND_40_o ),
    .O(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/min_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT31  (
    .I0(\hsv_converter/f_r [2]),
    .I1(\hsv_converter/f_g [2]),
    .I2(\hsv_converter/f_b [2]),
    .I3(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<4>_970 ),
    .I4(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<4>_955 ),
    .I5(\hsv_converter/min_calculator/green[9]_green[9]_AND_40_o ),
    .O(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/min_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT41  (
    .I0(\hsv_converter/f_r [3]),
    .I1(\hsv_converter/f_g [3]),
    .I2(\hsv_converter/f_b [3]),
    .I3(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<4>_970 ),
    .I4(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<4>_955 ),
    .I5(\hsv_converter/min_calculator/green[9]_green[9]_AND_40_o ),
    .O(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/min_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT51  (
    .I0(\hsv_converter/f_r [4]),
    .I1(\hsv_converter/f_g [4]),
    .I2(\hsv_converter/f_b [4]),
    .I3(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<4>_970 ),
    .I4(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<4>_955 ),
    .I5(\hsv_converter/min_calculator/green[9]_green[9]_AND_40_o ),
    .O(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/min_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT61  (
    .I0(\hsv_converter/f_r [5]),
    .I1(\hsv_converter/f_g [5]),
    .I2(\hsv_converter/f_b [5]),
    .I3(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<4>_970 ),
    .I4(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<4>_955 ),
    .I5(\hsv_converter/min_calculator/green[9]_green[9]_AND_40_o ),
    .O(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/min_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT71  (
    .I0(\hsv_converter/f_r [6]),
    .I1(\hsv_converter/f_g [6]),
    .I2(\hsv_converter/f_b [6]),
    .I3(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<4>_970 ),
    .I4(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<4>_955 ),
    .I5(\hsv_converter/min_calculator/green[9]_green[9]_AND_40_o ),
    .O(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/min_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT81  (
    .I0(\hsv_converter/f_r [7]),
    .I1(\hsv_converter/f_g [7]),
    .I2(\hsv_converter/f_b [7]),
    .I3(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<4>_970 ),
    .I4(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<4>_955 ),
    .I5(\hsv_converter/min_calculator/green[9]_green[9]_AND_40_o ),
    .O(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/min_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT91  (
    .I0(\hsv_converter/q_r [0]),
    .I1(\hsv_converter/q_g [0]),
    .I2(\hsv_converter/q_b [0]),
    .I3(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<4>_970 ),
    .I4(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<4>_955 ),
    .I5(\hsv_converter/min_calculator/green[9]_green[9]_AND_40_o ),
    .O(\hsv_converter/min_calculator/r_value[9]_red[9]_mux_11_OUT<8> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/max_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT11  (
    .I0(\hsv_converter/f_r [0]),
    .I1(\hsv_converter/f_g [0]),
    .I2(\hsv_converter/f_b [0]),
    .I3(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<4>_1060 ),
    .I4(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<4>_1045 ),
    .I5(\hsv_converter/max_calculator/red[9]_blue[9]_AND_37_o ),
    .O(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/max_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT21  (
    .I0(\hsv_converter/f_r [1]),
    .I1(\hsv_converter/f_g [1]),
    .I2(\hsv_converter/f_b [1]),
    .I3(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<4>_1060 ),
    .I4(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<4>_1045 ),
    .I5(\hsv_converter/max_calculator/red[9]_blue[9]_AND_37_o ),
    .O(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/max_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT31  (
    .I0(\hsv_converter/f_r [2]),
    .I1(\hsv_converter/f_g [2]),
    .I2(\hsv_converter/f_b [2]),
    .I3(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<4>_1060 ),
    .I4(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<4>_1045 ),
    .I5(\hsv_converter/max_calculator/red[9]_blue[9]_AND_37_o ),
    .O(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/max_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT41  (
    .I0(\hsv_converter/f_r [3]),
    .I1(\hsv_converter/f_g [3]),
    .I2(\hsv_converter/f_b [3]),
    .I3(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<4>_1060 ),
    .I4(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<4>_1045 ),
    .I5(\hsv_converter/max_calculator/red[9]_blue[9]_AND_37_o ),
    .O(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/max_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT51  (
    .I0(\hsv_converter/f_r [4]),
    .I1(\hsv_converter/f_g [4]),
    .I2(\hsv_converter/f_b [4]),
    .I3(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<4>_1060 ),
    .I4(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<4>_1045 ),
    .I5(\hsv_converter/max_calculator/red[9]_blue[9]_AND_37_o ),
    .O(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/max_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT61  (
    .I0(\hsv_converter/f_r [5]),
    .I1(\hsv_converter/f_g [5]),
    .I2(\hsv_converter/f_b [5]),
    .I3(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<4>_1060 ),
    .I4(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<4>_1045 ),
    .I5(\hsv_converter/max_calculator/red[9]_blue[9]_AND_37_o ),
    .O(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/max_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT71  (
    .I0(\hsv_converter/f_r [6]),
    .I1(\hsv_converter/f_g [6]),
    .I2(\hsv_converter/f_b [6]),
    .I3(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<4>_1060 ),
    .I4(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<4>_1045 ),
    .I5(\hsv_converter/max_calculator/red[9]_blue[9]_AND_37_o ),
    .O(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/max_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT81  (
    .I0(\hsv_converter/f_r [7]),
    .I1(\hsv_converter/f_g [7]),
    .I2(\hsv_converter/f_b [7]),
    .I3(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<4>_1060 ),
    .I4(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<4>_1045 ),
    .I5(\hsv_converter/max_calculator/red[9]_blue[9]_AND_37_o ),
    .O(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0AACCCCCCAA ))
  \hsv_converter/max_calculator/Mmux_r_value[9]_red[9]_mux_11_OUT91  (
    .I0(\hsv_converter/q_r [0]),
    .I1(\hsv_converter/q_g [0]),
    .I2(\hsv_converter/q_b [0]),
    .I3(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<4>_1060 ),
    .I4(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<4>_1045 ),
    .I5(\hsv_converter/max_calculator/red[9]_blue[9]_AND_37_o ),
    .O(\hsv_converter/max_calculator/r_value[9]_red[9]_mux_11_OUT<8> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \dvi_rx1/dec_g/des_0/_n02601  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_421 ),
    .I2(\dvi_rx1/dec_g/des_0/busy_data_d_410 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_420 ),
    .I4(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_419 ),
    .I5(rx_reset),
    .O(\dvi_rx1/dec_g/des_0/_n0260 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \dvi_rx1/dec_r/des_0/_n02601  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_466 ),
    .I2(\dvi_rx1/dec_r/des_0/busy_data_d_455 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_465 ),
    .I4(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_464 ),
    .I5(rx_reset),
    .O(\dvi_rx1/dec_r/des_0/_n0260 )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>121  (
    .I0(\dvi_tx/encr/din_q [0]),
    .I1(\dvi_tx/encr/q_m [4]),
    .I2(\dvi_tx/encr/q_m [1]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encr/q_m [3]),
    .I5(\dvi_tx/encr/q_m [7]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 )
  );
  LUT6 #(
    .INIT ( 64'h96FF0096FF969600 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd91  (
    .I0(\dvi_tx/encr/din_q [0]),
    .I1(\dvi_tx/encr/q_m [4]),
    .I2(\dvi_tx/encr/q_m [1]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encr/q_m [3]),
    .I5(\dvi_tx/encr/q_m [7]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9 )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>121  (
    .I0(\dvi_tx/encg/din_q [0]),
    .I1(\dvi_tx/encg/q_m [4]),
    .I2(\dvi_tx/encg/q_m [1]),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encg/q_m [3]),
    .I5(\dvi_tx/encg/q_m [7]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 )
  );
  LUT6 #(
    .INIT ( 64'h96FF0096FF969600 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd91  (
    .I0(\dvi_tx/encg/din_q [0]),
    .I1(\dvi_tx/encg/q_m [4]),
    .I2(\dvi_tx/encg/q_m [1]),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encg/q_m [3]),
    .I5(\dvi_tx/encg/q_m [7]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9 )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>121  (
    .I0(\dvi_tx/encb/din_q [0]),
    .I1(\dvi_tx/encb/q_m [4]),
    .I2(\dvi_tx/encb/q_m [1]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encb/q_m [3]),
    .I5(\dvi_tx/encb/q_m [7]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 )
  );
  LUT6 #(
    .INIT ( 64'h96FF0096FF969600 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd91  (
    .I0(\dvi_tx/encb/din_q [0]),
    .I1(\dvi_tx/encb/q_m [4]),
    .I2(\dvi_tx/encb/q_m [1]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encb/q_m [3]),
    .I5(\dvi_tx/encb/q_m [7]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9 )
  );
  LUT6 #(
    .INIT ( 64'h171717FFFF17FFFF ))
  \dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>11  (
    .I0(\dvi_tx/encr/din_q [0]),
    .I1(\dvi_tx/encr/q_m [4]),
    .I2(\dvi_tx/encr/q_m [1]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encr/q_m [5]),
    .I5(\dvi_tx/encr/q_m [7]),
    .O(\dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>1 )
  );
  LUT6 #(
    .INIT ( 64'h171717FFFF17FFFF ))
  \dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>11  (
    .I0(\dvi_tx/encg/din_q [0]),
    .I1(\dvi_tx/encg/q_m [4]),
    .I2(\dvi_tx/encg/q_m [1]),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encg/q_m [5]),
    .I5(\dvi_tx/encg/q_m [7]),
    .O(\dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>1 )
  );
  LUT6 #(
    .INIT ( 64'h171717FFFF17FFFF ))
  \dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>11  (
    .I0(\dvi_tx/encb/din_q [0]),
    .I1(\dvi_tx/encb/q_m [4]),
    .I2(\dvi_tx/encb/q_m [1]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encb/q_m [5]),
    .I5(\dvi_tx/encb/q_m [7]),
    .O(\dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>1 )
  );
  LUT6 #(
    .INIT ( 64'h3EB32C32CBEC83C8 ))
  \dvi_tx/encr/Madd_cnt[4]_GND_48_o_add_50_OUT_cy<0>31  (
    .I0(\dvi_tx/encr/cnt [1]),
    .I1(\dvi_tx/encr/cnt [2]),
    .I2(\dvi_tx/encr/n1q_m [1]),
    .I3(\dvi_tx/encr/n0q_m [1]),
    .I4(\dvi_tx/encr/q_m_reg [8]),
    .I5(\dvi_tx/encr/Msub_n0233_lut [2]),
    .O(\dvi_tx/encr/Madd_cnt[4]_GND_48_o_add_50_OUT_cy<0>2 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \hsv_converter/min_calculator/r_index_1_rstpot1_SW0  (
    .I0(\hsv_converter/min_calculator/Mcompar_blue[9]_red[9]_LessThan_6_o_cy<4>_1000 ),
    .I1(\hsv_converter/min_calculator/Mcompar_blue[9]_green[9]_LessThan_7_o_cy<4>_1030 ),
    .O(N141)
  );
  LUT6 #(
    .INIT ( 64'hFFF0CCC0AAA08880 ))
  \hsv_converter/min_calculator/r_index_1_rstpot1  (
    .I0(\hsv_converter/min_calculator/Mcompar_red[9]_green[9]_LessThan_2_o_cy<4>_955 ),
    .I1(\hsv_converter/min_calculator/Mcompar_green[9]_red[9]_LessThan_4_o_cy<4>_985 ),
    .I2(\hsv_converter/min_calculator/r_index [1]),
    .I3(N141),
    .I4(\hsv_converter/min_calculator/Mcompar_green[9]_blue[9]_LessThan_5_o_cy<4>_1015 ),
    .I5(\hsv_converter/min_calculator/Mcompar_red[9]_blue[9]_LessThan_3_o_cy<4>_970 ),
    .O(\hsv_converter/min_calculator/r_index_1_rstpot1_1951 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \hsv_converter/max_calculator/r_index_1_rstpot1_SW0  (
    .I0(\hsv_converter/max_calculator/Mcompar_green[9]_red[9]_LessThan_2_o_cy<4>_1045 ),
    .I1(\hsv_converter/max_calculator/Mcompar_blue[9]_red[9]_LessThan_3_o_cy<4>_1060 ),
    .O(N143)
  );
  LUT6 #(
    .INIT ( 64'hAAAF888C00000000 ))
  \hsv_converter/max_calculator/r_index_1_rstpot1  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\hsv_converter/max_calculator/Mcompar_blue[9]_green[9]_LessThan_5_o_cy<4>_1105 ),
    .I2(\hsv_converter/max_calculator/Mcompar_green[9]_blue[9]_LessThan_7_o_cy<4>_1120 ),
    .I3(\hsv_converter/max_calculator/Mcompar_red[9]_blue[9]_LessThan_6_o_cy<4>_1090 ),
    .I4(\hsv_converter/max_calculator/Mcompar_red[9]_green[9]_LessThan_4_o_cy<4>_1075 ),
    .I5(N143),
    .O(\hsv_converter/max_calculator/r_index_1_rstpot1_1953 )
  );
  LUT6 #(
    .INIT ( 64'h0022001000000001 ))
  \dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>161  (
    .I0(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encr/q_m [3]),
    .I2(\dvi_tx/encr/q_m [5]),
    .I3(N145),
    .I4(\dvi_tx/encr/q_m [7]),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>16 )
  );
  LUT6 #(
    .INIT ( 64'h0022001000000001 ))
  \dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>161  (
    .I0(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encg/q_m [3]),
    .I2(\dvi_tx/encg/q_m [5]),
    .I3(N147),
    .I4(\dvi_tx/encg/q_m [7]),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>16 )
  );
  LUT6 #(
    .INIT ( 64'h0022001000000001 ))
  \dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>161  (
    .I0(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encb/q_m [3]),
    .I2(\dvi_tx/encb/q_m [5]),
    .I3(N149),
    .I4(\dvi_tx/encb/q_m [7]),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>16 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd8_lut<0>1  (
    .I0(\dvi_tx/encr/din_q [4]),
    .I1(\dvi_tx/encr/din_q [3]),
    .I2(\dvi_tx/encr/din_q [2]),
    .I3(\dvi_tx/encr/din_q [1]),
    .I4(\dvi_tx/encr/q_m [1]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8_lut [0])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd8_lut<0>1  (
    .I0(\dvi_tx/encg/din_q [4]),
    .I1(\dvi_tx/encg/din_q [3]),
    .I2(\dvi_tx/encg/din_q [2]),
    .I3(\dvi_tx/encg/din_q [1]),
    .I4(\dvi_tx/encg/q_m [1]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8_lut [0])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd8_lut<0>1  (
    .I0(\dvi_tx/encb/din_q [4]),
    .I1(\dvi_tx/encb/din_q [3]),
    .I2(\dvi_tx/encb/din_q [2]),
    .I3(\dvi_tx/encb/din_q [1]),
    .I4(\dvi_tx/encb/q_m [1]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hFFFF699696690000 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd81  (
    .I0(\dvi_tx/encr/din_q [4]),
    .I1(\dvi_tx/encr/din_q [3]),
    .I2(\dvi_tx/encr/din_q [2]),
    .I3(\dvi_tx/encr/din_q [1]),
    .I4(\dvi_tx/encr/din_q [0]),
    .I5(\dvi_tx/encr/q_m [1]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF699696690000 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd81  (
    .I0(\dvi_tx/encg/din_q [4]),
    .I1(\dvi_tx/encg/din_q [3]),
    .I2(\dvi_tx/encg/din_q [2]),
    .I3(\dvi_tx/encg/din_q [1]),
    .I4(\dvi_tx/encg/din_q [0]),
    .I5(\dvi_tx/encg/q_m [1]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF699696690000 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd81  (
    .I0(\dvi_tx/encb/din_q [4]),
    .I1(\dvi_tx/encb/din_q [3]),
    .I2(\dvi_tx/encb/din_q [2]),
    .I3(\dvi_tx/encb/din_q [1]),
    .I4(\dvi_tx/encb/din_q [0]),
    .I5(\dvi_tx/encb/q_m [1]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8 )
  );
  FD   \dvi_tx/encr/cnt_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/GND_48_o_cnt[4]_mux_55_OUT<4> ),
    .Q(\dvi_tx/encr/cnt [4])
  );
  FD   \dvi_tx/encr/cnt_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/GND_48_o_cnt[4]_mux_55_OUT<3> ),
    .Q(\dvi_tx/encr/cnt [3])
  );
  FD   \dvi_tx/encr/cnt_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/GND_48_o_cnt[4]_mux_55_OUT<2> ),
    .Q(\dvi_tx/encr/cnt [2])
  );
  FD   \dvi_tx/encr/cnt_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/GND_48_o_cnt[4]_mux_55_OUT<1> ),
    .Q(\dvi_tx/encr/cnt [1])
  );
  FD   \dvi_tx/encr/dout_9  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [9]),
    .Q(\dvi_tx/encr/dout [9])
  );
  FD   \dvi_tx/encr/dout_8  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [8]),
    .Q(\dvi_tx/encr/dout [8])
  );
  FD   \dvi_tx/encr/dout_7  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [7]),
    .Q(\dvi_tx/encr/dout [7])
  );
  FD   \dvi_tx/encr/dout_6  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [6]),
    .Q(\dvi_tx/encr/dout [6])
  );
  FD   \dvi_tx/encr/dout_5  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [5]),
    .Q(\dvi_tx/encr/dout [5])
  );
  FD   \dvi_tx/encr/dout_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [4]),
    .Q(\dvi_tx/encr/dout [4])
  );
  FD   \dvi_tx/encr/dout_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [3]),
    .Q(\dvi_tx/encr/dout [3])
  );
  FD   \dvi_tx/encr/dout_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [2]),
    .Q(\dvi_tx/encr/dout [2])
  );
  FD   \dvi_tx/encr/dout_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [1]),
    .Q(\dvi_tx/encr/dout [1])
  );
  FD   \dvi_tx/encr/dout_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [0]),
    .Q(\dvi_tx/encr/dout [0])
  );
  FD   \dvi_tx/encg/cnt_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/GND_48_o_cnt[4]_mux_55_OUT<4> ),
    .Q(\dvi_tx/encg/cnt [4])
  );
  FD   \dvi_tx/encg/cnt_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/GND_48_o_cnt[4]_mux_55_OUT<3> ),
    .Q(\dvi_tx/encg/cnt [3])
  );
  FD   \dvi_tx/encg/cnt_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/GND_48_o_cnt[4]_mux_55_OUT<2> ),
    .Q(\dvi_tx/encg/cnt [2])
  );
  FD   \dvi_tx/encg/cnt_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/GND_48_o_cnt[4]_mux_55_OUT<1> ),
    .Q(\dvi_tx/encg/cnt [1])
  );
  FD   \dvi_tx/encg/dout_9  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [9]),
    .Q(\dvi_tx/encg/dout [9])
  );
  FD   \dvi_tx/encg/dout_8  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [8]),
    .Q(\dvi_tx/encg/dout [8])
  );
  FD   \dvi_tx/encg/dout_7  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [7]),
    .Q(\dvi_tx/encg/dout [7])
  );
  FD   \dvi_tx/encg/dout_6  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [6]),
    .Q(\dvi_tx/encg/dout [6])
  );
  FD   \dvi_tx/encg/dout_5  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [5]),
    .Q(\dvi_tx/encg/dout [5])
  );
  FD   \dvi_tx/encg/dout_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [4]),
    .Q(\dvi_tx/encg/dout [4])
  );
  FD   \dvi_tx/encg/dout_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [3]),
    .Q(\dvi_tx/encg/dout [3])
  );
  FD   \dvi_tx/encg/dout_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [2]),
    .Q(\dvi_tx/encg/dout [2])
  );
  FD   \dvi_tx/encg/dout_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [1]),
    .Q(\dvi_tx/encg/dout [1])
  );
  FD   \dvi_tx/encg/dout_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [0]),
    .Q(\dvi_tx/encg/dout [0])
  );
  FD   \dvi_tx/encb/cnt_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/GND_48_o_cnt[4]_mux_55_OUT<4> ),
    .Q(\dvi_tx/encb/cnt [4])
  );
  FD   \dvi_tx/encb/cnt_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/GND_48_o_cnt[4]_mux_55_OUT<3> ),
    .Q(\dvi_tx/encb/cnt [3])
  );
  FD   \dvi_tx/encb/cnt_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/GND_48_o_cnt[4]_mux_55_OUT<2> ),
    .Q(\dvi_tx/encb/cnt [2])
  );
  FD   \dvi_tx/encb/cnt_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/GND_48_o_cnt[4]_mux_55_OUT<1> ),
    .Q(\dvi_tx/encb/cnt [1])
  );
  FD   \dvi_tx/encb/dout_9  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [9]),
    .Q(\dvi_tx/encb/dout [9])
  );
  FD   \dvi_tx/encb/dout_8  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [8]),
    .Q(\dvi_tx/encb/dout [8])
  );
  FD   \dvi_tx/encb/dout_7  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [7]),
    .Q(\dvi_tx/encb/dout [7])
  );
  FD   \dvi_tx/encb/dout_6  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [6]),
    .Q(\dvi_tx/encb/dout [6])
  );
  FD   \dvi_tx/encb/dout_5  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [5]),
    .Q(\dvi_tx/encb/dout [5])
  );
  FD   \dvi_tx/encb/dout_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [4]),
    .Q(\dvi_tx/encb/dout [4])
  );
  FD   \dvi_tx/encb/dout_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [3]),
    .Q(\dvi_tx/encb/dout [3])
  );
  FD   \dvi_tx/encb/dout_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [2]),
    .Q(\dvi_tx/encb/dout [2])
  );
  FD   \dvi_tx/encb/dout_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [1]),
    .Q(\dvi_tx/encb/dout [1])
  );
  FD   \dvi_tx/encb/dout_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [0]),
    .Q(\dvi_tx/encb/dout [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \dvi_tx/pixel2x/fdp_rst  (
    .C(tx_pclkx2),
    .D(\b_mux<3> [1]),
    .Q(\dvi_tx/pixel2x/rstsync )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_wa3  (
    .C(tx_pclk),
    .D(\dvi_tx/pixel2x/Mram_wa_d3 ),
    .Q(\dvi_tx/pixel2x/wa [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_wa2  (
    .C(tx_pclk),
    .D(\dvi_tx/pixel2x/Mram_wa_d2 ),
    .Q(\dvi_tx/pixel2x/wa [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_wa1  (
    .C(tx_pclk),
    .D(\dvi_tx/pixel2x/Mram_wa_d1 ),
    .Q(\dvi_tx/pixel2x/wa [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_wa0  (
    .C(tx_pclk),
    .D(\dvi_tx/pixel2x/Mram_wa_d ),
    .Q(\dvi_tx/pixel2x/wa [0])
  );
  MUXF7   \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW0  (
    .I0(N151),
    .I1(N152),
    .S(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 ),
    .O(N118)
  );
  LUT6 #(
    .INIT ( 64'hA06060A050505050 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW0_F  (
    .I0(\dvi_tx/encr/cnt [4]),
    .I1(\dvi_tx/encr/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encr/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encr/decision2_1458 ),
    .O(N151)
  );
  LUT6 #(
    .INIT ( 64'h9050509050505050 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW0_G  (
    .I0(\dvi_tx/encr/cnt [4]),
    .I1(\dvi_tx/encr/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encr/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encr/decision2_1458 ),
    .O(N152)
  );
  MUXF7   \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW1  (
    .I0(N153),
    .I1(N154),
    .S(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 ),
    .O(N119)
  );
  LUT6 #(
    .INIT ( 64'h9050509050505050 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW1_F  (
    .I0(\dvi_tx/encr/cnt [4]),
    .I1(\dvi_tx/encr/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encr/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encr/decision2_1458 ),
    .O(N153)
  );
  LUT6 #(
    .INIT ( 64'hA06060A050505050 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW1_G  (
    .I0(\dvi_tx/encr/cnt [4]),
    .I1(\dvi_tx/encr/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encr/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encr/decision2_1458 ),
    .O(N154)
  );
  MUXF7   \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW2  (
    .I0(N155),
    .I1(N156),
    .S(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 ),
    .O(N120)
  );
  LUT6 #(
    .INIT ( 64'hA06060A0A0A0A0A0 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW2_F  (
    .I0(\dvi_tx/encr/cnt [4]),
    .I1(\dvi_tx/encr/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encr/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encr/decision2_1458 ),
    .O(N155)
  );
  LUT6 #(
    .INIT ( 64'h90505090A0A0A0A0 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW2_G  (
    .I0(\dvi_tx/encr/cnt [4]),
    .I1(\dvi_tx/encr/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encr/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encr/decision2_1458 ),
    .O(N156)
  );
  MUXF7   \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW3  (
    .I0(N157),
    .I1(N158),
    .S(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 ),
    .O(N121)
  );
  LUT6 #(
    .INIT ( 64'h90505090A0A0A0A0 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW3_F  (
    .I0(\dvi_tx/encr/cnt [4]),
    .I1(\dvi_tx/encr/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encr/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encr/decision2_1458 ),
    .O(N157)
  );
  LUT6 #(
    .INIT ( 64'hA06060A0A0A0A0A0 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW3_G  (
    .I0(\dvi_tx/encr/cnt [4]),
    .I1(\dvi_tx/encr/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encr/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encr/decision2_1458 ),
    .O(N158)
  );
  MUXF7   \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW0  (
    .I0(N159),
    .I1(N160),
    .S(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 ),
    .O(N123)
  );
  LUT6 #(
    .INIT ( 64'hA06060A050505050 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW0_F  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encg/decision2_1555 ),
    .O(N159)
  );
  LUT6 #(
    .INIT ( 64'h9050509050505050 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW0_G  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encg/decision2_1555 ),
    .O(N160)
  );
  MUXF7   \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW1  (
    .I0(N161),
    .I1(N162),
    .S(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 ),
    .O(N124)
  );
  LUT6 #(
    .INIT ( 64'h9050509050505050 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW1_F  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encg/decision2_1555 ),
    .O(N161)
  );
  LUT6 #(
    .INIT ( 64'hA06060A050505050 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW1_G  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encg/decision2_1555 ),
    .O(N162)
  );
  MUXF7   \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW2  (
    .I0(N163),
    .I1(N164),
    .S(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 ),
    .O(N125)
  );
  LUT6 #(
    .INIT ( 64'hA06060A0A0A0A0A0 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW2_F  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encg/decision2_1555 ),
    .O(N163)
  );
  LUT6 #(
    .INIT ( 64'h90505090A0A0A0A0 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW2_G  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encg/decision2_1555 ),
    .O(N164)
  );
  MUXF7   \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW3  (
    .I0(N165),
    .I1(N166),
    .S(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 ),
    .O(N126)
  );
  LUT6 #(
    .INIT ( 64'h90505090A0A0A0A0 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW3_F  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encg/decision2_1555 ),
    .O(N165)
  );
  LUT6 #(
    .INIT ( 64'hA06060A0A0A0A0A0 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW3_G  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encg/decision2_1555 ),
    .O(N166)
  );
  MUXF7   \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW0  (
    .I0(N167),
    .I1(N168),
    .S(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 ),
    .O(N128)
  );
  LUT6 #(
    .INIT ( 64'hA06060A050505050 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW0_F  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encb/decision2_1657 ),
    .O(N167)
  );
  LUT6 #(
    .INIT ( 64'h9050509050505050 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW0_G  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encb/decision2_1657 ),
    .O(N168)
  );
  MUXF7   \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW1  (
    .I0(N169),
    .I1(N170),
    .S(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 ),
    .O(N129)
  );
  LUT6 #(
    .INIT ( 64'h9050509050505050 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW1_F  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encb/decision2_1657 ),
    .O(N169)
  );
  LUT6 #(
    .INIT ( 64'hA06060A050505050 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW1_G  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encb/decision2_1657 ),
    .O(N170)
  );
  MUXF7   \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW2  (
    .I0(N171),
    .I1(N172),
    .S(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 ),
    .O(N130)
  );
  LUT6 #(
    .INIT ( 64'hA06060A0A0A0A0A0 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW2_F  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encb/decision2_1657 ),
    .O(N171)
  );
  LUT6 #(
    .INIT ( 64'h90505090A0A0A0A0 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW2_G  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encb/decision2_1657 ),
    .O(N172)
  );
  MUXF7   \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW3  (
    .I0(N173),
    .I1(N174),
    .S(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1041 ),
    .O(N131)
  );
  LUT6 #(
    .INIT ( 64'h90505090A0A0A0A0 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW3_F  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encb/decision2_1657 ),
    .O(N173)
  );
  LUT6 #(
    .INIT ( 64'hA06060A0A0A0A0A0 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT101_SW3_G  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1691 ),
    .I3(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encb/decision2_1657 ),
    .O(N174)
  );
  LUT6 #(
    .INIT ( 64'hB4B4B4E11E1E1E4B ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT631  (
    .I0(\dvi_tx/encr/q_m_reg [8]),
    .I1(\dvi_tx/encr/Msub_n0233_lut [2]),
    .I2(\dvi_tx/encr/cnt [2]),
    .I3(\dvi_tx/encr/Msub_n0233_lut [1]),
    .I4(\dvi_tx/encr/n0q_m [1]),
    .I5(\dvi_tx/encr/n0236 [2]),
    .O(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT63 )
  );
  LUT6 #(
    .INIT ( 64'hB4B4B4E11E1E1E4B ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT631  (
    .I0(\dvi_tx/encg/q_m_reg [8]),
    .I1(\dvi_tx/encg/Msub_n0233_lut [2]),
    .I2(\dvi_tx/encg/cnt [2]),
    .I3(\dvi_tx/encg/Msub_n0233_lut [1]),
    .I4(\dvi_tx/encg/n0q_m [1]),
    .I5(\dvi_tx/encg/n0236 [2]),
    .O(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT63 )
  );
  LUT6 #(
    .INIT ( 64'hB4B4B4E11E1E1E4B ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT631  (
    .I0(\dvi_tx/encb/q_m_reg [8]),
    .I1(\dvi_tx/encb/Msub_n0233_lut [2]),
    .I2(\dvi_tx/encb/cnt [2]),
    .I3(\dvi_tx/encb/Msub_n0233_lut [1]),
    .I4(\dvi_tx/encb/n0q_m [1]),
    .I5(\dvi_tx/encb/n0236 [2]),
    .O(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT63 )
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT21  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encr/decision2_1458 ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/q_m_reg [1]),
    .I4(\dvi_tx/encr/decision3_1457 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [1])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT41  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encr/decision2_1458 ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/q_m_reg [3]),
    .I4(\dvi_tx/encr/decision3_1457 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [3])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT61  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encr/decision2_1458 ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/q_m_reg [5]),
    .I4(\dvi_tx/encr/decision3_1457 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [5])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT81  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encr/decision2_1458 ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/q_m_reg [7]),
    .I4(\dvi_tx/encr/decision3_1457 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [7])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT12  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encr/decision2_1458 ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/q_m_reg [0]),
    .I4(\dvi_tx/encr/decision3_1457 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [0])
  );
  LUT5 #(
    .INIT ( 32'h95A6FFFF ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT51  (
    .I0(\dvi_tx/encr/q_m_reg [4]),
    .I1(\dvi_tx/encr/decision2_1458 ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/decision3_1457 ),
    .I4(\dvi_tx/encr/de_reg_1691 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [4])
  );
  LUT5 #(
    .INIT ( 32'h95A6FFFF ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT71  (
    .I0(\dvi_tx/encr/q_m_reg [6]),
    .I1(\dvi_tx/encr/decision2_1458 ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/decision3_1457 ),
    .I4(\dvi_tx/encr/de_reg_1691 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [6])
  );
  LUT5 #(
    .INIT ( 32'h95A6FFFF ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT31  (
    .I0(\dvi_tx/encr/q_m_reg [2]),
    .I1(\dvi_tx/encr/decision2_1458 ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/decision3_1457 ),
    .I4(\dvi_tx/encr/de_reg_1691 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [2])
  );
  LUT4 #(
    .INIT ( 16'h72FF ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT101  (
    .I0(\dvi_tx/encr/decision2_1458 ),
    .I1(\dvi_tx/encr/q_m_reg [8]),
    .I2(\dvi_tx/encr/decision3_1457 ),
    .I3(\dvi_tx/encr/de_reg_1691 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [9])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT21  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encg/decision2_1555 ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/q_m_reg [1]),
    .I4(\dvi_tx/encg/decision3_1554 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [1])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT41  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encg/decision2_1555 ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/q_m_reg [3]),
    .I4(\dvi_tx/encg/decision3_1554 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [3])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT61  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encg/decision2_1555 ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/q_m_reg [5]),
    .I4(\dvi_tx/encg/decision3_1554 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [5])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT81  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encg/decision2_1555 ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/q_m_reg [7]),
    .I4(\dvi_tx/encg/decision3_1554 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [7])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT12  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encg/decision2_1555 ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/q_m_reg [0]),
    .I4(\dvi_tx/encg/decision3_1554 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [0])
  );
  LUT5 #(
    .INIT ( 32'h95A6FFFF ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT51  (
    .I0(\dvi_tx/encg/q_m_reg [4]),
    .I1(\dvi_tx/encg/decision2_1555 ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/decision3_1554 ),
    .I4(\dvi_tx/encr/de_reg_1691 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [4])
  );
  LUT5 #(
    .INIT ( 32'h95A6FFFF ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT71  (
    .I0(\dvi_tx/encg/q_m_reg [6]),
    .I1(\dvi_tx/encg/decision2_1555 ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/decision3_1554 ),
    .I4(\dvi_tx/encr/de_reg_1691 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [6])
  );
  LUT5 #(
    .INIT ( 32'h95A6FFFF ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT31  (
    .I0(\dvi_tx/encg/q_m_reg [2]),
    .I1(\dvi_tx/encg/decision2_1555 ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/decision3_1554 ),
    .I4(\dvi_tx/encr/de_reg_1691 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [2])
  );
  LUT4 #(
    .INIT ( 16'h72FF ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT101  (
    .I0(\dvi_tx/encg/decision2_1555 ),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encg/decision3_1554 ),
    .I3(\dvi_tx/encr/de_reg_1691 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [9])
  );
  LUT6 #(
    .INIT ( 64'hD57FF75D802AA208 ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT21  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encb/decision2_1657 ),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .I3(\dvi_tx/encb/q_m_reg [1]),
    .I4(\dvi_tx/encb/decision3_1656 ),
    .I5(\dvi_tx/encb/c0_reg_1627 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [1])
  );
  LUT6 #(
    .INIT ( 64'hD57FF75D802AA208 ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT41  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encb/decision2_1657 ),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .I3(\dvi_tx/encb/q_m_reg [3]),
    .I4(\dvi_tx/encb/decision3_1656 ),
    .I5(\dvi_tx/encb/c0_reg_1627 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [3])
  );
  LUT6 #(
    .INIT ( 64'hD57FF75D802AA208 ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT61  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encb/decision2_1657 ),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .I3(\dvi_tx/encb/q_m_reg [5]),
    .I4(\dvi_tx/encb/decision3_1656 ),
    .I5(\dvi_tx/encb/c0_reg_1627 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [5])
  );
  LUT6 #(
    .INIT ( 64'hD57FF75D802AA208 ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT81  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encb/decision2_1657 ),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .I3(\dvi_tx/encb/q_m_reg [7]),
    .I4(\dvi_tx/encb/decision3_1656 ),
    .I5(\dvi_tx/encb/c0_reg_1627 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [7])
  );
  LUT6 #(
    .INIT ( 64'hD57FF75D802AA208 ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT12  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encb/decision2_1657 ),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .I3(\dvi_tx/encb/q_m_reg [0]),
    .I4(\dvi_tx/encb/decision3_1656 ),
    .I5(\dvi_tx/encb/c0_reg_1627 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [0])
  );
  LUT6 #(
    .INIT ( 64'h82228828D777DD7D ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT51  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encb/q_m_reg [4]),
    .I2(\dvi_tx/encb/decision2_1657 ),
    .I3(\dvi_tx/encb/q_m_reg [8]),
    .I4(\dvi_tx/encb/decision3_1656 ),
    .I5(\dvi_tx/encb/c0_reg_1627 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [4])
  );
  LUT6 #(
    .INIT ( 64'h82228828D777DD7D ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT71  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encb/q_m_reg [6]),
    .I2(\dvi_tx/encb/decision2_1657 ),
    .I3(\dvi_tx/encb/q_m_reg [8]),
    .I4(\dvi_tx/encb/decision3_1656 ),
    .I5(\dvi_tx/encb/c0_reg_1627 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [6])
  );
  LUT6 #(
    .INIT ( 64'h82228828D777DD7D ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT31  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encb/q_m_reg [2]),
    .I2(\dvi_tx/encb/decision2_1657 ),
    .I3(\dvi_tx/encb/q_m_reg [8]),
    .I4(\dvi_tx/encb/decision3_1656 ),
    .I5(\dvi_tx/encb/c0_reg_1627 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [2])
  );
  LUT6 #(
    .INIT ( 64'h7F5D2A082A087F5D ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT101  (
    .I0(\dvi_tx/encr/de_reg_1691 ),
    .I1(\dvi_tx/encb/decision2_1657 ),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .I3(\dvi_tx/encb/decision3_1656 ),
    .I4(\dvi_tx/encb/c1_reg_1675 ),
    .I5(\dvi_tx/encb/c0_reg_1627 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [9])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_b/des_0/_n0327_inv1_SW0  (
    .I0(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_372 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_373 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_374 ),
    .O(N175)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_g/des_0/_n0327_inv1_SW0  (
    .I0(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_419 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_420 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_421 ),
    .O(N177)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_r/des_0/_n0327_inv1_SW0  (
    .I0(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_464 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_465 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_466 ),
    .O(N179)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFCFFAAAAA8AA ))
  \dvi_rx1/dec_g/des_0/inc_data_int_rstpot  (
    .I0(\dvi_rx1/dec_g/des_0/_n0260 ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I2(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_4_o ),
    .I4(N183),
    .I5(\dvi_rx1/dec_g/des_0/inc_data_int_405 ),
    .O(\dvi_rx1/dec_g/des_0/inc_data_int_rstpot_1940 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFCFFAAAAA8AA ))
  \dvi_rx1/dec_r/des_0/inc_data_int_rstpot  (
    .I0(\dvi_rx1/dec_r/des_0/_n0260 ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I2(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_4_o ),
    .I4(N185),
    .I5(\dvi_rx1/dec_r/des_0/inc_data_int_450 ),
    .O(\dvi_rx1/dec_r/des_0/inc_data_int_rstpot_1942 )
  );
  LUT4 #(
    .INIT ( 16'hFFF2 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<3>11_SW0  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I1(\dvi_rx1/dec_b/des_0/flag_363 ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .I3(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(N92)
  );
  LUT4 #(
    .INIT ( 16'hFFF2 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<3>11_SW0  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I1(\dvi_rx1/dec_g/des_0/flag_411 ),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I3(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(N94)
  );
  LUT4 #(
    .INIT ( 16'hFFF2 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<3>11_SW0  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I1(\dvi_rx1/dec_r/des_0/flag_456 ),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I3(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(N96)
  );
  LUT6 #(
    .INIT ( 64'h9699969966969699 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT8131  (
    .I0(\dvi_tx/encr/n0q_m [3]),
    .I1(\dvi_tx/encr/n1q_m [3]),
    .I2(\dvi_tx/encr/n0q_m [2]),
    .I3(\dvi_tx/encr/n1q_m [2]),
    .I4(\dvi_tx/encr/n1q_m [1]),
    .I5(\dvi_tx/encr/n0q_m [1]),
    .O(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 )
  );
  LUT6 #(
    .INIT ( 64'h9699969966969699 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT8131  (
    .I0(\dvi_tx/encg/n0q_m [3]),
    .I1(\dvi_tx/encg/n1q_m [3]),
    .I2(\dvi_tx/encg/n0q_m [2]),
    .I3(\dvi_tx/encg/n1q_m [2]),
    .I4(\dvi_tx/encg/n1q_m [1]),
    .I5(\dvi_tx/encg/n0q_m [1]),
    .O(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 )
  );
  LUT6 #(
    .INIT ( 64'h9699969966969699 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT8131  (
    .I0(\dvi_tx/encb/n0q_m [3]),
    .I1(\dvi_tx/encb/n1q_m [3]),
    .I2(\dvi_tx/encb/n0q_m [2]),
    .I3(\dvi_tx/encb/n1q_m [2]),
    .I4(\dvi_tx/encb/n1q_m [1]),
    .I5(\dvi_tx/encb/n0q_m [1]),
    .O(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 )
  );
  LUT4 #(
    .INIT ( 16'h695A ))
  \dvi_tx/encr/Msub_n0233_xor<2>11  (
    .I0(\dvi_tx/encr/n0q_m [2]),
    .I1(\dvi_tx/encr/n0q_m [1]),
    .I2(\dvi_tx/encr/n1q_m [2]),
    .I3(\dvi_tx/encr/n1q_m [1]),
    .O(\dvi_tx/encr/n0233 [2])
  );
  LUT4 #(
    .INIT ( 16'h695A ))
  \dvi_tx/encg/Msub_n0233_xor<2>11  (
    .I0(\dvi_tx/encg/n1q_m [2]),
    .I1(\dvi_tx/encg/n0q_m [1]),
    .I2(\dvi_tx/encg/n0q_m [2]),
    .I3(\dvi_tx/encg/n1q_m [1]),
    .O(\dvi_tx/encg/n0233 [2])
  );
  LUT4 #(
    .INIT ( 16'h695A ))
  \dvi_tx/encb/Msub_n0233_xor<2>11  (
    .I0(\dvi_tx/encb/n1q_m [2]),
    .I1(\dvi_tx/encb/n0q_m [1]),
    .I2(\dvi_tx/encb/n0q_m [2]),
    .I3(\dvi_tx/encb/n1q_m [1]),
    .O(\dvi_tx/encb/n0233 [2])
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT82_SW0  (
    .I0(\dvi_tx/encr/n1q_m [1]),
    .I1(\dvi_tx/encr/n0q_m [1]),
    .I2(\dvi_tx/encr/cnt [1]),
    .O(N100)
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT82_SW0  (
    .I0(\dvi_tx/encg/n1q_m [1]),
    .I1(\dvi_tx/encg/n0q_m [1]),
    .I2(\dvi_tx/encg/cnt [1]),
    .O(N102)
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT82_SW0  (
    .I0(\dvi_tx/encb/n1q_m [1]),
    .I1(\dvi_tx/encb/n0q_m [1]),
    .I2(\dvi_tx/encb/cnt [1]),
    .O(N104)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT83_SW0  (
    .I0(\dvi_tx/encr/cnt [1]),
    .I1(\dvi_tx/encr/n0q_m [1]),
    .I2(\dvi_tx/encr/n1q_m [1]),
    .O(N106)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT83_SW0  (
    .I0(\dvi_tx/encg/cnt [1]),
    .I1(\dvi_tx/encg/n0q_m [1]),
    .I2(\dvi_tx/encg/n1q_m [1]),
    .O(N108)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT83_SW0  (
    .I0(\dvi_tx/encb/cnt [1]),
    .I1(\dvi_tx/encb/n0q_m [1]),
    .I2(\dvi_tx/encb/n1q_m [1]),
    .O(N110)
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT611  (
    .I0(\dvi_tx/encr/cnt [1]),
    .I1(\dvi_tx/encr/n0q_m [1]),
    .I2(\dvi_tx/encr/n1q_m [1]),
    .I3(\dvi_tx/encr/q_m_reg [8]),
    .O(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT61_1417 )
  );
  LUT4 #(
    .INIT ( 16'h8EE8 ))
  \dvi_tx/encr/Madd_cnt[4]_GND_48_o_add_47_OUT11  (
    .I0(\dvi_tx/encr/q_m_reg [8]),
    .I1(\dvi_tx/encr/cnt [1]),
    .I2(\dvi_tx/encr/n0q_m [1]),
    .I3(\dvi_tx/encr/n1q_m [1]),
    .O(\dvi_tx/encr/Madd_cnt[4]_GND_48_o_add_47_OUT1 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT611  (
    .I0(\dvi_tx/encg/cnt [1]),
    .I1(\dvi_tx/encg/n0q_m [1]),
    .I2(\dvi_tx/encg/n1q_m [1]),
    .I3(\dvi_tx/encg/q_m_reg [8]),
    .O(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT61_1518 )
  );
  LUT4 #(
    .INIT ( 16'h8EE8 ))
  \dvi_tx/encg/Madd_cnt[4]_GND_48_o_add_47_OUT11  (
    .I0(\dvi_tx/encg/q_m_reg [8]),
    .I1(\dvi_tx/encg/cnt [1]),
    .I2(\dvi_tx/encg/n0q_m [1]),
    .I3(\dvi_tx/encg/n1q_m [1]),
    .O(\dvi_tx/encg/Madd_cnt[4]_GND_48_o_add_47_OUT1 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT611  (
    .I0(\dvi_tx/encb/cnt [1]),
    .I1(\dvi_tx/encb/n0q_m [1]),
    .I2(\dvi_tx/encb/n1q_m [1]),
    .I3(\dvi_tx/encb/q_m_reg [8]),
    .O(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT61_1615 )
  );
  LUT4 #(
    .INIT ( 16'h8EE8 ))
  \dvi_tx/encb/Madd_cnt[4]_GND_48_o_add_47_OUT11  (
    .I0(\dvi_tx/encb/q_m_reg [8]),
    .I1(\dvi_tx/encb/cnt [1]),
    .I2(\dvi_tx/encb/n0q_m [1]),
    .I3(\dvi_tx/encb/n1q_m [1]),
    .O(\dvi_tx/encb/Madd_cnt[4]_GND_48_o_add_47_OUT1 )
  );
  LUT5 #(
    .INIT ( 32'h000096A5 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT81_SW0  (
    .I0(\dvi_tx/encr/n1q_m [2]),
    .I1(\dvi_tx/encr/n1q_m [1]),
    .I2(\dvi_tx/encr/n0q_m [2]),
    .I3(\dvi_tx/encr/n0q_m [1]),
    .I4(\dvi_tx/encr/cnt [2]),
    .O(N26)
  );
  LUT5 #(
    .INIT ( 32'h000096A5 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT81_SW0  (
    .I0(\dvi_tx/encg/n1q_m [2]),
    .I1(\dvi_tx/encg/n1q_m [1]),
    .I2(\dvi_tx/encg/n0q_m [2]),
    .I3(\dvi_tx/encg/n0q_m [1]),
    .I4(\dvi_tx/encg/cnt [2]),
    .O(N34)
  );
  LUT5 #(
    .INIT ( 32'h000096A5 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT81_SW0  (
    .I0(\dvi_tx/encb/n1q_m [2]),
    .I1(\dvi_tx/encb/n1q_m [1]),
    .I2(\dvi_tx/encb/n0q_m [2]),
    .I3(\dvi_tx/encb/n0q_m [1]),
    .I4(\dvi_tx/encb/cnt [2]),
    .O(N42)
  );
  LUT5 #(
    .INIT ( 32'hFFFF6AA9 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT51  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_b/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I3(\dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ),
    .I4(N92),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hFFFF6AA9 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT51  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_g/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I3(\dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ),
    .I4(N94),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hFFFF6AA9 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT51  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_r/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I3(\dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ),
    .I4(N96),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h17E8E817E81717E8 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_xor<0>21  (
    .I0(tx_red[7]),
    .I1(tx_red[6]),
    .I2(tx_red[5]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd3 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4 ),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy [0]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_14 )
  );
  LUT6 #(
    .INIT ( 64'h17FFFFE8FFE8E800 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_xor<0>31  (
    .I0(tx_red[7]),
    .I1(tx_red[6]),
    .I2(tx_red[5]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd3 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4 ),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy [0]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_24 )
  );
  LUT6 #(
    .INIT ( 64'hE800000000000000 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy<0>31  (
    .I0(tx_red[7]),
    .I1(tx_red[6]),
    .I2(tx_red[5]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd3 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4 ),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy [0]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy<0>2 )
  );
  LUT6 #(
    .INIT ( 64'h17E8E817E81717E8 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_xor<0>21  (
    .I0(tx_blue[7]),
    .I1(tx_blue[6]),
    .I2(tx_blue[5]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd3 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4 ),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy [0]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_14 )
  );
  LUT6 #(
    .INIT ( 64'h17FFFFE8FFE8E800 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_xor<0>31  (
    .I0(tx_blue[7]),
    .I1(tx_blue[6]),
    .I2(tx_blue[5]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd3 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4 ),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy [0]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_24 )
  );
  LUT6 #(
    .INIT ( 64'hE800000000000000 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy<0>31  (
    .I0(tx_blue[7]),
    .I1(tx_blue[6]),
    .I2(tx_blue[5]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd3 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4 ),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy [0]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy<0>2 )
  );
  LUT5 #(
    .INIT ( 32'h69FF9600 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>21  (
    .I0(\dvi_tx/encr/din_q [2]),
    .I1(\dvi_tx/encr/din_q [1]),
    .I2(\dvi_tx/encr/din_q [0]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_19 )
  );
  LUT5 #(
    .INIT ( 32'h69FF9600 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>21  (
    .I0(\dvi_tx/encg/din_q [2]),
    .I1(\dvi_tx/encg/din_q [1]),
    .I2(\dvi_tx/encg/din_q [0]),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_19 )
  );
  LUT5 #(
    .INIT ( 32'h69FF9600 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>21  (
    .I0(\dvi_tx/encb/din_q [2]),
    .I1(\dvi_tx/encb/din_q [1]),
    .I2(\dvi_tx/encb/din_q [0]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_19 )
  );
  LUT5 #(
    .INIT ( 32'h0069FF96 ))
  \dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<1>11  (
    .I0(\dvi_tx/encr/din_q [2]),
    .I1(\dvi_tx/encr/din_q [1]),
    .I2(\dvi_tx/encr/din_q [0]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encr/PWR_47_o_BUS_0017_sub_29_OUT [1])
  );
  LUT5 #(
    .INIT ( 32'h0069FF96 ))
  \dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<1>11  (
    .I0(\dvi_tx/encg/din_q [2]),
    .I1(\dvi_tx/encg/din_q [1]),
    .I2(\dvi_tx/encg/din_q [0]),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encg/PWR_47_o_BUS_0017_sub_29_OUT [1])
  );
  LUT5 #(
    .INIT ( 32'h0069FF96 ))
  \dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<1>11  (
    .I0(\dvi_tx/encb/din_q [2]),
    .I1(\dvi_tx/encb/din_q [1]),
    .I2(\dvi_tx/encb/din_q [0]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encb/PWR_47_o_BUS_0017_sub_29_OUT [1])
  );
  LUT6 #(
    .INIT ( 64'h8228288228828228 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy<0>11  (
    .I0(tx_red[2]),
    .I1(tx_red[3]),
    .I2(tx_red[7]),
    .I3(tx_red[6]),
    .I4(tx_red[5]),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd3_lut [0]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy [0])
  );
  LUT6 #(
    .INIT ( 64'h9600FF96FF969600 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd41  (
    .I0(tx_red[0]),
    .I1(tx_red[1]),
    .I2(tx_red[4]),
    .I3(tx_red[3]),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_lut [0]),
    .I5(tx_red[7]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4 )
  );
  LUT6 #(
    .INIT ( 64'h8228288228828228 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy<0>11  (
    .I0(tx_blue[2]),
    .I1(tx_blue[3]),
    .I2(tx_blue[7]),
    .I3(tx_blue[6]),
    .I4(tx_blue[5]),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd3_lut [0]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy [0])
  );
  LUT6 #(
    .INIT ( 64'h9600FF96FF969600 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd41  (
    .I0(tx_blue[0]),
    .I1(tx_blue[1]),
    .I2(tx_blue[4]),
    .I3(tx_blue[3]),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_lut [0]),
    .I5(tx_blue[7]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4 )
  );
  LUT6 #(
    .INIT ( 64'hF66F9FF9F99F6FF6 ))
  \dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>161_SW0  (
    .I0(\dvi_tx/encr/din_q [4]),
    .I1(\dvi_tx/encr/din_q [3]),
    .I2(\dvi_tx/encr/din_q [2]),
    .I3(\dvi_tx/encr/din_q [1]),
    .I4(\dvi_tx/encr/din_q [0]),
    .I5(\dvi_tx/encr/q_m [1]),
    .O(N145)
  );
  LUT6 #(
    .INIT ( 64'hF66F9FF9F99F6FF6 ))
  \dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>161_SW0  (
    .I0(\dvi_tx/encg/din_q [4]),
    .I1(\dvi_tx/encg/din_q [3]),
    .I2(\dvi_tx/encg/din_q [2]),
    .I3(\dvi_tx/encg/din_q [1]),
    .I4(\dvi_tx/encg/din_q [0]),
    .I5(\dvi_tx/encg/q_m [1]),
    .O(N147)
  );
  LUT6 #(
    .INIT ( 64'hF66F9FF9F99F6FF6 ))
  \dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<2>161_SW0  (
    .I0(\dvi_tx/encb/din_q [4]),
    .I1(\dvi_tx/encb/din_q [3]),
    .I2(\dvi_tx/encb/din_q [2]),
    .I3(\dvi_tx/encb/din_q [1]),
    .I4(\dvi_tx/encb/din_q [0]),
    .I5(\dvi_tx/encb/q_m [1]),
    .O(N149)
  );
  LUT6 #(
    .INIT ( 64'h8CF808E0EFCECE8C ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT8111  (
    .I0(\dvi_tx/encr/cnt [1]),
    .I1(\dvi_tx/encr/cnt [2]),
    .I2(\dvi_tx/encr/n1q_m [1]),
    .I3(\dvi_tx/encr/n0q_m [1]),
    .I4(\dvi_tx/encr/q_m_reg [8]),
    .I5(\dvi_tx/encr/Msub_n0233_lut [2]),
    .O(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT811 )
  );
  LUT5 #(
    .INIT ( 32'h96966996 ))
  \dvi_tx/encr/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<2>1  (
    .I0(\dvi_tx/encr/cnt [2]),
    .I1(\dvi_tx/encr/n0q_m [2]),
    .I2(\dvi_tx/encr/n1q_m [2]),
    .I3(\dvi_tx/encr/n1q_m [1]),
    .I4(\dvi_tx/encr/n0q_m [1]),
    .O(\dvi_tx/encr/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<2> )
  );
  LUT5 #(
    .INIT ( 32'h96966996 ))
  \dvi_tx/encg/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<2>1  (
    .I0(\dvi_tx/encg/cnt [2]),
    .I1(\dvi_tx/encg/n0q_m [2]),
    .I2(\dvi_tx/encg/n1q_m [2]),
    .I3(\dvi_tx/encg/n1q_m [1]),
    .I4(\dvi_tx/encg/n0q_m [1]),
    .O(\dvi_tx/encg/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<2> )
  );
  LUT5 #(
    .INIT ( 32'h96966996 ))
  \dvi_tx/encb/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<2>1  (
    .I0(\dvi_tx/encb/cnt [2]),
    .I1(\dvi_tx/encb/n0q_m [2]),
    .I2(\dvi_tx/encb/n1q_m [2]),
    .I3(\dvi_tx/encb/n1q_m [1]),
    .I4(\dvi_tx/encb/n0q_m [1]),
    .O(\dvi_tx/encb/Madd_cnt[4]_GND_48_o_sub_41_OUT_lut<2> )
  );
  MUXF7   \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_cy<0>31  (
    .I0(\b_mux<3> [1]),
    .I1(N188),
    .S(tx_green[7]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_cy<0>2 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_cy<0>31_G  (
    .I0(N98),
    .I1(tx_green[3]),
    .I2(tx_green[4]),
    .I3(tx_green[1]),
    .I4(tx_green[0]),
    .I5(tx_green[2]),
    .O(N188)
  );
  MUXF7   \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1012  (
    .I0(N189),
    .I1(N190),
    .S(\dvi_tx/encg/decision3_1554 ),
    .O(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT101 )
  );
  LUT6 #(
    .INIT ( 64'h41D7BE28D7BE2841 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1012_F  (
    .I0(\dvi_tx/encg/cnt [3]),
    .I1(\dvi_tx/encg/Msub_n0233_lut [3]),
    .I2(\dvi_tx/encg/Msub_n0236_xor<3>11_1516 ),
    .I3(N64),
    .I4(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I5(\dvi_tx/encg/Madd_cnt[4]_GND_48_o_add_50_OUT_cy<0>2 ),
    .O(N189)
  );
  LUT6 #(
    .INIT ( 64'h4D24B2DBBDD4BDD4 ))
  \dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT1012_G  (
    .I0(\dvi_tx/encg/n1q_m [3]),
    .I1(\dvi_tx/encg/n0q_m [3]),
    .I2(\dvi_tx/encg/cnt [3]),
    .I3(\dvi_tx/encg/Msub_n0233_xor<3>11 ),
    .I4(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 ),
    .I5(\dvi_tx/encg/Mmux_GND_48_o_cnt[4]_mux_55_OUT811 ),
    .O(N190)
  );
  LUT6 #(
    .INIT ( 64'hAAAA8AAAAAAA8ABA ))
  \dvi_rx1/dec_b/des_0/rst_data_rstpot  (
    .I0(\dvi_rx1/dec_b/des_0/rst_data_358 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_374 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_373 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_372 ),
    .I4(rx_reset),
    .I5(\dvi_rx1/dec_b/des_0/busy_data_d_362 ),
    .O(\dvi_rx1/dec_b/des_0/rst_data_rstpot_1920 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA8AAAAAAA8ABA ))
  \dvi_rx1/dec_g/des_0/rst_data_rstpot  (
    .I0(\dvi_rx1/dec_g/des_0/rst_data_406 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_421 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_420 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_419 ),
    .I4(rx_reset),
    .I5(\dvi_rx1/dec_g/des_0/busy_data_d_410 ),
    .O(\dvi_rx1/dec_g/des_0/rst_data_rstpot_1925 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA8AAAAAAA8ABA ))
  \dvi_rx1/dec_r/des_0/rst_data_rstpot  (
    .I0(\dvi_rx1/dec_r/des_0/rst_data_451 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_466 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_465 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_464 ),
    .I4(rx_reset),
    .I5(\dvi_rx1/dec_r/des_0/busy_data_d_455 ),
    .O(\dvi_rx1/dec_r/des_0/rst_data_rstpot_1930 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_b/cbnd/ra_en_rstpot_SW0  (
    .I0(\dvi_rx1/dec_b/cbnd/iamrdy_44 ),
    .I1(\dvi_rx1/dec_g/cbnd/iamrdy_45 ),
    .I2(\dvi_rx1/dec_r/cbnd/iamrdy_46 ),
    .O(N191)
  );
  LUT6 #(
    .INIT ( 64'hFFFFF3FFAAAAA2AA ))
  \dvi_rx1/dec_b/cbnd/ra_en_rstpot  (
    .I0(\dvi_rx1/dec_b/cbnd/ra_en_756 ),
    .I1(\dvi_rx1/dec_b/cbnd/blnkbgn_760 ),
    .I2(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_758 ),
    .I3(\dvi_rx1/dec_b/cbnd/skip_line_757 ),
    .I4(N191),
    .I5(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_other_ch0_rdy_OR_127_o ),
    .O(\dvi_rx1/dec_b/cbnd/ra_en_rstpot_1944 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \dvi_rx1/dec_g/cbnd/ra_en_rstpot_SW0  (
    .I0(\dvi_rx1/dec_g/cbnd/blnkbgn_784 ),
    .I1(\dvi_rx1/dec_g/cbnd/skip_line_783 ),
    .I2(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_758 ),
    .O(N193)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \dvi_rx1/dec_r/cbnd/ra_en_rstpot_SW0  (
    .I0(\dvi_rx1/dec_r/cbnd/blnkbgn_808 ),
    .I1(\dvi_rx1/dec_r/cbnd/skip_line_807 ),
    .I2(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_758 ),
    .O(N195)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \dvi_rx1/dec_b/des_0/_n0251_SW1  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_373 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_372 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_374 ),
    .O(N181)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \dvi_rx1/dec_g/des_0/_n0251_SW1  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_420 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_419 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_421 ),
    .O(N183)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \dvi_rx1/dec_r/des_0/_n0251_SW1  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_465 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_464 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_466 ),
    .O(N185)
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<3>  (
    .I0(\hsv_converter/temp_1 [9]),
    .I1(\hsv_converter/max_calculator/r_index [1]),
    .I2(\hsv_converter/max_calculator/r_index [0]),
    .O(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<3>_1330 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_b/cbnd/iamrdy_glue_set  (
    .I0(\dvi_rx1/dec_b/cbnd/skip_line_757 ),
    .I1(\dvi_rx1/dec_b/cbnd/blnkbgn_760 ),
    .I2(\dvi_rx1/dec_b/cbnd/iamrdy_44 ),
    .O(\dvi_rx1/dec_b/cbnd/iamrdy_glue_set_1877 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_g/cbnd/iamrdy_glue_set  (
    .I0(\dvi_rx1/dec_g/cbnd/skip_line_783 ),
    .I1(\dvi_rx1/dec_g/cbnd/blnkbgn_784 ),
    .I2(\dvi_rx1/dec_g/cbnd/iamrdy_45 ),
    .O(\dvi_rx1/dec_g/cbnd/iamrdy_glue_set_1879 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_r/cbnd/iamrdy_glue_set  (
    .I0(\dvi_rx1/dec_r/cbnd/skip_line_807 ),
    .I1(\dvi_rx1/dec_r/cbnd/blnkbgn_808 ),
    .I2(\dvi_rx1/dec_r/cbnd/iamrdy_46 ),
    .O(\dvi_rx1/dec_r/cbnd/iamrdy_glue_set_1881 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3_SW1  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I1(\dvi_rx1/dec_b/des_0/flag_363 ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(N197)
  );
  LUT6 #(
    .INIT ( 64'h0110101010101001 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3  (
    .I0(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(N197),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .I4(\dvi_rx1/dec_b/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I5(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3_SW1  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I1(\dvi_rx1/dec_g/des_0/flag_411 ),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(N199)
  );
  LUT6 #(
    .INIT ( 64'h0110101010101001 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3  (
    .I0(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(N199),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .I4(\dvi_rx1/dec_g/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I5(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3_SW1  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I1(\dvi_rx1/dec_r/des_0/flag_456 ),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(N201)
  );
  LUT6 #(
    .INIT ( 64'h0110101010101001 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3  (
    .I0(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(N201),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .I4(\dvi_rx1/dec_r/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I5(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hFBFFFFFF ))
  \dvi_rx1/dec_r/n0050_inv4_SW0  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [7]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [5]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(N203)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFEFF7F7F7E7F ))
  \dvi_rx1/dec_r/n0050_inv4  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [3]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .I4(N203),
    .I5(\dvi_rx1/dec_r/n0050_inv2_1807 ),
    .O(\dvi_rx1/dec_r/n0050_inv )
  );
  LUT5 #(
    .INIT ( 32'hFBFFFFFF ))
  \dvi_rx1/dec_g/n0050_inv4_SW0  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [7]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [5]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(N205)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFEFF7F7F7E7F ))
  \dvi_rx1/dec_g/n0050_inv4  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [3]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .I4(N205),
    .I5(\dvi_rx1/dec_g/n0050_inv2_1808 ),
    .O(\dvi_rx1/dec_g/n0050_inv )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFD ))
  \dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o4_SW0  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(N207)
  );
  LUT6 #(
    .INIT ( 64'h0101810100008000 ))
  \dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o4  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [7]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .I4(N207),
    .I5(\dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o2_1829 ),
    .O(\dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFD ))
  \dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o4_SW0  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(N209)
  );
  LUT6 #(
    .INIT ( 64'h0101810100008000 ))
  \dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o4  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [7]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [0]),
    .I4(N209),
    .I5(\dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o2_1830 ),
    .O(\dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFD ))
  \dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o4_SW0  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(N211)
  );
  LUT6 #(
    .INIT ( 64'h0101810100008000 ))
  \dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o4  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [7]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [0]),
    .I4(N211),
    .I5(\dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o2_1831 ),
    .O(\dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o )
  );
  LUT6 #(
    .INIT ( 64'h0001010001000001 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT41  (
    .I0(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_4_o ),
    .I3(\dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I5(\dvi_rx1/dec_b/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h0001010001000001 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT41  (
    .I0(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_4_o ),
    .I3(\dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I5(\dvi_rx1/dec_g/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h0001010001000001 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT41  (
    .I0(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_4_o ),
    .I3(\dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I5(\dvi_rx1/dec_r/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA2 ))
  \dvi_rx1/dec_b/des_0/rst_data_rstpot1  (
    .I0(\dvi_rx1/dec_b/des_0/rst_data_rstpot_1920 ),
    .I1(\dvi_rx1/dec_b/des_0/enable_365 ),
    .I2(rx_reset),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_374 ),
    .I4(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_373 ),
    .I5(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_372 ),
    .O(\dvi_rx1/dec_b/des_0/rst_data_rstpot1_1947 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA2 ))
  \dvi_rx1/dec_g/des_0/rst_data_rstpot1  (
    .I0(\dvi_rx1/dec_g/des_0/rst_data_rstpot_1925 ),
    .I1(\dvi_rx1/dec_b/des_0/enable_365 ),
    .I2(rx_reset),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_421 ),
    .I4(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_420 ),
    .I5(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_419 ),
    .O(\dvi_rx1/dec_g/des_0/rst_data_rstpot1_1948 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA2 ))
  \dvi_rx1/dec_r/des_0/rst_data_rstpot1  (
    .I0(\dvi_rx1/dec_r/des_0/rst_data_rstpot_1930 ),
    .I1(\dvi_rx1/dec_b/des_0/enable_365 ),
    .I2(rx_reset),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_466 ),
    .I4(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_465 ),
    .I5(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_464 ),
    .O(\dvi_rx1/dec_r/des_0/rst_data_rstpot1_1949 )
  );
  LUT4 #(
    .INIT ( 16'hD554 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2>11  (
    .I0(\dvi_rx1/dec_b/des_0/incdec_data_d_361 ),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> )
  );
  LUT4 #(
    .INIT ( 16'hD554 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2>11  (
    .I0(\dvi_rx1/dec_g/des_0/incdec_data_d_409 ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> )
  );
  LUT4 #(
    .INIT ( 16'hD554 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2>11  (
    .I0(\dvi_rx1/dec_r/des_0/incdec_data_d_454 ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAEFEFAAAA2220 ))
  \dvi_rx1/dec_b/des_0/flag_rstpot  (
    .I0(\dvi_rx1/dec_b/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I1(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(N175),
    .I5(\dvi_rx1/dec_b/des_0/flag_363 ),
    .O(\dvi_rx1/dec_b/des_0/flag_rstpot_1921 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAEFEFAAAA2220 ))
  \dvi_rx1/dec_g/des_0/flag_rstpot  (
    .I0(\dvi_rx1/dec_g/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I1(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(N177),
    .I5(\dvi_rx1/dec_g/des_0/flag_411 ),
    .O(\dvi_rx1/dec_g/des_0/flag_rstpot_1926 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAEFEFAAAA2220 ))
  \dvi_rx1/dec_r/des_0/flag_rstpot  (
    .I0(\dvi_rx1/dec_r/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I1(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(N179),
    .I5(\dvi_rx1/dec_r/des_0/flag_456 ),
    .O(\dvi_rx1/dec_r/des_0/flag_rstpot_1931 )
  );
  LUT6 #(
    .INIT ( 64'h7777557522220020 ))
  \dvi_rx1/dec_b/des_0/ce_data_inta_rstpot  (
    .I0(\dvi_rx1/dec_b/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I1(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_b/des_0/flag_363 ),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .I5(\dvi_rx1/dec_b/des_0/ce_data_inta_364 ),
    .O(\dvi_rx1/dec_b/des_0/ce_data_inta_rstpot_1917 )
  );
  LUT6 #(
    .INIT ( 64'h7777557522220020 ))
  \dvi_rx1/dec_g/des_0/ce_data_inta_rstpot  (
    .I0(\dvi_rx1/dec_g/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I1(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_g/des_0/flag_411 ),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I5(\dvi_rx1/dec_g/des_0/ce_data_inta_412 ),
    .O(\dvi_rx1/dec_g/des_0/ce_data_inta_rstpot_1923 )
  );
  LUT6 #(
    .INIT ( 64'h7777557522220020 ))
  \dvi_rx1/dec_r/des_0/ce_data_inta_rstpot  (
    .I0(\dvi_rx1/dec_r/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I1(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_r/des_0/flag_456 ),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I5(\dvi_rx1/dec_r/des_0/ce_data_inta_457 ),
    .O(\dvi_rx1/dec_r/des_0/ce_data_inta_rstpot_1928 )
  );
  LUT3 #(
    .INIT ( 8'h56 ))
  \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<4>  (
    .I0(\hsv_converter/temp_1 [10]),
    .I1(\hsv_converter/max_calculator/r_index [1]),
    .I2(\hsv_converter/max_calculator/r_index [0]),
    .O(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<4>_1328 )
  );
  LUT3 #(
    .INIT ( 8'h56 ))
  \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<5>  (
    .I0(\hsv_converter/temp_1 [11]),
    .I1(\hsv_converter/max_calculator/r_index [1]),
    .I2(\hsv_converter/max_calculator/r_index [0]),
    .O(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<5>_1326 )
  );
  LUT3 #(
    .INIT ( 8'h56 ))
  \hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<6>  (
    .I0(\hsv_converter/temp_1 [12]),
    .I1(\hsv_converter/max_calculator/r_index [1]),
    .I2(\hsv_converter/max_calculator/r_index [0]),
    .O(\hsv_converter/add_to_h/Mmux_r_value[9]_h[9]_mux_8_OUT_rs_lut<6>_1324 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>12  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [4]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [3]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<4>1 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>12  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [4]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [3]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<4>1 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>12  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [4]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [3]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<4>1 )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<5>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [3]),
    .I5(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<5>1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [0]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_554 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_553 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_552 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_556 ),
    .I5(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_555 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<5>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [3]),
    .I5(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<5>1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [0]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_641 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_640 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_639 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_643 ),
    .I5(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_642 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<5>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [3]),
    .I5(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<5>1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [0]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_728 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_727 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_726 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_730 ),
    .I5(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_729 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'h11111151 ))
  \dvi_tx/encr/q_m<8>1  (
    .I0(\dvi_tx/encr/n1d [3]),
    .I1(\dvi_tx/encr/n1d [2]),
    .I2(\dvi_tx/encr/din_q [0]),
    .I3(\dvi_tx/encr/n1d [1]),
    .I4(\dvi_tx/encr/n1d [0]),
    .O(\dvi_tx/encr/q_m [8])
  );
  LUT5 #(
    .INIT ( 32'h11111151 ))
  \dvi_tx/encg/q_m<8>1  (
    .I0(\dvi_tx/encg/n1d [3]),
    .I1(\dvi_tx/encg/n1d [2]),
    .I2(\dvi_tx/encg/din_q [0]),
    .I3(\dvi_tx/encg/n1d [1]),
    .I4(\dvi_tx/encg/n1d [0]),
    .O(\dvi_tx/encg/q_m [8])
  );
  LUT5 #(
    .INIT ( 32'h11111151 ))
  \dvi_tx/encb/q_m<8>1  (
    .I0(\dvi_tx/encb/n1d [3]),
    .I1(\dvi_tx/encb/n1d [2]),
    .I2(\dvi_tx/encb/din_q [0]),
    .I3(\dvi_tx/encb/n1d [1]),
    .I4(\dvi_tx/encb/n1d [0]),
    .O(\dvi_tx/encb/q_m [8])
  );
  LUT6 #(
    .INIT ( 64'h0000110111010000 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT21  (
    .I0(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_b/des_0/flag_363 ),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h0000110111010000 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT21  (
    .I0(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_g/des_0/flag_411 ),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h0000110111010000 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT21  (
    .I0(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_r/des_0/flag_456 ),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_xor<0>11  (
    .I0(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd3_lut [0]),
    .I1(tx_red[5]),
    .I2(tx_red[6]),
    .I3(tx_red[2]),
    .I4(tx_red[3]),
    .I5(tx_red[7]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_04 )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_xor<0>11  (
    .I0(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd3_lut [0]),
    .I1(tx_blue[5]),
    .I2(tx_blue[6]),
    .I3(tx_blue[2]),
    .I4(tx_blue[3]),
    .I5(tx_blue[7]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_04 )
  );
  LUT5 #(
    .INIT ( 32'hA8A8B8BA ))
  \dvi_rx1/dec_b/des_0/cal_data_master_rstpot  (
    .I0(\dvi_rx1/dec_b/des_0/cal_data_master_367 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_374 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_372 ),
    .I3(\dvi_rx1/dec_b/des_0/enable_365 ),
    .I4(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_373 ),
    .O(\dvi_rx1/dec_b/des_0/cal_data_master_rstpot_1916 )
  );
  LUT5 #(
    .INIT ( 32'hA8A8B8BA ))
  \dvi_rx1/dec_g/des_0/cal_data_master_rstpot  (
    .I0(\dvi_rx1/dec_g/des_0/cal_data_master_414 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_421 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_419 ),
    .I3(\dvi_rx1/dec_b/des_0/enable_365 ),
    .I4(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_420 ),
    .O(\dvi_rx1/dec_g/des_0/cal_data_master_rstpot_1922 )
  );
  LUT5 #(
    .INIT ( 32'hA8A8B8BA ))
  \dvi_rx1/dec_r/des_0/cal_data_master_rstpot  (
    .I0(\dvi_rx1/dec_r/des_0/cal_data_master_459 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_466 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_464 ),
    .I3(\dvi_rx1/dec_b/des_0/enable_365 ),
    .I4(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_465 ),
    .O(\dvi_rx1/dec_r/des_0/cal_data_master_rstpot_1927 )
  );
  LUT6 #(
    .INIT ( 64'h55CC044455DD0444 ))
  \dvi_rx1/dec_b/des_0/cal_data_sint_rstpot  (
    .I0(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_373 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_372 ),
    .I2(\dvi_rx1/dec_b/des_0/busy_data_d_362 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_374 ),
    .I4(\dvi_rx1/dec_b/des_0/cal_data_sint_366 ),
    .I5(\dvi_rx1/dec_b/des_0/enable_365 ),
    .O(\dvi_rx1/dec_b/des_0/cal_data_sint_rstpot_1919 )
  );
  LUT6 #(
    .INIT ( 64'h55CC044455DD0444 ))
  \dvi_rx1/dec_g/des_0/cal_data_sint_rstpot  (
    .I0(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_420 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_419 ),
    .I2(\dvi_rx1/dec_g/des_0/busy_data_d_410 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_421 ),
    .I4(\dvi_rx1/dec_g/des_0/cal_data_sint_413 ),
    .I5(\dvi_rx1/dec_b/des_0/enable_365 ),
    .O(\dvi_rx1/dec_g/des_0/cal_data_sint_rstpot_1924 )
  );
  LUT6 #(
    .INIT ( 64'h55CC044455DD0444 ))
  \dvi_rx1/dec_r/des_0/cal_data_sint_rstpot  (
    .I0(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_465 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_464 ),
    .I2(\dvi_rx1/dec_r/des_0/busy_data_d_455 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_466 ),
    .I4(\dvi_rx1/dec_r/des_0/cal_data_sint_458 ),
    .I5(\dvi_rx1/dec_b/des_0/enable_365 ),
    .O(\dvi_rx1/dec_r/des_0/cal_data_sint_rstpot_1929 )
  );
  LUT6 #(
    .INIT ( 64'h1999999999999999 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1>1  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I1(\dvi_rx1/dec_b/des_0/incdec_data_d_361 ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I5(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> )
  );
  LUT6 #(
    .INIT ( 64'h1999999999999999 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1>1  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I1(\dvi_rx1/dec_g/des_0/incdec_data_d_409 ),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I5(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> )
  );
  LUT6 #(
    .INIT ( 64'h1999999999999999 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1>1  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I1(\dvi_rx1/dec_r/des_0/incdec_data_d_454 ),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I5(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_4_o1  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_b/des_0/flag_363 ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_4_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_4_o1  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_g/des_0/flag_411 ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_4_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_4_o1  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_r/des_0/flag_456 ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_4_o )
  );
  LUT4 #(
    .INIT ( 16'h1101 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT11  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .I1(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_b/des_0/flag_363 ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h1101 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT11  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .I1(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_g/des_0/flag_411 ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h1101 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT11  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .I1(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_r/des_0/flag_456 ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hF1A44A1F ))
  \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<0>  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\hsv_converter/max_calculator/r_index [0]),
    .I2(\dvi_rx1/dec_r/dout [0]),
    .I3(\dvi_rx1/dec_b/dout [0]),
    .I4(\dvi_rx1/dec_g/dout [0]),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<0>_1300 )
  );
  LUT5 #(
    .INIT ( 32'hF1A44A1F ))
  \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<1>  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\hsv_converter/max_calculator/r_index [0]),
    .I2(\dvi_rx1/dec_r/dout [1]),
    .I3(\dvi_rx1/dec_b/dout [1]),
    .I4(\dvi_rx1/dec_g/dout [1]),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<1>_1298 )
  );
  LUT5 #(
    .INIT ( 32'hF1A44A1F ))
  \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<2>  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\hsv_converter/max_calculator/r_index [0]),
    .I2(\dvi_rx1/dec_r/dout [2]),
    .I3(\dvi_rx1/dec_b/dout [2]),
    .I4(\dvi_rx1/dec_g/dout [2]),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<2>_1296 )
  );
  LUT5 #(
    .INIT ( 32'hF1A44A1F ))
  \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<3>  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\hsv_converter/max_calculator/r_index [0]),
    .I2(\dvi_rx1/dec_r/dout [3]),
    .I3(\dvi_rx1/dec_b/dout [3]),
    .I4(\dvi_rx1/dec_g/dout [3]),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<3>_1294 )
  );
  LUT5 #(
    .INIT ( 32'hF1A44A1F ))
  \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<4>  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\hsv_converter/max_calculator/r_index [0]),
    .I2(\dvi_rx1/dec_r/dout [4]),
    .I3(\dvi_rx1/dec_b/dout [4]),
    .I4(\dvi_rx1/dec_g/dout [4]),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<4>_1292 )
  );
  LUT5 #(
    .INIT ( 32'hF1A44A1F ))
  \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<5>  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\hsv_converter/max_calculator/r_index [0]),
    .I2(\dvi_rx1/dec_r/dout [5]),
    .I3(\dvi_rx1/dec_b/dout [5]),
    .I4(\dvi_rx1/dec_g/dout [5]),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<5>_1290 )
  );
  LUT5 #(
    .INIT ( 32'hF1A44A1F ))
  \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<6>  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\hsv_converter/max_calculator/r_index [0]),
    .I2(\dvi_rx1/dec_r/dout [6]),
    .I3(\dvi_rx1/dec_b/dout [6]),
    .I4(\dvi_rx1/dec_g/dout [6]),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<6>_1288 )
  );
  LUT5 #(
    .INIT ( 32'hF1A44A1F ))
  \hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<7>  (
    .I0(\hsv_converter/max_calculator/r_index [1]),
    .I1(\hsv_converter/max_calculator/r_index [0]),
    .I2(\dvi_rx1/dec_r/dout [7]),
    .I3(\dvi_rx1/dec_b/dout [7]),
    .I4(\dvi_rx1/dec_g/dout [7]),
    .O(\hsv_converter/subtr_RGB/Mmux_r_value[9]_green[9]_mux_10_OUT_rs_lut<7>_1286 )
  );
  LUT6 #(
    .INIT ( 64'hFFA8A8A8A8A8A8A8 ))
  \dvi_rx1/dec_g/cbnd/ra_en_rstpot  (
    .I0(N193),
    .I1(\dvi_rx1/dec_g/cbnd/ra_en_782 ),
    .I2(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_758 ),
    .I3(\dvi_rx1/dec_b/cbnd/iamrdy_44 ),
    .I4(\dvi_rx1/dec_g/cbnd/iamrdy_45 ),
    .I5(\dvi_rx1/dec_r/cbnd/iamrdy_46 ),
    .O(\dvi_rx1/dec_g/cbnd/ra_en_rstpot_1945 )
  );
  LUT6 #(
    .INIT ( 64'hFFA8A8A8A8A8A8A8 ))
  \dvi_rx1/dec_r/cbnd/ra_en_rstpot  (
    .I0(N195),
    .I1(\dvi_rx1/dec_r/cbnd/ra_en_806 ),
    .I2(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_758 ),
    .I3(\dvi_rx1/dec_b/cbnd/iamrdy_44 ),
    .I4(\dvi_rx1/dec_g/cbnd/iamrdy_45 ),
    .I5(\dvi_rx1/dec_r/cbnd/iamrdy_46 ),
    .O(\dvi_rx1/dec_r/cbnd/ra_en_rstpot_1946 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/ce_data_rstpot  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_b/des_0/ce_data_inta_364 ),
    .I2(\dvi_rx1/dec_b/des_0/ce_data_359 ),
    .O(\dvi_rx1/dec_b/des_0/ce_data_rstpot_1939 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_g/des_0/ce_data_rstpot  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_g/des_0/ce_data_inta_412 ),
    .I2(\dvi_rx1/dec_g/des_0/ce_data_407 ),
    .O(\dvi_rx1/dec_g/des_0/ce_data_rstpot_1941 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_r/des_0/ce_data_rstpot  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_r/des_0/ce_data_inta_457 ),
    .I2(\dvi_rx1/dec_r/des_0/ce_data_452 ),
    .O(\dvi_rx1/dec_r/des_0/ce_data_rstpot_1943 )
  );
  LUT6 #(
    .INIT ( 64'h88AA088AEEFFAEEF ))
  \dvi_tx/encr/Msub_n0233_cy<3>11  (
    .I0(\dvi_tx/encr/n0q_m [3]),
    .I1(\dvi_tx/encr/n0q_m [2]),
    .I2(\dvi_tx/encr/n1q_m [1]),
    .I3(\dvi_tx/encr/n1q_m [2]),
    .I4(\dvi_tx/encr/n0q_m [1]),
    .I5(\dvi_tx/encr/n1q_m [3]),
    .O(\dvi_tx/encr/Msub_n0233_cy [3])
  );
  LUT6 #(
    .INIT ( 64'h88AA088AEEFFAEEF ))
  \dvi_tx/encg/Msub_n0233_cy<3>11  (
    .I0(\dvi_tx/encg/n0q_m [3]),
    .I1(\dvi_tx/encg/n0q_m [2]),
    .I2(\dvi_tx/encg/n1q_m [1]),
    .I3(\dvi_tx/encg/n1q_m [2]),
    .I4(\dvi_tx/encg/n0q_m [1]),
    .I5(\dvi_tx/encg/n1q_m [3]),
    .O(\dvi_tx/encg/Msub_n0233_cy [3])
  );
  LUT6 #(
    .INIT ( 64'h88AA088AEEFFAEEF ))
  \dvi_tx/encb/Msub_n0233_cy<3>11  (
    .I0(\dvi_tx/encb/n0q_m [3]),
    .I1(\dvi_tx/encb/n0q_m [2]),
    .I2(\dvi_tx/encb/n1q_m [1]),
    .I3(\dvi_tx/encb/n1q_m [2]),
    .I4(\dvi_tx/encb/n0q_m [1]),
    .I5(\dvi_tx/encb/n1q_m [3]),
    .O(\dvi_tx/encb/Msub_n0233_cy [3])
  );
  LUT6 #(
    .INIT ( 64'h555556AA555555AA ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut<0>1  (
    .I0(\dvi_tx/encr/din_q [6]),
    .I1(\dvi_tx/encr/n1d [0]),
    .I2(\dvi_tx/encr/n1d [1]),
    .I3(\dvi_tx/encr/n1d [2]),
    .I4(\dvi_tx/encr/n1d [3]),
    .I5(\dvi_tx/encr/din_q [0]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut [0])
  );
  LUT6 #(
    .INIT ( 64'h555556AA555555AA ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut<0>1  (
    .I0(\dvi_tx/encg/din_q [6]),
    .I1(\dvi_tx/encg/n1d [0]),
    .I2(\dvi_tx/encg/n1d [1]),
    .I3(\dvi_tx/encg/n1d [2]),
    .I4(\dvi_tx/encg/n1d [3]),
    .I5(\dvi_tx/encg/din_q [0]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut [0])
  );
  LUT6 #(
    .INIT ( 64'h555556AA555555AA ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut<0>1  (
    .I0(\dvi_tx/encb/din_q [6]),
    .I1(\dvi_tx/encb/n1d [0]),
    .I2(\dvi_tx/encb/n1d [1]),
    .I3(\dvi_tx/encb/n1d [2]),
    .I4(\dvi_tx/encb/n1d [3]),
    .I5(\dvi_tx/encb/din_q [0]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut [0])
  );
  MUXF7   \dvi_rx1/dec_b/des_0/inc_data_int_rstpot  (
    .I0(N213),
    .I1(N214),
    .S(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(\dvi_rx1/dec_b/des_0/inc_data_int_rstpot_1938 )
  );
  LUT5 #(
    .INIT ( 32'hAAAAAA8A ))
  \dvi_rx1/dec_b/des_0/inc_data_int_rstpot_F  (
    .I0(\dvi_rx1/dec_b/des_0/inc_data_int_357 ),
    .I1(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(N181),
    .I4(\dvi_rx1/dec_b/des_0/flag_363 ),
    .O(N213)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAE ))
  \dvi_rx1/dec_b/des_0/inc_data_int_rstpot_G  (
    .I0(\dvi_rx1/dec_b/des_0/inc_data_int_357 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_374 ),
    .I2(\dvi_rx1/dec_b/des_0/busy_data_d_362 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_373 ),
    .I4(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_372 ),
    .I5(rx_reset),
    .O(N214)
  );
  MUXF7   \dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<3>1_SW0  (
    .I0(N215),
    .I1(N216),
    .S(\dvi_tx/encr/Mmux_q_m<3>12 ),
    .O(N28)
  );
  LUT5 #(
    .INIT ( 32'hA028820A ))
  \dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<3>1_SW0_F  (
    .I0(\dvi_tx/encr/Mmux_q_m<3>11 ),
    .I1(\dvi_tx/encr/din_q [6]),
    .I2(\dvi_tx/encr/q_m [4]),
    .I3(\dvi_tx/encr/din_q [5]),
    .I4(N56),
    .O(N215)
  );
  LUT6 #(
    .INIT ( 64'hF5D77D5F41055014 ))
  \dvi_tx/encr/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<3>1_SW0_G  (
    .I0(\dvi_tx/encr/n1d [3]),
    .I1(\dvi_tx/encr/din_q [6]),
    .I2(\dvi_tx/encr/q_m [4]),
    .I3(N56),
    .I4(\dvi_tx/encr/din_q [5]),
    .I5(\dvi_tx/encr/Mmux_q_m<3>11 ),
    .O(N216)
  );
  MUXF7   \dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<3>1_SW0  (
    .I0(N217),
    .I1(N218),
    .S(\dvi_tx/encg/Mmux_q_m<3>12 ),
    .O(N36)
  );
  LUT5 #(
    .INIT ( 32'hA028820A ))
  \dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<3>1_SW0_F  (
    .I0(\dvi_tx/encg/Mmux_q_m<3>11 ),
    .I1(\dvi_tx/encg/din_q [6]),
    .I2(\dvi_tx/encg/q_m [4]),
    .I3(\dvi_tx/encg/din_q [5]),
    .I4(N58),
    .O(N217)
  );
  LUT6 #(
    .INIT ( 64'hF5D77D5F41055014 ))
  \dvi_tx/encg/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<3>1_SW0_G  (
    .I0(\dvi_tx/encg/n1d [3]),
    .I1(\dvi_tx/encg/din_q [6]),
    .I2(\dvi_tx/encg/q_m [4]),
    .I3(N58),
    .I4(\dvi_tx/encg/din_q [5]),
    .I5(\dvi_tx/encg/Mmux_q_m<3>11 ),
    .O(N218)
  );
  MUXF7   \dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<3>1_SW0  (
    .I0(N219),
    .I1(N220),
    .S(\dvi_tx/encb/Mmux_q_m<3>12 ),
    .O(N44)
  );
  LUT5 #(
    .INIT ( 32'hA028820A ))
  \dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<3>1_SW0_F  (
    .I0(\dvi_tx/encb/Mmux_q_m<3>11 ),
    .I1(\dvi_tx/encb/din_q [6]),
    .I2(\dvi_tx/encb/q_m [4]),
    .I3(\dvi_tx/encb/din_q [5]),
    .I4(N60),
    .O(N219)
  );
  LUT6 #(
    .INIT ( 64'hF5D77D5F41055014 ))
  \dvi_tx/encb/Msub_PWR_47_o_BUS_0017_sub_29_OUT_xor<3>1_SW0_G  (
    .I0(\dvi_tx/encb/n1d [3]),
    .I1(\dvi_tx/encb/din_q [6]),
    .I2(\dvi_tx/encb/q_m [4]),
    .I3(N60),
    .I4(\dvi_tx/encb/din_q [5]),
    .I5(\dvi_tx/encb/Mmux_q_m<3>11 ),
    .O(N220)
  );
  MUXF7   \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_xor<0>21  (
    .I0(N221),
    .I1(N222),
    .S(N70),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_14 )
  );
  LUT6 #(
    .INIT ( 64'h7EE8E881E8818117 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_xor<0>21_F  (
    .I0(tx_green[0]),
    .I1(tx_green[1]),
    .I2(tx_green[4]),
    .I3(tx_green[6]),
    .I4(tx_green[5]),
    .I5(N71),
    .O(N221)
  );
  LUT6 #(
    .INIT ( 64'h177E7EE88117177E ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_xor<0>21_G  (
    .I0(tx_green[0]),
    .I1(tx_green[1]),
    .I2(tx_green[4]),
    .I3(tx_green[6]),
    .I4(tx_green[5]),
    .I5(N71),
    .O(N222)
  );
  MUXF7   \dvi_tx/encr/Mmux_q_m<5>11  (
    .I0(N223),
    .I1(N224),
    .S(\dvi_tx/encr/q_m [4]),
    .O(\dvi_tx/encr/q_m [5])
  );
  LUT6 #(
    .INIT ( 64'h5555555566666A66 ))
  \dvi_tx/encr/Mmux_q_m<5>11_F  (
    .I0(\dvi_tx/encr/din_q [5]),
    .I1(\dvi_tx/encr/n1d [2]),
    .I2(\dvi_tx/encr/n1d [1]),
    .I3(\dvi_tx/encr/din_q [0]),
    .I4(\dvi_tx/encr/n1d [0]),
    .I5(\dvi_tx/encr/n1d [3]),
    .O(N223)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA99999599 ))
  \dvi_tx/encr/Mmux_q_m<5>11_G  (
    .I0(\dvi_tx/encr/din_q [5]),
    .I1(\dvi_tx/encr/n1d [2]),
    .I2(\dvi_tx/encr/n1d [0]),
    .I3(\dvi_tx/encr/din_q [0]),
    .I4(\dvi_tx/encr/n1d [1]),
    .I5(\dvi_tx/encr/n1d [3]),
    .O(N224)
  );
  MUXF7   \dvi_tx/encg/Mmux_q_m<5>11  (
    .I0(N225),
    .I1(N226),
    .S(\dvi_tx/encg/q_m [4]),
    .O(\dvi_tx/encg/q_m [5])
  );
  LUT6 #(
    .INIT ( 64'h5555555566666A66 ))
  \dvi_tx/encg/Mmux_q_m<5>11_F  (
    .I0(\dvi_tx/encg/din_q [5]),
    .I1(\dvi_tx/encg/n1d [2]),
    .I2(\dvi_tx/encg/n1d [1]),
    .I3(\dvi_tx/encg/din_q [0]),
    .I4(\dvi_tx/encg/n1d [0]),
    .I5(\dvi_tx/encg/n1d [3]),
    .O(N225)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA99999599 ))
  \dvi_tx/encg/Mmux_q_m<5>11_G  (
    .I0(\dvi_tx/encg/din_q [5]),
    .I1(\dvi_tx/encg/n1d [2]),
    .I2(\dvi_tx/encg/n1d [0]),
    .I3(\dvi_tx/encg/din_q [0]),
    .I4(\dvi_tx/encg/n1d [1]),
    .I5(\dvi_tx/encg/n1d [3]),
    .O(N226)
  );
  MUXF7   \dvi_tx/encb/Mmux_q_m<5>11  (
    .I0(N227),
    .I1(N228),
    .S(\dvi_tx/encb/q_m [4]),
    .O(\dvi_tx/encb/q_m [5])
  );
  LUT6 #(
    .INIT ( 64'h5555555566666A66 ))
  \dvi_tx/encb/Mmux_q_m<5>11_F  (
    .I0(\dvi_tx/encb/din_q [5]),
    .I1(\dvi_tx/encb/n1d [2]),
    .I2(\dvi_tx/encb/n1d [1]),
    .I3(\dvi_tx/encb/din_q [0]),
    .I4(\dvi_tx/encb/n1d [0]),
    .I5(\dvi_tx/encb/n1d [3]),
    .O(N227)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA99999599 ))
  \dvi_tx/encb/Mmux_q_m<5>11_G  (
    .I0(\dvi_tx/encb/din_q [5]),
    .I1(\dvi_tx/encb/n1d [2]),
    .I2(\dvi_tx/encb/n1d [0]),
    .I3(\dvi_tx/encb/din_q [0]),
    .I4(\dvi_tx/encb/n1d [1]),
    .I5(\dvi_tx/encb/n1d [3]),
    .O(N228)
  );
  MUXF7   \dvi_tx/encr/Mmux_q_m<3>13  (
    .I0(N229),
    .I1(N230),
    .S(\dvi_tx/encr/q_m [2]),
    .O(\dvi_tx/encr/q_m [3])
  );
  LUT6 #(
    .INIT ( 64'h5555555566666A66 ))
  \dvi_tx/encr/Mmux_q_m<3>13_F  (
    .I0(\dvi_tx/encr/din_q [3]),
    .I1(\dvi_tx/encr/n1d [2]),
    .I2(\dvi_tx/encr/n1d [1]),
    .I3(\dvi_tx/encr/din_q [0]),
    .I4(\dvi_tx/encr/n1d [0]),
    .I5(\dvi_tx/encr/n1d [3]),
    .O(N229)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA99999599 ))
  \dvi_tx/encr/Mmux_q_m<3>13_G  (
    .I0(\dvi_tx/encr/din_q [3]),
    .I1(\dvi_tx/encr/n1d [2]),
    .I2(\dvi_tx/encr/n1d [0]),
    .I3(\dvi_tx/encr/din_q [0]),
    .I4(\dvi_tx/encr/n1d [1]),
    .I5(\dvi_tx/encr/n1d [3]),
    .O(N230)
  );
  MUXF7   \dvi_tx/encg/Mmux_q_m<3>13  (
    .I0(N231),
    .I1(N232),
    .S(\dvi_tx/encg/q_m [2]),
    .O(\dvi_tx/encg/q_m [3])
  );
  LUT6 #(
    .INIT ( 64'h5555555566666A66 ))
  \dvi_tx/encg/Mmux_q_m<3>13_F  (
    .I0(\dvi_tx/encg/din_q [3]),
    .I1(\dvi_tx/encg/n1d [2]),
    .I2(\dvi_tx/encg/n1d [1]),
    .I3(\dvi_tx/encg/din_q [0]),
    .I4(\dvi_tx/encg/n1d [0]),
    .I5(\dvi_tx/encg/n1d [3]),
    .O(N231)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA99999599 ))
  \dvi_tx/encg/Mmux_q_m<3>13_G  (
    .I0(\dvi_tx/encg/din_q [3]),
    .I1(\dvi_tx/encg/n1d [2]),
    .I2(\dvi_tx/encg/n1d [0]),
    .I3(\dvi_tx/encg/din_q [0]),
    .I4(\dvi_tx/encg/n1d [1]),
    .I5(\dvi_tx/encg/n1d [3]),
    .O(N232)
  );
  MUXF7   \dvi_tx/encb/Mmux_q_m<3>13  (
    .I0(N233),
    .I1(N234),
    .S(\dvi_tx/encb/q_m [2]),
    .O(\dvi_tx/encb/q_m [3])
  );
  LUT6 #(
    .INIT ( 64'h5555555566666A66 ))
  \dvi_tx/encb/Mmux_q_m<3>13_F  (
    .I0(\dvi_tx/encb/din_q [3]),
    .I1(\dvi_tx/encb/n1d [2]),
    .I2(\dvi_tx/encb/n1d [1]),
    .I3(\dvi_tx/encb/din_q [0]),
    .I4(\dvi_tx/encb/n1d [0]),
    .I5(\dvi_tx/encb/n1d [3]),
    .O(N233)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA99999599 ))
  \dvi_tx/encb/Mmux_q_m<3>13_G  (
    .I0(\dvi_tx/encb/din_q [3]),
    .I1(\dvi_tx/encb/n1d [2]),
    .I2(\dvi_tx/encb/n1d [0]),
    .I3(\dvi_tx/encb/din_q [0]),
    .I4(\dvi_tx/encb/n1d [1]),
    .I5(\dvi_tx/encb/n1d [3]),
    .O(N234)
  );
  MUXF7   \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1012  (
    .I0(N235),
    .I1(N236),
    .S(\dvi_tx/encb/decision3_1656 ),
    .O(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT101 )
  );
  LUT6 #(
    .INIT ( 64'h6556A66AA66A9AA9 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1012_F  (
    .I0(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I1(\dvi_tx/encb/Madd_cnt[4]_GND_48_o_add_50_OUT_cy<0>2 ),
    .I2(\dvi_tx/encb/Msub_n0236_xor<3>11_1613 ),
    .I3(\dvi_tx/encb/Msub_n0233_lut [3]),
    .I4(\dvi_tx/encb/cnt [3]),
    .I5(N66),
    .O(N235)
  );
  LUT6 #(
    .INIT ( 64'h24B2DBB2DB4DDBB2 ))
  \dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT1012_G  (
    .I0(\dvi_tx/encb/n0q_m [3]),
    .I1(\dvi_tx/encb/n1q_m [3]),
    .I2(\dvi_tx/encb/Msub_n0233_xor<3>11 ),
    .I3(\dvi_tx/encb/cnt [3]),
    .I4(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT811 ),
    .I5(\dvi_tx/encb/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 ),
    .O(N236)
  );
  MUXF7   \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1012  (
    .I0(N237),
    .I1(N238),
    .S(\dvi_tx/encr/decision3_1457 ),
    .O(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT101 )
  );
  LUT6 #(
    .INIT ( 64'h6556A66AA66A9AA9 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1012_F  (
    .I0(\dvi_tx/encr/Msub_n0236_cy [3]),
    .I1(\dvi_tx/encr/Madd_cnt[4]_GND_48_o_add_50_OUT_cy<0>2 ),
    .I2(\dvi_tx/encr/Msub_n0236_xor<3>11_1415 ),
    .I3(\dvi_tx/encr/Msub_n0233_lut [3]),
    .I4(\dvi_tx/encr/cnt [3]),
    .I5(N62),
    .O(N237)
  );
  LUT6 #(
    .INIT ( 64'h24B2DBB2DB4DDBB2 ))
  \dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT1012_G  (
    .I0(\dvi_tx/encr/n0q_m [3]),
    .I1(\dvi_tx/encr/n1q_m [3]),
    .I2(\dvi_tx/encr/Msub_n0233_xor<3>11 ),
    .I3(\dvi_tx/encr/cnt [3]),
    .I4(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT811 ),
    .I5(\dvi_tx/encr/Mmux_GND_48_o_cnt[4]_mux_55_OUT813 ),
    .O(N238)
  );
  INV   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_lut<0>_INV_0  (
    .I(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [0]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_lut [0])
  );
  INV   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_lut<0>_INV_0  (
    .I(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [0]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_lut [0])
  );
  INV   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_lut<0>_INV_0  (
    .I(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [0]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_lut [0])
  );
  INV   rstbtn_n_INV_31_o1_INV_0 (
    .I(rstbtn_n_IBUF_11),
    .O(rstbtn_n_INV_31_o)
  );
  INV   \dvi_rx1/reset1_INV_0  (
    .I(\dvi_rx1/bufpll_lock ),
    .O(rx_reset)
  );
  INV   \dvi_rx1/dec_r/toggle_INV_3_o1_INV_0  (
    .I(\dvi_rx1/dec_r/toggle_295 ),
    .O(\dvi_rx1/dec_r/toggle_INV_3_o )
  );
  INV   \dvi_rx1/dec_b/des_0/counter<8>_inv1_INV_0  (
    .I(\dvi_rx1/dec_b/des_0/counter [8]),
    .O(\dvi_rx1/dec_b/des_0/counter<8>_inv )
  );
  INV   \dvi_rx1/dec_b/des_0/reset_inv1_INV_0  (
    .I(rx_reset),
    .O(\dvi_rx1/dec_b/des_0/reset_inv )
  );
  INV   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<0>1 )
  );
  INV   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<0>1 )
  );
  INV   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<0>1 )
  );
  INV   \dvi_rx1/dec_b/cbnd/Mcount_ra_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_b/cbnd/ra [0]),
    .O(\dvi_rx1/dec_b/cbnd/Result [0])
  );
  INV   \dvi_rx1/dec_b/cbnd/Mcount_wa_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_b/cbnd/wa [0]),
    .O(\dvi_rx1/dec_b/cbnd/Result<0>1 )
  );
  INV   \dvi_rx1/dec_b/cbnd/rawdata_vld_rawdata_vld_q_AND_23_o_norst1_INV_0  (
    .I(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_759 ),
    .O(\dvi_rx1/dec_b/cbnd/rawdata_vld_rawdata_vld_q_AND_23_o_norst )
  );
  INV   \dvi_rx1/dec_g/cbnd/Mcount_ra_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_g/cbnd/ra [0]),
    .O(\dvi_rx1/dec_g/cbnd/Result [0])
  );
  INV   \dvi_rx1/dec_r/cbnd/Mcount_ra_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_r/cbnd/ra [0]),
    .O(\dvi_rx1/dec_r/cbnd/Result [0])
  );
  INV   \dvi_tx/toggle_inv1_INV_0  (
    .I(\dvi_tx/toggle_1356 ),
    .O(\dvi_tx/toggle_inv )
  );
  INV   \dvi_tx/pixel2x/Mram_ra_d11_INV_0  (
    .I(\dvi_tx/pixel2x/ra [0]),
    .O(\dvi_tx/pixel2x/Mram_ra_d )
  );
  INV   \dvi_tx/pixel2x/Mram_wa_d11_INV_0  (
    .I(\dvi_tx/pixel2x/wa [0]),
    .O(\dvi_tx/pixel2x/Mram_wa_d )
  );
  INV   \dvi_tx/pixel2x/sync_INV_61_o1_INV_0  (
    .I(\dvi_tx/pixel2x/sync ),
    .O(\dvi_tx/pixel2x/sync_INV_61_o )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_2  (
    .A0(\b_mux<3> [1]),
    .A1(\b_mux<3> [1]),
    .A2(N0),
    .A3(\b_mux<3> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\dvi_rx1/dec_b/de_43 ),
    .Q(\ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_2_2064 ),
    .Q15(\NLW_ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_2_Q15_UNCONNECTED )
  );
  FDE   \ycbcr_converter/sync_delay/[5].delay_i/val_2  (
    .C(rx_pclk),
    .CE(N0),
    .D(\ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_2_2064 ),
    .Q(\ycbcr_converter/sync_delay/[5].delay_i/val<2> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_0  (
    .A0(\b_mux<3> [1]),
    .A1(\b_mux<3> [1]),
    .A2(N0),
    .A3(\b_mux<3> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\dvi_rx1/dec_b/c1_42 ),
    .Q(\ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_0_2065 ),
    .Q15(\NLW_ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_0_Q15_UNCONNECTED )
  );
  FDE   \ycbcr_converter/sync_delay/[5].delay_i/val_0  (
    .C(rx_pclk),
    .CE(N0),
    .D(\ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_0_2065 ),
    .Q(\ycbcr_converter/sync_delay/[5].delay_i/val<0> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_1  (
    .A0(\b_mux<3> [1]),
    .A1(\b_mux<3> [1]),
    .A2(N0),
    .A3(\b_mux<3> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\dvi_rx1/dec_b/c0_125 ),
    .Q(\ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_1_2066 ),
    .Q15(\NLW_ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_1_Q15_UNCONNECTED )
  );
  FDE   \ycbcr_converter/sync_delay/[5].delay_i/val_1  (
    .C(rx_pclk),
    .CE(N0),
    .D(\ycbcr_converter/sync_delay/[5].delay_i/Mshreg_val_1_2066 ),
    .Q(\ycbcr_converter/sync_delay/[5].delay_i/val<1> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_5  (
    .A0(\b_mux<3> [1]),
    .A1(\b_mux<3> [1]),
    .A2(\b_mux<3> [1]),
    .A3(\b_mux<3> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\ycbcr_converter/Y_added_2 [5]),
    .Q(\ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_5_2067 ),
    .Q15(\NLW_ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_5_Q15_UNCONNECTED )
  );
  FDE   \ycbcr_converter/Y_delay/[1].delay_i/val_5  (
    .C(rx_pclk),
    .CE(N0),
    .D(\ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_5_2067 ),
    .Q(\ycbcr_converter/Y_delay/[1].delay_i/val<5> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_7  (
    .A0(\b_mux<3> [1]),
    .A1(\b_mux<3> [1]),
    .A2(\b_mux<3> [1]),
    .A3(\b_mux<3> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\ycbcr_converter/Y_added_2 [7]),
    .Q(\ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_7_2068 ),
    .Q15(\NLW_ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_7_Q15_UNCONNECTED )
  );
  FDE   \ycbcr_converter/Y_delay/[1].delay_i/val_7  (
    .C(rx_pclk),
    .CE(N0),
    .D(\ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_7_2068 ),
    .Q(\ycbcr_converter/Y_delay/[1].delay_i/val<7> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_6  (
    .A0(\b_mux<3> [1]),
    .A1(\b_mux<3> [1]),
    .A2(\b_mux<3> [1]),
    .A3(\b_mux<3> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\ycbcr_converter/Y_added_2 [6]),
    .Q(\ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_6_2069 ),
    .Q15(\NLW_ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_6_Q15_UNCONNECTED )
  );
  FDE   \ycbcr_converter/Y_delay/[1].delay_i/val_6  (
    .C(rx_pclk),
    .CE(N0),
    .D(\ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_6_2069 ),
    .Q(\ycbcr_converter/Y_delay/[1].delay_i/val<6> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_2  (
    .A0(\b_mux<3> [1]),
    .A1(\b_mux<3> [1]),
    .A2(\b_mux<3> [1]),
    .A3(\b_mux<3> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\ycbcr_converter/Y_added_2 [2]),
    .Q(\ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_2_2070 ),
    .Q15(\NLW_ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_2_Q15_UNCONNECTED )
  );
  FDE   \ycbcr_converter/Y_delay/[1].delay_i/val_2  (
    .C(rx_pclk),
    .CE(N0),
    .D(\ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_2_2070 ),
    .Q(\ycbcr_converter/Y_delay/[1].delay_i/val<2> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_4  (
    .A0(\b_mux<3> [1]),
    .A1(\b_mux<3> [1]),
    .A2(\b_mux<3> [1]),
    .A3(\b_mux<3> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\ycbcr_converter/Y_added_2 [4]),
    .Q(\ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_4_2071 ),
    .Q15(\NLW_ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_4_Q15_UNCONNECTED )
  );
  FDE   \ycbcr_converter/Y_delay/[1].delay_i/val_4  (
    .C(rx_pclk),
    .CE(N0),
    .D(\ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_4_2071 ),
    .Q(\ycbcr_converter/Y_delay/[1].delay_i/val<4> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_3  (
    .A0(\b_mux<3> [1]),
    .A1(\b_mux<3> [1]),
    .A2(\b_mux<3> [1]),
    .A3(\b_mux<3> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\ycbcr_converter/Y_added_2 [3]),
    .Q(\ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_3_2072 ),
    .Q15(\NLW_ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_3_Q15_UNCONNECTED )
  );
  FDE   \ycbcr_converter/Y_delay/[1].delay_i/val_3  (
    .C(rx_pclk),
    .CE(N0),
    .D(\ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_3_2072 ),
    .Q(\ycbcr_converter/Y_delay/[1].delay_i/val<3> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_1  (
    .A0(\b_mux<3> [1]),
    .A1(\b_mux<3> [1]),
    .A2(\b_mux<3> [1]),
    .A3(\b_mux<3> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\ycbcr_converter/Y_added_2 [1]),
    .Q(\ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_1_2073 ),
    .Q15(\NLW_ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_1_Q15_UNCONNECTED )
  );
  FDE   \ycbcr_converter/Y_delay/[1].delay_i/val_1  (
    .C(rx_pclk),
    .CE(N0),
    .D(\ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_1_2073 ),
    .Q(\ycbcr_converter/Y_delay/[1].delay_i/val<1> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_0  (
    .A0(\b_mux<3> [1]),
    .A1(\b_mux<3> [1]),
    .A2(\b_mux<3> [1]),
    .A3(\b_mux<3> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\ycbcr_converter/Y_added_2 [0]),
    .Q(\ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_0_2074 ),
    .Q15(\NLW_ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_0_Q15_UNCONNECTED )
  );
  FDE   \ycbcr_converter/Y_delay/[1].delay_i/val_0  (
    .C(rx_pclk),
    .CE(N0),
    .D(\ycbcr_converter/Y_delay/[1].delay_i/Mshreg_val_0_2074 ),
    .Q(\ycbcr_converter/Y_delay/[1].delay_i/val<0> )
  );
  PLL_BASE #(
    .BANDWIDTH ( "OPTIMIZED" ),
    .CLK_FEEDBACK ( "CLKFBOUT" ),
    .COMPENSATION ( "SOURCE_SYNCHRONOUS" ),
    .RESET_ON_LOSS_OF_LOCK ( "FALSE" ),
    .CLKFBOUT_MULT ( 10 ),
    .CLKOUT0_DIVIDE ( 1 ),
    .CLKOUT1_DIVIDE ( 10 ),
    .CLKOUT2_DIVIDE ( 5 ),
    .CLKOUT3_DIVIDE ( 1 ),
    .CLKOUT4_DIVIDE ( 1 ),
    .CLKOUT5_DIVIDE ( 1 ),
    .DIVCLK_DIVIDE ( 1 ),
    .CLKFBOUT_PHASE ( 0.000000 ),
    .CLKIN_PERIOD ( 10 ),
    .CLKOUT0_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT0_PHASE ( 0.000000 ),
    .CLKOUT1_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT1_PHASE ( 0.000000 ),
    .CLKOUT2_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT2_PHASE ( 0.000000 ),
    .CLKOUT3_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT3_PHASE ( 0.000000 ),
    .CLKOUT4_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT4_PHASE ( 0.000000 ),
    .CLKOUT5_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT5_PHASE ( 0.000000 ),
    .REF_JITTER ( 0.100000 ))
  PLL_OSERDES_0 (
    .CLKIN(tx_pclk),
    .CLKFBIN(tx_clkfbin),
    .CLKOUT0(tx_pllclk0),
    .CLKFBOUT(tx_clkfbout),
    .CLKOUT2(tx_pllclk2),
    .RST(rx_reset),
    .LOCKED(tx_plllckd),
    .CLKOUT3(NLW_PLL_OSERDES_0_CLKOUT3_UNCONNECTED),
    .CLKOUT1(NLW_PLL_OSERDES_0_CLKOUT1_UNCONNECTED),
    .CLKOUT4(NLW_PLL_OSERDES_0_CLKOUT4_UNCONNECTED),
    .CLKOUT5(NLW_PLL_OSERDES_0_CLKOUT5_UNCONNECTED)
  );
  PLL_BASE #(
    .BANDWIDTH ( "OPTIMIZED" ),
    .CLK_FEEDBACK ( "CLKFBOUT" ),
    .COMPENSATION ( "INTERNAL" ),
    .RESET_ON_LOSS_OF_LOCK ( "FALSE" ),
    .CLKFBOUT_MULT ( 10 ),
    .CLKOUT0_DIVIDE ( 1 ),
    .CLKOUT1_DIVIDE ( 10 ),
    .CLKOUT2_DIVIDE ( 5 ),
    .CLKOUT3_DIVIDE ( 1 ),
    .CLKOUT4_DIVIDE ( 1 ),
    .CLKOUT5_DIVIDE ( 1 ),
    .DIVCLK_DIVIDE ( 1 ),
    .CLKFBOUT_PHASE ( 0.000000 ),
    .CLKIN_PERIOD ( 10 ),
    .CLKOUT0_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT0_PHASE ( 0.000000 ),
    .CLKOUT1_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT1_PHASE ( 0.000000 ),
    .CLKOUT2_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT2_PHASE ( 0.000000 ),
    .CLKOUT3_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT3_PHASE ( 0.000000 ),
    .CLKOUT4_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT4_PHASE ( 0.000000 ),
    .CLKOUT5_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT5_PHASE ( 0.000000 ),
    .REF_JITTER ( 0.100000 ))
  \dvi_rx1/PLL_ISERDES  (
    .CLKIN(\dvi_rx1/rxclk ),
    .CLKOUT1(rx_pllclk1),
    .CLKOUT0(\dvi_rx1/pllclk0 ),
    .CLKOUT2(\dvi_rx1/pllclk2 ),
    .RST(rstbtn_n_INV_31_o),
    .LOCKED(\dvi_rx1/pll_lckd ),
    .CLKFBOUT(\dvi_rx1/clkfbout ),
    .CLKFBIN(\dvi_rx1/clkfbout ),
    .CLKOUT3(\NLW_dvi_rx1/PLL_ISERDES_CLKOUT3_UNCONNECTED ),
    .CLKOUT4(\NLW_dvi_rx1/PLL_ISERDES_CLKOUT4_UNCONNECTED ),
    .CLKOUT5(\NLW_dvi_rx1/PLL_ISERDES_CLKOUT5_UNCONNECTED )
  );
  mult   \ycbcr_converter/Cr_B  (
    .clk(rx_pclk),
    .a({\b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], 
\b_mux<3> [1], \dvi_rx1/dec_b/dout [7], \dvi_rx1/dec_b/dout [6], \dvi_rx1/dec_b/dout [5], \dvi_rx1/dec_b/dout [4], \dvi_rx1/dec_b/dout [3], 
\dvi_rx1/dec_b/dout [2], \dvi_rx1/dec_b/dout [1], \dvi_rx1/dec_b/dout [0]}),
    .b({N0, N0, N0, N0, \b_mux<3> [1], N0, \b_mux<3> [1], N0, N0, \b_mux<3> [1], \b_mux<3> [1], N0, N0, \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], 
\b_mux<3> [1], \b_mux<3> [1]}),
    .p({\NLW_ycbcr_converter/Cr_B_p<35>_UNCONNECTED , \NLW_ycbcr_converter/Cr_B_p<34>_UNCONNECTED , \NLW_ycbcr_converter/Cr_B_p<33>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_B_p<32>_UNCONNECTED , \NLW_ycbcr_converter/Cr_B_p<31>_UNCONNECTED , \NLW_ycbcr_converter/Cr_B_p<30>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_B_p<29>_UNCONNECTED , \NLW_ycbcr_converter/Cr_B_p<28>_UNCONNECTED , \NLW_ycbcr_converter/Cr_B_p<27>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_B_p<26>_UNCONNECTED , \ycbcr_converter/Cr_B_w [25], \ycbcr_converter/Cr_B_w [24], \ycbcr_converter/Cr_B_w [23], 
\ycbcr_converter/Cr_B_w [22], \ycbcr_converter/Cr_B_w [21], \ycbcr_converter/Cr_B_w [20], \ycbcr_converter/Cr_B_w [19], \ycbcr_converter/Cr_B_w [18], 
\ycbcr_converter/Cr_B_w [17], \NLW_ycbcr_converter/Cr_B_p<16>_UNCONNECTED , \NLW_ycbcr_converter/Cr_B_p<15>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_B_p<14>_UNCONNECTED , \NLW_ycbcr_converter/Cr_B_p<13>_UNCONNECTED , \NLW_ycbcr_converter/Cr_B_p<12>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_B_p<11>_UNCONNECTED , \NLW_ycbcr_converter/Cr_B_p<10>_UNCONNECTED , \NLW_ycbcr_converter/Cr_B_p<9>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_B_p<8>_UNCONNECTED , \NLW_ycbcr_converter/Cr_B_p<7>_UNCONNECTED , \NLW_ycbcr_converter/Cr_B_p<6>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_B_p<5>_UNCONNECTED , \NLW_ycbcr_converter/Cr_B_p<4>_UNCONNECTED , \NLW_ycbcr_converter/Cr_B_p<3>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_B_p<2>_UNCONNECTED , \NLW_ycbcr_converter/Cr_B_p<1>_UNCONNECTED , \NLW_ycbcr_converter/Cr_B_p<0>_UNCONNECTED })
  );
  mult   \ycbcr_converter/Cr_G  (
    .clk(rx_pclk),
    .a({\b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], 
\b_mux<3> [1], \dvi_rx1/dec_g/dout [7], \dvi_rx1/dec_g/dout [6], \dvi_rx1/dec_g/dout [5], \dvi_rx1/dec_g/dout [4], \dvi_rx1/dec_g/dout [3], 
\dvi_rx1/dec_g/dout [2], \dvi_rx1/dec_g/dout [1], \dvi_rx1/dec_g/dout [0]}),
    .b({N0, N0, \b_mux<3> [1], \b_mux<3> [1], N0, \b_mux<3> [1], N0, \b_mux<3> [1], \b_mux<3> [1], N0, N0, \b_mux<3> [1], N0, \b_mux<3> [1], 
\b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1]}),
    .p({\NLW_ycbcr_converter/Cr_G_p<35>_UNCONNECTED , \NLW_ycbcr_converter/Cr_G_p<34>_UNCONNECTED , \NLW_ycbcr_converter/Cr_G_p<33>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_G_p<32>_UNCONNECTED , \NLW_ycbcr_converter/Cr_G_p<31>_UNCONNECTED , \NLW_ycbcr_converter/Cr_G_p<30>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_G_p<29>_UNCONNECTED , \NLW_ycbcr_converter/Cr_G_p<28>_UNCONNECTED , \NLW_ycbcr_converter/Cr_G_p<27>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_G_p<26>_UNCONNECTED , \ycbcr_converter/Cr_G_w [25], \ycbcr_converter/Cr_G_w [24], \ycbcr_converter/Cr_G_w [23], 
\ycbcr_converter/Cr_G_w [22], \ycbcr_converter/Cr_G_w [21], \ycbcr_converter/Cr_G_w [20], \ycbcr_converter/Cr_G_w [19], \ycbcr_converter/Cr_G_w [18], 
\ycbcr_converter/Cr_G_w [17], \NLW_ycbcr_converter/Cr_G_p<16>_UNCONNECTED , \NLW_ycbcr_converter/Cr_G_p<15>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_G_p<14>_UNCONNECTED , \NLW_ycbcr_converter/Cr_G_p<13>_UNCONNECTED , \NLW_ycbcr_converter/Cr_G_p<12>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_G_p<11>_UNCONNECTED , \NLW_ycbcr_converter/Cr_G_p<10>_UNCONNECTED , \NLW_ycbcr_converter/Cr_G_p<9>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_G_p<8>_UNCONNECTED , \NLW_ycbcr_converter/Cr_G_p<7>_UNCONNECTED , \NLW_ycbcr_converter/Cr_G_p<6>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_G_p<5>_UNCONNECTED , \NLW_ycbcr_converter/Cr_G_p<4>_UNCONNECTED , \NLW_ycbcr_converter/Cr_G_p<3>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_G_p<2>_UNCONNECTED , \NLW_ycbcr_converter/Cr_G_p<1>_UNCONNECTED , \NLW_ycbcr_converter/Cr_G_p<0>_UNCONNECTED })
  );
  mult   \ycbcr_converter/Cr_R  (
    .clk(rx_pclk),
    .a({\b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], 
\b_mux<3> [1], \dvi_rx1/dec_r/dout [7], \dvi_rx1/dec_r/dout [6], \dvi_rx1/dec_r/dout [5], \dvi_rx1/dec_r/dout [4], \dvi_rx1/dec_r/dout [3], 
\dvi_rx1/dec_r/dout [2], \dvi_rx1/dec_r/dout [1], \dvi_rx1/dec_r/dout [0]}),
    .b({\b_mux<3> [1], N0, \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], 
\b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1]}),
    .p({\NLW_ycbcr_converter/Cr_R_p<35>_UNCONNECTED , \NLW_ycbcr_converter/Cr_R_p<34>_UNCONNECTED , \NLW_ycbcr_converter/Cr_R_p<33>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_R_p<32>_UNCONNECTED , \NLW_ycbcr_converter/Cr_R_p<31>_UNCONNECTED , \NLW_ycbcr_converter/Cr_R_p<30>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_R_p<29>_UNCONNECTED , \NLW_ycbcr_converter/Cr_R_p<28>_UNCONNECTED , \NLW_ycbcr_converter/Cr_R_p<27>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_R_p<26>_UNCONNECTED , \ycbcr_converter/Cr_R_w [25], \ycbcr_converter/Cr_R_w [24], \ycbcr_converter/Cr_R_w [23], 
\ycbcr_converter/Cr_R_w [22], \ycbcr_converter/Cr_R_w [21], \ycbcr_converter/Cr_R_w [20], \ycbcr_converter/Cr_R_w [19], \ycbcr_converter/Cr_R_w [18], 
\ycbcr_converter/Cr_R_w [17], \NLW_ycbcr_converter/Cr_R_p<16>_UNCONNECTED , \NLW_ycbcr_converter/Cr_R_p<15>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_R_p<14>_UNCONNECTED , \NLW_ycbcr_converter/Cr_R_p<13>_UNCONNECTED , \NLW_ycbcr_converter/Cr_R_p<12>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_R_p<11>_UNCONNECTED , \NLW_ycbcr_converter/Cr_R_p<10>_UNCONNECTED , \NLW_ycbcr_converter/Cr_R_p<9>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_R_p<8>_UNCONNECTED , \NLW_ycbcr_converter/Cr_R_p<7>_UNCONNECTED , \NLW_ycbcr_converter/Cr_R_p<6>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_R_p<5>_UNCONNECTED , \NLW_ycbcr_converter/Cr_R_p<4>_UNCONNECTED , \NLW_ycbcr_converter/Cr_R_p<3>_UNCONNECTED , 
\NLW_ycbcr_converter/Cr_R_p<2>_UNCONNECTED , \NLW_ycbcr_converter/Cr_R_p<1>_UNCONNECTED , \NLW_ycbcr_converter/Cr_R_p<0>_UNCONNECTED })
  );
  mult   \ycbcr_converter/Cb_B  (
    .clk(rx_pclk),
    .a({\b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], 
\b_mux<3> [1], \dvi_rx1/dec_b/dout [7], \dvi_rx1/dec_b/dout [6], \dvi_rx1/dec_b/dout [5], \dvi_rx1/dec_b/dout [4], \dvi_rx1/dec_b/dout [3], 
\dvi_rx1/dec_b/dout [2], \dvi_rx1/dec_b/dout [1], \dvi_rx1/dec_b/dout [0]}),
    .b({\b_mux<3> [1], N0, \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], 
\b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1]}),
    .p({\NLW_ycbcr_converter/Cb_B_p<35>_UNCONNECTED , \NLW_ycbcr_converter/Cb_B_p<34>_UNCONNECTED , \NLW_ycbcr_converter/Cb_B_p<33>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_B_p<32>_UNCONNECTED , \NLW_ycbcr_converter/Cb_B_p<31>_UNCONNECTED , \NLW_ycbcr_converter/Cb_B_p<30>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_B_p<29>_UNCONNECTED , \NLW_ycbcr_converter/Cb_B_p<28>_UNCONNECTED , \NLW_ycbcr_converter/Cb_B_p<27>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_B_p<26>_UNCONNECTED , \ycbcr_converter/Cb_B_w [25], \ycbcr_converter/Cb_B_w [24], \ycbcr_converter/Cb_B_w [23], 
\ycbcr_converter/Cb_B_w [22], \ycbcr_converter/Cb_B_w [21], \ycbcr_converter/Cb_B_w [20], \ycbcr_converter/Cb_B_w [19], \ycbcr_converter/Cb_B_w [18], 
\ycbcr_converter/Cb_B_w [17], \NLW_ycbcr_converter/Cb_B_p<16>_UNCONNECTED , \NLW_ycbcr_converter/Cb_B_p<15>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_B_p<14>_UNCONNECTED , \NLW_ycbcr_converter/Cb_B_p<13>_UNCONNECTED , \NLW_ycbcr_converter/Cb_B_p<12>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_B_p<11>_UNCONNECTED , \NLW_ycbcr_converter/Cb_B_p<10>_UNCONNECTED , \NLW_ycbcr_converter/Cb_B_p<9>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_B_p<8>_UNCONNECTED , \NLW_ycbcr_converter/Cb_B_p<7>_UNCONNECTED , \NLW_ycbcr_converter/Cb_B_p<6>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_B_p<5>_UNCONNECTED , \NLW_ycbcr_converter/Cb_B_p<4>_UNCONNECTED , \NLW_ycbcr_converter/Cb_B_p<3>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_B_p<2>_UNCONNECTED , \NLW_ycbcr_converter/Cb_B_p<1>_UNCONNECTED , \NLW_ycbcr_converter/Cb_B_p<0>_UNCONNECTED })
  );
  mult   \ycbcr_converter/Cb_G  (
    .clk(rx_pclk),
    .a({\b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], 
\b_mux<3> [1], \dvi_rx1/dec_g/dout [7], \dvi_rx1/dec_g/dout [6], \dvi_rx1/dec_g/dout [5], \dvi_rx1/dec_g/dout [4], \dvi_rx1/dec_g/dout [3], 
\dvi_rx1/dec_g/dout [2], \dvi_rx1/dec_g/dout [1], \dvi_rx1/dec_g/dout [0]}),
    .b({N0, N0, \b_mux<3> [1], N0, \b_mux<3> [1], N0, \b_mux<3> [1], N0, N0, \b_mux<3> [1], \b_mux<3> [1], N0, N0, \b_mux<3> [1], \b_mux<3> [1], 
\b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1]}),
    .p({\NLW_ycbcr_converter/Cb_G_p<35>_UNCONNECTED , \NLW_ycbcr_converter/Cb_G_p<34>_UNCONNECTED , \NLW_ycbcr_converter/Cb_G_p<33>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_G_p<32>_UNCONNECTED , \NLW_ycbcr_converter/Cb_G_p<31>_UNCONNECTED , \NLW_ycbcr_converter/Cb_G_p<30>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_G_p<29>_UNCONNECTED , \NLW_ycbcr_converter/Cb_G_p<28>_UNCONNECTED , \NLW_ycbcr_converter/Cb_G_p<27>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_G_p<26>_UNCONNECTED , \ycbcr_converter/Cb_G_w [25], \ycbcr_converter/Cb_G_w [24], \ycbcr_converter/Cb_G_w [23], 
\ycbcr_converter/Cb_G_w [22], \ycbcr_converter/Cb_G_w [21], \ycbcr_converter/Cb_G_w [20], \ycbcr_converter/Cb_G_w [19], \ycbcr_converter/Cb_G_w [18], 
\ycbcr_converter/Cb_G_w [17], \NLW_ycbcr_converter/Cb_G_p<16>_UNCONNECTED , \NLW_ycbcr_converter/Cb_G_p<15>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_G_p<14>_UNCONNECTED , \NLW_ycbcr_converter/Cb_G_p<13>_UNCONNECTED , \NLW_ycbcr_converter/Cb_G_p<12>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_G_p<11>_UNCONNECTED , \NLW_ycbcr_converter/Cb_G_p<10>_UNCONNECTED , \NLW_ycbcr_converter/Cb_G_p<9>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_G_p<8>_UNCONNECTED , \NLW_ycbcr_converter/Cb_G_p<7>_UNCONNECTED , \NLW_ycbcr_converter/Cb_G_p<6>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_G_p<5>_UNCONNECTED , \NLW_ycbcr_converter/Cb_G_p<4>_UNCONNECTED , \NLW_ycbcr_converter/Cb_G_p<3>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_G_p<2>_UNCONNECTED , \NLW_ycbcr_converter/Cb_G_p<1>_UNCONNECTED , \NLW_ycbcr_converter/Cb_G_p<0>_UNCONNECTED })
  );
  mult   \ycbcr_converter/Cb_R  (
    .clk(rx_pclk),
    .a({\b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], 
\b_mux<3> [1], \dvi_rx1/dec_r/dout [7], \dvi_rx1/dec_r/dout [6], \dvi_rx1/dec_r/dout [5], \dvi_rx1/dec_r/dout [4], \dvi_rx1/dec_r/dout [3], 
\dvi_rx1/dec_r/dout [2], \dvi_rx1/dec_r/dout [1], \dvi_rx1/dec_r/dout [0]}),
    .b({N0, N0, N0, \b_mux<3> [1], N0, \b_mux<3> [1], N0, \b_mux<3> [1], \b_mux<3> [1], N0, N0, \b_mux<3> [1], N0, \b_mux<3> [1], \b_mux<3> [1], 
\b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1]}),
    .p({\NLW_ycbcr_converter/Cb_R_p<35>_UNCONNECTED , \NLW_ycbcr_converter/Cb_R_p<34>_UNCONNECTED , \NLW_ycbcr_converter/Cb_R_p<33>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_R_p<32>_UNCONNECTED , \NLW_ycbcr_converter/Cb_R_p<31>_UNCONNECTED , \NLW_ycbcr_converter/Cb_R_p<30>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_R_p<29>_UNCONNECTED , \NLW_ycbcr_converter/Cb_R_p<28>_UNCONNECTED , \NLW_ycbcr_converter/Cb_R_p<27>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_R_p<26>_UNCONNECTED , \ycbcr_converter/Cb_R_w [25], \ycbcr_converter/Cb_R_w [24], \ycbcr_converter/Cb_R_w [23], 
\ycbcr_converter/Cb_R_w [22], \ycbcr_converter/Cb_R_w [21], \ycbcr_converter/Cb_R_w [20], \ycbcr_converter/Cb_R_w [19], \ycbcr_converter/Cb_R_w [18], 
\ycbcr_converter/Cb_R_w [17], \NLW_ycbcr_converter/Cb_R_p<16>_UNCONNECTED , \NLW_ycbcr_converter/Cb_R_p<15>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_R_p<14>_UNCONNECTED , \NLW_ycbcr_converter/Cb_R_p<13>_UNCONNECTED , \NLW_ycbcr_converter/Cb_R_p<12>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_R_p<11>_UNCONNECTED , \NLW_ycbcr_converter/Cb_R_p<10>_UNCONNECTED , \NLW_ycbcr_converter/Cb_R_p<9>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_R_p<8>_UNCONNECTED , \NLW_ycbcr_converter/Cb_R_p<7>_UNCONNECTED , \NLW_ycbcr_converter/Cb_R_p<6>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_R_p<5>_UNCONNECTED , \NLW_ycbcr_converter/Cb_R_p<4>_UNCONNECTED , \NLW_ycbcr_converter/Cb_R_p<3>_UNCONNECTED , 
\NLW_ycbcr_converter/Cb_R_p<2>_UNCONNECTED , \NLW_ycbcr_converter/Cb_R_p<1>_UNCONNECTED , \NLW_ycbcr_converter/Cb_R_p<0>_UNCONNECTED })
  );
  mult   \ycbcr_converter/Y_B  (
    .clk(rx_pclk),
    .a({\b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], 
\b_mux<3> [1], \dvi_rx1/dec_b/dout [7], \dvi_rx1/dec_b/dout [6], \dvi_rx1/dec_b/dout [5], \dvi_rx1/dec_b/dout [4], \dvi_rx1/dec_b/dout [3], 
\dvi_rx1/dec_b/dout [2], \dvi_rx1/dec_b/dout [1], \dvi_rx1/dec_b/dout [0]}),
    .b({\b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], N0, N0, N0, \b_mux<3> [1], N0, \b_mux<3> [1], \b_mux<3> [1], N0, \b_mux<3> [1], N0
, N0, N0, N0, \b_mux<3> [1]}),
    .p({\NLW_ycbcr_converter/Y_B_p<35>_UNCONNECTED , \NLW_ycbcr_converter/Y_B_p<34>_UNCONNECTED , \NLW_ycbcr_converter/Y_B_p<33>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_B_p<32>_UNCONNECTED , \NLW_ycbcr_converter/Y_B_p<31>_UNCONNECTED , \NLW_ycbcr_converter/Y_B_p<30>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_B_p<29>_UNCONNECTED , \NLW_ycbcr_converter/Y_B_p<28>_UNCONNECTED , \NLW_ycbcr_converter/Y_B_p<27>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_B_p<26>_UNCONNECTED , \ycbcr_converter/Y_B_w [25], \ycbcr_converter/Y_B_w [24], \ycbcr_converter/Y_B_w [23], 
\ycbcr_converter/Y_B_w [22], \ycbcr_converter/Y_B_w [21], \ycbcr_converter/Y_B_w [20], \ycbcr_converter/Y_B_w [19], \ycbcr_converter/Y_B_w [18], 
\ycbcr_converter/Y_B_w [17], \NLW_ycbcr_converter/Y_B_p<16>_UNCONNECTED , \NLW_ycbcr_converter/Y_B_p<15>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_B_p<14>_UNCONNECTED , \NLW_ycbcr_converter/Y_B_p<13>_UNCONNECTED , \NLW_ycbcr_converter/Y_B_p<12>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_B_p<11>_UNCONNECTED , \NLW_ycbcr_converter/Y_B_p<10>_UNCONNECTED , \NLW_ycbcr_converter/Y_B_p<9>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_B_p<8>_UNCONNECTED , \NLW_ycbcr_converter/Y_B_p<7>_UNCONNECTED , \NLW_ycbcr_converter/Y_B_p<6>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_B_p<5>_UNCONNECTED , \NLW_ycbcr_converter/Y_B_p<4>_UNCONNECTED , \NLW_ycbcr_converter/Y_B_p<3>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_B_p<2>_UNCONNECTED , \NLW_ycbcr_converter/Y_B_p<1>_UNCONNECTED , \NLW_ycbcr_converter/Y_B_p<0>_UNCONNECTED })
  );
  mult   \ycbcr_converter/Y_G  (
    .clk(rx_pclk),
    .a({\b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], 
\b_mux<3> [1], \dvi_rx1/dec_g/dout [7], \dvi_rx1/dec_g/dout [6], \dvi_rx1/dec_g/dout [5], \dvi_rx1/dec_g/dout [4], \dvi_rx1/dec_g/dout [3], 
\dvi_rx1/dec_g/dout [2], \dvi_rx1/dec_g/dout [1], \dvi_rx1/dec_g/dout [0]}),
    .b({\b_mux<3> [1], N0, \b_mux<3> [1], \b_mux<3> [1], N0, \b_mux<3> [1], N0, N0, \b_mux<3> [1], \b_mux<3> [1], N0, \b_mux<3> [1], \b_mux<3> [1], 
\b_mux<3> [1], N0, \b_mux<3> [1], N0, N0}),
    .p({\NLW_ycbcr_converter/Y_G_p<35>_UNCONNECTED , \NLW_ycbcr_converter/Y_G_p<34>_UNCONNECTED , \NLW_ycbcr_converter/Y_G_p<33>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_G_p<32>_UNCONNECTED , \NLW_ycbcr_converter/Y_G_p<31>_UNCONNECTED , \NLW_ycbcr_converter/Y_G_p<30>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_G_p<29>_UNCONNECTED , \NLW_ycbcr_converter/Y_G_p<28>_UNCONNECTED , \NLW_ycbcr_converter/Y_G_p<27>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_G_p<26>_UNCONNECTED , \ycbcr_converter/Y_G_w [25], \ycbcr_converter/Y_G_w [24], \ycbcr_converter/Y_G_w [23], 
\ycbcr_converter/Y_G_w [22], \ycbcr_converter/Y_G_w [21], \ycbcr_converter/Y_G_w [20], \ycbcr_converter/Y_G_w [19], \ycbcr_converter/Y_G_w [18], 
\ycbcr_converter/Y_G_w [17], \NLW_ycbcr_converter/Y_G_p<16>_UNCONNECTED , \NLW_ycbcr_converter/Y_G_p<15>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_G_p<14>_UNCONNECTED , \NLW_ycbcr_converter/Y_G_p<13>_UNCONNECTED , \NLW_ycbcr_converter/Y_G_p<12>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_G_p<11>_UNCONNECTED , \NLW_ycbcr_converter/Y_G_p<10>_UNCONNECTED , \NLW_ycbcr_converter/Y_G_p<9>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_G_p<8>_UNCONNECTED , \NLW_ycbcr_converter/Y_G_p<7>_UNCONNECTED , \NLW_ycbcr_converter/Y_G_p<6>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_G_p<5>_UNCONNECTED , \NLW_ycbcr_converter/Y_G_p<4>_UNCONNECTED , \NLW_ycbcr_converter/Y_G_p<3>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_G_p<2>_UNCONNECTED , \NLW_ycbcr_converter/Y_G_p<1>_UNCONNECTED , \NLW_ycbcr_converter/Y_G_p<0>_UNCONNECTED })
  );
  mult   \ycbcr_converter/Y_R  (
    .clk(rx_pclk),
    .a({\b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], 
\b_mux<3> [1], \dvi_rx1/dec_r/dout [7], \dvi_rx1/dec_r/dout [6], \dvi_rx1/dec_r/dout [5], \dvi_rx1/dec_r/dout [4], \dvi_rx1/dec_r/dout [3], 
\dvi_rx1/dec_r/dout [2], \dvi_rx1/dec_r/dout [1], \dvi_rx1/dec_r/dout [0]}),
    .b({\b_mux<3> [1], \b_mux<3> [1], N0, \b_mux<3> [1], \b_mux<3> [1], N0, N0, \b_mux<3> [1], \b_mux<3> [1], N0, \b_mux<3> [1], \b_mux<3> [1], 
\b_mux<3> [1], N0, \b_mux<3> [1], N0, N0, N0}),
    .p({\NLW_ycbcr_converter/Y_R_p<35>_UNCONNECTED , \NLW_ycbcr_converter/Y_R_p<34>_UNCONNECTED , \NLW_ycbcr_converter/Y_R_p<33>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_R_p<32>_UNCONNECTED , \NLW_ycbcr_converter/Y_R_p<31>_UNCONNECTED , \NLW_ycbcr_converter/Y_R_p<30>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_R_p<29>_UNCONNECTED , \NLW_ycbcr_converter/Y_R_p<28>_UNCONNECTED , \NLW_ycbcr_converter/Y_R_p<27>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_R_p<26>_UNCONNECTED , \ycbcr_converter/Y_R_w [25], \ycbcr_converter/Y_R_w [24], \ycbcr_converter/Y_R_w [23], 
\ycbcr_converter/Y_R_w [22], \ycbcr_converter/Y_R_w [21], \ycbcr_converter/Y_R_w [20], \ycbcr_converter/Y_R_w [19], \ycbcr_converter/Y_R_w [18], 
\ycbcr_converter/Y_R_w [17], \NLW_ycbcr_converter/Y_R_p<16>_UNCONNECTED , \NLW_ycbcr_converter/Y_R_p<15>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_R_p<14>_UNCONNECTED , \NLW_ycbcr_converter/Y_R_p<13>_UNCONNECTED , \NLW_ycbcr_converter/Y_R_p<12>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_R_p<11>_UNCONNECTED , \NLW_ycbcr_converter/Y_R_p<10>_UNCONNECTED , \NLW_ycbcr_converter/Y_R_p<9>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_R_p<8>_UNCONNECTED , \NLW_ycbcr_converter/Y_R_p<7>_UNCONNECTED , \NLW_ycbcr_converter/Y_R_p<6>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_R_p<5>_UNCONNECTED , \NLW_ycbcr_converter/Y_R_p<4>_UNCONNECTED , \NLW_ycbcr_converter/Y_R_p<3>_UNCONNECTED , 
\NLW_ycbcr_converter/Y_R_p<2>_UNCONNECTED , \NLW_ycbcr_converter/Y_R_p<1>_UNCONNECTED , \NLW_ycbcr_converter/Y_R_p<0>_UNCONNECTED })
  );
  adder   \ycbcr_converter/Cr_adder3  (
    .clk(rx_pclk),
    .ce(N0),
    .a({\ycbcr_converter/Cr_added_2 [8], \ycbcr_converter/Cr_added_2 [7], \ycbcr_converter/Cr_added_2 [6], \ycbcr_converter/Cr_added_2 [5], 
\ycbcr_converter/Cr_added_2 [4], \ycbcr_converter/Cr_added_2 [3], \ycbcr_converter/Cr_added_2 [2], \ycbcr_converter/Cr_added_2 [1], 
\ycbcr_converter/Cr_added_2 [0]}),
    .b({\b_mux<3> [1], N0, \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1]}),
    .s({\NLW_ycbcr_converter/Cr_adder3_s<8>_UNCONNECTED , Cr[7], Cr[6], Cr[5], Cr[4], Cr[3], Cr[2], Cr[1], Cr[0]})
  );
  adder   \ycbcr_converter/Cr_adder2  (
    .clk(rx_pclk),
    .ce(N0),
    .a({\ycbcr_converter/Cr_added_1 [8], \ycbcr_converter/Cr_added_1 [7], \ycbcr_converter/Cr_added_1 [6], \ycbcr_converter/Cr_added_1 [5], 
\ycbcr_converter/Cr_added_1 [4], \ycbcr_converter/Cr_added_1 [3], \ycbcr_converter/Cr_added_1 [2], \ycbcr_converter/Cr_added_1 [1], 
\ycbcr_converter/Cr_added_1 [0]}),
    .b({\ycbcr_converter/Cr_B_w [25], \ycbcr_converter/Cr_B_w [24], \ycbcr_converter/Cr_B_w [23], \ycbcr_converter/Cr_B_w [22], 
\ycbcr_converter/Cr_B_w [21], \ycbcr_converter/Cr_B_w [20], \ycbcr_converter/Cr_B_w [19], \ycbcr_converter/Cr_B_w [18], \ycbcr_converter/Cr_B_w [17]})
,
    .s({\ycbcr_converter/Cr_added_2 [8], \ycbcr_converter/Cr_added_2 [7], \ycbcr_converter/Cr_added_2 [6], \ycbcr_converter/Cr_added_2 [5], 
\ycbcr_converter/Cr_added_2 [4], \ycbcr_converter/Cr_added_2 [3], \ycbcr_converter/Cr_added_2 [2], \ycbcr_converter/Cr_added_2 [1], 
\ycbcr_converter/Cr_added_2 [0]})
  );
  adder   \ycbcr_converter/Cr_adder1  (
    .clk(rx_pclk),
    .ce(N0),
    .a({\ycbcr_converter/Cr_R_w [25], \ycbcr_converter/Cr_R_w [24], \ycbcr_converter/Cr_R_w [23], \ycbcr_converter/Cr_R_w [22], 
\ycbcr_converter/Cr_R_w [21], \ycbcr_converter/Cr_R_w [20], \ycbcr_converter/Cr_R_w [19], \ycbcr_converter/Cr_R_w [18], \ycbcr_converter/Cr_R_w [17]})
,
    .b({\ycbcr_converter/Cr_G_w [25], \ycbcr_converter/Cr_G_w [24], \ycbcr_converter/Cr_G_w [23], \ycbcr_converter/Cr_G_w [22], 
\ycbcr_converter/Cr_G_w [21], \ycbcr_converter/Cr_G_w [20], \ycbcr_converter/Cr_G_w [19], \ycbcr_converter/Cr_G_w [18], \ycbcr_converter/Cr_G_w [17]})
,
    .s({\ycbcr_converter/Cr_added_1 [8], \ycbcr_converter/Cr_added_1 [7], \ycbcr_converter/Cr_added_1 [6], \ycbcr_converter/Cr_added_1 [5], 
\ycbcr_converter/Cr_added_1 [4], \ycbcr_converter/Cr_added_1 [3], \ycbcr_converter/Cr_added_1 [2], \ycbcr_converter/Cr_added_1 [1], 
\ycbcr_converter/Cr_added_1 [0]})
  );
  adder   \ycbcr_converter/Cb_adder3  (
    .clk(rx_pclk),
    .ce(N0),
    .a({\ycbcr_converter/Cb_added_2 [8], \ycbcr_converter/Cb_added_2 [7], \ycbcr_converter/Cb_added_2 [6], \ycbcr_converter/Cb_added_2 [5], 
\ycbcr_converter/Cb_added_2 [4], \ycbcr_converter/Cb_added_2 [3], \ycbcr_converter/Cb_added_2 [2], \ycbcr_converter/Cb_added_2 [1], 
\ycbcr_converter/Cb_added_2 [0]}),
    .b({\b_mux<3> [1], N0, \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1]}),
    .s({\NLW_ycbcr_converter/Cb_adder3_s<8>_UNCONNECTED , Cb[7], Cb[6], Cb[5], Cb[4], Cb[3], Cb[2], Cb[1], Cb[0]})
  );
  adder   \ycbcr_converter/Cb_adder2  (
    .clk(rx_pclk),
    .ce(N0),
    .a({\ycbcr_converter/Cb_added_1 [8], \ycbcr_converter/Cb_added_1 [7], \ycbcr_converter/Cb_added_1 [6], \ycbcr_converter/Cb_added_1 [5], 
\ycbcr_converter/Cb_added_1 [4], \ycbcr_converter/Cb_added_1 [3], \ycbcr_converter/Cb_added_1 [2], \ycbcr_converter/Cb_added_1 [1], 
\ycbcr_converter/Cb_added_1 [0]}),
    .b({\ycbcr_converter/Cb_B_w [25], \ycbcr_converter/Cb_B_w [24], \ycbcr_converter/Cb_B_w [23], \ycbcr_converter/Cb_B_w [22], 
\ycbcr_converter/Cb_B_w [21], \ycbcr_converter/Cb_B_w [20], \ycbcr_converter/Cb_B_w [19], \ycbcr_converter/Cb_B_w [18], \ycbcr_converter/Cb_B_w [17]})
,
    .s({\ycbcr_converter/Cb_added_2 [8], \ycbcr_converter/Cb_added_2 [7], \ycbcr_converter/Cb_added_2 [6], \ycbcr_converter/Cb_added_2 [5], 
\ycbcr_converter/Cb_added_2 [4], \ycbcr_converter/Cb_added_2 [3], \ycbcr_converter/Cb_added_2 [2], \ycbcr_converter/Cb_added_2 [1], 
\ycbcr_converter/Cb_added_2 [0]})
  );
  adder   \ycbcr_converter/Cb_adder1  (
    .clk(rx_pclk),
    .ce(N0),
    .a({\ycbcr_converter/Cb_R_w [25], \ycbcr_converter/Cb_R_w [24], \ycbcr_converter/Cb_R_w [23], \ycbcr_converter/Cb_R_w [22], 
\ycbcr_converter/Cb_R_w [21], \ycbcr_converter/Cb_R_w [20], \ycbcr_converter/Cb_R_w [19], \ycbcr_converter/Cb_R_w [18], \ycbcr_converter/Cb_R_w [17]})
,
    .b({\ycbcr_converter/Cb_G_w [25], \ycbcr_converter/Cb_G_w [24], \ycbcr_converter/Cb_G_w [23], \ycbcr_converter/Cb_G_w [22], 
\ycbcr_converter/Cb_G_w [21], \ycbcr_converter/Cb_G_w [20], \ycbcr_converter/Cb_G_w [19], \ycbcr_converter/Cb_G_w [18], \ycbcr_converter/Cb_G_w [17]})
,
    .s({\ycbcr_converter/Cb_added_1 [8], \ycbcr_converter/Cb_added_1 [7], \ycbcr_converter/Cb_added_1 [6], \ycbcr_converter/Cb_added_1 [5], 
\ycbcr_converter/Cb_added_1 [4], \ycbcr_converter/Cb_added_1 [3], \ycbcr_converter/Cb_added_1 [2], \ycbcr_converter/Cb_added_1 [1], 
\ycbcr_converter/Cb_added_1 [0]})
  );
  adder   \ycbcr_converter/Y_adder2  (
    .clk(rx_pclk),
    .ce(N0),
    .a({\ycbcr_converter/Y_added_1 [8], \ycbcr_converter/Y_added_1 [7], \ycbcr_converter/Y_added_1 [6], \ycbcr_converter/Y_added_1 [5], 
\ycbcr_converter/Y_added_1 [4], \ycbcr_converter/Y_added_1 [3], \ycbcr_converter/Y_added_1 [2], \ycbcr_converter/Y_added_1 [1], 
\ycbcr_converter/Y_added_1 [0]}),
    .b({\ycbcr_converter/Y_B_w [25], \ycbcr_converter/Y_B_w [24], \ycbcr_converter/Y_B_w [23], \ycbcr_converter/Y_B_w [22], 
\ycbcr_converter/Y_B_w [21], \ycbcr_converter/Y_B_w [20], \ycbcr_converter/Y_B_w [19], \ycbcr_converter/Y_B_w [18], \ycbcr_converter/Y_B_w [17]}),
    .s({\NLW_ycbcr_converter/Y_adder2_s<8>_UNCONNECTED , \ycbcr_converter/Y_added_2 [7], \ycbcr_converter/Y_added_2 [6], 
\ycbcr_converter/Y_added_2 [5], \ycbcr_converter/Y_added_2 [4], \ycbcr_converter/Y_added_2 [3], \ycbcr_converter/Y_added_2 [2], 
\ycbcr_converter/Y_added_2 [1], \ycbcr_converter/Y_added_2 [0]})
  );
  adder   \ycbcr_converter/Y_adder1  (
    .clk(rx_pclk),
    .ce(N0),
    .a({\ycbcr_converter/Y_R_w [25], \ycbcr_converter/Y_R_w [24], \ycbcr_converter/Y_R_w [23], \ycbcr_converter/Y_R_w [22], 
\ycbcr_converter/Y_R_w [21], \ycbcr_converter/Y_R_w [20], \ycbcr_converter/Y_R_w [19], \ycbcr_converter/Y_R_w [18], \ycbcr_converter/Y_R_w [17]}),
    .b({\ycbcr_converter/Y_G_w [25], \ycbcr_converter/Y_G_w [24], \ycbcr_converter/Y_G_w [23], \ycbcr_converter/Y_G_w [22], 
\ycbcr_converter/Y_G_w [21], \ycbcr_converter/Y_G_w [20], \ycbcr_converter/Y_G_w [19], \ycbcr_converter/Y_G_w [18], \ycbcr_converter/Y_G_w [17]}),
    .s({\ycbcr_converter/Y_added_1 [8], \ycbcr_converter/Y_added_1 [7], \ycbcr_converter/Y_added_1 [6], \ycbcr_converter/Y_added_1 [5], 
\ycbcr_converter/Y_added_1 [4], \ycbcr_converter/Y_added_1 [3], \ycbcr_converter/Y_added_1 [2], \ycbcr_converter/Y_added_1 [1], 
\ycbcr_converter/Y_added_1 [0]})
  );
  divider_255   \hsv_converter/b_div_255  (
    .rfd(\NLW_hsv_converter/b_div_255_rfd_UNCONNECTED ),
    .clk(rx_pclk),
    .dividend({\dvi_rx1/dec_b/dout [7], \dvi_rx1/dec_b/dout [6], \dvi_rx1/dec_b/dout [5], \dvi_rx1/dec_b/dout [4], \dvi_rx1/dec_b/dout [3], 
\dvi_rx1/dec_b/dout [2], \dvi_rx1/dec_b/dout [1], \dvi_rx1/dec_b/dout [0]}),
    .quotient({\NLW_hsv_converter/b_div_255_quotient<7>_UNCONNECTED , \NLW_hsv_converter/b_div_255_quotient<6>_UNCONNECTED , 
\NLW_hsv_converter/b_div_255_quotient<5>_UNCONNECTED , \NLW_hsv_converter/b_div_255_quotient<4>_UNCONNECTED , 
\NLW_hsv_converter/b_div_255_quotient<3>_UNCONNECTED , \NLW_hsv_converter/b_div_255_quotient<2>_UNCONNECTED , 
\NLW_hsv_converter/b_div_255_quotient<1>_UNCONNECTED , \hsv_converter/q_b [0]}),
    .divisor({N0, N0, N0, N0, N0, N0, N0, N0}),
    .fractional({\hsv_converter/f_b [7], \hsv_converter/f_b [6], \hsv_converter/f_b [5], \hsv_converter/f_b [4], \hsv_converter/f_b [3], 
\hsv_converter/f_b [2], \hsv_converter/f_b [1], \hsv_converter/f_b [0]})
  );
  divider_255   \hsv_converter/g_div_255  (
    .rfd(\NLW_hsv_converter/g_div_255_rfd_UNCONNECTED ),
    .clk(rx_pclk),
    .dividend({\dvi_rx1/dec_g/dout [7], \dvi_rx1/dec_g/dout [6], \dvi_rx1/dec_g/dout [5], \dvi_rx1/dec_g/dout [4], \dvi_rx1/dec_g/dout [3], 
\dvi_rx1/dec_g/dout [2], \dvi_rx1/dec_g/dout [1], \dvi_rx1/dec_g/dout [0]}),
    .quotient({\NLW_hsv_converter/g_div_255_quotient<7>_UNCONNECTED , \NLW_hsv_converter/g_div_255_quotient<6>_UNCONNECTED , 
\NLW_hsv_converter/g_div_255_quotient<5>_UNCONNECTED , \NLW_hsv_converter/g_div_255_quotient<4>_UNCONNECTED , 
\NLW_hsv_converter/g_div_255_quotient<3>_UNCONNECTED , \NLW_hsv_converter/g_div_255_quotient<2>_UNCONNECTED , 
\NLW_hsv_converter/g_div_255_quotient<1>_UNCONNECTED , \hsv_converter/q_g [0]}),
    .divisor({N0, N0, N0, N0, N0, N0, N0, N0}),
    .fractional({\hsv_converter/f_g [7], \hsv_converter/f_g [6], \hsv_converter/f_g [5], \hsv_converter/f_g [4], \hsv_converter/f_g [3], 
\hsv_converter/f_g [2], \hsv_converter/f_g [1], \hsv_converter/f_g [0]})
  );
  divider_255   \hsv_converter/r_div_255  (
    .rfd(\NLW_hsv_converter/r_div_255_rfd_UNCONNECTED ),
    .clk(rx_pclk),
    .dividend({\dvi_rx1/dec_r/dout [7], \dvi_rx1/dec_r/dout [6], \dvi_rx1/dec_r/dout [5], \dvi_rx1/dec_r/dout [4], \dvi_rx1/dec_r/dout [3], 
\dvi_rx1/dec_r/dout [2], \dvi_rx1/dec_r/dout [1], \dvi_rx1/dec_r/dout [0]}),
    .quotient({\NLW_hsv_converter/r_div_255_quotient<7>_UNCONNECTED , \NLW_hsv_converter/r_div_255_quotient<6>_UNCONNECTED , 
\NLW_hsv_converter/r_div_255_quotient<5>_UNCONNECTED , \NLW_hsv_converter/r_div_255_quotient<4>_UNCONNECTED , 
\NLW_hsv_converter/r_div_255_quotient<3>_UNCONNECTED , \NLW_hsv_converter/r_div_255_quotient<2>_UNCONNECTED , 
\NLW_hsv_converter/r_div_255_quotient<1>_UNCONNECTED , \hsv_converter/q_r [0]}),
    .divisor({N0, N0, N0, N0, N0, N0, N0, N0}),
    .fractional({\hsv_converter/f_r [7], \hsv_converter/f_r [6], \hsv_converter/f_r [5], \hsv_converter/f_r [4], \hsv_converter/f_r [3], 
\hsv_converter/f_r [2], \hsv_converter/f_r [1], \hsv_converter/f_r [0]})
  );
  subtracter   \hsv_converter/sub_max_min  (
    .clk(rx_pclk),
    .ce(N0),
    .a({\b_mux<3> [1], \hsv_converter/max_calculator/r_value [8], \hsv_converter/max_calculator/r_value [7], \hsv_converter/max_calculator/r_value [6]
, \hsv_converter/max_calculator/r_value [5], \hsv_converter/max_calculator/r_value [4], \hsv_converter/max_calculator/r_value [3], 
\hsv_converter/max_calculator/r_value [2], \hsv_converter/max_calculator/r_value [1], \hsv_converter/max_calculator/r_value [0]}),
    .b({\b_mux<3> [1], \hsv_converter/min_calculator/r_value [8], \hsv_converter/min_calculator/r_value [7], \hsv_converter/min_calculator/r_value [6]
, \hsv_converter/min_calculator/r_value [5], \hsv_converter/min_calculator/r_value [4], \hsv_converter/min_calculator/r_value [3], 
\hsv_converter/min_calculator/r_value [2], \hsv_converter/min_calculator/r_value [1], \hsv_converter/min_calculator/r_value [0]}),
    .s({\hsv_converter/diff_value [9], \hsv_converter/diff_value [8], \hsv_converter/diff_value [7], \hsv_converter/diff_value [6], 
\hsv_converter/diff_value [5], \hsv_converter/diff_value [4], \hsv_converter/diff_value [3], \hsv_converter/diff_value [2], 
\hsv_converter/diff_value [1], \hsv_converter/diff_value [0]})
  );
  div_01   \hsv_converter/sub_div_diff  (
    .rfd(\NLW_hsv_converter/sub_div_diff_rfd_UNCONNECTED ),
    .clk(rx_pclk),
    .dividend({\hsv_converter/subtr_RGB/r_value[9] , \hsv_converter/subtr_RGB/r_value[9] , \hsv_converter/subtr_RGB/r_value[7] , 
\hsv_converter/subtr_RGB/r_value[6] , \hsv_converter/subtr_RGB/r_value[5] , \hsv_converter/subtr_RGB/r_value[4] , \hsv_converter/subtr_RGB/r_value[3] 
, \hsv_converter/subtr_RGB/r_value[2] , \hsv_converter/subtr_RGB/r_value[1] , \hsv_converter/subtr_RGB/r_value[0] }),
    .quotient({\NLW_hsv_converter/sub_div_diff_quotient<9>_UNCONNECTED , \NLW_hsv_converter/sub_div_diff_quotient<8>_UNCONNECTED , 
\NLW_hsv_converter/sub_div_diff_quotient<7>_UNCONNECTED , \NLW_hsv_converter/sub_div_diff_quotient<6>_UNCONNECTED , 
\NLW_hsv_converter/sub_div_diff_quotient<5>_UNCONNECTED , \NLW_hsv_converter/sub_div_diff_quotient<4>_UNCONNECTED , 
\NLW_hsv_converter/sub_div_diff_quotient<3>_UNCONNECTED , \NLW_hsv_converter/sub_div_diff_quotient<2>_UNCONNECTED , 
\NLW_hsv_converter/sub_div_diff_quotient<1>_UNCONNECTED , \hsv_converter/sub_diff_q [0]}),
    .divisor({\hsv_converter/diff_value [9], \hsv_converter/diff_value [8], \hsv_converter/diff_value [7], \hsv_converter/diff_value [6], 
\hsv_converter/diff_value [5], \hsv_converter/diff_value [4], \hsv_converter/diff_value [3], \hsv_converter/diff_value [2], 
\hsv_converter/diff_value [1], \hsv_converter/diff_value [0]}),
    .fractional({\NLW_hsv_converter/sub_div_diff_fractional<9>_UNCONNECTED , \hsv_converter/sub_diff_f [8], \hsv_converter/sub_diff_f [7], 
\hsv_converter/sub_diff_f [6], \hsv_converter/sub_diff_f [5], \hsv_converter/sub_diff_f [4], \hsv_converter/sub_diff_f [3], 
\hsv_converter/sub_diff_f [2], \hsv_converter/sub_diff_f [1], \NLW_hsv_converter/sub_div_diff_fractional<0>_UNCONNECTED })
  );
  div_01   \hsv_converter/diff_div_v  (
    .rfd(\NLW_hsv_converter/diff_div_v_rfd_UNCONNECTED ),
    .clk(rx_pclk),
    .dividend({\hsv_converter/diff_value [9], \hsv_converter/diff_value [8], \hsv_converter/diff_value [7], \hsv_converter/diff_value [6], 
\hsv_converter/diff_value [5], \hsv_converter/diff_value [4], \hsv_converter/diff_value [3], \hsv_converter/diff_value [2], 
\hsv_converter/diff_value [1], \hsv_converter/diff_value [0]}),
    .quotient({\NLW_hsv_converter/diff_div_v_quotient<9>_UNCONNECTED , \NLW_hsv_converter/diff_div_v_quotient<8>_UNCONNECTED , 
\NLW_hsv_converter/diff_div_v_quotient<7>_UNCONNECTED , \NLW_hsv_converter/diff_div_v_quotient<6>_UNCONNECTED , 
\NLW_hsv_converter/diff_div_v_quotient<5>_UNCONNECTED , \NLW_hsv_converter/diff_div_v_quotient<4>_UNCONNECTED , 
\NLW_hsv_converter/diff_div_v_quotient<3>_UNCONNECTED , \NLW_hsv_converter/diff_div_v_quotient<2>_UNCONNECTED , 
\NLW_hsv_converter/diff_div_v_quotient<1>_UNCONNECTED , \hsv_converter/s_01_q [0]}),
    .divisor({\b_mux<3> [1], \hsv_converter/max_calculator/r_value [8], \hsv_converter/max_calculator/r_value [7], 
\hsv_converter/max_calculator/r_value [6], \hsv_converter/max_calculator/r_value [5], \hsv_converter/max_calculator/r_value [4], 
\hsv_converter/max_calculator/r_value [3], \hsv_converter/max_calculator/r_value [2], \hsv_converter/max_calculator/r_value [1], 
\hsv_converter/max_calculator/r_value [0]}),
    .fractional({\NLW_hsv_converter/diff_div_v_fractional<9>_UNCONNECTED , \hsv_converter/s_01_f [8], \hsv_converter/s_01_f [7], 
\hsv_converter/s_01_f [6], \hsv_converter/s_01_f [5], \hsv_converter/s_01_f [4], \hsv_converter/s_01_f [3], \hsv_converter/s_01_f [2], 
\hsv_converter/s_01_f [1], \NLW_hsv_converter/diff_div_v_fractional<0>_UNCONNECTED })
  );
  mult_60   \hsv_converter/m60  (
    .clk(rx_pclk),
    .a({\b_mux<3> [1], \hsv_converter/sub_diff_q [0], \hsv_converter/sub_diff_f [8], \hsv_converter/sub_diff_f [7], \hsv_converter/sub_diff_f [6], 
\hsv_converter/sub_diff_f [5], \hsv_converter/sub_diff_f [4], \hsv_converter/sub_diff_f [3], \hsv_converter/sub_diff_f [2], 
\hsv_converter/sub_diff_f [1]}),
    .p({\hsv_converter/temp_1 [15], \hsv_converter/temp_1 [14], \hsv_converter/temp_1 [13], \hsv_converter/temp_1 [12], \hsv_converter/temp_1 [11], 
\hsv_converter/temp_1 [10], \hsv_converter/temp_1 [9], \hsv_converter/temp_1 [8], \hsv_converter/temp_1 [7], \hsv_converter/temp_1 [6], 
\NLW_hsv_converter/m60_p<5>_UNCONNECTED , \NLW_hsv_converter/m60_p<4>_UNCONNECTED , \NLW_hsv_converter/m60_p<3>_UNCONNECTED , 
\NLW_hsv_converter/m60_p<2>_UNCONNECTED , \NLW_hsv_converter/m60_p<1>_UNCONNECTED , \NLW_hsv_converter/m60_p<0>_UNCONNECTED })
  );
  div_360   \hsv_converter/h_div_360  (
    .rfd(\NLW_hsv_converter/h_div_360_rfd_UNCONNECTED ),
    .clk(rx_pclk),
    .dividend({\hsv_converter/add_to_h/r_value [9], \hsv_converter/add_to_h/r_value [9], \hsv_converter/add_to_h/r_value [9], 
\hsv_converter/add_to_h/r_value [9], \hsv_converter/add_to_h/r_value [9], \hsv_converter/add_to_h/r_value [9], \hsv_converter/add_to_h/r_value [9], 
\hsv_converter/add_to_h/r_value [8], \hsv_converter/add_to_h/r_value [7], \hsv_converter/add_to_h/r_value [6], \hsv_converter/add_to_h/r_value [5], 
\hsv_converter/add_to_h/r_value [4], \hsv_converter/add_to_h/r_value [3], \hsv_converter/add_to_h/r_value [2], \hsv_converter/add_to_h/r_value [1], 
\hsv_converter/add_to_h/r_value [0]}),
    .quotient({\NLW_hsv_converter/h_div_360_quotient<15>_UNCONNECTED , \NLW_hsv_converter/h_div_360_quotient<14>_UNCONNECTED , 
\NLW_hsv_converter/h_div_360_quotient<13>_UNCONNECTED , \NLW_hsv_converter/h_div_360_quotient<12>_UNCONNECTED , 
\NLW_hsv_converter/h_div_360_quotient<11>_UNCONNECTED , \NLW_hsv_converter/h_div_360_quotient<10>_UNCONNECTED , 
\NLW_hsv_converter/h_div_360_quotient<9>_UNCONNECTED , \NLW_hsv_converter/h_div_360_quotient<8>_UNCONNECTED , 
\NLW_hsv_converter/h_div_360_quotient<7>_UNCONNECTED , \NLW_hsv_converter/h_div_360_quotient<6>_UNCONNECTED , 
\NLW_hsv_converter/h_div_360_quotient<5>_UNCONNECTED , \NLW_hsv_converter/h_div_360_quotient<4>_UNCONNECTED , 
\NLW_hsv_converter/h_div_360_quotient<3>_UNCONNECTED , \NLW_hsv_converter/h_div_360_quotient<2>_UNCONNECTED , 
\NLW_hsv_converter/h_div_360_quotient<1>_UNCONNECTED , \hsv_converter/h_01_q [0]}),
    .divisor({\b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1], N0, \b_mux<3> [1], N0, N0, 
\b_mux<3> [1], N0, \b_mux<3> [1], \b_mux<3> [1], \b_mux<3> [1]}),
    .fractional({\NLW_hsv_converter/h_div_360_fractional<9>_UNCONNECTED , \hsv_converter/h_01_f [8], \hsv_converter/h_01_f [7], 
\hsv_converter/h_01_f [6], \hsv_converter/h_01_f [5], \hsv_converter/h_01_f [4], \hsv_converter/h_01_f [3], \hsv_converter/h_01_f [2], 
\hsv_converter/h_01_f [1], \NLW_hsv_converter/h_div_360_fractional<0>_UNCONNECTED })
  );
  mult_255   \hsv_converter/mult_S  (
    .a({\b_mux<3> [1], \hsv_converter/s_01 [8], \hsv_converter/s_01 [7], \hsv_converter/s_01 [6], \hsv_converter/s_01 [5], \hsv_converter/s_01 [4], 
\hsv_converter/s_01 [3], \hsv_converter/s_01 [2], \hsv_converter/s_01 [1], \hsv_converter/s_01 [0]}),
    .p({\NLW_hsv_converter/mult_S_p<13>_UNCONNECTED , \NLW_hsv_converter/mult_S_p<12>_UNCONNECTED , S[7], S[6], S[5], S[4], S[3], S[2], S[1], S[0], 
\NLW_hsv_converter/mult_S_p<3>_UNCONNECTED , \NLW_hsv_converter/mult_S_p<2>_UNCONNECTED , \NLW_hsv_converter/mult_S_p<1>_UNCONNECTED , 
\NLW_hsv_converter/mult_S_p<0>_UNCONNECTED })
  );
  mult_255   \hsv_converter/mult_H  (
    .a({\b_mux<3> [1], \hsv_converter/h_01_q [0], \hsv_converter/h_01_f [8], \hsv_converter/h_01_f [7], \hsv_converter/h_01_f [6], 
\hsv_converter/h_01_f [5], \hsv_converter/h_01_f [4], \hsv_converter/h_01_f [3], \hsv_converter/h_01_f [2], \hsv_converter/h_01_f [1]}),
    .p({\NLW_hsv_converter/mult_H_p<13>_UNCONNECTED , \NLW_hsv_converter/mult_H_p<12>_UNCONNECTED , H[7], H[6], H[5], H[4], H[3], H[2], H[1], H[0], 
\NLW_hsv_converter/mult_H_p<3>_UNCONNECTED , \NLW_hsv_converter/mult_H_p<2>_UNCONNECTED , \NLW_hsv_converter/mult_H_p<1>_UNCONNECTED , 
\NLW_hsv_converter/mult_H_p<0>_UNCONNECTED })
  );
  mult_255   \hsv_converter/mult_V  (
    .a({\b_mux<3> [1], \hsv_converter/max_calculator/r_value [8], \hsv_converter/max_calculator/r_value [7], \hsv_converter/max_calculator/r_value [6]
, \hsv_converter/max_calculator/r_value [5], \hsv_converter/max_calculator/r_value [4], \hsv_converter/max_calculator/r_value [3], 
\hsv_converter/max_calculator/r_value [2], \hsv_converter/max_calculator/r_value [1], \hsv_converter/max_calculator/r_value [0]}),
    .p({\NLW_hsv_converter/mult_V_p<13>_UNCONNECTED , \NLW_hsv_converter/mult_V_p<12>_UNCONNECTED , V[7], V[6], V[5], V[4], V[3], V[2], V[1], V[0], 
\NLW_hsv_converter/mult_V_p<3>_UNCONNECTED , \NLW_hsv_converter/mult_V_p<2>_UNCONNECTED , \NLW_hsv_converter/mult_V_p<1>_UNCONNECTED , 
\NLW_hsv_converter/mult_V_p<0>_UNCONNECTED })
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
