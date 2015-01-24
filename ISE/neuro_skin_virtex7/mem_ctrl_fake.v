`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
// Engineer: komorkiewicz 
// Create Date: 08:09:50 12/05/2011 
// Description: Virtex 6 memory controller for BG project
//-----------------------------------------------
module mem_ctrl_fake #
(
  parameter img_size=1920*1080*5/8,//640*480/2
  parameter READ_FIFO_SIZE=640,//128//3072
  parameter TEMP_FIFO_SIZE=128//8
)
(
  input clk,
  output [27:0]app_addr,
  output [2:0]app_cmd,
  output app_en,
  input app_rdy,
  output app_hi_pri,
  input [255:0]app_rd_data,
  input app_rd_data_valid,
  output [255:0]app_wdf_data,
  output app_wdf_end,
  input app_wdf_rdy,
  output app_wdf_wren,
  //fifo clock
  input fifo_clk,
  //write fifo
  input [159:0]fifo_wr_data,
  input fifo_wr_en,
  //read fifo
  output [159:0]fifo_rd_data,
  input fifo_rd_en,
  //control intreface
  input frame_valid,
  input init_done,
  output ready,
  output[4:0]status  
);
//-----------------------------------------------
parameter ST_INIT=3'd0;
parameter ST_IDLE=3'd1;
parameter ST_READ=3'd2;
parameter ST_WRITE0=3'd4;
parameter ST_WRITE1=3'd5;
parameter ST_WRITE2=3'd6;
//-----------------------------------------------
parameter CMD_READ=3'b1;
parameter CMD_WRITE=3'b0;
//-----------------------------------------------
reg [2:0]state=ST_INIT;
//-----------------------------------------------
reg [15:0]op_cnt=0;
reg [2:0]cmd=0;
reg cmd_en=0;

reg mem_we=0;
reg mem_we_end=0;

wire fifo_wr_empty;
wire fifo_wr_full;
wire fifo_rd_empty;
wire fifo_rd_full;

wire tfifo_rd_en=mem_we&app_wdf_rdy;
wire [255:0]tfifo_data;
wire tfifo_full;

reg [21:0]waddr=0;
reg [21:0]raddr=0;
reg [21:0]addr=0;
//-----------------------------------------------
reg [31:0]start=0;
reg [4:0]error=0;
//-----------------------------------------------
fifo_160_256_2048 fifo_wr
(
  //.rst(0),
  .wr_clk(fifo_clk),
  .rd_clk(clk),
  .din(fifo_wr_data),
  .wr_en(fifo_wr_en&init_done),
  .rd_en((~fifo_wr_empty)&(~tfifo_full)),
  .dout(tfifo_data),
  .full(fifo_wr_full),
  .empty(fifo_wr_empty)
);
//-----------------------------------------------
fifo_256_160_2048_two fifo_rd
(
  //.rst(0),
  .wr_clk(clk),
  .rd_clk(fifo_clk),
  .din(((state==ST_INIT)? 256'b0:app_wdf_data)),
  .wr_en(app_wdf_wren&init_done),
  .rd_en(fifo_rd_en),
  .dout(fifo_rd_data),
  .full(fifo_rd_full),
  .empty(fifo_rd_empty)
);
//-----------------------------------------------
fifo_256_xxx #
(
  .buff_len(TEMP_FIFO_SIZE)
)
fifo_twr
(
  .clk(clk),
  .din(tfifo_data),
  .wr_en((~fifo_wr_empty)&(~tfifo_full)&init_done),
  .rd_en(tfifo_rd_en),
  .dout(app_wdf_data),//
  .full(tfifo_full),
  .empty()
);
//-----------------------------------------------
always @(posedge clk)
begin
  if(init_done)
  begin
    case(state)
	   ST_INIT:
		begin
		  cmd_en<=1'b1;
		  addr<=raddr;
		  cmd<=CMD_READ;
		  if(cmd_en&&app_rdy) 
		  begin
		    mem_we<=1'b1;

		    addr<=addr+1;
			 raddr<=raddr+1;
		    op_cnt<=op_cnt+1;
			 if(op_cnt==READ_FIFO_SIZE-1)
          begin
			   state<=ST_IDLE;
            cmd_en<=1'b0;
          end				
		  end
		end
		ST_IDLE:
		begin
		  mem_we<=1'b0;
		  if(tfifo_full) state<=ST_WRITE0;
		  op_cnt<=0;
		end
		ST_WRITE0:
		begin
		  mem_we<=1'b1;	
		  if(mem_we&&app_wdf_rdy)
		  begin
		    state<=ST_WRITE1;
			 mem_we_end<=1'b1;
			 cmd_en<=1'b1;
			 cmd<=CMD_WRITE;
			 addr<=waddr;
		  end
		end
		ST_WRITE1:
		begin
		  if(app_rdy&&!app_wdf_rdy) error[3]<=1'b1;//$stop;//error
		
		  if(mem_we&&app_wdf_rdy)
		  begin
			 mem_we_end<=1'b0;
		    if(!app_rdy)
			 begin
			   state<=ST_WRITE2;
			   mem_we<=1'b0;
			 end
			 else
			 begin
            waddr<=waddr+2;
		      if(waddr==img_size-2) waddr<=0;
		      op_cnt<=op_cnt+2;
		      cmd_en<=1'b0;
		      if(op_cnt==TEMP_FIFO_SIZE-2)
		      begin
			     state<=ST_READ;
				  mem_we<=1'b0;
			     op_cnt<=0;
		      end
            else
            begin
        	     mem_we<=1'b1;
			     state<=ST_WRITE0;
            end			 
			 end
		  end		
		end
		ST_WRITE2:
		begin
		  if(app_rdy)
		  begin
          waddr<=waddr+2;
		    if(waddr==img_size-2) waddr<=0;
		    op_cnt<=op_cnt+2;
		    cmd_en<=1'b0;
		    if(op_cnt==TEMP_FIFO_SIZE-2)
		    begin
			   state<=ST_READ;
			   op_cnt<=0;
		    end
          else
          begin
        	   mem_we<=1'b1;
			   state<=ST_WRITE0;
          end
		  end
      end
		ST_READ:
		begin
		  cmd<=CMD_READ;
		  cmd_en<=1'b1;
		  addr<=raddr;
		  if(app_rdy&&cmd_en)
		  begin
		    addr<=addr+2;
			 raddr<=raddr+2;
          if(raddr==img_size-2)
          begin
		      addr<=0;
			   raddr<=0;            
          end			 
		    op_cnt<=op_cnt+2;
          if(op_cnt==TEMP_FIFO_SIZE-2)
          begin
			   cmd_en<=1'b0;
			   state<=ST_IDLE;
			 end
        end
      end
    endcase
  end
end
//-----------------------------------------------
reg fve=0;

always @(posedge clk)
begin
  fve<=frame_valid;
  
  //if(fve&&(!frame_valid)&&init_done) 
  if(!start[2]) start[2:0]<=start[2:0]+1;

  if(start[2]&&(!frame_valid)&&(state!=ST_INIT)) start[31]<=1'b1;
	 
  if(start[31])
  begin
	 error[2]<=1'b1;
		
	 //if(!fifo_rd_full) error[3]<=1'b1;
	 //if(!fifo_wr_empty) error[4]<=1'b1;		
		
	 if(fifo_rd_empty) error[0]<=1'b1;
	 if(fifo_wr_full) error[1]<=1'b1;
	 
  end
end
//-----------------------------------------------
assign status=error;
assign ready=start[31];
//-----------------------------------------------
assign app_addr={addr,5'b0};
assign app_cmd=cmd;
assign app_en=cmd_en;
assign app_hi_pri=1'b0;
assign app_wdf_end=mem_we_end;
assign app_wdf_wren=mem_we;

//wire [31:0]val=waddr;
//assign app_wdf_data={val,val,val,val,val,val,val,val};
//-----------------------------------------------
endmodule
//-----------------------------------------------
