-- Tomasz Kryjak
-- AGH Krakow

-- Binary sum tree of given size

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity sumTree_binary_19 is
	 Generic ( SAMPLES_N : natural := 19;
			   OUTPUT_W : natural := 6
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
end  sumTree_binary_19;

architecture Behavioral of sumTree_binary_19 is

	signal SUM_0_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_1_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_2_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_3_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_4_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_5_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_6_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_7_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_8_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_9_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal D_VALID_1 : STD_LOGIC := '0';
	signal L_VALID_1 : STD_LOGIC := '0';
	signal F_VALID_1 : STD_LOGIC := '0';
	signal SUM_0_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_1_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_2_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_3_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_4_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal D_VALID_2 : STD_LOGIC := '0';
	signal L_VALID_2 : STD_LOGIC := '0';
	signal F_VALID_2 : STD_LOGIC := '0';
	signal SUM_0_3 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal SUM_1_3 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal SUM_2_3 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal D_VALID_3 : STD_LOGIC := '0';
	signal L_VALID_3 : STD_LOGIC := '0';
	signal F_VALID_3 : STD_LOGIC := '0';
	signal SUM_0_4 : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
	signal SUM_1_4 : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
	signal D_VALID_4 : STD_LOGIC := '0';
	signal L_VALID_4 : STD_LOGIC := '0';
	signal F_VALID_4 : STD_LOGIC := '0';
	signal SUM_0_5 : STD_LOGIC_VECTOR (5 downto 0) := (others => '0');
	signal D_VALID_5 : STD_LOGIC := '0';
	signal L_VALID_5 : STD_LOGIC := '0';
	signal F_VALID_5 : STD_LOGIC := '0';

begin

-- SUM TREE -------------------------------------------------------------

	SUM_L_1 : process (CLK)
			begin
			if ( rising_edge(CLK) ) then
				if ( CE = '1' ) then
				 SUM_0_1 <= ('0' & INPUT(0)) + ('0' & INPUT(1));
				 SUM_1_1 <= ('0' & INPUT(2)) + ('0' & INPUT(3));
				 SUM_2_1 <= ('0' & INPUT(4)) + ('0' & INPUT(5));
				 SUM_3_1 <= ('0' & INPUT(6)) + ('0' & INPUT(7));
				 SUM_4_1 <= ('0' & INPUT(8)) + ('0' & INPUT(9));
				 SUM_5_1 <= ('0' & INPUT(10)) + ('0' & INPUT(11));
				 SUM_6_1 <= ('0' & INPUT(12)) + ('0' & INPUT(13));
				 SUM_7_1 <= ('0' & INPUT(14)) + ('0' & INPUT(15));
				 SUM_8_1 <= ('0' & INPUT(16)) + ('0' & INPUT(17));
				 SUM_9_1 <= ('0' & INPUT(18));
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
				 SUM_1_2 <= ('0' & SUM_2_1) + ('0' & SUM_3_1);
				 SUM_2_2 <= ('0' & SUM_4_1) + ('0' & SUM_5_1);
				 SUM_3_2 <= ('0' & SUM_6_1) + ('0' & SUM_7_1);
				 SUM_4_2 <= ('0' & SUM_8_1) + ('0' & SUM_9_1);
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
				 SUM_1_3 <= ('0' & SUM_2_2) + ('0' & SUM_3_2);
				 SUM_2_3 <= ('0' & SUM_4_2);
				 D_VALID_3 <= D_VALID_2;
				 L_VALID_3 <= L_VALID_2;
				 F_VALID_3 <= F_VALID_2;
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
				 L_VALID_4 <= L_VALID_3;
				 F_VALID_4 <= F_VALID_3;
				end if;
			end if;
	end process;

	SUM_L_5 : process (CLK)
			begin
			if ( rising_edge(CLK) ) then
				if ( CE = '1' ) then
				 SUM_0_5 <= ('0' & SUM_0_4) + ('0' & SUM_1_4);
				 D_VALID_5 <= D_VALID_4;
				 L_VALID_5 <= L_VALID_4;
				 F_VALID_5 <= F_VALID_4;
				end if;
			end if;
	end process;

	SUM <= SUM_0_5;
	D_VALID_OUT <= D_VALID_5;
	L_VALID_OUT <= L_VALID_5;
	F_VALID_OUT <= F_VALID_5;

end Behavioral;
