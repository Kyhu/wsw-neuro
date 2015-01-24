-- Tomasz Kryjak
-- AGH Krakow

-- Unsigned sum tree of given size

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity sumTree_us_5 is
	 Generic ( DATA_W : natural := 8;
			  SAMPLES_N : in natural := 5;
				  OUTPUT_W : natural := 11
    );
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           D_VALID_IN : in  STD_LOGIC :='0';
           L_VALID_IN : in  STD_LOGIC :='0';
           F_VALID_IN : in  STD_LOGIC :='0';
           CONTEXT : in  STD_LOGIC_VECTOR (DATA_W*SAMPLES_N - 1 downto 0);
           SUM     : out  STD_LOGIC_VECTOR (OUTPUT_W-1 downto 0);
           D_VALID_OUT : out  STD_LOGIC;
           L_VALID_OUT : out  STD_LOGIC;
           F_VALID_OUT : out  STD_LOGIC
			  );
end  sumTree_us_5;

architecture Behavioral of sumTree_us_5 is

	signal SUM_0_1 : STD_LOGIC_VECTOR (DATA_W - 1 + 1 downto 0) := (others => '0');
	signal SUM_1_1 : STD_LOGIC_VECTOR (DATA_W - 1 + 1 downto 0) := (others => '0');
	signal SUM_2_1 : STD_LOGIC_VECTOR (DATA_W - 1 + 1 downto 0) := (others => '0');
	signal D_VALID_1 : STD_LOGIC := '0';
	signal L_VALID_1 : STD_LOGIC := '0';
	signal F_VALID_1 : STD_LOGIC := '0';
	signal SUM_0_2 : STD_LOGIC_VECTOR (DATA_W - 1 + 2 downto 0) := (others => '0');
	signal SUM_1_2 : STD_LOGIC_VECTOR (DATA_W - 1 + 2 downto 0) := (others => '0');
	signal D_VALID_2 : STD_LOGIC := '0';
	signal L_VALID_2 : STD_LOGIC := '0';
	signal F_VALID_2 : STD_LOGIC := '0';
	signal SUM_0_3 : STD_LOGIC_VECTOR (DATA_W - 1 + 3 downto 0) := (others => '0');
	signal D_VALID_3 : STD_LOGIC := '0';
	signal L_VALID_3 : STD_LOGIC := '0';
	signal F_VALID_3 : STD_LOGIC := '0';

begin

-- SUM TREE -------------------------------------------------------------

	SUM_L_1 : process (CLK)
			begin
			if ( rising_edge(CLK) ) then
				if ( CE = '1' ) then
				 SUM_0_1 <= ('0' & CONTEXT(39 downto 32)) + ('0' & CONTEXT(31 downto 24));
				 SUM_1_1 <= ('0' & CONTEXT(23 downto 16)) + ('0' & CONTEXT(15 downto 8));
				 SUM_2_1 <= ('0' & CONTEXT(7 downto 0));
				 D_VALID_1 <= D_VALID_IN;
				 L_VALID_1 <= L_VALID_IN;
				 F_VALID_1 <= F_VALID_IN;
				end if;
			end if;
	end process;

	SUM_L_2 : process (CLK)
			begin
			if ( rising_edge(CLK) ) then
				if ( CE = '1' ) then
				 SUM_0_2 <= ('0' & SUM_0_1) + ('0' & SUM_1_1);
				 SUM_1_2 <= ('0' & SUM_2_1);
				 D_VALID_2 <= D_VALID_1;
				 L_VALID_2 <= L_VALID_IN;
				 F_VALID_2 <= F_VALID_IN;
				end if;
			end if;
	end process;

	SUM_L_3 : process (CLK)
			begin
			if ( rising_edge(CLK) ) then
				if ( CE = '1' ) then
				 SUM_0_3 <= ('0' & SUM_0_2) + ('0' & SUM_1_2);
				 D_VALID_3 <= D_VALID_2;
				 L_VALID_3 <= L_VALID_IN;
				 F_VALID_3 <= F_VALID_IN;
				end if;
			end if;
	end process;

	SUM <= SUM_0_3;
	D_VALID_OUT <= D_VALID_3;
	L_VALID_OUT <= L_VALID_3;
	F_VALID_OUT <= F_VALID_3;

end Behavioral;
