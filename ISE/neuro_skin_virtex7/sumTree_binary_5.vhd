-- Tomasz Kryjak
-- AGH Krakow

-- Binary sum tree of given size

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity sumTree_binary_5 is
	 Generic ( SAMPLES_N : natural := 5;
			   OUTPUT_W : natural := 4
    );
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           D_VALID : in  STD_LOGIC := '0';
           L_VALID : in  STD_LOGIC  := '0';
           F_VALID : in  STD_LOGIC  := '0';
           INPUT : in  STD_LOGIC_VECTOR (SAMPLES_N -1 downto 0);
           SUM     : out  STD_LOGIC_VECTOR (OUTPUT_W-1 downto 0);
           D_VALID_OUT : out  STD_LOGIC;
           L_VALID_OUT : out  STD_LOGIC;
           F_VALID_OUT : out  STD_LOGIC
			  );
end  sumTree_binary_5;

architecture Behavioral of sumTree_binary_5 is

	signal SUM_0_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_1_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_2_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal D_VALID_1 : STD_LOGIC := '0';
	signal L_VALID_1 : STD_LOGIC := '0';
	signal F_VALID_1 : STD_LOGIC := '0';
	signal SUM_0_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_1_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal D_VALID_2 : STD_LOGIC := '0';
	signal L_VALID_2 : STD_LOGIC := '0';
	signal F_VALID_2 : STD_LOGIC := '0';
	signal SUM_0_3 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal D_VALID_3 : STD_LOGIC := '0';
	signal L_VALID_3 : STD_LOGIC := '0';
	signal F_VALID_3 : STD_LOGIC := '0';

begin

-- SUM TREE -------------------------------------------------------------

	SUM_L_1 : process (CLK)
			begin
			if ( rising_edge(CLK) ) then
				if ( CE = '1' ) then
				 SUM_0_1 <= ('0' & INPUT(0)) + ('0' & INPUT(1));
				 SUM_1_1 <= ('0' & INPUT(2)) + ('0' & INPUT(3));
				 SUM_2_1 <= ('0' & INPUT(4));
				 D_VALID_1 <= D_VALID;
				 L_VALID_1 <= L_VALID;
				 F_VALID_1 <= F_VALID;
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
				 L_VALID_2 <= L_VALID_1;
				 F_VALID_2 <= F_VALID_1;
				end if;
			end if;
	end process;

	SUM_L_3 : process (CLK)
			begin
			if ( rising_edge(CLK) ) then
				if ( CE = '1' ) then
				 SUM_0_3 <= ('0' & SUM_0_2) + ('0' & SUM_1_2);
				 D_VALID_3 <= D_VALID_2;
				 L_VALID_3 <= L_VALID_2;
				 F_VALID_3 <= F_VALID_2;
				end if;
			end if;
	end process;

	SUM <= SUM_0_3;
	D_VALID_OUT <= D_VALID_3;
	L_VALID_OUT <= L_VALID_3;
	F_VALID_OUT <= F_VALID_3;

end Behavioral;
