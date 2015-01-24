----------------------------------------------------------------------------------
-- Company:			AGH			  	
-- Engineer:		Kryjak Tomasz 
-- 
-- Create Date:    10:24:22 12/06/2012 
-- Design Name: 
-- Module Name:    pbas_top - Behavioral 
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
use IEEE.std_logic_signed.all; -- SIGNED

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
		
entity pbas_top is
	-- UWAGA TU TRZEBA ZMIENIAC PARAMETRY !!!!
	generic (
			PIXEL_W           : in natural := 8;      -- sigle pixel width 24 (RGB), 23 (CIE Lab) , 8 (GRAY)		
			EDGE_W            : in natural := 0;       -- sobel edge width - [!!!] - to set ... (+saturate)
			DIST_W			   : in natural := 8;       -- minimum distance - [!!!] - to set ... (+saturate)
			POS_W 			   : in natural := 6;       -- position - for sorting models
 			BRAM_SIZE_W			: in natural := 10;      -- BRAM delay lines 			
			RT_W					: in natural := 16;      -- R and T parametrest width	
			SAMPLES_N 			: in natural := 19;			
			BG_MODEL_SC_W 		: in natural := 336;    
			BG_MODEL_ALL_W    : in natural := 362;	    -- ???????
			BG_MODEL_WIDTH  	: in natural := 3*336    -- BG model single word {C0,M0,D0 ..... CN, MN, DN, R, T }
			
			);
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC; -- [!!!] musi  byæ podpiêty, bo dzia³a na tym gen liczb
           CE : in  STD_LOGIC;
			  		  
			  -- IMAGE RESOLUTION 
			  H_SIZE      : in  STD_LOGIC_VECTOR  (BRAM_SIZE_W-1  downto 0);  -- with porch
			  H_SIZE_IMG  : in  STD_LOGIC_VECTOR  (BRAM_SIZE_W-1  downto 0);  -- only valid pixels 
			  V_SIZE      : in  STD_LOGIC_VECTOR  (BRAM_SIZE_W-1  downto 0);  
			  
			  -- ALG PARAMETERS
			  PARAM_R_INIT : in  STD_LOGIC_VECTOR (RT_W-1 downto 0) := (others => '0');        -- R - distance init value
			  PARAM_T_INIT : in  STD_LOGIC_VECTOR (RT_W-1 downto 0) := (others => '0');        -- T - update param inti value
			  
			  PARAM_H_MIN :  in  STD_LOGIC_VECTOR (7 downto 0)  := "00000000";   -- # parameter in PBAS
			  
			  PARAM_R_INC_1   :  in  STD_LOGIC_VECTOR (RT_W-1 downto 0)  := (others => '0');     -- Rinc/dec parameter in PBAS
			  PARAM_R_DEC_1   :  in  STD_LOGIC_VECTOR (RT_W-1 downto 0)  := (others => '0');     -- Rinc/dec parameter in PBAS
			  PARAM_R_LOWER   :  in  STD_LOGIC_VECTOR (RT_W-1 downto 0)  := (others => '0');     -- Rlower parameter in PBAS
			  PARAM_R_SCALE   :  in  STD_LOGIC_VECTOR (RT_W-1 downto 0)  := (others => '0');     -- Rscale parameter in PBAS
			  PARAM_T_DEC     :  in  STD_LOGIC_VECTOR (RT_W-1 downto 0)  := (others => '0');       -- Tinc parameter in PBAS
			  PARAM_T_INC     :  in  STD_LOGIC_VECTOR (RT_W-1 downto 0)  := (others => '0');       -- Tdec parameter in PBAS
			  PARAM_T_LOWER   :  in  STD_LOGIC_VECTOR (RT_W-1 downto 0)  := (others => '0');     -- Tlower parameter in PBAS
			  PARAM_T_UPPER   :  in  STD_LOGIC_VECTOR (RT_W-1 downto 0)  := (others => '0');     -- Tupper parameter in PBAS			  
		  
			   -- CONTROL SIGNALS INPUT
           D_VALID_IN : in  STD_LOGIC:='0';			  
			  L_VALID_IN : in STD_LOGIC:='0';		
			  F_VALID_IN : in  STD_LOGIC:='0';
			  
			  INITMODEL : IN STD_LOGIC :='0';					-- [!!!] powinien byæ podpiêty (przycisk lub switch)
		  
			  -- INPUT
			  PIXEL   : in  STD_LOGIC_VECTOR     (3*PIXEL_W-1  downto 0); 
 			  RAM_WORD_IN : in STD_LOGIC_VECTOR  (BG_MODEL_WIDTH-1  downto 0); 
			  				
				-- CONTROL SIGNALS OUTPUT
			  D_VALID_MASK_OUT : out  STD_LOGIC := '0';		 
			  L_VALID_MASK_OUT : out  STD_LOGIC := '0';		
			  F_VALID_MASK_OUT : out  STD_LOGIC := '0';
			  
			  D_VALID_MODEL_OUT : out  STD_LOGIC := '0';		 
			  L_VALID_MODEL_OUT : out  STD_LOGIC := '0';		
			  F_VALID_MODEL_OUT : out  STD_LOGIC := '0';
		
			  D_VALID_READ_MODEL_RAM  : out STD_LOGIC := '0';
			  D_VALID_WRITE_MODEL_RAM : out STD_LOGIC := '0';
			  
			 
			  -- OUTPUT
			  RAM_WORD_OUT : out STD_LOGIC_VECTOR  (BG_MODEL_WIDTH-1   downto 0) := (others=>'0'); 
		     INIT_RNG_DONE : out  STD_LOGIC := '0';	  -- [!!!] wyswietlenie na diodzie ....
			  MASK : out  STD_LOGIC := '0'	  
			  
			  );
end pbas_top;

architecture Behavioral of pbas_top is
	
		
	--------------------------------------------------------------------------
	-- gen_128
	--------------------------------------------------------------------------
	COMPONENT gen_128 is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
			  CE : in  STD_LOGIC;
           INIT_DONE : out  STD_LOGIC :='0';
           RNG : out  STD_LOGIC_VECTOR(127 downto 0) := ( others => '0')       -- init bits
           );
	end COMPONENT gen_128;
	
	
	--------------------------------------------------------------------------
	-- pbas_init
	--------------------------------------------------------------------------
	COMPONENT pbas_init is
	generic (
			PIXEL_W           : in natural := 24;      -- sigle pixel width 24 (RGB), 23 (CIE Lab) , 8 (GRAY)		
			EDGE_W            : in natural := 0;       -- sobel edge width - [!!!] - to set ... (+saturate)
			DIST_W			: in natural := 8;       -- minimum distance - [!!!] - to set ... (+saturate)	
			BRAM_SIZE_W			: in natural := 10;      -- BRAM delay lines 			
			RT_W					: in natural := 18;      -- R and T parametrest width
			BG_MODEL_WIDTH  	: in natural := 1024     -- BG model single word {C0,M0,D0 ..... CN, MN, DN, R, T }
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
           PIXEL : in  STD_LOGIC_VECTOR (PIXEL_W-1 downto 0);			  		  
			  RNG : in STD_LOGIC_VECTOR (127 downto 0);			  
			  
			  -- CONTROL SIGNALS OUTPUT
			  D_VALID_OUT : out  STD_LOGIC;		 
			  L_VALID_OUT : out STD_LOGIC;		
			  F_VALID_OUT : out  STD_LOGIC;     
			  
			  -- OUTPUT DATA
           BG_MODEL : out  STD_LOGIC_VECTOR (BG_MODEL_WIDTH-1 downto 0)			  
			  );
			  
	end COMPONENT pbas_init;
	
	
	--------------------------------------------------------------------------
	-- pbas_proc_sc_5
	--------------------------------------------------------------------------
	COMPONENT pbas_proc_sc_19 is
	generic (
			PIXEL_W : in natural := 8;	
			RT_W : in natural := 16;	
			DIST_W : in natural := 8;
			POS_W : in natural := 4;
			SAMPLES_N : in natural := 19;
			BRAM_SIZE_W : in natural := 10;
			BG_MODEL_SC_W : in natural := 112;
			BG_MODEL_ALL_W : in natural := 136
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
			  
			  -- ALG PARAMETERS
			  PARAM_H_MIN :  in  STD_LOGIC_VECTOR (7 downto 0);    -- liczba modeli, ktore musza byc zgodne aby piksel byl uznany za tlo (2)
			 
           PARAM_R_INC_1   :  in  STD_LOGIC_VECTOR (RT_W-1 downto 0)  := (others => '0');     -- Rinc/dec parameter in PBAS
			  PARAM_R_DEC_1   :  in  STD_LOGIC_VECTOR (RT_W-1 downto 0)  := (others => '0');     -- Rinc/dec parameter in PBAS
			  PARAM_R_LOWER   :  in  STD_LOGIC_VECTOR (RT_W-1 downto 0)  := (others => '0');     -- Rlower parameter in PBAS
			  PARAM_R_SCALE   :  in  STD_LOGIC_VECTOR (RT_W-1 downto 0)  := (others => '0');     -- Rscale parameter in PBAS
			  PARAM_T_DEC     :  in  STD_LOGIC_VECTOR (RT_W-1 downto 0)  := (others => '0');       -- Tinc parameter in PBAS
			  PARAM_T_INC     :  in  STD_LOGIC_VECTOR (RT_W-1 downto 0)  := (others => '0');       -- Tdec parameter in PBAS
			  PARAM_T_LOWER   :  in  STD_LOGIC_VECTOR (RT_W-1 downto 0)  := (others => '0');     -- Tlower parameter in PBAS
			  PARAM_T_UPPER   :  in  STD_LOGIC_VECTOR (RT_W-1 downto 0)  := (others => '0');     -- Tupper parameter in PBAS	
			  PIXEL : in  STD_LOGIC_VECTOR (PIXEL_W-1 downto 0);
			  BG_MODEL_IN : in  STD_LOGIC_VECTOR (BG_MODEL_SC_W-1 downto 0);
			  RNG : in  STD_LOGIC_VECTOR (127 downto 0);
			  
			   -- CONTROL SIGNALS OUTPUT
			  D_VALID_MASK_OUT : out  STD_LOGIC;  
			  L_VALID_MASK_OUT : out STD_LOGIC;   
			  F_VALID_MASK_OUT : out  STD_LOGIC;  
			  D_VALID_MODEL_OUT : out  STD_LOGIC;	
			  L_VALID_MODEL_OUT : out STD_LOGIC;
			  F_VALID_MODEL_OUT : out  STD_LOGIC; 
			  
			  -- OUTPUT DATA
           BG_MODEL_OUT : out  STD_LOGIC_VECTOR (BG_MODEL_SC_W-1 downto 0);
			  MASK : out  STD_LOGIC
			  
			  );
	end COMPONENT pbas_proc_sc_19;


	-- SIGNALS
	-- DLF - VALID
	signal D_VALID_INIT : std_logic := '0';
	signal L_VALID_INIT : std_logic := '0';
	signal F_VALID_INIT : std_logic := '0';
	
	signal D_VALID_PROC : std_logic := '0';
	signal L_VALID_PROC : std_logic := '0';
	signal F_VALID_PROC : std_logic := '0';
	
	signal D_VALID_MODEL_PROC_OUT : std_logic := '0';
	signal L_VALID_MODEL_PROC_OUT : std_logic := '0';
	signal F_VALID_MODEL_PROC_OUT : std_logic := '0';
	
	signal D_VALID_MASK_PROC_OUT : std_logic := '0';
	signal L_VALID_MASK_PROC_OUT : std_logic := '0';
	signal F_VALID_MASK_PROC_OUT : std_logic := '0';
	
	
	
	-- LAB's
	signal L : std_logic_vector(6 downto 0) := (others => '0');
	signal A : std_logic_vector(7 downto 0) := (others => '0');
	signal B : std_logic_vector(7 downto 0) := (others => '0');
	
	signal L_SOBEL : std_logic_vector(6 downto 0) := (others => '0');
	signal A_SOBEL : std_logic_vector(7 downto 0) := (others => '0');
	signal B_SOBEL : std_logic_vector(7 downto 0) := (others => '0');
	
	signal DM_SOBEL :  std_logic_vector(EDGE_W-1 downto 0) := (others => '0');
	
	signal LAB_PIXEL : std_logic_vector(PIXEL_W-1 downto 0) := (others => '0'); 
	
	-- RNG
	signal RNG :  std_logic_vector(127 downto 0) := (others => '0');
	
	signal BG_MODEL_INIT_OUT : STD_LOGIC_VECTOR (BG_MODEL_WIDTH-1 downto 0) := (others => '0');
	signal BG_MODEL_PROC_OUT : STD_LOGIC_VECTOR (BG_MODEL_WIDTH-1 downto 0) := (others => '0');
	
	signal MASK_R : STD_LOGIC :='0';
	signal MASK_G : STD_LOGIC :='0';
	signal MASK_B : STD_LOGIC :='0';
	
	
	
	-- INIT MACHINE	
	signal STATE : STD_LOGIC_VECTOR (2 downto 0):= (others => '0');
	signal F_VALID_IN_PREV : STD_LOGIC := '0';
	signal F_VALID_CNT : STD_LOGIC_VECTOR (3 downto 0):= (others => '0');
	

begin


-- --------------------------------------------------------------------------------------------
	-- Instancja generatora losowane 128 bitów (do roznego wykorzystania)
	-- --------------------------------------------------------------------------------------------
	gen_128_0: gen_128 PORT MAP (
          CLK => CLK,
          RST => RST,
          CE => CE,
          INIT_DONE => INIT_RNG_DONE,
          RNG => RNG
        );
	
	-- --------------------------------------------------------------------------------------------
	-- Instancja inicjalizatora PBAS
	-- --------------------------------------------------------------------------------------------
	pbas_init_0: pbas_init 
	GENERIC MAP (PIXEL_W => 3*PIXEL_W, -- req 24 is 8
              	 EDGE_W=> EDGE_W,
					 DIST_W=> DIST_W,
					 BRAM_SIZE_W=> BRAM_SIZE_W,
					 RT_W=> RT_W,
					 BG_MODEL_WIDTH => BG_MODEL_WIDTH					 
					 )
	PORT MAP(
		CLK => CLK,
		RST => RST,
		CE => CE,
		
		D_VALID_IN => D_VALID_IN, 
		L_VALID_IN => L_VALID_IN, 
		F_VALID_IN => F_VALID_IN, 
		
		H_SIZE => H_SIZE,
		H_SIZE_IMG => H_SIZE_IMG,
		V_SIZE => V_SIZE,
		
		
		PARAM_R_INIT=>PARAM_R_INIT,
		PARAM_T_INIT=>PARAM_T_INIT,
			
		PIXEL => PIXEL,
			
		RNG => RNG,
		--RNG => (others => '0'),
		D_VALID_OUT => D_VALID_INIT,
		L_VALID_OUT => L_VALID_INIT,
		F_VALID_OUT => F_VALID_INIT,
		
		BG_MODEL => BG_MODEL_INIT_OUT
	);

    --TEMP - AFTER INIT
--	D_VALID_OUT <= D_VALID_INIT;
--	L_VALID_OUT <= L_VALID_INIT;
--	F_VALID_OUT <= F_VALID_INIT;
--	RAM_WORD_OUT <= BG_MODEL_INIT_OUT;
--
--	MASK <='0';
	
	-- --------------------------------------------------------------------------------------------
	-- Instancja obliczen ViBe
	-- --------------------------------------------------------------------------------------------
--	vibe_proc_0 : vibe_proc 
--	G
	pbas_proc_sc_19_B: pbas_proc_sc_19 
	GENERIC MAP (
			PIXEL_W =>PIXEL_W,
			RT_W  =>RT_W,
			DIST_W =>DIST_W,
			POS_W =>POS_W,
			SAMPLES_N =>SAMPLES_N,
			BRAM_SIZE_W =>BRAM_SIZE_W,
			BG_MODEL_SC_W =>BG_MODEL_SC_W,
			BG_MODEL_ALL_W =>BG_MODEL_ALL_W
	)	
	PORT MAP(
		CLK => CLK ,
		RST => RST ,
		CE =>  CE,
		D_VALID_IN => D_VALID_IN ,
		L_VALID_IN => L_VALID_IN ,
		F_VALID_IN => F_VALID_IN ,
		H_SIZE =>  H_SIZE,
		H_SIZE_IMG => H_SIZE_IMG ,
		V_SIZE => V_SIZE ,
		PARAM_H_MIN =>  PARAM_H_MIN,
		PARAM_R_INC_1 =>  PARAM_R_INC_1,
		PARAM_R_DEC_1 => PARAM_R_DEC_1 ,
		PARAM_R_LOWER =>  PARAM_R_LOWER,
		PARAM_R_SCALE => PARAM_R_SCALE ,
		PARAM_T_DEC => PARAM_T_DEC ,
		PARAM_T_INC =>  PARAM_T_INC,
		PARAM_T_LOWER => PARAM_T_LOWER ,
		PARAM_T_UPPER => PARAM_T_UPPER ,
		PIXEL => PIXEL(7 downto 0),    -- one channel
  		BG_MODEL_IN => RAM_WORD_IN(BG_MODEL_SC_W-1 downto 0) ,
		RNG => RNG ,
		D_VALID_MASK_OUT => D_VALID_MASK_PROC_OUT ,
		L_VALID_MASK_OUT => L_VALID_MASK_PROC_OUT ,
		F_VALID_MASK_OUT => F_VALID_MASK_PROC_OUT ,
		D_VALID_MODEL_OUT => D_VALID_MODEL_PROC_OUT,
		L_VALID_MODEL_OUT => L_VALID_MODEL_PROC_OUT,
		F_VALID_MODEL_OUT => F_VALID_MODEL_PROC_OUT ,
		BG_MODEL_OUT => BG_MODEL_PROC_OUT(BG_MODEL_SC_W-1 downto 0),
		MASK => MASK_B
	);
	
	pbas_proc_sc_19_G: pbas_proc_sc_19 
	GENERIC MAP (
			PIXEL_W =>PIXEL_W,
			RT_W  =>RT_W,
			DIST_W =>DIST_W,
			POS_W =>POS_W,
			SAMPLES_N =>SAMPLES_N,
			BRAM_SIZE_W =>BRAM_SIZE_W,
			BG_MODEL_SC_W =>BG_MODEL_SC_W,
			BG_MODEL_ALL_W =>BG_MODEL_ALL_W
	)	
	PORT MAP(
		CLK => CLK ,
		RST => RST ,
		CE =>  CE,
		D_VALID_IN => D_VALID_IN ,
		L_VALID_IN => L_VALID_IN ,
		F_VALID_IN => F_VALID_IN ,
		H_SIZE =>  H_SIZE,
		H_SIZE_IMG => H_SIZE_IMG ,
		V_SIZE => V_SIZE ,
		PARAM_H_MIN =>  PARAM_H_MIN,
		PARAM_R_INC_1 =>  PARAM_R_INC_1,
		PARAM_R_DEC_1 => PARAM_R_DEC_1 ,
		PARAM_R_LOWER =>  PARAM_R_LOWER,
		PARAM_R_SCALE => PARAM_R_SCALE ,
		PARAM_T_DEC => PARAM_T_DEC ,
		PARAM_T_INC =>  PARAM_T_INC,
		PARAM_T_LOWER => PARAM_T_LOWER ,
		PARAM_T_UPPER => PARAM_T_UPPER ,
		PIXEL => PIXEL(15 downto 8),    -- one channel
  		BG_MODEL_IN => RAM_WORD_IN(2*BG_MODEL_SC_W-1 downto BG_MODEL_SC_W) ,
		RNG => RNG ,
--		D_VALID_MASK_OUT => D_VALID_MASK_PROC_OUT ,
--		L_VALID_MASK_OUT => L_VALID_MASK_PROC_OUT ,
--		F_VALID_MASK_OUT => F_VALID_MASK_PROC_OUT ,
--		D_VALID_MODEL_OUT => D_VALID_MODEL_PROC_OUT,
--		L_VALID_MODEL_OUT => L_VALID_MODEL_PROC_OUT,
--		F_VALID_MODEL_OUT => F_VALID_MODEL_PROC_OUT ,
		BG_MODEL_OUT => BG_MODEL_PROC_OUT(2*BG_MODEL_SC_W-1 downto BG_MODEL_SC_W),
		MASK => MASK_G
	);
	
	pbas_proc_sc_19_R: pbas_proc_sc_19 
	GENERIC MAP (
			PIXEL_W =>PIXEL_W,
			RT_W  =>RT_W,
			DIST_W =>DIST_W,
			POS_W =>POS_W,
			SAMPLES_N =>SAMPLES_N,
			BRAM_SIZE_W =>BRAM_SIZE_W,
			BG_MODEL_SC_W =>BG_MODEL_SC_W,
			BG_MODEL_ALL_W =>BG_MODEL_ALL_W
	)	
	PORT MAP(
		CLK => CLK ,
		RST => RST ,
		CE =>  CE,
		D_VALID_IN => D_VALID_IN ,
		L_VALID_IN => L_VALID_IN ,
		F_VALID_IN => F_VALID_IN ,
		H_SIZE =>  H_SIZE,
		H_SIZE_IMG => H_SIZE_IMG ,
		V_SIZE => V_SIZE ,
		PARAM_H_MIN =>  PARAM_H_MIN,
		PARAM_R_INC_1 =>  PARAM_R_INC_1,
		PARAM_R_DEC_1 => PARAM_R_DEC_1 ,
		PARAM_R_LOWER =>  PARAM_R_LOWER,
		PARAM_R_SCALE => PARAM_R_SCALE ,
		PARAM_T_DEC => PARAM_T_DEC ,
		PARAM_T_INC =>  PARAM_T_INC,
		PARAM_T_LOWER => PARAM_T_LOWER ,
		PARAM_T_UPPER => PARAM_T_UPPER ,
		PIXEL => PIXEL(23 downto 16),    -- one channel
  		BG_MODEL_IN => RAM_WORD_IN(3*BG_MODEL_SC_W-1 downto 2*BG_MODEL_SC_W) ,
		RNG => RNG ,
--		D_VALID_MASK_OUT => D_VALID_MASK_PROC_OUT ,
--		L_VALID_MASK_OUT => L_VALID_MASK_PROC_OUT ,
--		F_VALID_MASK_OUT => F_VALID_MASK_PROC_OUT ,
--		D_VALID_MODEL_OUT => D_VALID_MODEL_PROC_OUT,
--		L_VALID_MODEL_OUT => L_VALID_MODEL_PROC_OUT,
--		F_VALID_MODEL_OUT => F_VALID_MODEL_PROC_OUT ,
		BG_MODEL_OUT => BG_MODEL_PROC_OUT(3*BG_MODEL_SC_W-1 downto 2*BG_MODEL_SC_W),
		MASK => MASK_R
	);



	
	-- --------------------------------------------------------------------------------------------
	-- MULTIPLEKSER WYNIKOW ...
	-- --------------------------------------------------------------------------------------------
	process (CLK)		
	begin
		if ( rising_edge(CLK) ) then
			if ( CE = '1' )  then
				
				if (RST = '1' ) then
					STATE <="000";
					F_VALID_CNT <="0000";
					
					D_VALID_MASK_OUT <= '0';
					L_VALID_MASK_OUT <= '0';
					F_VALID_MASK_OUT <= '0';
					
					D_VALID_MODEL_OUT <= D_VALID_INIT;
					L_VALID_MODEL_OUT <= L_VALID_INIT;
					F_VALID_MODEL_OUT <= F_VALID_INIT;
					
					RAM_WORD_OUT<=BG_MODEL_INIT_OUT;
				else
					
					if (STATE = "000" ) then
						D_VALID_MASK_OUT <= '0';
						L_VALID_MASK_OUT <= '0';
						F_VALID_MASK_OUT <= '0';
						
						D_VALID_MODEL_OUT <= D_VALID_INIT;
						L_VALID_MODEL_OUT <= L_VALID_INIT;
						F_VALID_MODEL_OUT <= F_VALID_INIT;
						RAM_WORD_OUT<=BG_MODEL_INIT_OUT;
					end if;
					
					if (INITMODEL='1') then
						if ( F_VALID_IN ='0' and F_VALID_IN_PREV ='1' ) then  -- koniec linii
							STATE <="001";					
							F_VALID_CNT <="0000";			
						end if;					
					end if;
					
					if (STATE = "001" ) then
					
						if ( F_VALID_IN ='0' and F_VALID_IN_PREV ='1' ) then
							F_VALID_CNT <= F_VALID_CNT +1;
						end if;
						
						if ( F_VALID_CNT > "0101" ) then
							STATE <= "011";
							F_VALID_CNT <="0000";
						end if;
						
						D_VALID_MASK_OUT <= '0';
						L_VALID_MASK_OUT <= '0';
						F_VALID_MASK_OUT <= '0';
						
						D_VALID_MODEL_OUT <= D_VALID_INIT;
						L_VALID_MODEL_OUT <= L_VALID_INIT;
						F_VALID_MODEL_OUT <= F_VALID_INIT;
						
						RAM_WORD_OUT<=BG_MODEL_INIT_OUT;
						MASK <='1';
						
					end if;
					
					if ( STATE = "011") then
					
						D_VALID_MODEL_OUT <= D_VALID_MODEL_PROC_OUT;
						L_VALID_MODEL_OUT <= L_VALID_MODEL_PROC_OUT;
						F_VALID_MODEL_OUT <= F_VALID_MODEL_PROC_OUT;
						
						D_VALID_MASK_OUT <= D_VALID_MASK_PROC_OUT;
						L_VALID_MASK_OUT <= L_VALID_MASK_PROC_OUT;
						F_VALID_MASK_OUT <= F_VALID_MASK_PROC_OUT;						
						
						RAM_WORD_OUT<=BG_MODEL_PROC_OUT;
						
						MASK <= (MASK_R or MASK_G or MASK_B);
					end if;				
				
					F_VALID_IN_PREV <= F_VALID_IN;
				end if;
			end if;
		end if;
	end process;



end Behavioral;



