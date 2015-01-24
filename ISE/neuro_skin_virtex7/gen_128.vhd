----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:48:16 12/04/2012 
-- Design Name: 
-- Module Name:    gen_128_controller - Behavioral 
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
use IEEE.NUMERIC_STD.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity gen_128 is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  CE : in  STD_LOGIC;
           INIT_DONE : out  STD_LOGIC :='0';
           RNG : out  STD_LOGIC_VECTOR(127 downto 0) := ( others => '0')       -- init bits
           );
end gen_128;

architecture Behavioral of gen_128 is


	COMPONENT initRand_RAM
	  PORT (
		 clka : IN STD_LOGIC;
		 wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		 addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 dina : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		 douta : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
	  );
	END COMPONENT;
	
	COMPONENT rng_n3900_r128_t5_k32_scc71 is
	  port(
		 clk:in std_logic;
		 ce:in std_logic;
		 mode:in std_logic;
		 s_in:in std_logic;
		 s_out:out std_logic;
		 rng:out std_logic_vector(127 downto 0)
	  );
	END COMPONENT rng_n3900_r128_t5_k32_scc71;


	signal initState : STD_LOGIC := '0';
	signal counter : STD_LOGIC_VECTOR(11 downto 0) := ( others => '0');
	signal douta : STD_LOGIC_VECTOR(0 DOWNTO 0) := ( others => '0');
	signal dina : STD_LOGIC_VECTOR(0 DOWNTO 0) := ( others => '0');
	signal wea :  STD_LOGIC_VECTOR(0 DOWNTO 0) := ( others => '0');
	
	signal INIT_B : STD_LOGIC := '0';
	signal GEN_MODE : STD_LOGIC := '0';
	
	signal s_out : STD_LOGIC := '0';
	signal rng_128 :  STD_LOGIC_VECTOR(127 DOWNTO 0) := ( others => '0');
	signal RSTprev : STD_LOGIC := '0';
	
begin

	process (CLK)
	
	begin
	
		if ( rising_edge(CLK) ) then
		
			if ( RST = '1' ) then
				if ( initState = '0' and RST /= RSTprev ) then
					counter <= (others => '0');
					initState <= '1';
				else
					GEN_MODE <='1';
					if ( counter < "111100111011" ) then -- 3900
						counter <= counter +1;
						INIT_DONE <='0';
					else
						INIT_DONE <='1';
					end if;
				end if;
			else
				GEN_MODE <='0';
			end if;
			
			RSTprev <= RST;
		
		end if;
	
	end process;
	
	
	initRand_RAM_0 : initRand_RAM
  PORT MAP (
    clka => CLK,
    wea => wea,
    addra => counter,
    dina => dina,
    douta => douta
  );
  
  INIT_B <= douta(0);
  
  
	rng_n3900_r128_t5_k32_scc71_0 : rng_n3900_r128_t5_k32_scc71
	port map (	
		clk => clk,
		 ce => ce,
		 mode =>GEN_MODE,
		 s_in => INIT_B,
		 s_out => s_out,
		 rng => RNG
	);
	-- rozwiazanie tymczasowe (do testow ..)
	--RNG <= rng_128(5 downto 0);



end Behavioral;

