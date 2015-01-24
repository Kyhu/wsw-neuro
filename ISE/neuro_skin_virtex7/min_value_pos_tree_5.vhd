-- Tomasz Kryjak
-- AGH Krakow

-- Binary minimum search tree of given size

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity min_value_pos_tree_5 is
	 Generic ( SAMPLES_N : natural := 5;
			   DIST_W : natural := 8;
			   POS_W : natural := 4
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
end  min_value_pos_tree_5;

architecture Behavioral of min_value_pos_tree_5 is

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
	signal D_VALID_1 : STD_LOGIC := '0';
	signal L_VALID_1 : STD_LOGIC := '0';
	signal F_VALID_1 : STD_LOGIC := '0';
	signal MIN_VALUE_0_2 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_0_2 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal MIN_VALUE_1_2 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_1_2 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal D_VALID_2 : STD_LOGIC := '0';
	signal L_VALID_2 : STD_LOGIC := '0';
	signal F_VALID_2 : STD_LOGIC := '0';
	signal MIN_VALUE_0_3 : STD_LOGIC_VECTOR (DIST_W-1 downto 0) := (others => '0');
	signal MIN_POS_0_3 : STD_LOGIC_VECTOR (POS_W-1 downto 0) := (others => '0');
	signal D_VALID_3 : STD_LOGIC := '0';
	signal L_VALID_3 : STD_LOGIC := '0';
	signal F_VALID_3 : STD_LOGIC := '0';

begin

-- MIN DISTANCE WITH POS TREE -------------------------------------------------------------

-- LEVEL 1 -------------------------------------------------------------

	 min_value_pos_0_1 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>DIST(7 downto 0), VALUE_2=>DIST(15 downto 8),
			 POS_1=>"0000", POS_2=>"0001",
			 VALUE_OUT=>MIN_VALUE_0_1, POS_OUT=>MIN_POS_0_1);
	 min_value_pos_1_1 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>DIST(23 downto 16), VALUE_2=>DIST(31 downto 24),
			 POS_1=>"0010", POS_2=>"0011",
			 VALUE_OUT=>MIN_VALUE_1_1, POS_OUT=>MIN_POS_1_1);
	 min_value_pos_2_1 : min_value_pos generic map ( VALUE_W =>DIST_W, POS_W=>POS_W )
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			 VALUE_1=>DIST(39 downto 32), VALUE_2=> ( others=>'1'),
			 POS_1=>"0100", POS_2=>( others => '0'),
			 VALUE_OUT=>MIN_VALUE_2_1, POS_OUT=>MIN_POS_2_1);
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
			 VALUE_1=>MIN_VALUE_2_1 ,VALUE_2=> ( others=>'1'),
			 POS_1=>MIN_POS_2_1, POS_2=>( others => '0'),
			 VALUE_OUT=>MIN_VALUE_1_2, POS_OUT=>MIN_POS_1_2);
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

	MIN_DIST <= MIN_VALUE_0_3;
	MIN_POS <= MIN_POS_0_3;
	D_VALID_OUT <= D_VALID_3;
	L_VALID_OUT <= L_VALID_3;
	F_VALID_OUT <= F_VALID_3;

end Behavioral;
