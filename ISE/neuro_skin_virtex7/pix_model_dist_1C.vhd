----------------------------------------------------------------------------------
-- Company:   AGH	
-- Engineer:  Tomasz Kryjak
-- 
-- Create Date:    08:32:14 03/04/2013 
-- Design Name: 
-- Module Name:    pix_model_dist_1C - Behavioral 
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
use IEEE.std_logic_unsigned.all; -- !!! UNSIGNED

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pix_model_dist_1C is
		 Generic (PIXEL_W : integer :=8;					
					 R_W : integer :=16;
					 DIST_W : integer := 8
		 );
		 Port ( CLK 	: in  STD_LOGIC;
				  RST 	: in  STD_LOGIC;
				  CE  	: in  STD_LOGIC;
				  
				  D_VALID : in  STD_LOGIC := '0';
				  L_VALID : in  STD_LOGIC := '0';
				  F_VALID : in  STD_LOGIC := '0';
				 
				  PIXEL  : in  STD_LOGIC_VECTOR (PIXEL_W-1 downto 0);				  
				  MODEL  : in  STD_LOGIC_VECTOR (PIXEL_W-1 downto 0);
				  
				  PARAM_R    : in  STD_LOGIC_VECTOR  (R_W - 1 downto 0);			 
				  
				  DIST_OUT   : out STD_LOGIC_VECTOR (DIST_W-1 downto 0); 
				  RESULT_OUT : out  STD_LOGIC;
				  D_VALID_OUT : out  STD_LOGIC;
				  L_VALID_OUT : out  STD_LOGIC;
				  F_VALID_OUT : out  STD_LOGIC
				  
				  );
end pix_model_dist_1C;

architecture Behavioral of pix_model_dist_1C is

	signal dC   :  STD_LOGIC_VECTOR (PIXEL_W-1 downto 0);
	
	signal D_VALID_1 : STD_LOGIC := '0';
	signal L_VALID_1 : STD_LOGIC := '0';
	signal F_VALID_1 : STD_LOGIC := '0';

begin

	--------------------------------------------------------------------------------
	-- 1. Obliczanie odleglosci 
	-- LATENCY = 1
	--------------------------------------------------------------------------------
	process (CLK)		
	begin
		if ( rising_edge(CLK) ) then
			if ( CE = '1' ) then
			
				if ( PIXEL > MODEL ) then
					dC <= PIXEL - MODEL;
				else
					dC <= MODEL - PIXEL;
				end if;	
			
				 D_VALID_1 <= D_VALID;
				 L_VALID_1 <= L_VALID;
				 F_VALID_1 <= F_VALID;

			end if;	
		end if;
	end process;

	--------------------------------------------------------------------------------
	-- 2. Ostateczne wyliczanie odleglosci ...
	-- LATENCY = 1
	--------------------------------------------------------------------------------	
	process (CLK)		
	begin
		if ( rising_edge(CLK) ) then
			if ( CE = '1' ) then
							
				if ( dC < PARAM_R ) then
						RESULT_OUT <= '1';
				else
						RESULT_OUT <= '0';
				end if;
				
				DIST_OUT <= dC;	

				D_VALID_OUT <= D_VALID_1;
				L_VALID_OUT <= L_VALID_1;
				F_VALID_OUT <= F_VALID_1;				

			end if;	
		end if;
	end process;

end Behavioral;

