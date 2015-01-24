`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
// Engineer: komorkiewicz
// Create Date: KRK 19:23:48 03/04/2013 
// Description: 
//-----------------------------------------------
module t_tb
(
);
//-----------------------------------------------
reg clk=1'b0;
reg [15:0]tx=16'b0;
reg fx=1'b0;
reg tv=1'b0;
reg [15:0]dmin;
//-----------------------------------------------
wire [15:0]tnx;
wire tnv;
//-----------------------------------------------
initial
begin
  while(1)
  begin
    #2 clk=1'b0;
    #2 clk=1'b1;
  end
end
//-----------------------------------------------
//0x02 2
//0x64 100
//0xc8 200
//-----------------------------------------------
reg [31:0]cnt=0;
integer vec_file,res_file;
//-----------------------------------------------
initial
begin
  #100;
  vec_file = $fopen("tb_src/tx.vec","r");
  res_file = $fopen("tb_src/sim_ntx.vec","w");
end
//-----------------------------------------------
always @(posedge clk)
begin
  tv<=1'b0; 
  if(vec_file && !$feof(vec_file))
  begin
    tv<=1'b1;
    $fscanf(vec_file,"%h %h %h\n",tx,fx,dmin);
  end  
end
//-----------------------------------------------
learning_rate t_i
(
  .clk(clk),
  .tv(tv),
  .tx(tx),
  .fx(fx),
  .dmin(dmin),
  .tinc({8'd1,8'd0}),
  .tdec({8'd0,8'h0d}),
  .tup({8'd200,8'd0}),
  .tlow({8'd2,8'd0}),
  .tnv(tnv),
  .tnx(tnx)
);
//-----------------------------------------------
always @(posedge clk)
begin
  if(tnv)
  begin
    cnt<=cnt+1;
    $fwrite(res_file,"%x\n",tnx);
	 if(cnt==999)
    begin
	   $fclose(res_file);
		$stop;
	 end
  end  
end
//-----------------------------------------------
endmodule
//-----------------------------------------------
