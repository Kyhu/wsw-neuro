`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:55:47 04/24/2014 
// Design Name: 
// Module Name:    centroid 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module centroid(clk, ce, de, hsync, vsync, color, x, y);
	parameter IMG_H = 576;
	parameter IMG_W = 720;
	input clk;
	input ce;
	input de;
	input hsync;
	input vsync;
	input [7:0]color;
	output [11:0]x;
	output [11:0]y;
	
	//======== WIRES ======
	wire eof;

	// Mask delay and eof delay (1d)
	wire mask_d;
	wire eof_d;
	
	//======== REGS ======
	reg prev_vsync = 0;
	//reg mask = 0;
	
	reg [11:0]h_cnt = 0;
	reg [11:0]v_cnt = 0;
	
	reg [19:0]m_00 = 0;
	wire [27:0]m_01;
	wire [27:0]m_10;
	
	reg [11:0] x_reg = 0;
	reg [11:0] y_reg = 0;
	
	reg mask_d_reg = 0;
	
	
	//======== Column and rows counters ======
	always @(posedge clk)
	begin
		if (vsync == 0) 
		begin
			h_cnt <= 0;
			v_cnt <= 0;			
		end
		else
		begin
			if(de == 1) h_cnt <= h_cnt + 1;
			if(h_cnt == IMG_W - 1) 
			begin 
				h_cnt <= 0;
				v_cnt <= v_cnt + 1;
				if(v_cnt == IMG_H - 1) v_cnt <= 0;			
			end			
		end
		if(color == 255) mask_d_reg <= 1'b1;
		if(color == 0) mask_d_reg <= 1'b0;
		prev_vsync <= vsync;
	end
	// ----
	
	assign mask_d = mask_d_reg;
	
	// Vsync negedge detection
	assign eof = (prev_vsync == 1'b1 & vsync == 1'b0) ? 1'b1:1'b0;
	
	// 
	always @(posedge clk)
	begin 
		if(eof == 1) m_00 <= 0;
		else if (color == 255) m_00 <= m_00 + 1;
	end	


	delayx #(
		.N(1),
		.DELAY(1)
	)
	sig_delay(
    .clk(clk), 
    .ce(ce), 
    .d({eof}), 
    .q({eof_d})
    );

	// m01 & m10 accumulator
	accumulator m_01_acc (
    .clk(clk), 
    .rst(eof_d), 
    .ce(mask_d), 
    .A(h_cnt), 
    .Y(m_01)
    );
	 
	accumulator m_10_acc (
    .clk(clk), 
    .rst(eof_d), 
    .ce(mask_d), 
    .A(v_cnt), 
    .Y(m_10)
    );
	 
	 // Divide m01/m00
	 wire [27:0]result_x;
	 wire qv_x;
	 
	 divider_28_20 m01_m00 (
    .clk(clk), 
    .start(eof), 
    .dividend(m_01), 
    .divisor(m_00), 
    .quotient(result_x), 
    .qv(qv_x)
    );
	 
	 always @(posedge qv_x) x_reg = result_x[11:0];
	 
	 // Divide m10/m00
	 wire [27:0]result_y;
	 wire qv_y;
	 
	 divider_28_20 m10_m00 (
    .clk(clk), 
    .start(eof), 
    .dividend(m_10), 
    .divisor(m_00), 
    .quotient(result_y), 
    .qv(qv_y)
    );
	 
	 always @(posedge qv_y) y_reg = result_y[11:0];
	  
	 
	 assign x = x_reg;
	 assign y = y_reg;
	 
	 //MATLAB:
	 //out_00.ppm:
	 //m00 = 504
	 //m10 = 13030
	 //m01 = 13860
	 //y = 25
	 //x = 27
	 
	 //ISIM:
	 //out_00.ppm:
	 //m00 = 504
	 //m10 = 12526
	 //m01 = 13860
	 //y = 24
	 //x = 27

endmodule
