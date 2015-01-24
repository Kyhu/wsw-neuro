//-----------------------------------------------
`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
// Engineer: komorkiewicz
// Create Date: KRK 11:29:15 03/05/2013  
// Description: PBAS project
//-----------------------------------------------
//`define SIMULATION
//-----------------------------------------------
module pbas
(
  // Inputs
  // Differential system clocks
  input sys_clk_p,
  input sys_clk_n,
  // output tg_compare_error,
  // output init_calib_complete,
  output [7:0]led,
  input [7:0]switch,
  // System reset
  input sys_rst,
  // Inouts
  inout [63:0]ddr3_dq,
  inout [7:0]ddr3_dqs_n,
  inout [7:0]ddr3_dqs_p,
  // Outputs
  output [13:0]ddr3_addr,
  output [2:0]ddr3_ba,
  output ddr3_ras_n,
  output ddr3_cas_n,
  output ddr3_we_n,
  output ddr3_reset_n,
  output [0:0]ddr3_ck_p,
  output [0:0]ddr3_ck_n,
  output [0:0]ddr3_cke,
  output [0:0]ddr3_cs_n,
  output [7:0]ddr3_dm,
  output [0:0]ddr3_odt,
  //hdmi output
  output fmc_dvidp_dvio_reset_n,
  output fmc_dvidp_dvio_clk,
  output fmc_dvidp_dvio_de,
  output fmc_dvidp_dvio_vsync,
  output fmc_dvidp_dvio_hsync,
  output [11:0]fmc_dvidp_dvio_data,
  //dvi i2c
  output fmc_dvidp_i2c_scl,
  inout fmc_dvidp_i2c_sda,
  output fmc_dvidp_i2c_rst,  
  //DVI INPUT port
  input fmc_dvidp_dvii_clk,
  input fmc_dvidp_dvii_de,
  input fmc_dvidp_dvii_vsync,
  input fmc_dvidp_dvii_hsync,
  input [7:0]fmc_dvidp_dvii_red,
  input [7:0]fmc_dvidp_dvii_green,
  input [7:0]fmc_dvidp_dvii_blue  
);
//-----------------------------------------------
reg [31:0]delay=0;
reg ready_dvi=0;
wire ui_clk;
//-----------------------------------------------
always @(posedge ui_clk)
begin
  delay<=delay+1;
end

//-----------------------------------------------
wire [7:0]dvii_r;
wire [7:0]dvii_g;
wire [7:0]dvii_b;

wire dvii_de;
wire dvii_vsync;
wire dvii_hsync;
wire dvii_clk;

wire clk;
wire rst;

//---------------------------------------------


//-----------------------------------------------
BUFG pb_clk_l
(
  .I(dvii_clk),
  .O(pb_clk)
  );
//-----------------------------------------------
FMC_DVIDP_CONFIG fmc_dvidp_config_l
(
  .CLK(pb_clk),
  .DIPSW_IN(8'b0),
  .PUSHB_IN(8'b0),
  .RESET_OUT(pb_reset_out),
  .SCL_OUT(scl_out),
  .SDA_OUT(sda_en_n),
  .SDA_IN(sda_in)
);
//-----------------------------------------------
OBUF i2c_scl_obuf
(
  .O(fmc_dvidp_i2c_scl),
  .I(scl_out)
);
//-----------------------------------------------
assign sda_out = 1'b 0;
//-----------------------------------------------  
IOBUF i2c_sda_iobuf
(
  .IO(fmc_dvidp_i2c_sda),
  .I(sda_out),
  .T(sda_en_n),
  .O(sda_in)
);
//----------------------------------------------- 
IBUFG video_clk_l
(
  .I(fmc_dvidp_dvii_clk),
  .O(dvii_clk)
);
//----------------------------------------------- 
fmc_dvidp_dvi_in video_input
(
  .clk(dvii_clk),
  .ce(1'b1),
  .de(fmc_dvidp_dvii_de),
  .vsync(fmc_dvidp_dvii_vsync),
  .hsync(fmc_dvidp_dvii_hsync),
  .red(fmc_dvidp_dvii_red),
  .green(fmc_dvidp_dvii_green),
  .blue(fmc_dvidp_dvii_blue),
  .de_o(dvii_de),
  .vsync_o(dvii_vsync),
  .hsync_o(dvii_hsync),
  .red_o(dvii_r),
  .green_o(dvii_g),
  .blue_o(dvii_b)
);

//-----------------------------------------------
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
    .clk(dvii_clk), 
    .ce({1'b1}), 
    .de_in(dvii_de), 
    .hsync_in(dvii_hsync), 
    .vsync_in(dvii_vsync), 
    .red(dvii_r), 
    .green(dvii_g), 
    .blue(dvii_b), 
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
	.clk(dvii_clk), 
    .ce({1'b1}), 
    .de_in(dvii_de), 
    .hsync_in(dvii_hsync), 
    .vsync_in(dvii_vsync), 
    .red(dvii_r), 
    .green(dvii_g), 
    .blue(dvii_b), 
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
    .clk(dvii_clk), 
    .ce({1'b1}), 
    .d({dvii_r, dvii_g, dvii_b}), 
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
    .clk(dvii_clk), 
    .ce({1'b1}), 
    .d({Y, Cb, Cr}), 
    .q({sync_Y, sync_Cb, sync_Cr})
    );
	
	wire [7:0]  skin;
 
 	wire  de_skin;
	wire  hsync_skin;
	wire  vsync_skin;
	
	skin_binarization bin (
    .clk(dvii_clk), 
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
    .clk(dvii_clk), 
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
	 
//	 //Centroid
//	
//	wire [7:0] r_centroid;
//	wire [7:0] g_centroid;
//	wire [7:0] b_centroid;
//	
//	wire  de_out;
//	wire  hsync_out;
//	wire  vsync_out;	 
//	
//	wire [11:0]xg;
//	wire [11:0]yg;	 
//	 
//	 centroid centroid (
//    .clk(dvii_clk), 
//    .ce({1'b1}), 
//    .de(de_med_centr), 
//    .hsync(hsync_med_centr), 
//    .vsync(vsync_med_centr), 
//    .color(skin), 
//    .x(xg), 
//    .y(yg)
//    );	 	 
//	 
//	 visualize visualize(
//    .clk(dvii_clk), 
//    .de_in(de_med_centr), 
//    .hsync_in(hsync_med_centr),
//    .vsync_in(vsync_med_centr),
//    .x(xg), 
//    .y(yg), 
//	 .de_out(de_out), 
//    .hsync_out(hsync_out), 
//    .vsync_out(vsync_out), 
//    .mask(skin), 
//    .red_out(r_centroid), 
//    .green_out(g_centroid), 
//    .blue_out(b_centroid)
//    );
	 
	// MUX 
	wire [7:0]r_mux[7:0];
	wire [7:0]g_mux[7:0];
	wire [7:0]b_mux[7:0];
	wire de_mux[7:0];
	wire hsync_mux[7:0];
	wire vsync_mux[7:0];
		
	// MUX assigning	
	assign r_mux[0] = dvii_r;
	assign g_mux[0] = dvii_g;
	assign b_mux[0] = dvii_b;
	assign de_mux[0] = dvii_de;
	assign hsync_mux[0] = dvii_hsync;
	assign vsync_mux[0] = dvii_vsync;
	
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
	
//	assign r_mux[5] = r_centroid;
//	assign g_mux[5] = g_centroid;
//	assign b_mux[5] = b_centroid;
//	assign de_mux[5] = de_out;
//	assign hsync_mux[5] = hsync_out;
//	assign vsync_mux[5] = vsync_out;

//-----------------------------------------------
// MULTIPLEXER

// Przypisanie zmulitpleksera
wire [7:0]vga_r=r_mux[switch];
wire [7:0]vga_g=g_mux[switch];
wire [7:0]vga_b=b_mux[switch];
wire vga_de=de_mux[switch];
wire vga_hs=hsync_mux[switch];
wire vga_vs=vsync_mux[switch];

//-----------------------------------------------
assign fmc_dvidp_i2c_rst =  ~pb_reset_out;
//-----------------------------------------------
fmc_dvidp_dvi_out fmc_dvidp_dvi_out_l
(
  .clk(dvii_clk),
  .reset(1'b0),
  .ce(1'b1),
  .oe(1'b1),
  .de_i(vga_de),
  .hsync_i(vga_hs),
  .vsync_i(vga_vs),
  .red_i(vga_r),
  .green_i(vga_g),
  .blue_i(vga_b),
  .dvi_de(fmc_dvidp_dvio_de),
  .dvi_vsync(fmc_dvidp_dvio_vsync),
  .dvi_hsync(fmc_dvidp_dvio_hsync),
  .dvi_data(fmc_dvidp_dvio_data),
  .dvi_clk(fmc_dvidp_dvio_clk),
  .dvi_reset_n(fmc_dvidp_dvio_reset_n),
  .debug(open)
);
//-----------------------------------------------

//-----------------------------------------------
endmodule
//-----------------------------------------------
