----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:47:28 12/06/2012 
-- Design Name: 
-- Module Name:    mux_9_to_1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_9_to_1_rgbs is
	generic (
			WIDTH : in natural := 24		
			);
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           DATA_IN : in  STD_LOGIC_VECTOR (9*WIDTH-1 downto 0);
           DATA_NO : in  STD_LOGIC_VECTOR (3 downto 0);
           R_DATA_OUT : out  STD_LOGIC_VECTOR (WIDTH/3-1 downto 0);
			  G_DATA_OUT : out  STD_LOGIC_VECTOR (WIDTH/3-1 downto 0);
			  B_DATA_OUT : out  STD_LOGIC_VECTOR (WIDTH/3-1 downto 0)
			  
			  );
end mux_9_to_1_rgbs;

architecture Behavioral of mux_9_to_1_rgbs is

begin
	process (CLK)
	begin	
		if (rising_edge(CLK) )then
			case  DATA_NO  is
              when "0000" => 
						R_DATA_OUT <= DATA_IN(1*(WIDTH/3)-1 downto 0); 
						G_DATA_OUT <= DATA_IN(2*(WIDTH/3)-1 downto (WIDTH/3)); 
						B_DATA_OUT <= DATA_IN(3*(WIDTH/3)-1 downto 2*(WIDTH/3)); 
              
				  when "0001" => 
						R_DATA_OUT <= DATA_IN(1*(WIDTH/3)-1 + 1*WIDTH downto 1*WIDTH); 
						G_DATA_OUT <= DATA_IN(2*(WIDTH/3)-1 + 1*WIDTH downto (WIDTH/3)+1*WIDTH); 
						B_DATA_OUT <= DATA_IN(3*(WIDTH/3)-1 + 1*WIDTH downto 2*(WIDTH/3)+1*WIDTH); 
              when "0010" =>
						R_DATA_OUT <= DATA_IN(1*(WIDTH/3)-1 + 2*WIDTH downto 2*WIDTH); 
						G_DATA_OUT <= DATA_IN(2*(WIDTH/3)-1 + 2*WIDTH downto (WIDTH/3)+2*WIDTH); 
						B_DATA_OUT <= DATA_IN(3*(WIDTH/3)-1 + 2*WIDTH downto 2*(WIDTH/3)+2*WIDTH); 
              
              when "0011" => 
						R_DATA_OUT <= DATA_IN(1*(WIDTH/3)-1 + 3*WIDTH downto 3*WIDTH); 
						G_DATA_OUT <= DATA_IN(2*(WIDTH/3)-1 + 3*WIDTH downto (WIDTH/3)+3*WIDTH); 
						B_DATA_OUT <= DATA_IN(3*(WIDTH/3)-1 + 3*WIDTH downto 2*(WIDTH/3)+3*WIDTH); 
              
              when "0100" => 
						R_DATA_OUT <= DATA_IN(1*(WIDTH/3)-1 + 4*WIDTH downto 4*WIDTH); 
						G_DATA_OUT <= DATA_IN(2*(WIDTH/3)-1 + 4*WIDTH downto (WIDTH/3)+4*WIDTH); 
						B_DATA_OUT <= DATA_IN(3*(WIDTH/3)-1 + 4*WIDTH downto 2*(WIDTH/3)+4*WIDTH); 
              
              when "0101" => 
						R_DATA_OUT <= DATA_IN(1*(WIDTH/3)-1 + 5*WIDTH downto 5*WIDTH); 
						G_DATA_OUT <= DATA_IN(2*(WIDTH/3)-1 + 5*WIDTH downto (WIDTH/3)+5*WIDTH); 
						B_DATA_OUT <= DATA_IN(3*(WIDTH/3)-1 + 5*WIDTH downto 2*(WIDTH/3)+5*WIDTH); 
              
              when "0110" => 
						R_DATA_OUT <= DATA_IN(1*(WIDTH/3)-1 + 6*WIDTH downto 6*WIDTH); 
						G_DATA_OUT <= DATA_IN(2*(WIDTH/3)-1 + 6*WIDTH downto (WIDTH/3)+6*WIDTH); 
						B_DATA_OUT <= DATA_IN(3*(WIDTH/3)-1 + 6*WIDTH downto 2*(WIDTH/3)+6*WIDTH); 
              
				  when "0111" => 
						R_DATA_OUT <= DATA_IN(1*(WIDTH/3)-1 + 7*WIDTH downto 7*WIDTH); 
						G_DATA_OUT <= DATA_IN(2*(WIDTH/3)-1 + 7*WIDTH downto (WIDTH/3)+7*WIDTH); 
						B_DATA_OUT <= DATA_IN(3*(WIDTH/3)-1 + 7*WIDTH downto 2*(WIDTH/3)+7*WIDTH); 
              
				  when "1000" => 
						R_DATA_OUT <= DATA_IN(1*(WIDTH/3)-1 + 8*WIDTH downto 8*WIDTH); 
						G_DATA_OUT <= DATA_IN(2*(WIDTH/3)-1 + 8*WIDTH downto (WIDTH/3)+8*WIDTH); 
						B_DATA_OUT <= DATA_IN(3*(WIDTH/3)-1 + 8*WIDTH downto 2*(WIDTH/3)+8*WIDTH); 
            				
				when others => 
						R_DATA_OUT <= (others => '0');
						G_DATA_OUT <= (others => '0');
						B_DATA_OUT <= (others => '0');
						
			end case;	
		end if;
	end process;


end Behavioral;

