----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:38:14 12/11/2011 
-- Design Name: 
-- Module Name:    singleDelay - Behavioral 
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

entity singleDelay is
   generic (
			WIDTH : in natural := 8
			);			
    Port ( CLK : in  STD_LOGIC;
			  RST: in  STD_LOGIC;
			  CE : in  STD_LOGIC;
			  
			  ENA : in STD_LOGIC;
	 
           DIN : in  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           DOUT : out  STD_LOGIC_VECTOR (WIDTH-1 downto 0) 
			  );
end singleDelay;

architecture Behavioral of singleDelay is

begin
	process (CLK) is
	begin
		if (rising_edge(CLK) ) then
			if ( CE = '1' and ENA = '1' ) then
				if ( RST = '1') then
					DOUT <= (others => '0');
				else
					DOUT <= DIN;
				end if;					
			end if;	
		end if;	
	end process;


end Behavioral;

