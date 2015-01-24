`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
// Engineer: komorkiewicz
// Create Date:    11:41:13 05/10/2011 
// Description: log image to ppm file
//-----------------------------------------------
module log22file
(
  input vga_clk,
  input vga_vs,
  input vga_de,
  input [31:0] vga_data1
);
//-----------------------------------------------
integer fm1=0;

reg [7:0]vsc=8'h0;
reg vse=1;
//-----------------------------------------------
initial
begin
  //fm1 = $fopen("m1A.ppm","wb");  
end
//-----------------------------------------------
always @(posedge vga_clk)
begin
  vse<=vga_vs;
  
  if((vga_vs==1'b0)&&(vse==1'b1))
  begin
    $fclose(fm1);
    //$stop;
  end
  
  if((vga_vs==1'b1)&&(vse==1'b0))
  begin
  
    fm1 = $fopen({"t1_",vsc[5:0]/10+8'h30,vsc[5:0]%10+8'h30,".ppm"},"wb");

	 $display("tx%d.ppm saved",vsc);
	 
	 $fwrite(fm1,"P6 16 16 255\n");

	 vsc<=vsc+1;
  end else
  begin
    if(vga_de)
	 begin
	   $fwrite(fm1,"%c",vga_data1[23:16]);
      $fwrite(fm1,"%c",vga_data1[15:8]);
      $fwrite(fm1,"%c",vga_data1[7:0]);
	 end
  end
end
//-----------------------------------------------
endmodule
//-----------------------------------------------
