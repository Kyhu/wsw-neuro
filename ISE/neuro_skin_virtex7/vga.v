`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
// Engineer: komorkiewicz
// Create Date: 23:14:48 04/19/2011 
// Description: vga generator
//-----------------------------------------------
module vga
(
  //vga outputs
  output vga_clk,
  output vga_de,
  output vga_hs,
  output vga_vs,
  //image data
  output [7:0]vga_r,
  output [7:0]vga_g,
  output [7:0]vga_b,
  //mask data
  output [7:0]tlo_r,
  output [7:0]tlo_g,
  output [7:0]tlo_b
); 
//-----------------------------------------------
//320x120
  //horizontal
  parameter hr=16; //resolution
  parameter hbp=3; //back porch
  parameter hfp=3; //front porch
  parameter hs=1;  //sync len
  //vertical
  parameter vr=16; //resolution
  parameter vbp=128; //back porch
  parameter vfp=128; //front porch
  parameter vs=2;   //sync len
////320x120
//  //horizontal
//  parameter hr=320; //resolution
//  parameter hbp=3; //back porch
//  parameter hfp=3; //front porch
//  parameter hs=1;  //sync len
//  //vertical
//  parameter vr=120; //resolution
//  parameter vbp=8; //back porch
//  parameter vfp=8; //front porch
//  parameter vs=2;   //sync len
////////HDTV 1280x720 60Hz
//  //horizontal
//  parameter hr=1280; //resolution
//  parameter hbp=220; //back porch
//  parameter hfp=110; //front porch
//  parameter hs=39;  //sync len -1
//  //vertical
//  parameter vr=720; //resolution
//  parameter vbp=22; //back porch
//  parameter vfp=3; //front porch
//  parameter vs=5;   //sync len  
//-----------------------------------------------
  reg line=1'b0;
  reg vsync=1'b1;
  reg hsync=1'b1;
  reg enab=1'b0;
  reg eenab=1'b0;
  reg h_enable=1'b0;
  reg v_enable=1'b0;
  reg [10:0]hcounter=0;
  reg [10:0]vcounter=vr+1;//480+7
//-----------------------------------------------
  reg [7:0]red;
  reg [7:0]green;
  reg [7:0]blue;
  
  reg [7:0]rtlo;
  reg [7:0]gtlo;
  reg [7:0]btlo;
  
  reg vga_clk=1'b0;
//-----------------------------------------------
initial
begin
  while(1)
  begin
    #1 vga_clk=1'b0;
	 #1 vga_clk=1'b1;
  end
end  
//-----------------------------------------------
integer rgbfile,tlofile,i,v,clo,cle,wl,x;

//initial
//begin
  //ifile = $fopen("o0.ppm","rb");
  
  //remove header from input file
  //for(i=0;i<15;i=i+1)
  //begin
    //v=$fgetc(ifile); 
  //end
  
//end
//-----------------------------------------------
always @(posedge vga_clk)
begin
  hcounter<=hcounter+1;
  
  eenab<=enab;

  if(hcounter==(hr+hbp)) begin
    hsync<=1'b0;
  end
  if(hcounter==(hr+hbp+hs)) begin
    hsync<=1'b1;
	 line<=1'b0;
  end

  if(hcounter<hr) h_enable<=1'b1;
             else h_enable<=1'b0;
  
  if(vcounter<vr) v_enable<=1'b1;
             else v_enable<=1'b0;
		
  if((v_enable==1'b1)&&(h_enable==1'b1)) enab<=1'b1;
		                              else enab<=1'b0;
		  	  
  if(hcounter==(hr+hbp+hs+hfp)) 
  begin
    hcounter<=0;
	 line<=1'b1;
  end
end
//-----------------------------------------------
//TB only
reg [7:0]noise=0;

always @(posedge vga_clk)
begin
  if(enab)
  begin
    red=$fgetc(rgbfile);
	 green=$fgetc(rgbfile);
	 blue=$fgetc(rgbfile);

    rtlo=$fgetc(tlofile);
	 gtlo=$fgetc(tlofile);
	 btlo=$fgetc(tlofile);
	 //noise=$random;
	 //red={red[7:1],noise[0]};
	 //noise=$random;
	 //green={green[7:1],noise[0]};
	 //noise=$random;
	 //blue={blue[7:1],noise[0]};	 
 	 
  end
end
//TB end
//-----------------------------------------------
reg [7:0]vsc=0;

always @(posedge line)
begin
  vcounter<=vcounter+1;
  if(vcounter==(vr+vbp))
  begin  
    vsync<=1'b0;
	 //TB only
	 vsc=vsc+1;

    rgbfile = $fopen("tb_src/test.ppm","rb");
	 tlofile = $fopen("tb_src/test.ppm","rb");

	 for(i=0;i<13;i=i+1)
    begin
      v=$fgetc(rgbfile); 
    end

	 for(i=0;i<13;i=i+1)
    begin
      v=$fgetc(tlofile);
    end
	 //TB end
  end
  if(vcounter==(vr+vbp+vs)) vsync<=1'b1;
  if(vcounter==(vr+vbp+vs+vfp)) vcounter<=0;
end
//-----------------------------------------------
reg [7:0]r_r;
reg [7:0]r_g;
reg [7:0]r_b;
reg [7:0]r_de;
reg [7:0]r_vs;
reg [7:0]r_hs;
//-----------------------------------------------
always @(posedge vga_clk)
begin
  r_r<=red;
  r_g<=green;
  r_b<=blue;
  r_de<=eenab;
  r_hs<=hsync;
  r_vs<=vsync;
end
//-----------------------------------------------
assign vga_r=r_r;
assign vga_g=r_g;
assign vga_b=r_b;

assign tlo_r=rtlo;
assign tlo_g=gtlo;
assign tlo_b=btlo;

assign vga_de=r_de;
assign vga_hs=r_hs;
assign vga_vs=r_vs;
//-----------------------------------------------
endmodule
//-----------------------------------------------
