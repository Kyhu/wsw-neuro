----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:52:54 12/11/2011 
-- Design Name: 
-- Module Name:    delayLineBramWP - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;

entity delayLineBramWP is
	generic (
			WIDTH : in natural := 23; -- max 36
			BRAM_SIZE_W : in natural := 10
			);			
    Port ( CLK : in  STD_LOGIC;
			  RST: in  STD_LOGIC;
			  CE : in  STD_LOGIC;
			  
			  ENA : in  STD_LOGIC; 
	 
           DIN : in  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           DOUT : out  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
			  
			  H_SIZE : in  STD_LOGIC_VECTOR  (BRAM_SIZE_W-1 downto 0)
			  
			  );
end delayLineBramWP;

architecture Behavioral of delayLineBramWP is

	-- ---------------------------------------------------------------------------
	-- COMPONENTS
	-- ---------------------------------------------------------------------------
	COMPONENT delayLineBRAM
	  PORT (
		 clka : IN STD_LOGIC;
		 ena : IN STD_LOGIC;
		 wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		 addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 dina : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
		 douta : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
	  );
	END COMPONENT;
	
	-- ---------------------------------------------------------------------------
	-- SIGNALS
	-- ---------------------------------------------------------------------------
	signal position : STD_LOGIC_VECTOR (BRAM_SIZE_W-1  downto 0) := (others => '0');	
	signal temp : STD_LOGIC_VECTOR(0 downto 0) := (others => '0');	
	
	signal DIN_L :  STD_LOGIC_VECTOR (35  downto 0) := (others => '0');	
	signal DOUT_L :  STD_LOGIC_VECTOR (35  downto 0) := (others => '0');	
	
	

begin

	temp(0) <= '1';
	

	process (CLK)	is	
	
	begin
		if (rising_edge(CLK) ) then
			if ( CE = '1' ) then
				if ( RST = '1') then
					position <= (others => '0');
				else
					if ( ena = '1' ) then
						position <= position + 1;
						if ( position = H_SIZE-2) then
							position <= (others => '0');
						end if;
					end if;	
				end if;					
			end if;	
		end if;	
	end process;
	
	DIN_L(WIDTH-1 downto 0) <= DIN;
	D : delayLineBRAM port map (  clka => CLK, wea => temp, ena=> ena, addra=>position, dina =>DIN_L, douta=>DOUT_L );
	
	DOUT <= DOUT_L(WIDTH-1 downto 0);

end Behavioral;

