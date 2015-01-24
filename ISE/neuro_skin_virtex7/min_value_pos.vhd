----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:56:01 03/04/2013 
-- Design Name: 
-- Module Name:    min_value_pos - Behavioral 
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity min_value_pos is
	 generic ( VALUE_W : natural := 8;
				  POS_W : natural := 6
				  );
    Port ( CLK : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           VALUE_1 : in  STD_LOGIC_VECTOR (VALUE_W-1 downto 0);
           VALUE_2 : in  STD_LOGIC_VECTOR (VALUE_W-1 downto 0);
           POS_1 : in  STD_LOGIC_VECTOR (POS_W-1 downto 0);
           POS_2 : in  STD_LOGIC_VECTOR (POS_W-1 downto 0);
           VALUE_OUT : out  STD_LOGIC_VECTOR (VALUE_W-1 downto 0);
           POS_OUT : out  STD_LOGIC_VECTOR (POS_W-1 downto 0)
			  );
end min_value_pos;

architecture Behavioral of min_value_pos is

begin
	process (CLK)
	begin
		if ( rising_edge(CLK) ) then
			if ( CE = '1' ) then
				if ( VALUE_1 > VALUE_2 ) then
					VALUE_OUT <= VALUE_2;
					POS_OUT <= POS_2;
				else
					VALUE_OUT <= VALUE_1;
					POS_OUT <= POS_1;
				end if;
			end if;
		end if;
	end process;

end Behavioral;

