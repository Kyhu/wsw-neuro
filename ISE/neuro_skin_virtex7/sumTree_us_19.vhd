-- Tomasz Kryjak
-- AGH Krakow

-- Unsigned sum tree of given size

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity sumTree_us_19 is
	 Generic ( DATA_W : natural := 8;
			  SAMPLES_N : in natural := 19;
				  OUTPUT_W : natural := 13
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
end  sumTree_us_19;

architecture Behavioral of sumTree_us_19 is

	signal SUM_0_1 : STD_LOGIC_VECTOR (DATA_W - 1 + 1 downto 0) := (others => '0');
	signal SUM_1_1 : STD_LOGIC_VECTOR (DATA_W - 1 + 1 downto 0) := (others => '0');
	signal SUM_2_1 : STD_LOGIC_VECTOR (DATA_W - 1 + 1 downto 0) := (others => '0');
	signal SUM_3_1 : STD_LOGIC_VECTOR (DATA_W - 1 + 1 downto 0) := (others => '0');
	signal SUM_4_1 : STD_LOGIC_VECTOR (DATA_W - 1 + 1 downto 0) := (others => '0');
	signal SUM_5_1 : STD_LOGIC_VECTOR (DATA_W - 1 + 1 downto 0) := (others => '0');
	signal SUM_6_1 : STD_LOGIC_VECTOR (DATA_W - 1 + 1 downto 0) := (others => '0');
	signal SUM_7_1 : STD_LOGIC_VECTOR (DATA_W - 1 + 1 downto 0) := (others => '0');
	signal SUM_8_1 : STD_LOGIC_VECTOR (DATA_W - 1 + 1 downto 0) := (others => '0');
	signal SUM_9_1 : STD_LOGIC_VECTOR (DATA_W - 1 + 1 downto 0) := (others => '0');
	signal D_VALID_1 : STD_LOGIC := '0';
	signal L_VALID_1 : STD_LOGIC := '0';
	signal F_VALID_1 : STD_LOGIC := '0';
	signal SUM_0_2 : STD_LOGIC_VECTOR (DATA_W - 1 + 2 downto 0) := (others => '0');
	signal SUM_1_2 : STD_LOGIC_VECTOR (DATA_W - 1 + 2 downto 0) := (others => '0');
	signal SUM_2_2 : STD_LOGIC_VECTOR (DATA_W - 1 + 2 downto 0) := (others => '0');
	signal SUM_3_2 : STD_LOGIC_VECTOR (DATA_W - 1 + 2 downto 0) := (others => '0');
	signal SUM_4_2 : STD_LOGIC_VECTOR (DATA_W - 1 + 2 downto 0) := (others => '0');
	signal D_VALID_2 : STD_LOGIC := '0';
	signal L_VALID_2 : STD_LOGIC := '0';
	signal F_VALID_2 : STD_LOGIC := '0';
	signal SUM_0_3 : STD_LOGIC_VECTOR (DATA_W - 1 + 3 downto 0) := (others => '0');
	signal SUM_1_3 : STD_LOGIC_VECTOR (DATA_W - 1 + 3 downto 0) := (others => '0');
	signal SUM_2_3 : STD_LOGIC_VECTOR (DATA_W - 1 + 3 downto 0) := (others => '0');
	signal D_VALID_3 : STD_LOGIC := '0';
	signal L_VALID_3 : STD_LOGIC := '0';
	signal F_VALID_3 : STD_LOGIC := '0';
	signal SUM_0_4 : STD_LOGIC_VECTOR (DATA_W - 1 + 4 downto 0) := (others => '0');
	signal SUM_1_4 : STD_LOGIC_VECTOR (DATA_W - 1 + 4 downto 0) := (others => '0');
	signal D_VALID_4 : STD_LOGIC := '0';
	signal L_VALID_4 : STD_LOGIC := '0';
	signal F_VALID_4 : STD_LOGIC := '0';
	signal SUM_0_5 : STD_LOGIC_VECTOR (DATA_W - 1 + 5 downto 0) := (others => '0');
	signal D_VALID_5 : STD_LOGIC := '0';
	signal L_VALID_5 : STD_LOGIC := '0';
	signal F_VALID_5 : STD_LOGIC := '0';

begin

-- SUM TREE -------------------------------------------------------------

	SUM_L_1 : process (CLK)
			begin
			if ( rising_edge(CLK) ) then
				if ( CE = '1' ) then
				 SUM_0_1 <= ('0' & CONTEXT(151 downto 144)) + ('0' & CONTEXT(143 downto 136));
				 SUM_1_1 <= ('0' & CONTEXT(135 downto 128)) + ('0' & CONTEXT(127 downto 120));
				 SUM_2_1 <= ('0' & CONTEXT(119 downto 112)) + ('0' & CONTEXT(111 downto 104));
				 SUM_3_1 <= ('0' & CONTEXT(103 downto 96)) + ('0' & CONTEXT(95 downto 88));
				 SUM_4_1 <= ('0' & CONTEXT(87 downto 80)) + ('0' & CONTEXT(79 downto 72));
				 SUM_5_1 <= ('0' & CONTEXT(71 downto 64)) + ('0' & CONTEXT(63 downto 56));
				 SUM_6_1 <= ('0' & CONTEXT(55 downto 48)) + ('0' & CONTEXT(47 downto 40));
				 SUM_7_1 <= ('0' & CONTEXT(39 downto 32)) + ('0' & CONTEXT(31 downto 24));
				 SUM_8_1 <= ('0' & CONTEXT(23 downto 16)) + ('0' & CONTEXT(15 downto 8));
				 SUM_9_1 <= ('0' & CONTEXT(7 downto 0));
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
				 SUM_1_2 <= ('0' & SUM_2_1) + ('0' & SUM_3_1);
				 SUM_2_2 <= ('0' & SUM_4_1) + ('0' & SUM_5_1);
				 SUM_3_2 <= ('0' & SUM_6_1) + ('0' & SUM_7_1);
				 SUM_4_2 <= ('0' & SUM_8_1) + ('0' & SUM_9_1);
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
				 SUM_1_3 <= ('0' & SUM_2_2) + ('0' & SUM_3_2);
				 SUM_2_3 <= ('0' & SUM_4_2);
				 D_VALID_3 <= D_VALID_2;
				 L_VALID_3 <= L_VALID_IN;
				 F_VALID_3 <= F_VALID_IN;
				end if;
			end if;
	end process;

	SUM_L_4 : process (CLK)
			begin
			if ( rising_edge(CLK) ) then
				if ( CE = '1' ) then
				 SUM_0_4 <= ('0' & SUM_0_3) + ('0' & SUM_1_3);
				 SUM_1_4 <= ('0' & SUM_2_3);
				 D_VALID_4 <= D_VALID_3;
				 L_VALID_4 <= L_VALID_IN;
				 F_VALID_4 <= F_VALID_IN;
				end if;
			end if;
	end process;

	SUM_L_5 : process (CLK)
			begin
			if ( rising_edge(CLK) ) then
				if ( CE = '1' ) then
				 SUM_0_5 <= ('0' & SUM_0_4) + ('0' & SUM_1_4);
				 D_VALID_5 <= D_VALID_4;
				 L_VALID_5 <= L_VALID_IN;
				 F_VALID_5 <= F_VALID_IN;
				end if;
			end if;
	end process;

	SUM <= SUM_0_5;
	D_VALID_OUT <= D_VALID_5;
	L_VALID_OUT <= L_VALID_5;
	F_VALID_OUT <= F_VALID_5;

end Behavioral;
