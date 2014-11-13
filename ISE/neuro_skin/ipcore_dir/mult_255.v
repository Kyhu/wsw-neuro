////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: mult_255.v
// /___/   /\     Timestamp: Thu Nov 13 17:51:56 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog D:/WSW14/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/mult_255.ngc D:/WSW14/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/mult_255.v 
// Device	: 6slx45csg324-2
// Input file	: D:/WSW14/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/mult_255.ngc
// Output file	: D:/WSW14/wsw-neuro/ISE/neuro_skin/ipcore_dir/tmp/_cg/mult_255.v
// # of Modules	: 1
// Design Name	: mult_255
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

module mult_255 (
a, p
)/* synthesis syn_black_box syn_noprune=1 */;
  input [9 : 0] a;
  output [13 : 0] p;
  
  // synthesis translate_off
  
  wire [9 : 0] NlwRenamedSignal_a;
  wire [0 : 0] NlwRenamedSignal_p;
  assign
    NlwRenamedSignal_a[9] = a[9],
    NlwRenamedSignal_a[8] = a[8],
    NlwRenamedSignal_a[7] = a[7],
    NlwRenamedSignal_a[6] = a[6],
    NlwRenamedSignal_a[5] = a[5],
    NlwRenamedSignal_a[4] = a[4],
    NlwRenamedSignal_a[3] = a[3],
    NlwRenamedSignal_a[2] = a[2],
    NlwRenamedSignal_a[1] = a[1],
    NlwRenamedSignal_a[0] = a[0],
    p[13] = NlwRenamedSignal_a[9],
    p[12] = NlwRenamedSignal_a[9],
    p[11] = NlwRenamedSignal_a[8],
    p[10] = NlwRenamedSignal_a[7],
    p[9] = NlwRenamedSignal_a[6],
    p[8] = NlwRenamedSignal_a[5],
    p[7] = NlwRenamedSignal_a[4],
    p[6] = NlwRenamedSignal_a[3],
    p[5] = NlwRenamedSignal_a[2],
    p[4] = NlwRenamedSignal_a[1],
    p[3] = NlwRenamedSignal_a[0],
    p[2] = NlwRenamedSignal_p[0],
    p[1] = NlwRenamedSignal_p[0],
    p[0] = NlwRenamedSignal_p[0];
  GND   \blk00000001/blk00000002  (
    .G(NlwRenamedSignal_p[0])
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
