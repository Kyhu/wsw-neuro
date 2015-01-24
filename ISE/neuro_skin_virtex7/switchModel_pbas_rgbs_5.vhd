-- Tomasz Kryjak
-- AGH Krakow

			  
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity switchModel_pbas_rgbs_5 is
	generic (
			PIXEL_W : in natural := 8;
			DIST_W  : in natural := 8;
			POS_W    : in natural := 4;
			RT_W    : in natural := 16;
			BG_MODEL_SC_W    : in natural := 112;
			BG_MODEL_ALL_W : in natural := 136
			);
    Port ( CLK : in STD_LOGIC;
			  RST : in STD_LOGIC;
			  CE : in STD_LOGIC;
			  SWITCH : in STD_LOGIC;
			  IS_CENTRAL : in STD_LOGIC;
			  TOSWITCH : in STD_LOGIC_VECTOR(7 downto 0);
           BG_MODEL_IN : in  STD_LOGIC_VECTOR (BG_MODEL_ALL_W -1 downto 0);

			  BG_MODEL_OUT : out  STD_LOGIC_VECTOR (BG_MODEL_ALL_W -1 downto 0)
			  );
end switchModel_pbas_rgbs_5;
architecture Behavioral of switchModel_pbas_rgbs_5 is
begin

	 process (CLK) is
	 begin
		 if (rising_edge(CLK) ) then
			 if ( CE = '1' ) then
				 if ( RST = '1') then
					 BG_MODEL_OUT <= (others => '0');
				 else
					 if ( SWITCH = '1' ) then

						 BG_MODEL_OUT(BG_MODEL_ALL_W -1  downto BG_MODEL_SC_W-2*RT_W)<=BG_MODEL_IN(BG_MODEL_ALL_W -1  downto BG_MODEL_SC_W-2*RT_W); 
-- UPDATE THE MIN VALUE 
						 if ( IS_CENTRAL = '1') then
							 case  BG_MODEL_IN(BG_MODEL_SC_W + PIXEL_W + DIST_W + POS_W -1  downto BG_MODEL_SC_W + PIXEL_W + DIST_W) is -- pos 
								 when "0000" => 
									 BG_MODEL_OUT(15 downto 8) <= BG_MODEL_IN(BG_MODEL_SC_W + PIXEL_W + DIST_W -1  downto BG_MODEL_SC_W + PIXEL_W); -- minimum distance value
									 BG_MODEL_OUT(31 downto 24) <= BG_MODEL_IN(31 downto 24);
									 BG_MODEL_OUT(47 downto 40) <= BG_MODEL_IN(47 downto 40);
									 BG_MODEL_OUT(63 downto 56) <= BG_MODEL_IN(63 downto 56);
									 BG_MODEL_OUT(79 downto 72) <= BG_MODEL_IN(79 downto 72);
								 when "0001" => 
									 BG_MODEL_OUT(15 downto 8) <= BG_MODEL_IN(15 downto 8);
									 BG_MODEL_OUT(31 downto 24) <= BG_MODEL_IN(BG_MODEL_SC_W + PIXEL_W + DIST_W -1  downto BG_MODEL_SC_W + PIXEL_W); -- minimum distance value
									 BG_MODEL_OUT(47 downto 40) <= BG_MODEL_IN(47 downto 40);
									 BG_MODEL_OUT(63 downto 56) <= BG_MODEL_IN(63 downto 56);
									 BG_MODEL_OUT(79 downto 72) <= BG_MODEL_IN(79 downto 72);
								 when "0010" => 
									 BG_MODEL_OUT(15 downto 8) <= BG_MODEL_IN(15 downto 8);
									 BG_MODEL_OUT(31 downto 24) <= BG_MODEL_IN(31 downto 24);
									 BG_MODEL_OUT(47 downto 40) <= BG_MODEL_IN(BG_MODEL_SC_W + PIXEL_W + DIST_W -1  downto BG_MODEL_SC_W + PIXEL_W); -- minimum distance value
									 BG_MODEL_OUT(63 downto 56) <= BG_MODEL_IN(63 downto 56);
									 BG_MODEL_OUT(79 downto 72) <= BG_MODEL_IN(79 downto 72);
								 when "0011" => 
									 BG_MODEL_OUT(15 downto 8) <= BG_MODEL_IN(15 downto 8);
									 BG_MODEL_OUT(31 downto 24) <= BG_MODEL_IN(31 downto 24);
									 BG_MODEL_OUT(47 downto 40) <= BG_MODEL_IN(47 downto 40);
									 BG_MODEL_OUT(63 downto 56) <= BG_MODEL_IN(BG_MODEL_SC_W + PIXEL_W + DIST_W -1  downto BG_MODEL_SC_W + PIXEL_W); -- minimum distance value
									 BG_MODEL_OUT(79 downto 72) <= BG_MODEL_IN(79 downto 72);
								 when "0100" => 
									 BG_MODEL_OUT(15 downto 8) <= BG_MODEL_IN(15 downto 8);
									 BG_MODEL_OUT(31 downto 24) <= BG_MODEL_IN(31 downto 24);
									 BG_MODEL_OUT(47 downto 40) <= BG_MODEL_IN(47 downto 40);
									 BG_MODEL_OUT(63 downto 56) <= BG_MODEL_IN(63 downto 56);
									 BG_MODEL_OUT(79 downto 72) <= BG_MODEL_IN(BG_MODEL_SC_W + PIXEL_W + DIST_W -1  downto BG_MODEL_SC_W + PIXEL_W); -- minimum distance value
								 when others =>
									 BG_MODEL_OUT <= ( others => '0');
							 end case;
						 end if; 


-- UPDATE THE MODEL 
						 case  TOSWITCH  is 
							 when "00000000" => 
								 BG_MODEL_OUT(7 downto 0) <= BG_MODEL_IN(BG_MODEL_SC_W + PIXEL_W -1  downto BG_MODEL_SC_W); -- PIXEL;
								 BG_MODEL_OUT(23 downto 16) <= BG_MODEL_IN(23 downto 16);
								 BG_MODEL_OUT(39 downto 32) <= BG_MODEL_IN(39 downto 32);
								 BG_MODEL_OUT(55 downto 48) <= BG_MODEL_IN(55 downto 48);
								 BG_MODEL_OUT(71 downto 64) <= BG_MODEL_IN(71 downto 64);
							 when "00000001" => 
								 BG_MODEL_OUT(7 downto 0) <= BG_MODEL_IN(7 downto 0);
								 BG_MODEL_OUT(23 downto 16) <= BG_MODEL_IN(BG_MODEL_SC_W + PIXEL_W -1  downto BG_MODEL_SC_W); -- PIXEL;
								 BG_MODEL_OUT(39 downto 32) <= BG_MODEL_IN(39 downto 32);
								 BG_MODEL_OUT(55 downto 48) <= BG_MODEL_IN(55 downto 48);
								 BG_MODEL_OUT(71 downto 64) <= BG_MODEL_IN(71 downto 64);
							 when "00000010" => 
								 BG_MODEL_OUT(7 downto 0) <= BG_MODEL_IN(7 downto 0);
								 BG_MODEL_OUT(23 downto 16) <= BG_MODEL_IN(23 downto 16);
								 BG_MODEL_OUT(39 downto 32) <= BG_MODEL_IN(BG_MODEL_SC_W + PIXEL_W -1  downto BG_MODEL_SC_W); -- PIXEL;
								 BG_MODEL_OUT(55 downto 48) <= BG_MODEL_IN(55 downto 48);
								 BG_MODEL_OUT(71 downto 64) <= BG_MODEL_IN(71 downto 64);
							 when "00000011" => 
								 BG_MODEL_OUT(7 downto 0) <= BG_MODEL_IN(7 downto 0);
								 BG_MODEL_OUT(23 downto 16) <= BG_MODEL_IN(23 downto 16);
								 BG_MODEL_OUT(39 downto 32) <= BG_MODEL_IN(39 downto 32);
								 BG_MODEL_OUT(55 downto 48) <= BG_MODEL_IN(BG_MODEL_SC_W + PIXEL_W -1  downto BG_MODEL_SC_W); -- PIXEL;
								 BG_MODEL_OUT(71 downto 64) <= BG_MODEL_IN(71 downto 64);
							 when "00000100" => 
								 BG_MODEL_OUT(7 downto 0) <= BG_MODEL_IN(7 downto 0);
								 BG_MODEL_OUT(23 downto 16) <= BG_MODEL_IN(23 downto 16);
								 BG_MODEL_OUT(39 downto 32) <= BG_MODEL_IN(39 downto 32);
								 BG_MODEL_OUT(55 downto 48) <= BG_MODEL_IN(55 downto 48);
								 BG_MODEL_OUT(71 downto 64) <= BG_MODEL_IN(BG_MODEL_SC_W + PIXEL_W -1  downto BG_MODEL_SC_W); -- PIXEL;
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
