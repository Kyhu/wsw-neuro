----------------------------------------------------------------------------------
-- Company: 		AGH
-- Engineer: 		Tomasz Kryjak
-- 
-- Create Date:    21:12:37 12/04/2012 
-- Design Name: 
-- Module Name:    pbas_init - Behavioral 
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
use IEEE.std_logic_signed.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pbas_init is
	generic (
			PIXEL_W           : in natural := 24;       -- sigle pixel width 24 (RGB), 23 (CIE Lab) , 8 (GRAY)	
			EDGE_W			   : in natural := 0;
			DIST_W			   : in natural := 8;       -- minimum distance - [!!!] - to set ... (+saturate)	
			BRAM_SIZE_W			: in natural := 10;      -- BRAM delay lines 			
			RT_W					: in natural := 16;      -- R and T parametrest width
			BG_MODEL_WIDTH  	: in natural := 3*112    -- 5 SAMPLES / MODEL 
			);
    Port ( CLK : in  STD_LOGIC; 
           RST : in  STD_LOGIC;
           CE : in  STD_LOGIC;
			  
			  -- CONTROL SIGNALS INPUT
           D_VALID_IN : in  STD_LOGIC;			  
			  L_VALID_IN : in STD_LOGIC;		
			  F_VALID_IN : in  STD_LOGIC;   
			  
			  -- IMAGE RESOLUTION 
			  H_SIZE      : in  STD_LOGIC_VECTOR  (BRAM_SIZE_W-1  downto 0);  
			  H_SIZE_IMG  : in  STD_LOGIC_VECTOR  (BRAM_SIZE_W-1  downto 0);   
			  V_SIZE      : in  STD_LOGIC_VECTOR  (BRAM_SIZE_W-1  downto 0);   
			  
			  -- PARAMETERS
			  PARAM_R_INIT : in  STD_LOGIC_VECTOR (RT_W-1 downto 0);        -- R - distance init value
			  PARAM_T_INIT : in  STD_LOGIC_VECTOR (RT_W-1 downto 0);        -- T - update param inti value
			  
			  -- INPUT DATA
           PIXEL : in  STD_LOGIC_VECTOR (PIXEL_W-1 downto 0);			  	-- RGB	  
			  RNG : in STD_LOGIC_VECTOR (127 downto 0);			  
			  
			  -- CONTROL SIGNALS OUTPUT
			  D_VALID_OUT : out  STD_LOGIC;		 
			  L_VALID_OUT : out STD_LOGIC;		
			  F_VALID_OUT : out  STD_LOGIC;     
			  
			  -- OUTPUT DATA
           BG_MODEL : out  STD_LOGIC_VECTOR (BG_MODEL_WIDTH-1 downto 0)			  
			  );
			  
end pbas_init;

architecture Behavioral of pbas_init is

	COMPONENT LUT_64_9_decoder
	  PORT (
		 a : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 spo : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	  );
	END COMPONENT;	
	
	component delayLineBramWP is
		generic (
				WIDTH : in natural := 23;
				BRAM_SIZE_W : in natural := 10
				);			
		 Port ( CLK : in  STD_LOGIC;
				  RST: in  STD_LOGIC;
				  CE : in  STD_LOGIC;				  
				  ENA : in  STD_LOGIC; 		 
				  DIN : in  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
				  DOUT : out  STD_LOGIC_VECTOR (WIDTH-1 downto 0);				  
				  H_SIZE : in  STD_LOGIC_VECTOR  (BRAM_SIZE_W-1 downto 0)   
				  
				  );
	end component delayLineBramWP;
	
	component singleDelay is
		generic (
			WIDTH : in natural := 23
			);			
		Port ( CLK : in  STD_LOGIC;
			  RST: in  STD_LOGIC;
			  CE : in  STD_LOGIC;			  
			  ENA : in  STD_LOGIC;	 
           DIN : in  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           DOUT : out  STD_LOGIC_VECTOR (WIDTH-1 downto 0) 
			  );
	end component singleDelay;
	
	
	component mux_9_to_1_rgbs is
	generic (
			WIDTH : in natural := 24		
			);
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           DATA_IN : in  STD_LOGIC_VECTOR (9*WIDTH-1 downto 0);
           DATA_NO : in  STD_LOGIC_VECTOR (3 downto 0);
           R_DATA_OUT : out  STD_LOGIC_VECTOR (WIDTH/3-1 downto 0);
			  G_DATA_OUT : out  STD_LOGIC_VECTOR (WIDTH/3-1 downto 0);
			  B_DATA_OUT : out  STD_LOGIC_VECTOR (WIDTH/3-1 downto 0)
			  
			  );
	end component mux_9_to_1_rgbs;
	
	
	-- SIGANALS FOR CONTEXT
	signal d0 : STD_LOGIC_VECTOR( PIXEL_W + EDGE_W -1 downto 0):= (others => '0');
	signal d1 : STD_LOGIC_VECTOR( PIXEL_W + EDGE_W -1 downto 0):= (others => '0');   
	signal d2 : STD_LOGIC_VECTOR( PIXEL_W + EDGE_W -1 downto 0):= (others => '0');   
	
	signal d1_1 : STD_LOGIC_VECTOR( PIXEL_W + EDGE_W -1 downto 0):= (others => '0');   
	signal d1_2 : STD_LOGIC_VECTOR( PIXEL_W + EDGE_W -1 downto 0):= (others => '0');   
	signal d1_3 : STD_LOGIC_VECTOR( PIXEL_W + EDGE_W -1 downto 0):= (others => '0');   
	
	signal d2_1 : STD_LOGIC_VECTOR( PIXEL_W + EDGE_W -1 downto 0):= (others => '0');   
	signal d2_2 : STD_LOGIC_VECTOR( PIXEL_W + EDGE_W -1 downto 0):= (others => '0');   
	signal d2_3 : STD_LOGIC_VECTOR( PIXEL_W + EDGE_W -1 downto 0):= (others => '0');   
		
	signal d3_1 : STD_LOGIC_VECTOR( PIXEL_W + EDGE_W -1 downto 0):= (others => '0');   
	signal d3_2 : STD_LOGIC_VECTOR( PIXEL_W + EDGE_W -1 downto 0):= (others => '0');   
	signal d3_3 : STD_LOGIC_VECTOR( PIXEL_W + EDGE_W -1 downto 0):= (others => '0');  

	signal data_all : STD_LOGIC_VECTOR( 9*(PIXEL_W+EDGE_W)-1 downto 0):= (others => '0');  
	
	
	-- CONTROLL SIGNAL DELAY
	signal delayCS_IN  : STD_LOGIC_VECTOR(7 downto 0):= (others => '0');  
	signal delayCS_OUT : STD_LOGIC_VECTOR(7 downto 0):= (others => '0');  
	
		-- FOR CONTROLL SINGNALS
	signal moduleDelayCnt : STD_LOGIC_VECTOR  (BRAM_SIZE_W-1 downto 0) := (others => '0');   
	signal hDelayCnt : STD_LOGIC_VECTOR  (BRAM_SIZE_W downto 0) := (others => '0');  
	signal vDelayCnt : STD_LOGIC_VECTOR  (BRAM_SIZE_W downto 0) := (others => '0');  	
	
	signal fStart : STD_LOGIC := '0';
	signal H_SIZE_2 : STD_LOGIC_VECTOR  (BRAM_SIZE_W-1 downto 0);	
	signal FCV : STD_LOGIC := '0';
	
	-- !!!  AUTOMATIC GENERATION IN pbas_init.m
	signal DATA_NO_0 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_1 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_2 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_3 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_4 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_5 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_6 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_7 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_8 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_9 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_10 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_11 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_12 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_13 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_14 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_15 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_16 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_17 : STD_LOGIC_VECTOR(3 downto 0);
	signal DATA_NO_18 : STD_LOGIC_VECTOR(3 downto 0);

	
	

begin

	--------------------------------------------------------------------------------------------------------------------- 
	-- INITIAL ASSIGMENT
	--------------------------------------------------------------------------------------------------------------------- 
	d0(PIXEL_W-1 downto 0 )             <= PIXEL;
	--d0(PIXEL_W+EDGE_W-1 downto PIXEL_W) <= M_PIXEL;


	--------------------------------------------------------------------------------------------------------------------- 
	-- CONTEXT
	--------------------------------------------------------------------------------------------------------------------- 
	
	DLONG_1 : delayLineBramWP generic map(WIDTH=>(PIXEL_W+EDGE_W), BRAM_SIZE_W=>BRAM_SIZE_W) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1', DIN=>d0, DOUT=>d1,H_SIZE =>H_SIZE );
	DLONG_2 : delayLineBramWP generic map(WIDTH=>(PIXEL_W+EDGE_W), BRAM_SIZE_W=>BRAM_SIZE_W) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1', DIN=>d1, DOUT=>d2,H_SIZE =>H_SIZE );
	
	SD_1 : singleDelay generic map(WIDTH=>(PIXEL_W+EDGE_W)) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d0, DOUT=>d1_1);
	SD_2 : singleDelay generic map(WIDTH=>(PIXEL_W+EDGE_W)) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d1_1, DOUT=>d1_2);
	SD_3 : singleDelay generic map(WIDTH=>(PIXEL_W+EDGE_W)) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d1_2, DOUT=>d1_3);
	
	SD_4 : singleDelay generic map(WIDTH=>(PIXEL_W+EDGE_W)) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d1, DOUT=>d2_1);
	SD_5 : singleDelay generic map(WIDTH=>(PIXEL_W+EDGE_W)) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d2_1, DOUT=>d2_2);
	SD_6 : singleDelay generic map(WIDTH=>(PIXEL_W+EDGE_W)) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d2_2, DOUT=>d2_3);
	
	SD_7 : singleDelay generic map(WIDTH=>(PIXEL_W+EDGE_W)) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d2, DOUT=>d3_1);
	SD_8 : singleDelay generic map(WIDTH=>(PIXEL_W+EDGE_W)) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d3_1, DOUT=>d3_2);
	SD_9 : singleDelay generic map(WIDTH=>(PIXEL_W+EDGE_W)) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d3_2, DOUT=>d3_3);
	
	
	--------------------------------------------------------------------------------------------------------------------- 
	-- CONTROL SIGNALS_DELAY
	--------------------------------------------------------------------------------------------------------------------- 
	delayCS_IN(0) <= F_VALID_IN;
	delayCS_IN(1) <= L_VALID_IN;
	delayCS_IN(2) <= D_VALID_IN;
	delayCS_IN(7 downto 3) <= (others => '0');
	
	-- CHANGING H_SIZE [!!!!!]
	-- +1 z uwagi na obliczanie koncowego wektora ...
	H_SIZE_2 <= H_SIZE+2+1;		
	DLONG_CONTROL : delayLineBramWP  generic map(WIDTH=>(8), BRAM_SIZE_W=>BRAM_SIZE_W) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1', DIN=>delayCS_IN, DOUT=>delayCS_OUT,H_SIZE => H_SIZE_2);
	
	---------------------------------------------------------------------------------------------------------------------
	-- DELAY COUNTING
	---------------------------------------------------------------------------------------------------------------------
	process (CLK) is
	begin
		if (rising_edge(CLK) ) then
			if ( CE = '1' ) then
			
				-- POSSIBLE FROM FRAME VALID ...
				if ( RST = '1' or delayCS_IN(0) ='0' ) then			
					hDelayCnt <= (others => '0');
					vDelayCnt <= (others => '0');					
				else				
					if ( delayCS_IN(2) = '1' ) then -- FRAME VALID					
						if ( delayCS_IN(2) = '1' ) then -- DATA_VALID						
						
							-- HORIZONTAL AND VERICAL COUNTERS
							if ( hDelayCnt < (('0' & H_SIZE_IMG) -1 )) then
								hDelayCnt <= hDelayCnt + 1;
							else
								hDelayCnt <= (others => '0');
								if ( vDelayCnt < (('0' & V_SIZE) -1 ) ) then
									vDelayCnt <= vDelayCnt + 1;
								else
									vDelayCnt <= (others => '0');
								end if;
							end if;
							
							-- CONDITION							
							if ( hDelayCnt > 1 and hDelayCnt < ('0' & H_SIZE_IMG) and vDelayCnt > 1 and vDelayCnt <  ('0' & V_SIZE) ) then
								-- when inside
								FCV <='1';						
							else
								-- when on edges then '0'
								FCV <='0';
							end if;
						else
							FCV <='0';
						end if; 					
					else
						FCV <='0';
					end if;						
				end if;					
			end if;	
		end if;	
	end process;
	

	
	F_VALID_OUT <= delayCS_OUT(0);
	L_VALID_OUT <= delayCS_OUT(1);
	D_VALID_OUT <= delayCS_OUT(2);
	
	
	data_all(1*(PIXEL_W+EDGE_W)-1 downto 0) 		  <= d1_1;
	data_all(2*(PIXEL_W+EDGE_W)-1 downto 1*(PIXEL_W+EDGE_W)) <= d1_2;
	data_all(3*(PIXEL_W+EDGE_W)-1 downto 2*(PIXEL_W+EDGE_W)) <= d1_3;
	data_all(4*(PIXEL_W+EDGE_W)-1 downto 3*(PIXEL_W+EDGE_W)) <= d2_1;
	data_all(5*(PIXEL_W+EDGE_W)-1 downto 4*(PIXEL_W+EDGE_W)) <= d2_2;
	data_all(6*(PIXEL_W+EDGE_W)-1 downto 5*(PIXEL_W+EDGE_W)) <= d2_3;
	data_all(7*(PIXEL_W+EDGE_W)-1 downto 6*(PIXEL_W+EDGE_W)) <= d3_1;
	data_all(8*(PIXEL_W+EDGE_W)-1 downto 7*(PIXEL_W+EDGE_W)) <= d3_2;
	data_all(9*(PIXEL_W+EDGE_W)-1 downto 8*(PIXEL_W+EDGE_W)) <= d3_3;
	
	
	
	---------------------------------------------------------------------------------------------------------------------
	-- RANDOM NUMER DECODE
	-- !!! AUTOMATIC GENERATION IN pbas_init.m
	---------------------------------------------------------------------------------------------------------------------
	LUT_64_9_decoder_0 : LUT_64_9_decoder PORT MAP (a => RNG(5 downto 0),spo => DATA_NO_0);
	LUT_64_9_decoder_1 : LUT_64_9_decoder PORT MAP (a => RNG(6 downto 1),spo => DATA_NO_1);
	LUT_64_9_decoder_2 : LUT_64_9_decoder PORT MAP (a => RNG(7 downto 2),spo => DATA_NO_2);
	LUT_64_9_decoder_3 : LUT_64_9_decoder PORT MAP (a => RNG(8 downto 3),spo => DATA_NO_3);
	LUT_64_9_decoder_4 : LUT_64_9_decoder PORT MAP (a => RNG(9 downto 4),spo => DATA_NO_4);
	LUT_64_9_decoder_5 : LUT_64_9_decoder PORT MAP (a => RNG(10 downto 5),spo => DATA_NO_5);
	LUT_64_9_decoder_6 : LUT_64_9_decoder PORT MAP (a => RNG(11 downto 6),spo => DATA_NO_6);
	LUT_64_9_decoder_7 : LUT_64_9_decoder PORT MAP (a => RNG(12 downto 7),spo => DATA_NO_7);
	LUT_64_9_decoder_8 : LUT_64_9_decoder PORT MAP (a => RNG(13 downto 8),spo => DATA_NO_8);
	LUT_64_9_decoder_9 : LUT_64_9_decoder PORT MAP (a => RNG(14 downto 9),spo => DATA_NO_9);
	LUT_64_9_decoder_10 : LUT_64_9_decoder PORT MAP (a => RNG(15 downto 10),spo => DATA_NO_10);
	LUT_64_9_decoder_11 : LUT_64_9_decoder PORT MAP (a => RNG(16 downto 11),spo => DATA_NO_11);
	LUT_64_9_decoder_12 : LUT_64_9_decoder PORT MAP (a => RNG(17 downto 12),spo => DATA_NO_12);
	LUT_64_9_decoder_13 : LUT_64_9_decoder PORT MAP (a => RNG(18 downto 13),spo => DATA_NO_13);
	LUT_64_9_decoder_14 : LUT_64_9_decoder PORT MAP (a => RNG(19 downto 14),spo => DATA_NO_14);
	LUT_64_9_decoder_15 : LUT_64_9_decoder PORT MAP (a => RNG(20 downto 15),spo => DATA_NO_15);
	LUT_64_9_decoder_16 : LUT_64_9_decoder PORT MAP (a => RNG(21 downto 16),spo => DATA_NO_16);
	LUT_64_9_decoder_17 : LUT_64_9_decoder PORT MAP (a => RNG(22 downto 17),spo => DATA_NO_17);
	LUT_64_9_decoder_18 : LUT_64_9_decoder PORT MAP (a => RNG(23 downto 18),spo => DATA_NO_18);
	
	
	---------------------------------------------------------------------------------------------------------------------
	-- PRZYPISANIE LOSOWNEJ ZMIENNEJ Z OTOCZENIA DO MODELU 
	-- !!! AUTOMATIC GENERATION IN pbas_init.m
	---------------------------------------------------------------------------------------------------------------------
		mux_9_to_1_rgbs_0: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_0,
		 R_DATA_OUT => BG_MODEL(7 downto 0), G_DATA_OUT => BG_MODEL(343 downto 336), B_DATA_OUT => BG_MODEL(679 downto 672));
	BG_MODEL(15 downto 8) <= (others=>'0');
	BG_MODEL(351 downto 344) <= (others=>'0');
	BG_MODEL(687 downto 680) <= (others=>'0');
	mux_9_to_1_rgbs_1: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_1,
		 R_DATA_OUT => BG_MODEL(23 downto 16), G_DATA_OUT => BG_MODEL(359 downto 352), B_DATA_OUT => BG_MODEL(695 downto 688));
	BG_MODEL(31 downto 24) <= (others=>'0');
	BG_MODEL(367 downto 360) <= (others=>'0');
	BG_MODEL(703 downto 696) <= (others=>'0');
	mux_9_to_1_rgbs_2: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_2,
		 R_DATA_OUT => BG_MODEL(39 downto 32), G_DATA_OUT => BG_MODEL(375 downto 368), B_DATA_OUT => BG_MODEL(711 downto 704));
	BG_MODEL(47 downto 40) <= (others=>'0');
	BG_MODEL(383 downto 376) <= (others=>'0');
	BG_MODEL(719 downto 712) <= (others=>'0');
	mux_9_to_1_rgbs_3: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_3,
		 R_DATA_OUT => BG_MODEL(55 downto 48), G_DATA_OUT => BG_MODEL(391 downto 384), B_DATA_OUT => BG_MODEL(727 downto 720));
	BG_MODEL(63 downto 56) <= (others=>'0');
	BG_MODEL(399 downto 392) <= (others=>'0');
	BG_MODEL(735 downto 728) <= (others=>'0');
	mux_9_to_1_rgbs_4: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_4,
		 R_DATA_OUT => BG_MODEL(71 downto 64), G_DATA_OUT => BG_MODEL(407 downto 400), B_DATA_OUT => BG_MODEL(743 downto 736));
	BG_MODEL(79 downto 72) <= (others=>'0');
	BG_MODEL(415 downto 408) <= (others=>'0');
	BG_MODEL(751 downto 744) <= (others=>'0');
	mux_9_to_1_rgbs_5: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_5,
		 R_DATA_OUT => BG_MODEL(87 downto 80), G_DATA_OUT => BG_MODEL(423 downto 416), B_DATA_OUT => BG_MODEL(759 downto 752));
	BG_MODEL(95 downto 88) <= (others=>'0');
	BG_MODEL(431 downto 424) <= (others=>'0');
	BG_MODEL(767 downto 760) <= (others=>'0');
	mux_9_to_1_rgbs_6: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_6,
		 R_DATA_OUT => BG_MODEL(103 downto 96), G_DATA_OUT => BG_MODEL(439 downto 432), B_DATA_OUT => BG_MODEL(775 downto 768));
	BG_MODEL(111 downto 104) <= (others=>'0');
	BG_MODEL(447 downto 440) <= (others=>'0');
	BG_MODEL(783 downto 776) <= (others=>'0');
	mux_9_to_1_rgbs_7: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_7,
		 R_DATA_OUT => BG_MODEL(119 downto 112), G_DATA_OUT => BG_MODEL(455 downto 448), B_DATA_OUT => BG_MODEL(791 downto 784));
	BG_MODEL(127 downto 120) <= (others=>'0');
	BG_MODEL(463 downto 456) <= (others=>'0');
	BG_MODEL(799 downto 792) <= (others=>'0');
	mux_9_to_1_rgbs_8: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_8,
		 R_DATA_OUT => BG_MODEL(135 downto 128), G_DATA_OUT => BG_MODEL(471 downto 464), B_DATA_OUT => BG_MODEL(807 downto 800));
	BG_MODEL(143 downto 136) <= (others=>'0');
	BG_MODEL(479 downto 472) <= (others=>'0');
	BG_MODEL(815 downto 808) <= (others=>'0');
	mux_9_to_1_rgbs_9: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_9,
		 R_DATA_OUT => BG_MODEL(151 downto 144), G_DATA_OUT => BG_MODEL(487 downto 480), B_DATA_OUT => BG_MODEL(823 downto 816));
	BG_MODEL(159 downto 152) <= (others=>'0');
	BG_MODEL(495 downto 488) <= (others=>'0');
	BG_MODEL(831 downto 824) <= (others=>'0');
	mux_9_to_1_rgbs_10: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_10,
		 R_DATA_OUT => BG_MODEL(167 downto 160), G_DATA_OUT => BG_MODEL(503 downto 496), B_DATA_OUT => BG_MODEL(839 downto 832));
	BG_MODEL(175 downto 168) <= (others=>'0');
	BG_MODEL(511 downto 504) <= (others=>'0');
	BG_MODEL(847 downto 840) <= (others=>'0');
	mux_9_to_1_rgbs_11: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_11,
		 R_DATA_OUT => BG_MODEL(183 downto 176), G_DATA_OUT => BG_MODEL(519 downto 512), B_DATA_OUT => BG_MODEL(855 downto 848));
	BG_MODEL(191 downto 184) <= (others=>'0');
	BG_MODEL(527 downto 520) <= (others=>'0');
	BG_MODEL(863 downto 856) <= (others=>'0');
	mux_9_to_1_rgbs_12: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_12,
		 R_DATA_OUT => BG_MODEL(199 downto 192), G_DATA_OUT => BG_MODEL(535 downto 528), B_DATA_OUT => BG_MODEL(871 downto 864));
	BG_MODEL(207 downto 200) <= (others=>'0');
	BG_MODEL(543 downto 536) <= (others=>'0');
	BG_MODEL(879 downto 872) <= (others=>'0');
	mux_9_to_1_rgbs_13: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_13,
		 R_DATA_OUT => BG_MODEL(215 downto 208), G_DATA_OUT => BG_MODEL(551 downto 544), B_DATA_OUT => BG_MODEL(887 downto 880));
	BG_MODEL(223 downto 216) <= (others=>'0');
	BG_MODEL(559 downto 552) <= (others=>'0');
	BG_MODEL(895 downto 888) <= (others=>'0');
	mux_9_to_1_rgbs_14: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_14,
		 R_DATA_OUT => BG_MODEL(231 downto 224), G_DATA_OUT => BG_MODEL(567 downto 560), B_DATA_OUT => BG_MODEL(903 downto 896));
	BG_MODEL(239 downto 232) <= (others=>'0');
	BG_MODEL(575 downto 568) <= (others=>'0');
	BG_MODEL(911 downto 904) <= (others=>'0');
	mux_9_to_1_rgbs_15: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_15,
		 R_DATA_OUT => BG_MODEL(247 downto 240), G_DATA_OUT => BG_MODEL(583 downto 576), B_DATA_OUT => BG_MODEL(919 downto 912));
	BG_MODEL(255 downto 248) <= (others=>'0');
	BG_MODEL(591 downto 584) <= (others=>'0');
	BG_MODEL(927 downto 920) <= (others=>'0');
	mux_9_to_1_rgbs_16: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_16,
		 R_DATA_OUT => BG_MODEL(263 downto 256), G_DATA_OUT => BG_MODEL(599 downto 592), B_DATA_OUT => BG_MODEL(935 downto 928));
	BG_MODEL(271 downto 264) <= (others=>'0');
	BG_MODEL(607 downto 600) <= (others=>'0');
	BG_MODEL(943 downto 936) <= (others=>'0');
	mux_9_to_1_rgbs_17: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_17,
		 R_DATA_OUT => BG_MODEL(279 downto 272), G_DATA_OUT => BG_MODEL(615 downto 608), B_DATA_OUT => BG_MODEL(951 downto 944));
	BG_MODEL(287 downto 280) <= (others=>'0');
	BG_MODEL(623 downto 616) <= (others=>'0');
	BG_MODEL(959 downto 952) <= (others=>'0');
	mux_9_to_1_rgbs_18: mux_9_to_1_rgbs GENERIC MAP (WIDTH=>PIXEL_W+EDGE_W) PORT MAP(CLK => CLK, RST =>RST, CE =>CE, DATA_IN =>data_all, DATA_NO =>DATA_NO_18,
		 R_DATA_OUT => BG_MODEL(295 downto 288), G_DATA_OUT => BG_MODEL(631 downto 624), B_DATA_OUT => BG_MODEL(967 downto 960));
	BG_MODEL(303 downto 296) <= (others=>'0');
	BG_MODEL(639 downto 632) <= (others=>'0');
	BG_MODEL(975 downto 968) <= (others=>'0');

	BG_MODEL(319 downto 304) <= PARAM_R_INIT;
	BG_MODEL(335 downto 320) <= PARAM_T_INIT;
	BG_MODEL(655 downto 640) <= PARAM_R_INIT;
	BG_MODEL(671 downto 656) <= PARAM_T_INIT;
	BG_MODEL(991 downto 976) <= PARAM_R_INIT;
	BG_MODEL(1007 downto 992) <= PARAM_T_INIT;











end Behavioral;

