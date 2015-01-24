-- Tomasz Kryjak
-- AGH Krakow

-- Binary sum tree of given size

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity sumTree_binary_81 is
	 Generic ( SAMPLES_N : natural := 81;
			   OUTPUT_W : natural := 8
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
end  sumTree_binary_81;

architecture Behavioral of sumTree_binary_81 is

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
	signal SUM_10_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_11_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_12_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_13_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_14_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_15_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_16_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_17_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_18_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_19_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_20_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_21_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_22_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_23_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_24_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_25_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_26_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_27_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_28_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_29_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_30_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_31_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_32_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_33_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_34_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_35_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_36_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_37_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_38_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_39_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal SUM_40_1 : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal D_VALID_1 : STD_LOGIC := '0';
	signal L_VALID_1 : STD_LOGIC := '0';
	signal F_VALID_1 : STD_LOGIC := '0';
	signal SUM_0_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_1_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_2_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_3_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_4_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_5_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_6_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_7_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_8_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_9_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_10_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_11_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_12_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_13_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_14_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_15_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_16_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_17_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_18_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_19_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal SUM_20_2 : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
	signal D_VALID_2 : STD_LOGIC := '0';
	signal L_VALID_2 : STD_LOGIC := '0';
	signal F_VALID_2 : STD_LOGIC := '0';
	signal SUM_0_3 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal SUM_1_3 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal SUM_2_3 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal SUM_3_3 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal SUM_4_3 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal SUM_5_3 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal SUM_6_3 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal SUM_7_3 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal SUM_8_3 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal SUM_9_3 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal SUM_10_3 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal D_VALID_3 : STD_LOGIC := '0';
	signal L_VALID_3 : STD_LOGIC := '0';
	signal F_VALID_3 : STD_LOGIC := '0';
	signal SUM_0_4 : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
	signal SUM_1_4 : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
	signal SUM_2_4 : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
	signal SUM_3_4 : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
	signal SUM_4_4 : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
	signal SUM_5_4 : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
	signal D_VALID_4 : STD_LOGIC := '0';
	signal L_VALID_4 : STD_LOGIC := '0';
	signal F_VALID_4 : STD_LOGIC := '0';
	signal SUM_0_5 : STD_LOGIC_VECTOR (5 downto 0) := (others => '0');
	signal SUM_1_5 : STD_LOGIC_VECTOR (5 downto 0) := (others => '0');
	signal SUM_2_5 : STD_LOGIC_VECTOR (5 downto 0) := (others => '0');
	signal D_VALID_5 : STD_LOGIC := '0';
	signal L_VALID_5 : STD_LOGIC := '0';
	signal F_VALID_5 : STD_LOGIC := '0';
	signal SUM_0_6 : STD_LOGIC_VECTOR (6 downto 0) := (others => '0');
	signal SUM_1_6 : STD_LOGIC_VECTOR (6 downto 0) := (others => '0');
	signal D_VALID_6 : STD_LOGIC := '0';
	signal L_VALID_6 : STD_LOGIC := '0';
	signal F_VALID_6 : STD_LOGIC := '0';
	signal SUM_0_7 : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
	signal D_VALID_7 : STD_LOGIC := '0';
	signal L_VALID_7 : STD_LOGIC := '0';
	signal F_VALID_7 : STD_LOGIC := '0';

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
				 SUM_9_1 <= ('0' & INPUT(18)) + ('0' & INPUT(19));
				 SUM_10_1 <= ('0' & INPUT(20)) + ('0' & INPUT(21));
				 SUM_11_1 <= ('0' & INPUT(22)) + ('0' & INPUT(23));
				 SUM_12_1 <= ('0' & INPUT(24)) + ('0' & INPUT(25));
				 SUM_13_1 <= ('0' & INPUT(26)) + ('0' & INPUT(27));
				 SUM_14_1 <= ('0' & INPUT(28)) + ('0' & INPUT(29));
				 SUM_15_1 <= ('0' & INPUT(30)) + ('0' & INPUT(31));
				 SUM_16_1 <= ('0' & INPUT(32)) + ('0' & INPUT(33));
				 SUM_17_1 <= ('0' & INPUT(34)) + ('0' & INPUT(35));
				 SUM_18_1 <= ('0' & INPUT(36)) + ('0' & INPUT(37));
				 SUM_19_1 <= ('0' & INPUT(38)) + ('0' & INPUT(39));
				 SUM_20_1 <= ('0' & INPUT(40)) + ('0' & INPUT(41));
				 SUM_21_1 <= ('0' & INPUT(42)) + ('0' & INPUT(43));
				 SUM_22_1 <= ('0' & INPUT(44)) + ('0' & INPUT(45));
				 SUM_23_1 <= ('0' & INPUT(46)) + ('0' & INPUT(47));
				 SUM_24_1 <= ('0' & INPUT(48)) + ('0' & INPUT(49));
				 SUM_25_1 <= ('0' & INPUT(50)) + ('0' & INPUT(51));
				 SUM_26_1 <= ('0' & INPUT(52)) + ('0' & INPUT(53));
				 SUM_27_1 <= ('0' & INPUT(54)) + ('0' & INPUT(55));
				 SUM_28_1 <= ('0' & INPUT(56)) + ('0' & INPUT(57));
				 SUM_29_1 <= ('0' & INPUT(58)) + ('0' & INPUT(59));
				 SUM_30_1 <= ('0' & INPUT(60)) + ('0' & INPUT(61));
				 SUM_31_1 <= ('0' & INPUT(62)) + ('0' & INPUT(63));
				 SUM_32_1 <= ('0' & INPUT(64)) + ('0' & INPUT(65));
				 SUM_33_1 <= ('0' & INPUT(66)) + ('0' & INPUT(67));
				 SUM_34_1 <= ('0' & INPUT(68)) + ('0' & INPUT(69));
				 SUM_35_1 <= ('0' & INPUT(70)) + ('0' & INPUT(71));
				 SUM_36_1 <= ('0' & INPUT(72)) + ('0' & INPUT(73));
				 SUM_37_1 <= ('0' & INPUT(74)) + ('0' & INPUT(75));
				 SUM_38_1 <= ('0' & INPUT(76)) + ('0' & INPUT(77));
				 SUM_39_1 <= ('0' & INPUT(78)) + ('0' & INPUT(79));
				 SUM_40_1 <= ('0' & INPUT(80));
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
				 SUM_5_2 <= ('0' & SUM_10_1) + ('0' & SUM_11_1);
				 SUM_6_2 <= ('0' & SUM_12_1) + ('0' & SUM_13_1);
				 SUM_7_2 <= ('0' & SUM_14_1) + ('0' & SUM_15_1);
				 SUM_8_2 <= ('0' & SUM_16_1) + ('0' & SUM_17_1);
				 SUM_9_2 <= ('0' & SUM_18_1) + ('0' & SUM_19_1);
				 SUM_10_2 <= ('0' & SUM_20_1) + ('0' & SUM_21_1);
				 SUM_11_2 <= ('0' & SUM_22_1) + ('0' & SUM_23_1);
				 SUM_12_2 <= ('0' & SUM_24_1) + ('0' & SUM_25_1);
				 SUM_13_2 <= ('0' & SUM_26_1) + ('0' & SUM_27_1);
				 SUM_14_2 <= ('0' & SUM_28_1) + ('0' & SUM_29_1);
				 SUM_15_2 <= ('0' & SUM_30_1) + ('0' & SUM_31_1);
				 SUM_16_2 <= ('0' & SUM_32_1) + ('0' & SUM_33_1);
				 SUM_17_2 <= ('0' & SUM_34_1) + ('0' & SUM_35_1);
				 SUM_18_2 <= ('0' & SUM_36_1) + ('0' & SUM_37_1);
				 SUM_19_2 <= ('0' & SUM_38_1) + ('0' & SUM_39_1);
				 SUM_20_2 <= ('0' & SUM_40_1);
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
				 SUM_2_3 <= ('0' & SUM_4_2) + ('0' & SUM_5_2);
				 SUM_3_3 <= ('0' & SUM_6_2) + ('0' & SUM_7_2);
				 SUM_4_3 <= ('0' & SUM_8_2) + ('0' & SUM_9_2);
				 SUM_5_3 <= ('0' & SUM_10_2) + ('0' & SUM_11_2);
				 SUM_6_3 <= ('0' & SUM_12_2) + ('0' & SUM_13_2);
				 SUM_7_3 <= ('0' & SUM_14_2) + ('0' & SUM_15_2);
				 SUM_8_3 <= ('0' & SUM_16_2) + ('0' & SUM_17_2);
				 SUM_9_3 <= ('0' & SUM_18_2) + ('0' & SUM_19_2);
				 SUM_10_3 <= ('0' & SUM_20_2);
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
				 SUM_1_4 <= ('0' & SUM_2_3) + ('0' & SUM_3_3);
				 SUM_2_4 <= ('0' & SUM_4_3) + ('0' & SUM_5_3);
				 SUM_3_4 <= ('0' & SUM_6_3) + ('0' & SUM_7_3);
				 SUM_4_4 <= ('0' & SUM_8_3) + ('0' & SUM_9_3);
				 SUM_5_4 <= ('0' & SUM_10_3);
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
				 SUM_1_5 <= ('0' & SUM_2_4) + ('0' & SUM_3_4);
				 SUM_2_5 <= ('0' & SUM_4_4) + ('0' & SUM_5_4);
				 D_VALID_5 <= D_VALID_4;
				 L_VALID_5 <= L_VALID_4;
				 F_VALID_5 <= F_VALID_4;
				end if;
			end if;
	end process;

	SUM_L_6 : process (CLK)
			begin
			if ( rising_edge(CLK) ) then
				if ( CE = '1' ) then
				 SUM_0_6 <= ('0' & SUM_0_5) + ('0' & SUM_1_5);
				 SUM_1_6 <= ('0' & SUM_2_5);
				 D_VALID_6 <= D_VALID_5;
				 L_VALID_6 <= L_VALID_5;
				 F_VALID_6 <= F_VALID_5;
				end if;
			end if;
	end process;

	SUM_L_7 : process (CLK)
			begin
			if ( rising_edge(CLK) ) then
				if ( CE = '1' ) then
				 SUM_0_7 <= ('0' & SUM_0_6) + ('0' & SUM_1_6);
				 D_VALID_7 <= D_VALID_6;
				 L_VALID_7 <= L_VALID_6;
				 F_VALID_7 <= F_VALID_6;
				end if;
			end if;
	end process;

	SUM <= SUM_0_7;
	D_VALID_OUT <= D_VALID_7;
	L_VALID_OUT <= L_VALID_7;
	F_VALID_OUT <= F_VALID_7;

end Behavioral;
