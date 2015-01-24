-- Tomasz Kryjak
-- AGH Krakow

-- Binary minimum search tree of given size

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity min_value_pos_tree_19 is
	 Generic ( SAMPLES_N : natural := 19;
			   DIST_W : natural := 8;
			   POS_W : natural := 6
    );
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           D_VALID : in  STD_LOGIC  := '0';
           L_VALID : in  STD_LOGIC  := '0';
           F_VALID : in  STD_LOGIC  := '0';
           DIST : in  STD_LOGIC_VECTOR (SAMPLES_N*DIST_W -1 downto 0);
           MIN_DIST     : out  STD_LOGIC_VECTOR (DIST_W-1 downto 0);
           MIN_POS     : out  STD_LOGIC_VECTOR  (POS_W-1 downto 0);
           D_VALID_OUT : out  STD_LOGIC;
           L_VALID_OUT : out  STD_LOGIC;
           F_VALID_OUT : out  STD_LOGIC
			  );
end  min_value_pos_tree_19;

architecture Behavioral of min_value_pos_tree_19 is

component min_value_pos is
	 generic ( VALUE_W : natural := 8;
				  POS_W : natural := 6
				  );
    Port ( CLK : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           VALUE_1 : in  STD_LOGIC_VECTOR (VALUE_W-1 downto 0);
           VALUE_2 : in  STD_LOGIC_VECTOR (VALUE_W-1 downto 0);
           POS_1 : in  STD_LOGIC_VECTOR (POS_W-1 downto 0);
           POS_2 : in  STD_LOGIC_VECTOR (POS_W-1 downto 0);
           VALUE_OUT : out  STD_LOGIC_VECTOR (VALUE_W-1 downto 0);
           POS_OUT : out  STD_LOGIC_VECTOR (POS_W-1 downto 0)
			  );
end component min_value_pos;
	signal MIN_VALUE_0_1 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_0_1 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal MIN_VALUE_1_1 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_1_1 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal MIN_VALUE_2_1 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_2_1 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal MIN_VALUE_3_1 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_3_1 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal MIN_VALUE_4_1 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_4_1 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal MIN_VALUE_5_1 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_5_1 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal MIN_VALUE_6_1 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_6_1 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal MIN_VALUE_7_1 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_7_1 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal MIN_VALUE_8_1 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_8_1 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal MIN_VALUE_9_1 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_9_1 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal D_VALID_1 : STD_LOGIC := '0';
	signal L_VALID_1 : STD_LOGIC := '0';
	signal F_VALID_1 : STD_LOGIC := '0';
	signal MIN_VALUE_0_2 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_0_2 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal MIN_VALUE_1_2 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_1_2 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal MIN_VALUE_2_2 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_2_2 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal MIN_VALUE_3_2 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_3_2 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal MIN_VALUE_4_2 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_4_2 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal D_VALID_2 : STD_LOGIC := '0';
	signal L_VALID_2 : STD_LOGIC := '0';
	signal F_VALID_2 : STD_LOGIC := '0';
	signal MIN_VALUE_0_3 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_0_3 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal MIN_VALUE_1_3 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_1_3 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal MIN_VALUE_2_3 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_2_3 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal D_VALID_3 : STD_LOGIC := '0';
	signal L_VALID_3 : STD_LOGIC := '0';
	signal F_VALID_3 : STD_LOGIC := '0';
	signal MIN_VALUE_0_4 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_0_4 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal MIN_VALUE_1_4 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_1_4 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal D_VALID_4 : STD_LOGIC := '0';
	signal L_VALID_4 : STD_LOGIC := '0';
	signal F_VALID_4 : STD_LOGIC := '0';
	signal MIN_VALUE_0_5 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_0_5 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal D_VALID_5 : STD_LOGIC := '0';
	signal L_VALID_5 : STD_LOGIC := '0';
	signal F_VALID_5 : STD_LOGIC := '0';

begin

-- MIN DISTANCE WITH POS TREE -------------------------------------------------------------

-- LEVEL 1 -------------------------------------------------------------

	 min_value_pos_0_1 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>DIST(7 downto 0), VALUE_2=>DIST(15 downto 8),
			 POS_1=>"000000", POS_2=>"000001",
			 VALUE_OUT=>MIN_VALUE_0_1, POS_OUT=>MIN_POS_0_1);
	 min_value_pos_1_1 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>DIST(23 downto 16), VALUE_2=>DIST(31 downto 24),
			 POS_1=>"000010", POS_2=>"000011",
			 VALUE_OUT=>MIN_VALUE_1_1, POS_OUT=>MIN_POS_1_1);
	 min_value_pos_2_1 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>DIST(39 downto 32), VALUE_2=>DIST(47 downto 40),
			 POS_1=>"000100", POS_2=>"000101",
			 VALUE_OUT=>MIN_VALUE_2_1, POS_OUT=>MIN_POS_2_1);
	 min_value_pos_3_1 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>DIST(55 downto 48), VALUE_2=>DIST(63 downto 56),
			 POS_1=>"000110", POS_2=>"000111",
			 VALUE_OUT=>MIN_VALUE_3_1, POS_OUT=>MIN_POS_3_1);
	 min_value_pos_4_1 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>DIST(71 downto 64), VALUE_2=>DIST(79 downto 72),
			 POS_1=>"001000", POS_2=>"001001",
			 VALUE_OUT=>MIN_VALUE_4_1, POS_OUT=>MIN_POS_4_1);
	 min_value_pos_5_1 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>DIST(87 downto 80), VALUE_2=>DIST(95 downto 88),
			 POS_1=>"001010", POS_2=>"001011",
			 VALUE_OUT=>MIN_VALUE_5_1, POS_OUT=>MIN_POS_5_1);
	 min_value_pos_6_1 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>DIST(103 downto 96), VALUE_2=>DIST(111 downto 104),
			 POS_1=>"001100", POS_2=>"001101",
			 VALUE_OUT=>MIN_VALUE_6_1, POS_OUT=>MIN_POS_6_1);
	 min_value_pos_7_1 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>DIST(119 downto 112), VALUE_2=>DIST(127 downto 120),
			 POS_1=>"001110", POS_2=>"001111",
			 VALUE_OUT=>MIN_VALUE_7_1, POS_OUT=>MIN_POS_7_1);
	 min_value_pos_8_1 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>DIST(135 downto 128), VALUE_2=>DIST(143 downto 136),
			 POS_1=>"010000", POS_2=>"010001",
			 VALUE_OUT=>MIN_VALUE_8_1, POS_OUT=>MIN_POS_8_1);
	 min_value_pos_9_1 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>DIST(151 downto 144), VALUE_2=> ( others=>'1'),
			 POS_1=>"010010", POS_2=>( others => '0'),
			 VALUE_OUT=>MIN_VALUE_9_1, POS_OUT=>MIN_POS_9_1);
	SYNC_1 : process (CLK)
			begin
			if ( rising_edge(CLK) ) then
				 if ( CE = '1' ) then
					 D_VALID_1 <= D_VALID;
					 L_VALID_1 <= L_VALID;
					 F_VALID_1 <= F_VALID;
				end if;
			end if;
	end process;

-- LEVEL 2 -------------------------------------------------------------

	 min_value_pos_0_2 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>MIN_VALUE_0_1,  VALUE_2=>MIN_VALUE_1_1 ,
			 POS_1=>MIN_POS_0_1, POS_2=>MIN_POS_1_1,
			 VALUE_OUT=>MIN_VALUE_0_2, POS_OUT=>MIN_POS_0_2);
	 min_value_pos_1_2 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>MIN_VALUE_2_1,  VALUE_2=>MIN_VALUE_3_1 ,
			 POS_1=>MIN_POS_2_1, POS_2=>MIN_POS_3_1,
			 VALUE_OUT=>MIN_VALUE_1_2, POS_OUT=>MIN_POS_1_2);
	 min_value_pos_2_2 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>MIN_VALUE_4_1,  VALUE_2=>MIN_VALUE_5_1 ,
			 POS_1=>MIN_POS_4_1, POS_2=>MIN_POS_5_1,
			 VALUE_OUT=>MIN_VALUE_2_2, POS_OUT=>MIN_POS_2_2);
	 min_value_pos_3_2 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>MIN_VALUE_6_1,  VALUE_2=>MIN_VALUE_7_1 ,
			 POS_1=>MIN_POS_6_1, POS_2=>MIN_POS_7_1,
			 VALUE_OUT=>MIN_VALUE_3_2, POS_OUT=>MIN_POS_3_2);
	 min_value_pos_4_2 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>MIN_VALUE_8_1,  VALUE_2=>MIN_VALUE_9_1 ,
			 POS_1=>MIN_POS_8_1, POS_2=>MIN_POS_9_1,
			 VALUE_OUT=>MIN_VALUE_4_2, POS_OUT=>MIN_POS_4_2);
	SYNC_2 : process (CLK)
			begin
			if ( rising_edge(CLK) ) then
				if ( CE = '1' ) then
					D_VALID_2 <= D_VALID_1;
					  L_VALID_2 <= L_VALID_1;
					 F_VALID_2 <= F_VALID_1;
				end if;
			end if;
	end process;

-- LEVEL 3 -------------------------------------------------------------

	 min_value_pos_0_3 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>MIN_VALUE_0_2,  VALUE_2=>MIN_VALUE_1_2 ,
			 POS_1=>MIN_POS_0_2, POS_2=>MIN_POS_1_2,
			 VALUE_OUT=>MIN_VALUE_0_3, POS_OUT=>MIN_POS_0_3);
	 min_value_pos_1_3 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>MIN_VALUE_2_2,  VALUE_2=>MIN_VALUE_3_2 ,
			 POS_1=>MIN_POS_2_2, POS_2=>MIN_POS_3_2,
			 VALUE_OUT=>MIN_VALUE_1_3, POS_OUT=>MIN_POS_1_3);
	 min_value_pos_2_3 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>MIN_VALUE_4_2 ,VALUE_2=> ( others=>'1'),
			 POS_1=>MIN_POS_4_2, POS_2=>( others => '0'),
			 VALUE_OUT=>MIN_VALUE_2_3, POS_OUT=>MIN_POS_2_3);
	SYNC_3 : process (CLK)
			begin
			if ( rising_edge(CLK) ) then
				if ( CE = '1' ) then
					D_VALID_3 <= D_VALID_2;
					  L_VALID_3 <= L_VALID_2;
					 F_VALID_3 <= F_VALID_2;
				end if;
			end if;
	end process;

-- LEVEL 4 -------------------------------------------------------------

	 min_value_pos_0_4 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>MIN_VALUE_0_3,  VALUE_2=>MIN_VALUE_1_3 ,
			 POS_1=>MIN_POS_0_3, POS_2=>MIN_POS_1_3,
			 VALUE_OUT=>MIN_VALUE_0_4, POS_OUT=>MIN_POS_0_4);
	 min_value_pos_1_4 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>MIN_VALUE_2_3 ,VALUE_2=> ( others=>'1'),
			 POS_1=>MIN_POS_2_3, POS_2=>( others => '0'),
			 VALUE_OUT=>MIN_VALUE_1_4, POS_OUT=>MIN_POS_1_4);
	SYNC_4 : process (CLK)
			begin
			if ( rising_edge(CLK) ) then
				if ( CE = '1' ) then
					D_VALID_4 <= D_VALID_3;
					  L_VALID_4 <= L_VALID_3;
					 F_VALID_4 <= F_VALID_3;
				end if;
			end if;
	end process;

-- LEVEL 5 -------------------------------------------------------------

	 min_value_pos_0_5 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>MIN_VALUE_0_4,  VALUE_2=>MIN_VALUE_1_4 ,
			 POS_1=>MIN_POS_0_4, POS_2=>MIN_POS_1_4,
			 VALUE_OUT=>MIN_VALUE_0_5, POS_OUT=>MIN_POS_0_5);
	SYNC_5 : process (CLK)
			begin
			if ( rising_edge(CLK) ) then
				if ( CE = '1' ) then
					D_VALID_5 <= D_VALID_4;
					  L_VALID_5 <= L_VALID_4;
					 F_VALID_5 <= F_VALID_4;
				end if;
			end if;
	end process;

	MIN_DIST <= MIN_VALUE_0_5;
	MIN_POS <= MIN_POS_0_5;
	D_VALID_OUT <= D_VALID_5;
	L_VALID_OUT <= L_VALID_5;
	F_VALID_OUT <= F_VALID_5;

end Behavioral;
