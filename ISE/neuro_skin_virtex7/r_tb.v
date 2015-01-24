`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
// Engineer: komorkiewicz
// Create Date: KRK 08:43:48 03/05/2013 
// Description: 
//-----------------------------------------------
module r_tb
(
);
//-----------------------------------------------
reg clk=1'b0;
reg [15:0]rx=16'b0;
reg rv=1'b0;
reg [15:0]dmin;
//-----------------------------------------------
wire [15:0]rnx;
wire rnv;
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
integer vec_file=0,res_file=0;
//-----------------------------------------------
initial
begin
  #100;
  vec_file = $fopen("tb_src/rx.vec","r");
  res_file = $fopen("tb_src/sim_nrx.vec","w");
end
//-----------------------------------------------
always @(posedge clk)
begin
  rv<=1'b0; 
  if(vec_file && !$feof(vec_file))
  begin
    rv<=1'b1;
    $fscanf(vec_file,"%h %h\n",rx,dmin);
  end  
end
//-----------------------------------------------
decision_thr r_i
(
  .clk(clk), 
  .rv(rv), 
  .rx(rx), 
  .dmin(dmin), 
  .rscale(16'h0500), 
  .rlow(16'h1200),
  //.rinc(16'hd), 
  .one_minus_rinc(16'h00f3),
  .one_plus_rinc(16'h010d),
  .rnv(rnv), 
  .rnx(rnx)
);
//-----------------------------------------------
always @(posedge clk)
begin
  if(rnv)
  begin
    cnt<=cnt+1;
    $fwrite(res_file,"%x\n",rnx);
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
