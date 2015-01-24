`timescale 1ns / 1ps
//-----------------------------------------------
// Company: agh
// Engineer: komorkiewicz
// Create Date:    11:41:13 05/10/2011 
// Description: log three models to ppm file to ppm file
//-----------------------------------------------
module frames_out
(
  input vga_clk,
  input vga_vs,
  input vga_de,
  input [23:0] vga_data0,
  input [23:0] vga_data1,
  input [23:0] vga_data2, 
  input [23:0] vga_data3, 
  input [23:0] vga_data4 
);
//-----------------------------------------------
integer fm0=0,fm1=0,fm2=0,fm3=0,fm4=0;

reg [7:0]vsc=8'h0;
reg vse=1;
//-----------------------------------------------
always @(posedge vga_clk)
begin
  vse<=vga_vs;
  
  if((vga_vs==1'b0)&&(vse==1'b1))
  begin
    $fclose(fm0);
    $fclose(fm1);
    $fclose(fm2);	 
    $fclose(fm3);	 
    $fclose(fm4);	 
    //$stop;
  end
  
  if((vga_vs==1'b1)&&(vse==1'b0))
  begin
    fm0 = $fopen({"m0_",vsc[5:0]/10+8'h30,vsc[5:0]%10+8'h30,".ppm"},"wb");  
    fm1 = $fopen({"m1_",vsc[5:0]/10+8'h30,vsc[5:0]%10+8'h30,".ppm"},"wb");
    fm2 = $fopen({"m2_",vsc[5:0]/10+8'h30,vsc[5:0]%10+8'h30,".ppm"},"wb");
    fm3 = $fopen({"m3_",vsc[5:0]/10+8'h30,vsc[5:0]%10+8'h30,".ppm"},"wb");
    fm4 = $fopen({"m4_",vsc[5:0]/10+8'h30,vsc[5:0]%10+8'h30,".ppm"},"wb");

	 $display("mx%d.ppm saved",vsc);
	 
	 $fwrite(fm0,"P6 16 16 255\n");
	 $fwrite(fm1,"P6 16 16 255\n");
	 $fwrite(fm2,"P6 16 16 255\n");
	 $fwrite(fm3,"P6 16 16 255\n");
	 $fwrite(fm4,"P6 16 16 255\n");

	 vsc<=vsc+1;
  end else
  begin
    if(vga_de)
	 begin
	   //just for good debugging
	   $fwrite(fm0,"%c",{vga_data0[23:16]});
      $fwrite(fm0,"%c",{vga_data0[15:8]});
      $fwrite(fm0,"%c",{vga_data0[7:0]});

	   $fwrite(fm1,"%c",{vga_data1[23:16]});
      $fwrite(fm1,"%c",{vga_data1[15:8]});
      $fwrite(fm1,"%c",{vga_data1[7:0]});

	   $fwrite(fm2,"%c",{vga_data2[23:16]});
      $fwrite(fm2,"%c",{vga_data2[15:8]});
      $fwrite(fm2,"%c",{vga_data2[7:0]});		
		
	   $fwrite(fm3,"%c",{vga_data3[23:16]});
      $fwrite(fm3,"%c",{vga_data3[15:8]});
      $fwrite(fm3,"%c",{vga_data3[7:0]});	

	   $fwrite(fm4,"%c",{vga_data4[23:16]});
      $fwrite(fm4,"%c",{vga_data4[15:8]});
      $fwrite(fm4,"%c",{vga_data4[7:0]});			
	 end
  end
end
//-----------------------------------------------
endmodule
//-----------------------------------------------
