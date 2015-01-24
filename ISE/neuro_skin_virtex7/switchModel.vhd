----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:43:36 12/13/2012 
-- Design Name: 
-- Module Name:    switchModel - Behavioral 
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

entity switchModel is
	generic (
			WIDTH : in natural := 23;		
			BG_MODEL_WIDTH : in natural := 512
			);
    Port ( CLK : in STD_LOGIC;
			  RST : in STD_LOGIC;
			  CE : in STD_LOGIC;
			  SWITCH : in STD_LOGIC;
			  TOSWITCH : in STD_LOGIC_VECTOR(5 downto 0);
			  PIXEL_LAB : in  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           BG_MODEL_IN : in  STD_LOGIC_VECTOR (BG_MODEL_WIDTH -1 downto 0);
           
			  BG_MODEL_OUT : out  STD_LOGIC_VECTOR (BG_MODEL_WIDTH -1 downto 0)
			  );
end switchModel;

architecture Behavioral of switchModel is

begin

	process (CLK) is
	begin
		if (rising_edge(CLK) ) then
			if ( CE = '1' ) then
				if ( RST = '1') then
					BG_MODEL_OUT <= (others => '0');
				else
					if ( SWITCH = '1' ) then
						BG_MODEL_OUT(511 downto 460) <= BG_MODEL_IN(511 downto 460);
						case  TOSWITCH  is 
							when "000000" =>
									BG_MODEL_OUT(22 downto 0) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 23) <= BG_MODEL_IN(459 downto 23);
							when "000001" =>
									BG_MODEL_OUT(22 downto 0) <= BG_MODEL_IN(22 downto 0);
									BG_MODEL_OUT(45 downto 23) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 46) <= BG_MODEL_IN(459 downto 46);
							when "000010" =>
									BG_MODEL_OUT(45 downto 0) <= BG_MODEL_IN(45 downto 0);
									BG_MODEL_OUT(68 downto 46) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 69) <= BG_MODEL_IN(459 downto 69);
							when "000011" =>
									BG_MODEL_OUT(68 downto 0) <= BG_MODEL_IN(68 downto 0);
									BG_MODEL_OUT(91 downto 69) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 92) <= BG_MODEL_IN(459 downto 92);
							when "000100" =>
									BG_MODEL_OUT(91 downto 0) <= BG_MODEL_IN(91 downto 0);
									BG_MODEL_OUT(114 downto 92) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 115) <= BG_MODEL_IN(459 downto 115);
							when "000101" =>
									BG_MODEL_OUT(114 downto 0) <= BG_MODEL_IN(114 downto 0);
									BG_MODEL_OUT(137 downto 115) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 138) <= BG_MODEL_IN(459 downto 138);
							when "000110" =>
									BG_MODEL_OUT(137 downto 0) <= BG_MODEL_IN(137 downto 0);
									BG_MODEL_OUT(160 downto 138) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 161) <= BG_MODEL_IN(459 downto 161);
							when "000111" =>
									BG_MODEL_OUT(160 downto 0) <= BG_MODEL_IN(160 downto 0);
									BG_MODEL_OUT(183 downto 161) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 184) <= BG_MODEL_IN(459 downto 184);
							when "001000" =>
									BG_MODEL_OUT(183 downto 0) <= BG_MODEL_IN(183 downto 0);
									BG_MODEL_OUT(206 downto 184) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 207) <= BG_MODEL_IN(459 downto 207);
							when "001001" =>
									BG_MODEL_OUT(206 downto 0) <= BG_MODEL_IN(206 downto 0);
									BG_MODEL_OUT(229 downto 207) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 230) <= BG_MODEL_IN(459 downto 230);
							when "001010" =>
									BG_MODEL_OUT(229 downto 0) <= BG_MODEL_IN(229 downto 0);
									BG_MODEL_OUT(252 downto 230) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 253) <= BG_MODEL_IN(459 downto 253);
							when "001011" =>
									BG_MODEL_OUT(252 downto 0) <= BG_MODEL_IN(252 downto 0);
									BG_MODEL_OUT(275 downto 253) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 276) <= BG_MODEL_IN(459 downto 276);
							when "001100" =>
									BG_MODEL_OUT(275 downto 0) <= BG_MODEL_IN(275 downto 0);
									BG_MODEL_OUT(298 downto 276) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 299) <= BG_MODEL_IN(459 downto 299);
							when "001101" =>
									BG_MODEL_OUT(298 downto 0) <= BG_MODEL_IN(298 downto 0);
									BG_MODEL_OUT(321 downto 299) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 322) <= BG_MODEL_IN(459 downto 322);
							when "001110" =>
									BG_MODEL_OUT(321 downto 0) <= BG_MODEL_IN(321 downto 0);
									BG_MODEL_OUT(344 downto 322) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 345) <= BG_MODEL_IN(459 downto 345);
							when "001111" =>
									BG_MODEL_OUT(344 downto 0) <= BG_MODEL_IN(344 downto 0);
									BG_MODEL_OUT(367 downto 345) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 368) <= BG_MODEL_IN(459 downto 368);
							when "010000" =>
									BG_MODEL_OUT(367 downto 0) <= BG_MODEL_IN(367 downto 0);
									BG_MODEL_OUT(390 downto 368) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 391) <= BG_MODEL_IN(459 downto 391);
							when "010001" =>
									BG_MODEL_OUT(390 downto 0) <= BG_MODEL_IN(390 downto 0);
									BG_MODEL_OUT(413 downto 391) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 414) <= BG_MODEL_IN(459 downto 414);
							when "010010" =>
									BG_MODEL_OUT(413 downto 0) <= BG_MODEL_IN(413 downto 0);
									BG_MODEL_OUT(436 downto 414) <= PIXEL_LAB;
									BG_MODEL_OUT(459 downto 437) <= BG_MODEL_IN(459 downto 437);
							when "010011" =>
									BG_MODEL_OUT(436 downto 0) <= BG_MODEL_IN(436 downto 0);
									BG_MODEL_OUT(459 downto 437) <= PIXEL_LAB;									
							when others =>
									BG_MODEL_OUT <= ( others => '0');									
						end case;
								
					else
						BG_MODEL_OUT <= BG_MODEL_IN;
					end if;
				end if;					
			end if;	
		end if;	
	end process;


end Behavioral;

