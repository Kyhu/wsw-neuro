-- Tomasz Kryjak
-- AGH Krakow

			  
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
			  
entity pbas_proc_sc is
	generic (
			PIXEL_W : in natural := 8;	
			R_W : in natural := 14;	
			DIST_W : in natural := 8;
			SIZE_W : in natural := 10;
			BG_MODEL_SC_W : in natural := 594
			);
			  
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CE : in  STD_LOGIC;
			  
			   -- CONTROL SIGNALS INPUT
           D_VALID_IN : in  STD_LOGIC;
			  L_VALID_IN : in STD_LOGIC;
			  F_VALID_IN : in  STD_LOGIC; 
			  
			  -- IMAGE RESOLUTION 
			  H_SIZE      : in  STD_LOGIC_VECTOR  (SIZE_W-1  downto 0);
			  H_SIZE_IMG  : in  STD_LOGIC_VECTOR  (SIZE_W-1  downto 0); 
			  V_SIZE      : in  STD_LOGIC_VECTOR  (SIZE_W-1  downto 0); 
			  
			  -- ALG PARAMETERS
			  PARAM_R : in  STD_LOGIC_VECTOR (R_W -1 downto 0);        -- promien (30)
           PARAM_COEF_L : in  STD_LOGIC_VECTOR (7 downto 0);   -- waga luminancji (1) [3+5]
           PARAM_COEF_AB : in  STD_LOGIC_VECTOR (7 downto 0);  -- waga chrominancji (1,5) [3+5]
			  PARAM_HMIN :  in  STD_LOGIC_VECTOR (4 downto 0);    -- liczba modeli, ktore musza byc zgodne aby piksel byl uznany za tlo (2)
			  PARAM_RL_TH : in  STD_LOGIC_VECTOR (3 downto 0);    -- maksymalna dlugosc pomiaru piksela
			  PARAM_BP_UP : in  STD_LOGIC_VECTOR (7 downto 0);    -- o ile inkrementowany jest licznik dla migania
			  PARAM_BP_DOWN : in  STD_LOGIC_VECTOR (7 downto 0);  -- o ile dekrementowany jest licznik dla migania	
			  PARAM_BP_TH : in  STD_LOGIC_VECTOR (7 downto 0);    -- prog okreslajacy miganie
			 
			  
			  PIXEL : in  STD_LOGIC_VECTOR (PIXEL_W-1 downto 0);
			  BG_MODEL_IN : in  STD_LOGIC_VECTOR (BG_MODEL_SC_W-1 downto 0);
			  RNG : in  STD_LOGIC_VECTOR (127 downto 0);
			  
			   -- CONTROL SIGNALS OUTPUT
			  D_VALID_OUT : out  STD_LOGIC;	
			  L_VALID_OUT : out STD_LOGIC;
			  F_VALID_OUT : out  STD_LOGIC; 
			  
			  -- OUTPUT DATA
           BG_MODEL_OUT : out  STD_LOGIC_VECTOR (BG_MODEL_SC_W-1 downto 0);
			  MASK : out  STD_LOGIC
			  
			  );
end pbas_proc_sc;


architecture Behavioral of pbas_proc_sc is
component pix_model_dist_1C is
		 Generic (PIXEL_W : integer :=8;
					 R_W : integer :=14;
					 DIST_W : integer := 8
		 );
		 Port ( CLK 	: in  STD_LOGIC;
				  RST 	: in  STD_LOGIC;
				  CE  	: in  STD_LOGIC;
				 
				  PIXEL  : in  STD_LOGIC_VECTOR (PIXEL_W-1 downto 0);
				  MODEL  : in  STD_LOGIC_VECTOR (PIXEL_W-1 downto 0);
				  
				  PARAM_R    : in  STD_LOGIC_VECTOR  (R_W - 1 downto 0);	-- PRECYZJA ??????	
				  
				  DIST_OUT   : out STD_LOGIC_VECTOR (DIST_W-1 downto 0); 
				  RESULT_OUT : out  STD_LOGIC
				  
				  );
end  component pix_model_dist_1C;


 signal DIST_VEC : STD_LOGIC_VECTOR (279 downto  0) := (others => '0');
 signal RESULT_VEC : STD_LOGIC_VECTOR (34 downto  0) := (others => '0');


begin
--------------------------------------------------------------------------------
	-- OBLICZANIE ODLEGLOSCI DLA KAZDEGO Z MODELI
	-- LATENCY = 2 ???
	--------------------------------------------------------------------------------
	 pix_model_dist_1C_1 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (7 downto 0),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(7 downto 0),
		 RESULT_OUT => RESULT_VEC(0) );
	 pix_model_dist_1C_2 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (23 downto 16),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(15 downto 8),
		 RESULT_OUT => RESULT_VEC(1) );
	 pix_model_dist_1C_3 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (39 downto 32),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(23 downto 16),
		 RESULT_OUT => RESULT_VEC(2) );
	 pix_model_dist_1C_4 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (55 downto 48),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(31 downto 24),
		 RESULT_OUT => RESULT_VEC(3) );
	 pix_model_dist_1C_5 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (71 downto 64),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(39 downto 32),
		 RESULT_OUT => RESULT_VEC(4) );
	 pix_model_dist_1C_6 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (87 downto 80),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(47 downto 40),
		 RESULT_OUT => RESULT_VEC(5) );
	 pix_model_dist_1C_7 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (103 downto 96),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(55 downto 48),
		 RESULT_OUT => RESULT_VEC(6) );
	 pix_model_dist_1C_8 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (119 downto 112),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(63 downto 56),
		 RESULT_OUT => RESULT_VEC(7) );
	 pix_model_dist_1C_9 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (135 downto 128),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(71 downto 64),
		 RESULT_OUT => RESULT_VEC(8) );
	 pix_model_dist_1C_10 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (151 downto 144),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(79 downto 72),
		 RESULT_OUT => RESULT_VEC(9) );
	 pix_model_dist_1C_11 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (167 downto 160),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(87 downto 80),
		 RESULT_OUT => RESULT_VEC(10) );
	 pix_model_dist_1C_12 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (183 downto 176),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(95 downto 88),
		 RESULT_OUT => RESULT_VEC(11) );
	 pix_model_dist_1C_13 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (199 downto 192),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(103 downto 96),
		 RESULT_OUT => RESULT_VEC(12) );
	 pix_model_dist_1C_14 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (215 downto 208),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(111 downto 104),
		 RESULT_OUT => RESULT_VEC(13) );
	 pix_model_dist_1C_15 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (231 downto 224),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(119 downto 112),
		 RESULT_OUT => RESULT_VEC(14) );
	 pix_model_dist_1C_16 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (247 downto 240),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(127 downto 120),
		 RESULT_OUT => RESULT_VEC(15) );
	 pix_model_dist_1C_17 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (263 downto 256),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(135 downto 128),
		 RESULT_OUT => RESULT_VEC(16) );
	 pix_model_dist_1C_18 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (279 downto 272),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(143 downto 136),
		 RESULT_OUT => RESULT_VEC(17) );
	 pix_model_dist_1C_19 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (295 downto 288),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(151 downto 144),
		 RESULT_OUT => RESULT_VEC(18) );
	 pix_model_dist_1C_20 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (311 downto 304),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(159 downto 152),
		 RESULT_OUT => RESULT_VEC(19) );
	 pix_model_dist_1C_21 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (327 downto 320),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(167 downto 160),
		 RESULT_OUT => RESULT_VEC(20) );
	 pix_model_dist_1C_22 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (343 downto 336),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(175 downto 168),
		 RESULT_OUT => RESULT_VEC(21) );
	 pix_model_dist_1C_23 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (359 downto 352),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(183 downto 176),
		 RESULT_OUT => RESULT_VEC(22) );
	 pix_model_dist_1C_24 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (375 downto 368),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(191 downto 184),
		 RESULT_OUT => RESULT_VEC(23) );
	 pix_model_dist_1C_25 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (391 downto 384),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(199 downto 192),
		 RESULT_OUT => RESULT_VEC(24) );
	 pix_model_dist_1C_26 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (407 downto 400),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(207 downto 200),
		 RESULT_OUT => RESULT_VEC(25) );
	 pix_model_dist_1C_27 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (423 downto 416),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(215 downto 208),
		 RESULT_OUT => RESULT_VEC(26) );
	 pix_model_dist_1C_28 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (439 downto 432),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(223 downto 216),
		 RESULT_OUT => RESULT_VEC(27) );
	 pix_model_dist_1C_29 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (455 downto 448),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(231 downto 224),
		 RESULT_OUT => RESULT_VEC(28) );
	 pix_model_dist_1C_30 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (471 downto 464),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(239 downto 232),
		 RESULT_OUT => RESULT_VEC(29) );
	 pix_model_dist_1C_31 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (487 downto 480),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(247 downto 240),
		 RESULT_OUT => RESULT_VEC(30) );
	 pix_model_dist_1C_32 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (503 downto 496),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(255 downto 248),
		 RESULT_OUT => RESULT_VEC(31) );
	 pix_model_dist_1C_33 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (519 downto 512),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(263 downto 256),
		 RESULT_OUT => RESULT_VEC(32) );
	 pix_model_dist_1C_34 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (535 downto 528),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(271 downto 264),
		 RESULT_OUT => RESULT_VEC(33) );
	 pix_model_dist_1C_35 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W => PIXEL_W, R_W => R_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (551 downto 544),
		 PARAM_R => PARAM_R,	DIST_OUT => DIST_VEC(279 downto 272),
		 RESULT_OUT => RESULT_VEC(34) );
end Behavioral;
