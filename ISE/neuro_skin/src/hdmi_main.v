//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2010 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /   Vendor:        Xilinx
// \   \   \/    Version:       1.0.0
//  \   \        Filename:      dvi_demo.v
//  /   /        Date Created:  Feb. 2010
// /___/   /\    Last Modified: Feb. 2010
// \   \  /  \
//  \___\/\___\
//
// Devices:   Spartan-6  FPGA
// Purpose:   DVI Pass Through Top Module Based On XLAB Atlys Board
// Contact:   
// Reference: None
//
// Revision History:
//   Rev 1.0.0 - (Bob Feng) First created Feb. 2010
//
//////////////////////////////////////////////////////////////////////////////
//
// LIMITED WARRANTY AND DISCLAIMER. These designs are provided to you "as is".
// Xilinx and its licensors make and you receive no warranties or conditions,
// express, implied, statutory or otherwise, and Xilinx specifically disclaims
// any implied warranties of merchantability, non-infringement, or fitness for
// a particular purpose. Xilinx does not warrant that the functions contained
// in these designs will meet your requirements, or that the operation of
// these designs will be uninterrupted or error free, or that defects in the
// designs will be corrected. Furthermore, Xilinx does not warrant or make any
// representations regarding use or the results of the use of the designs in
// terms of correctness, accuracy, reliability, or otherwise.
//
// LIMITATION OF LIABILITY. In no event will Xilinx or its licensors be liable
// for any loss of data, lost profits, cost or procurement of substitute goods
// or services, or for any special, incidental, consequential, or indirect
// damages arising from the use or operation of the designs or accompanying
// documentation, however caused and on any theory of liability. This
// limitation will apply even if Xilinx has been advised of the possibility
// of such damage. This limitation shall apply not-withstanding the failure
// of the essential purpose of any limited remedies herein.
//
//////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2010 Xilinx, Inc.
// This design is confidential and proprietary of Xilinx, All Rights Reserved.
//////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ps
`define SPLITTER

module hdmi_main
 (

  input wire        rstbtn_n,    //The pink reset button
  input wire        clk100,      //100 MHz osicallator
  
  // DVI INPUT
  input wire [3:0]  RX1_TMDS,
  input wire [3:0]  RX1_TMDSB,

  // DVI OUTPUT
  output wire [3:0] TX0_TMDS,
  output wire [3:0] TX0_TMDSB,
  
  	
  input  wire [2:0] SW,

  output wire [7:0] LED
);

  // -----------------------------------------------------------------------------
  // Create a 25 MHz clock from 100 MHz
  // -----------------------------------------------------------------------------
    
  wire clk25, clk25m;

  BUFIO2 #(.DIVIDE_BYPASS("FALSE"), .DIVIDE(5))
  sysclk_div (.DIVCLK(clk25m), .IOCLK(), .SERDESSTROBE(), .I(clk100));

  BUFG clk25_buf (.I(clk25m), .O(clk25));

  // -----------------------------------------------------------------------------
  // HDMI input port 
  // -----------------------------------------------------------------------------  
  wire rx_pclk, rx_pclkx2, rx_pclkx10, rx_pllclk0;
  wire rx_plllckd;
  wire rx_reset;
  wire rx_serdesstrobe;
  wire rx_hsync;          // hsync data
  wire rx_vsync;          // vsync data
  wire rx_de;             // data enable
  wire rx_psalgnerr;      // channel phase alignment error
  wire [7:0] rx_red;      // pixel data out
  wire [7:0] rx_green;    // pixel data out
  wire [7:0] rx_blue;     // pixel data out
  wire [29:0] rx_sdata;
  wire rx_blue_vld;
  wire rx_green_vld;
  wire rx_red_vld;
  wire rx_blue_rdy;
  wire rx_green_rdy;
  wire rx_red_rdy;

`ifdef SPLITTER
  dvi_decoder dvi_rx1 (
    //These are input ports (RX1)
    .tmdsclk_p   (RX1_TMDS[3]),
    .tmdsclk_n   (RX1_TMDSB[3]),
    .blue_p      (RX1_TMDS[0]),
    .green_p     (RX1_TMDS[1]),
    .red_p       (RX1_TMDS[2]),
    .blue_n      (RX1_TMDSB[0]),
    .green_n     (RX1_TMDSB[1]),
    .red_n       (RX1_TMDSB[2]),
    .exrst       (~rstbtn_n),

    //These are output ports
    .reset       (rx_reset),
    .pclk        (rx_pclk),
    .pclkx2      (rx_pclkx2),
    .pclkx10     (rx_pclkx10),
    .pllclk0     (rx_pllclk0), // PLL x10 output
    .pllclk1     (rx_pllclk1), // PLL x1 output
    .pllclk2     (rx_pllclk2), // PLL x2 output
    .pll_lckd    (rx_plllckd),
    .tmdsclk     (rx_tmdsclk),
    .serdesstrobe(rx_serdesstrobe),
    
	 // Signal synchronization
	 .hsync       (rx_hsync),
    .vsync       (rx_vsync),
    .de          (rx_de),
	 
	 // Channel valid signals 
    .blue_vld    (rx_blue_vld),
    .green_vld   (rx_green_vld),
    .red_vld     (rx_red_vld),
    .blue_rdy    (rx_blue_rdy),
    .green_rdy   (rx_green_rdy),
    .red_rdy     (rx_red_rdy),

    .psalgnerr   (rx_psalgnerr),

    .sdout       (rx_sdata),
	 
	 // R, G, B data
    .red         (rx_red),
    .green       (rx_green),
    .blue        (rx_blue)); 
`else
  dvi_decoder_nok dvi_rx1 (
    //These are input ports (RX1)
    .tmdsclk_p   (RX1_TMDS[3]),
    .tmdsclk_n   (RX1_TMDSB[3]),
    .blue_p      (RX1_TMDS[0]),
    .green_p     (RX1_TMDS[1]),
    .red_p       (RX1_TMDS[2]),
    .blue_n      (RX1_TMDSB[0]),
    .green_n     (RX1_TMDSB[1]),
    .red_n       (RX1_TMDSB[2]),
    .exrst       (~rstbtn_n),

    //These are output ports
    .reset       (rx_reset),
    .pclk        (rx_pclk),
    .pclkx2      (rx_pclkx2),
    .pclkx10     (rx_pclkx10),
    .pllclk0     (rx_pllclk0), // PLL x10 output
    .pllclk1     (rx_pllclk1), // PLL x1 output
    .pllclk2     (rx_pllclk2), // PLL x2 output
    .pll_lckd    (rx_plllckd),
    .tmdsclk     (rx_tmdsclk),
    .serdesstrobe(rx_serdesstrobe),
    
	 // Signal synchronization
	 .hsync       (rx_hsync),
    .vsync       (rx_vsync),
    .de          (rx_de),
	 
	 // Channel valid signals 
    .blue_vld    (rx_blue_vld),
    .green_vld   (rx_green_vld),
    .red_vld     (rx_red_vld),
    .blue_rdy    (rx_blue_rdy),
    .green_rdy   (rx_green_rdy),
    .red_rdy     (rx_red_rdy),

    .psalgnerr   (rx_psalgnerr),

    .sdout       (rx_sdata),
	 
	 // R, G, B data
    .red         (rx_red),
    .green       (rx_green),
    .blue        (rx_blue)); 
`endif
 
  // -----------------------------------------------------------------------------
  // IMAGE PROCESSING  
  // -----------------------------------------------------------------------------  
 
 
	// YCbCR Conversion
	wire [7:0]   Y;
	wire [7:0]   Cb;
	wire [7:0]   Cr;
 
 	wire  de_ycbcr;
	wire  hsync_ycbcr;
	wire  vsync_ycbcr;	
	
	// Latency: 7
	rgb2ycbcr ycbcr_converter (
    .clk(rx_pclk), 
    .ce({1'b1}), 
    .de_in(rx_de), 
    .hsync_in(rx_hsync), 
    .vsync_in(rx_vsync), 
    .red(rx_red), 
    .green(rx_green), 
    .blue(rx_blue), 
    .Y(Y), 
    .Cb(Cb), 
    .Cr(Cr), 
    .de_out(de_ycbcr), 
    .hsync_out(hsync_ycbcr), 
    .vsync_out(vsync_ycbcr)
    );
	 
	 // HSV Conversion
	wire [7:0]   H;
	wire [7:0]   S;
	wire [7:0]   V;
 
 	wire  de_hsv;
	wire  hsync_hsv;
	wire  vsync_hsv;
	 
	 
	 // Latency: 77
	rgb2hsv hsv_converter (
	 .clk(rx_pclk), 
    .ce({1'b1}), 
    .de_in(rx_de), 
    .hsync_in(rx_hsync), 
    .vsync_in(rx_vsync), 
    .red(rx_red), 
    .green(rx_green), 
    .blue(rx_blue), 
    .H(H), 
    .S(S), 
    .V(V), 
    .de_out(de_hsv), 
    .hsync_out(hsync_hsv), 
    .vsync_out(vsync_hsv)
	 );
	 
	// NN
	
	//DELAY RGB AND YCBR to sync with HSV and syncs signal!
	
	wire [7:0] sync_R;
	wire [7:0] sync_G;
	wire [7:0] sync_B;
	
	delayx #(
		.N(24),
		.DELAY(77)
	)
	rgb_delay(
    .clk(rx_pclk), 
    .ce(ce), 
    .d({rx_red, rx_green, rx_blue}), 
    .q({sync_R, sync_G, sync_B})
    );

	wire [7:0] sync_Y;
	wire [7:0] sync_Cb;
	wire [7:0] sync_Cr;
	 
	delayx #(
		.N(24),
		.DELAY(70)
	)
	ycbcr_delay(
    .clk(rx_pclk), 
    .ce(ce), 
    .d({Y, Cb, Cr}), 
    .q({sync_Y, sync_Cb, sync_Cr})
    );
	
	wire [7:0]  skin;
 
 	wire  de_skin;
	wire  hsync_skin;
	wire  vsync_skin;
	
	skin_binarization bin (
    .clk(rx_pclk), 
    .ce({1'b1}), 
    .de_in(de_hsv), 
    .hsync_in(hsync_hsv), 
    .vsync_in(vsync_hsv), 
    .R(sync_R), 
    .G(sync_G), 
    .B(sync_B), 
    .H(H), 
    .S(S), 
    .Cb(sync_Cb), 
    .Cr(sync_Cr), 
    .skin(skin), 
    .de_out(de_skin), 
    .hsync_out(hsync_skin), 
    .vsync_out(vsync_skin)
    );
	 
	//-- MEDIAN FILTERATION
	wire [7:0] filtered;
	
	wire  de_med_centr;
	wire  hsync_med_centr;
	wire  vsync_med_centr;
	
	median5x5 median (
    .clk(rx_pclk), 
    .ce({1'b1}), 
    .de_in(de_skin), 
    .hsync_in(hsync_skin), 
    .vsync_in(vsync_skin), 
    .pixel_in(skin), 
    .de_out(de_med_centr), 
    .hsync_out(hsync_med_centr), 
    .vsync_out(vsync_med_centr), 
    .pixel_out(filtered)
    );	
	 
	 //Centroid
	
	wire [7:0] r_centroid;
	wire [7:0] g_centroid;
	wire [7:0] b_centroid;
	
	wire  de_out;
	wire  hsync_out;
	wire  vsync_out;	 
	
	wire [11:0]xg;
	wire [11:0]yg;	 
	 
	 centroid centroid (
    .clk(rx_pclk), 
    .ce({1'b1}), 
    .de(de_med_centr), 
    .hsync(hsync_med_centr), 
    .vsync(vsync_med_centr), 
    .color(filtered), 
    .x(xg), 
    .y(yg)
    );	 	 
	 
	 visualize visualize(
    .clk(rx_pclk), 
    .de_in(de_med_centr), 
    .hsync_in(hsync_med_centr),
    .vsync_in(vsync_med_centr),
    .x(xg), 
    .y(yg), 
	 .de_out(de_out), 
    .hsync_out(hsync_out), 
    .vsync_out(vsync_out), 
    .mask(filtered), 
    .red_out(r_centroid), 
    .green_out(g_centroid), 
    .blue_out(b_centroid)
    );
	 
	// MUX 
	wire [7:0]r_mux[7:0];
	wire [7:0]g_mux[7:0];
	wire [7:0]b_mux[7:0];
	wire de_mux[7:0];
	wire hsync_mux[7:0];
	wire vsync_mux[7:0];
		
	// MUX assigning	
	assign r_mux[0] = rx_red;
	assign g_mux[0] = rx_green;
	assign b_mux[0] = rx_blue;
	assign de_mux[0] = rx_de;
	assign hsync_mux[0] = rx_hsync;
	assign vsync_mux[0] = rx_vsync;
	
	assign r_mux[1] = Y;
	assign g_mux[1] = Cb;
	assign b_mux[1] = Cr;
	assign de_mux[1] = de_ycbcr;
	assign hsync_mux[1] = hsync_ycbcr;
	assign vsync_mux[1] = vsync_ycbcr;
	
	assign r_mux[2] = H;
	assign g_mux[2] = S;
	assign b_mux[2] = V;
	assign de_mux[2] = de_hsv;
	assign hsync_mux[2] = hsync_hsv;
	assign vsync_mux[2] = vsync_hsv;
	
	assign r_mux[3] = skin;
	assign g_mux[3] = skin;
	assign b_mux[3] = skin;
	assign de_mux[3] = de_skin;
	assign hsync_mux[3] = hsync_skin;
	assign vsync_mux[3] = vsync_skin;
	
	assign r_mux[4] = filtered;
	assign g_mux[4] = filtered;
	assign b_mux[4] = filtered;
	assign de_mux[4] = de_med_centr;
	assign hsync_mux[4] = hsync_med_centr;
	assign vsync_mux[4] = vsync_med_centr;
	
	assign r_mux[5] = r_centroid;
	assign g_mux[5] = g_centroid;
	assign b_mux[5] = b_centroid;
	assign de_mux[5] = de_out;
	assign hsync_mux[5] = hsync_out;
	assign vsync_mux[5] = vsync_out;
	
  // -----------------------------------------------------------------------------
  // HDMI output port 
  // -----------------------------------------------------------------------------  
  wire         tx_de;
  wire         tx_pclk;
  wire         tx_pclkx2;
  wire         tx_pclkx10;
  wire         tx_serdesstrobe;
  wire         tx_reset;
  wire [7:0]   tx_blue;
  wire [7:0]   tx_green;
  wire [7:0]   tx_red;
  wire         tx_hsync;
  wire         tx_vsync;
  wire         tx_pll_reset;
  
  
  // -----------------------------------------------------------------------------
  // HDMI output port signal assigments 
  // -----------------------------------------------------------------------------  
  
  assign tx_de           = de_mux[SW];
  assign tx_hsync        = hsync_mux[SW];
  assign tx_vsync        = vsync_mux[SW];
  assign tx_blue         = b_mux[SW];
  assign tx_green        = g_mux[SW];
  assign tx_red          = r_mux[SW];

  assign tx_pll_reset    = rx_reset;

  //////////////////////////////////////////////////////////////////
  // Instantiate a dedicate PLL for output port
  //////////////////////////////////////////////////////////////////
  wire tx_clkfbout, tx_clkfbin, tx_plllckd;
  wire tx_pllclk0, tx_pllclk2;

  PLL_BASE # (
    .CLKIN_PERIOD(10),
    .CLKFBOUT_MULT(10), //set VCO to 10x of CLKIN
    .CLKOUT0_DIVIDE(1),
    .CLKOUT1_DIVIDE(10),
    .CLKOUT2_DIVIDE(5),
    .COMPENSATION("SOURCE_SYNCHRONOUS")
  ) PLL_OSERDES_0 (
    .CLKFBOUT(tx_clkfbout),
    .CLKOUT0(tx_pllclk0),
    .CLKOUT1(),
    .CLKOUT2(tx_pllclk2),
    .CLKOUT3(),
    .CLKOUT4(),
    .CLKOUT5(),
    .LOCKED(tx_plllckd),
    .CLKFBIN(tx_clkfbin),
    .CLKIN(tx_pclk),
    .RST(tx_pll_reset)
  );

  //
  // This BUFGMUX directly selects between two RX PLL pclk outputs
  // This way we have a matched skew between the RX pclk clocks and the TX pclk
  //
  BUFGMUX tx_bufg_pclk (.S(1'b1), .I1(rx_pllclk1), .I0(rx_pllclk1), .O(tx_pclk));

  //
  // This BUFG is needed in order to deskew between PLL clkin and clkout
  // So the tx0 pclkx2 and pclkx10 will have the same phase as the pclk input
  //
  BUFG tx_clkfb_buf (.I(tx_clkfbout), .O(tx_clkfbin));

  //
  // regenerate pclkx2 for TX
  //
  BUFG tx0_pclkx2_buf (.I(tx_pllclk2), .O(tx_pclkx2));

  //
  // regenerate pclkx10 for TX
  //
  wire tx0_bufpll_lock;
  BUFPLL #(.DIVIDE(5)) tx_ioclk_buf (.PLLIN(tx_pllclk0), .GCLK(tx_pclkx2), .LOCKED(tx_plllckd),
           .IOCLK(tx_pclkx10), .SERDESSTROBE(tx_serdesstrobe), .LOCK(tx_bufpll_lock));

  assign tx0_reset = ~tx0_bufpll_lock;

  dvi_encoder_top dvi_tx (
    .pclk        (tx_pclk),
    .pclkx2      (tx_pclkx2),
    .pclkx10     (tx_pclkx10),
    .serdesstrobe(tx_serdesstrobe),
    .rstin       (tx_reset),
    .blue_din    (tx_blue),
    .green_din   (tx_green),
    .red_din     (tx_red),
    .hsync       (tx_hsync),
    .vsync       (tx_vsync),
    .de          (tx_de),
    .TMDS        (TX0_TMDS),
    .TMDSB       (TX0_TMDSB));

 



  //////////////////////////////////////
  // Status LED
  //////////////////////////////////////
  assign LED = {rx_red_rdy, rx_green_rdy, rx_blue_rdy, rx_red_rdy, rx_green_rdy, rx_blue_rdy,
                rx_de, rx_de};

endmodule
