-- Tomasz Kryjak
-- AGH Krakow

			  
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
			  
entity pbas_proc_sc_19 is
	generic (
			PIXEL_W : in natural := 8;	
			RT_W : in natural := 16;	
			DIST_W : in natural := 8;
			POS_W : in natural := 6;
			SAMPLES_N : in natural := 19;
			BRAM_SIZE_W : in natural := 10;
			BG_MODEL_SC_W : in natural := 336;
			BG_MODEL_ALL_W : in natural := 362
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
end pbas_proc_sc_19;


architecture Behavioral of pbas_proc_sc_19 is
component pix_model_dist_1C is
		 Generic (PIXEL_W : integer :=8;
					 R_W : integer :=16;
					 DIST_W : integer := 8
		 );
		 Port ( CLK 	: in  STD_LOGIC;
				  RST 	: in  STD_LOGIC;
				  CE  	: in  STD_LOGIC;
				 
               D_VALID : in  STD_LOGIC := '0';
               L_VALID : in  STD_LOGIC := '0';
               F_VALID : in  STD_LOGIC := '0';
				  PIXEL  : in  STD_LOGIC_VECTOR (PIXEL_W-1 downto 0);
				  MODEL  : in  STD_LOGIC_VECTOR (PIXEL_W-1 downto 0);
				  
				  PARAM_R    : in  STD_LOGIC_VECTOR  (R_W - 1 downto 0);	-- PRECYZJA ??????	
				  
				  DIST_OUT   : out STD_LOGIC_VECTOR (DIST_W-1 downto 0); 
				  RESULT_OUT : out  STD_LOGIC;
               D_VALID_OUT : out  STD_LOGIC;
               L_VALID_OUT : out  STD_LOGIC;
               F_VALID_OUT : out  STD_LOGIC
				  
				  );
end  component pix_model_dist_1C;

component sumTree_binary_19 is
	 Generic ( SAMPLES_N : natural := 19;
			   OUTPUT_W : natural := 6
    );
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           D_VALID : in  STD_LOGIC  := '0';
           L_VALID : in  STD_LOGIC  := '0';
           F_VALID : in  STD_LOGIC  := '0';
           INPUT : in  STD_LOGIC_VECTOR (SAMPLES_N -1 downto 0);
           SUM     : out  STD_LOGIC_VECTOR (OUTPUT_W-1 downto 0);
           D_VALID_OUT : out  STD_LOGIC;
           L_VALID_OUT : out  STD_LOGIC;
           F_VALID_OUT : out  STD_LOGIC
			  );
end component sumTree_binary_19;

	component min_value_pos_tree_19 is
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
	end component min_value_pos_tree_19;

	component delayLineBramWP is
		generic (
				WIDTH : in natural := 36;
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

component switchModel_pbas_rgbs_19 is
	generic (
			PIXEL_W : in natural := 8;
			DIST_W  : in natural := 8;
			POS_W    : in natural := 6;
			RT_W    : in natural := 16;
			BG_MODEL_SC_W    : in natural := 336;
			BG_MODEL_ALL_W : in natural := 362
			);
    Port ( CLK : in STD_LOGIC;
			  RST : in STD_LOGIC;
			  CE : in STD_LOGIC;
			  SWITCH : in STD_LOGIC;
			  IS_CENTRAL : in STD_LOGIC;
			  TOSWITCH : in STD_LOGIC_VECTOR(7 downto 0);
           BG_MODEL_IN : in  STD_LOGIC_VECTOR (BG_MODEL_ALL_W -1 downto 0);

			  BG_MODEL_OUT : out  STD_LOGIC_VECTOR (BG_MODEL_ALL_W -1 downto 0)
			  );
end component switchModel_pbas_rgbs_19;

	COMPONENT mult17x17
	  PORT (
		 clk : IN STD_LOGIC;
		 a : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
		 ce : IN STD_LOGIC;
		 p : OUT STD_LOGIC_VECTOR(33 DOWNTO 0)
	  );
	END COMPONENT;

COMPONENT sumTree_us_19 is
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
end  COMPONENT sumTree_us_19;

component div_14_6
	port (
	clk: in std_logic;
	rfd: out std_logic;
	dividend: in std_logic_vector(13 downto 0);
	divisor: in std_logic_vector(5 downto 0);
	quotient: out std_logic_vector(13 downto 0);
	fractional: out std_logic_vector(5 downto 0));
end component;

	 COMPONENT decision_thr
		PORT(
		 clk : IN std_logic;
		 rv : IN std_logic;
		 rx : IN std_logic_vector(15 downto 0);
		 dmin : IN std_logic_vector(15 downto 0);
		 rscale : IN std_logic_vector(15 downto 0);
		 rlow : IN std_logic_vector(15 downto 0);
			one_minus_rinc : IN std_logic_vector(15 downto 0);
		 one_plus_rinc : IN std_logic_vector(15 downto 0);  
		 rnv : OUT std_logic;
		rnx : OUT std_logic_vector(15 downto 0)
		);
		END COMPONENT;

	 COMPONENT learning_rate
		 PORT(
		 clk : IN std_logic;
			tv : IN std_logic;
			tx : IN std_logic_vector(15 downto 0);
			fx : IN std_logic;
			dmin : IN std_logic_vector(15 downto 0);
			tinc : IN std_logic_vector(15 downto 0);
			tdec : IN std_logic_vector(15 downto 0);
			tup : IN std_logic_vector(15 downto 0);
			tlow : IN std_logic_vector(15 downto 0); 
			tnv : OUT std_logic;
			tnx : OUT std_logic_vector(15 downto 0)
			);
	 END COMPONENT;



-- SINGALS ---------------------------------------------------------------------------

	 signal DIST_VEC : STD_LOGIC_VECTOR (151 downto  0) := (others => '0');
	 signal RESULT_VEC : STD_LOGIC_VECTOR (18 downto  0) := (others => '0');

	 signal SUM : STD_LOGIC_VECTOR (5 downto  0) := (others => '0');
	 signal MIN_DIST : STD_LOGIC_VECTOR (DIST_W-1 downto  0) := (others => '0');
	 signal MIN_POS : STD_LOGIC_VECTOR (5 downto  0) := (others => '0');
	 signal MIN_DIST_CLASS : STD_LOGIC_VECTOR (DIST_W-1 downto  0) := (others => '0');
	 signal MIN_POS_CLASS : STD_LOGIC_VECTOR (5 downto  0) := (others => '0');

	 signal BG_MODEL_ALL : STD_LOGIC_VECTOR (346 downto  0) := (others => '0');
	 signal BG_MODEL_ALL_1_3_LONG : STD_LOGIC_VECTOR (395 downto  0) := (others => '0');
	 signal BG_MODEL_ALL_2_3_LONG : STD_LOGIC_VECTOR (395 downto  0) := (others => '0');
	 signal BG_MODEL_C0 : STD_LOGIC_VECTOR (395 downto  0) := (others => '0');
	 signal BG_MODEL_C1 : STD_LOGIC_VECTOR (395 downto  0) := (others => '0');
	 signal BG_MODEL_C2 : STD_LOGIC_VECTOR (395 downto  0) := (others => '0');
	 signal BG_MODEL_1_1 : STD_LOGIC_VECTOR (361 downto  0) := (others => '0');
	 signal BG_MODEL_1_2 : STD_LOGIC_VECTOR (361 downto  0) := (others => '0');
	 signal BG_MODEL_1_3 : STD_LOGIC_VECTOR (361 downto  0) := (others => '0');
	 signal BG_MODEL_2_1 : STD_LOGIC_VECTOR (361 downto  0) := (others => '0');
	 signal BG_MODEL_2_2 : STD_LOGIC_VECTOR (361 downto  0) := (others => '0');
	 signal BG_MODEL_2_3 : STD_LOGIC_VECTOR (361 downto  0) := (others => '0');
	 signal BG_MODEL_3_1 : STD_LOGIC_VECTOR (361 downto  0) := (others => '0');
	 signal BG_MODEL_3_2 : STD_LOGIC_VECTOR (361 downto  0) := (others => '0');
	 signal BG_MODEL_3_3 : STD_LOGIC_VECTOR (361 downto  0) := (others => '0');
	 signal CLASSIFICATION : STD_LOGIC := '0';
	 signal mask_c : STD_LOGIC := '0';
	 signal update : STD_LOGIC := '0';
	 signal fcv : STD_LOGIC := '0';
	 signal fcv_last : STD_LOGIC := '0';
	signal DIST_VECT_D : STD_LOGIC_VECTOR  (DIST_W*SAMPLES_N-1 downto 0) := (others => '0'); 
	signal SUM_DIST : STD_LOGIC_VECTOR  (12 downto 0) := (others => '0'); 
	signal MEAN_SUM_DIST : STD_LOGIC_VECTOR  (RT_W-1 downto 0) := (others => '0'); 
 signal rfd : STD_LOGIC := '0';
	signal dividend_SUM_DIST:  std_logic_vector(13 downto 0):= (others => '0');
	signal quotient_SUM_DIST:  std_logic_vector(13 downto 0):= (others => '0');
	signal fractional_SUM_DIST:  std_logic_vector(5 downto 0):= (others => '0');
	signal NEW_T : STD_LOGIC_VECTOR  (RT_W-1 downto 0) := (others => '0'); 
	signal NEW_R : STD_LOGIC_VECTOR  (RT_W-1 downto 0) := (others => '0'); 
 signal rng_20_1_1 : STD_LOGIC_VECTOR  (33 downto 0):= (others => '0');
 signal rng_20_1_2 : STD_LOGIC_VECTOR  (33 downto 0):= (others => '0');
 signal rng_8_1_1 : STD_LOGIC_VECTOR  (33 downto 0):= (others => '0');
 signal rng_T : STD_LOGIC_VECTOR  (33 downto 0):= (others => '0');
 signal updateModel_19_1 :  STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
 signal updateModel_19_2 :  STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
 signal selectContext_8_1 :  STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
 signal select8 :  STD_LOGIC_VECTOR (7 downto 0) := (others => '0'); 
 signal up1 : STD_LOGIC := '0';
 signal up2 : STD_LOGIC := '0';
 signal up3 : STD_LOGIC := '0';
 signal up4 : STD_LOGIC := '0';
 signal up5 : STD_LOGIC := '0';
 signal up6 : STD_LOGIC := '0';
 signal up7 : STD_LOGIC := '0';
 signal up8 : STD_LOGIC := '0';
 signal up9 : STD_LOGIC := '0';
	signal hDelayCnt : STD_LOGIC_VECTOR  (BRAM_SIZE_W-1 downto 0) := (others => '0'); 
	signal vDelayCnt : STD_LOGIC_VECTOR  (BRAM_SIZE_W-1 downto 0) := (others => '0'); 
	signal PARAM_R : STD_LOGIC_VECTOR  (RT_W-1 downto 0) := (others => '0'); 
	signal PARAM_T : STD_LOGIC_VECTOR  (RT_W-1 downto 0) := (others => '0'); 

 signal D_VALID_DIST : STD_LOGIC := '0';
 signal L_VALID_DIST : STD_LOGIC := '0';
 signal F_VALID_DIST : STD_LOGIC := '0';
 signal D_VALID_BT : STD_LOGIC := '0';
 signal L_VALID_BT : STD_LOGIC := '0';
 signal F_VALID_BT : STD_LOGIC := '0';
 signal D_VALID_CLASS : STD_LOGIC := '0';
 signal L_VALID_CLASS : STD_LOGIC := '0';
 signal F_VALID_CLASS : STD_LOGIC := '0';
 signal D_VALID_SUM_MEAN_DIST : STD_LOGIC := '0';
 signal L_VALID_SUM_MEAN_DIST : STD_LOGIC := '0';
 signal F_VALID_SUM_MEAN_DIST : STD_LOGIC := '0';
 signal PIXEL_0 : STD_LOGIC_VECTOR (PIXEL_W-1 downto  0) := (others => '0');
 signal BG_MODEL_0 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal PIXEL_1 : STD_LOGIC_VECTOR (PIXEL_W-1 downto  0) := (others => '0');
 signal BG_MODEL_1 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal PIXEL_2 : STD_LOGIC_VECTOR (PIXEL_W-1 downto  0) := (others => '0');
 signal BG_MODEL_2 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal PIXEL_3 : STD_LOGIC_VECTOR (PIXEL_W-1 downto  0) := (others => '0');
 signal BG_MODEL_3 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal PIXEL_4 : STD_LOGIC_VECTOR (PIXEL_W-1 downto  0) := (others => '0');
 signal BG_MODEL_4 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal PIXEL_5 : STD_LOGIC_VECTOR (PIXEL_W-1 downto  0) := (others => '0');
 signal BG_MODEL_5 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal PIXEL_6 : STD_LOGIC_VECTOR (PIXEL_W-1 downto  0) := (others => '0');
 signal BG_MODEL_6 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal PIXEL_7 : STD_LOGIC_VECTOR (PIXEL_W-1 downto  0) := (others => '0');
 signal BG_MODEL_7 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal PIXEL_8 : STD_LOGIC_VECTOR (PIXEL_W-1 downto  0) := (others => '0');
 signal BG_MODEL_8 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');

 signal BG_MODEL_MEAN_0 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_0 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_0 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_0 : STD_LOGIC :=  '0';
 signal MASK_MEAN_0 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_1 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_1 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_1 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_1 : STD_LOGIC :=  '0';
 signal MASK_MEAN_1 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_2 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_2 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_2 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_2 : STD_LOGIC :=  '0';
 signal MASK_MEAN_2 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_3 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_3 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_3 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_3 : STD_LOGIC :=  '0';
 signal MASK_MEAN_3 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_4 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_4 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_4 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_4 : STD_LOGIC :=  '0';
 signal MASK_MEAN_4 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_5 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_5 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_5 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_5 : STD_LOGIC :=  '0';
 signal MASK_MEAN_5 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_6 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_6 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_6 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_6 : STD_LOGIC :=  '0';
 signal MASK_MEAN_6 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_7 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_7 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_7 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_7 : STD_LOGIC :=  '0';
 signal MASK_MEAN_7 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_8 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_8 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_8 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_8 : STD_LOGIC :=  '0';
 signal MASK_MEAN_8 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_9 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_9 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_9 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_9 : STD_LOGIC :=  '0';
 signal MASK_MEAN_9 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_10 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_10 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_10 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_10 : STD_LOGIC :=  '0';
 signal MASK_MEAN_10 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_11 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_11 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_11 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_11 : STD_LOGIC :=  '0';
 signal MASK_MEAN_11 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_12 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_12 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_12 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_12 : STD_LOGIC :=  '0';
 signal MASK_MEAN_12 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_13 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_13 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_13 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_13 : STD_LOGIC :=  '0';
 signal MASK_MEAN_13 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_14 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_14 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_14 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_14 : STD_LOGIC :=  '0';
 signal MASK_MEAN_14 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_15 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_15 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_15 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_15 : STD_LOGIC :=  '0';
 signal MASK_MEAN_15 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_16 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_16 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_16 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_16 : STD_LOGIC :=  '0';
 signal MASK_MEAN_16 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_17 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_17 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_17 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_17 : STD_LOGIC :=  '0';
 signal MASK_MEAN_17 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_18 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_18 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_18 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_18 : STD_LOGIC :=  '0';
 signal MASK_MEAN_18 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_19 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_19 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_19 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_19 : STD_LOGIC :=  '0';
 signal MASK_MEAN_19 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_20 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_20 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_20 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_20 : STD_LOGIC :=  '0';
 signal MASK_MEAN_20 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_21 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_21 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_21 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_21 : STD_LOGIC :=  '0';
 signal MASK_MEAN_21 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_22 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_22 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_22 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_22 : STD_LOGIC :=  '0';
 signal MASK_MEAN_22 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_23 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_23 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_23 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_23 : STD_LOGIC :=  '0';
 signal MASK_MEAN_23 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_24 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_24 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_24 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_24 : STD_LOGIC :=  '0';
 signal MASK_MEAN_24 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_25 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_25 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_25 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_25 : STD_LOGIC :=  '0';
 signal MASK_MEAN_25 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_26 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_26 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_26 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_26 : STD_LOGIC :=  '0';
 signal MASK_MEAN_26 : STD_LOGIC :=  '0';
 signal BG_MODEL_MEAN_27 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_MEAN_27 : STD_LOGIC :=  '0';
 signal L_VALID_MEAN_27 : STD_LOGIC :=  '0';
 signal F_VALID_MEAN_27 : STD_LOGIC :=  '0';
 signal MASK_MEAN_27 : STD_LOGIC :=  '0';

 signal BG_MODEL_RT_0 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_0 : STD_LOGIC :=  '0';
 signal L_VALID_RT_0 : STD_LOGIC :=  '0';
 signal F_VALID_RT_0 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_1 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_1 : STD_LOGIC :=  '0';
 signal L_VALID_RT_1 : STD_LOGIC :=  '0';
 signal F_VALID_RT_1 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_2 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_2 : STD_LOGIC :=  '0';
 signal L_VALID_RT_2 : STD_LOGIC :=  '0';
 signal F_VALID_RT_2 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_3 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_3 : STD_LOGIC :=  '0';
 signal L_VALID_RT_3 : STD_LOGIC :=  '0';
 signal F_VALID_RT_3 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_4 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_4 : STD_LOGIC :=  '0';
 signal L_VALID_RT_4 : STD_LOGIC :=  '0';
 signal F_VALID_RT_4 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_5 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_5 : STD_LOGIC :=  '0';
 signal L_VALID_RT_5 : STD_LOGIC :=  '0';
 signal F_VALID_RT_5 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_6 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_6 : STD_LOGIC :=  '0';
 signal L_VALID_RT_6 : STD_LOGIC :=  '0';
 signal F_VALID_RT_6 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_7 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_7 : STD_LOGIC :=  '0';
 signal L_VALID_RT_7 : STD_LOGIC :=  '0';
 signal F_VALID_RT_7 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_8 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_8 : STD_LOGIC :=  '0';
 signal L_VALID_RT_8 : STD_LOGIC :=  '0';
 signal F_VALID_RT_8 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_9 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_9 : STD_LOGIC :=  '0';
 signal L_VALID_RT_9 : STD_LOGIC :=  '0';
 signal F_VALID_RT_9 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_10 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_10 : STD_LOGIC :=  '0';
 signal L_VALID_RT_10 : STD_LOGIC :=  '0';
 signal F_VALID_RT_10 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_11 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_11 : STD_LOGIC :=  '0';
 signal L_VALID_RT_11 : STD_LOGIC :=  '0';
 signal F_VALID_RT_11 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_12 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_12 : STD_LOGIC :=  '0';
 signal L_VALID_RT_12 : STD_LOGIC :=  '0';
 signal F_VALID_RT_12 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_13 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_13 : STD_LOGIC :=  '0';
 signal L_VALID_RT_13 : STD_LOGIC :=  '0';
 signal F_VALID_RT_13 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_14 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_14 : STD_LOGIC :=  '0';
 signal L_VALID_RT_14 : STD_LOGIC :=  '0';
 signal F_VALID_RT_14 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_15 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_15 : STD_LOGIC :=  '0';
 signal L_VALID_RT_15 : STD_LOGIC :=  '0';
 signal F_VALID_RT_15 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_16 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_16 : STD_LOGIC :=  '0';
 signal L_VALID_RT_16 : STD_LOGIC :=  '0';
 signal F_VALID_RT_16 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_17 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_17 : STD_LOGIC :=  '0';
 signal L_VALID_RT_17 : STD_LOGIC :=  '0';
 signal F_VALID_RT_17 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_18 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_18 : STD_LOGIC :=  '0';
 signal L_VALID_RT_18 : STD_LOGIC :=  '0';
 signal F_VALID_RT_18 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_19 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_19 : STD_LOGIC :=  '0';
 signal L_VALID_RT_19 : STD_LOGIC :=  '0';
 signal F_VALID_RT_19 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_20 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_20 : STD_LOGIC :=  '0';
 signal L_VALID_RT_20 : STD_LOGIC :=  '0';
 signal F_VALID_RT_20 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_21 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_21 : STD_LOGIC :=  '0';
 signal L_VALID_RT_21 : STD_LOGIC :=  '0';
 signal F_VALID_RT_21 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_22 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_22 : STD_LOGIC :=  '0';
 signal L_VALID_RT_22 : STD_LOGIC :=  '0';
 signal F_VALID_RT_22 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_23 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_23 : STD_LOGIC :=  '0';
 signal L_VALID_RT_23 : STD_LOGIC :=  '0';
 signal F_VALID_RT_23 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_24 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_24 : STD_LOGIC :=  '0';
 signal L_VALID_RT_24 : STD_LOGIC :=  '0';
 signal F_VALID_RT_24 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_25 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_25 : STD_LOGIC :=  '0';
 signal L_VALID_RT_25 : STD_LOGIC :=  '0';
 signal F_VALID_RT_25 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_26 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_26 : STD_LOGIC :=  '0';
 signal L_VALID_RT_26 : STD_LOGIC :=  '0';
 signal F_VALID_RT_26 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_27 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_27 : STD_LOGIC :=  '0';
 signal L_VALID_RT_27 : STD_LOGIC :=  '0';
 signal F_VALID_RT_27 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_28 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_28 : STD_LOGIC :=  '0';
 signal L_VALID_RT_28 : STD_LOGIC :=  '0';
 signal F_VALID_RT_28 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_29 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_29 : STD_LOGIC :=  '0';
 signal L_VALID_RT_29 : STD_LOGIC :=  '0';
 signal F_VALID_RT_29 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_30 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_30 : STD_LOGIC :=  '0';
 signal L_VALID_RT_30 : STD_LOGIC :=  '0';
 signal F_VALID_RT_30 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_31 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_31 : STD_LOGIC :=  '0';
 signal L_VALID_RT_31 : STD_LOGIC :=  '0';
 signal F_VALID_RT_31 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_32 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_32 : STD_LOGIC :=  '0';
 signal L_VALID_RT_32 : STD_LOGIC :=  '0';
 signal F_VALID_RT_32 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_33 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_33 : STD_LOGIC :=  '0';
 signal L_VALID_RT_33 : STD_LOGIC :=  '0';
 signal F_VALID_RT_33 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_34 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_34 : STD_LOGIC :=  '0';
 signal L_VALID_RT_34 : STD_LOGIC :=  '0';
 signal F_VALID_RT_34 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_35 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_35 : STD_LOGIC :=  '0';
 signal L_VALID_RT_35 : STD_LOGIC :=  '0';
 signal F_VALID_RT_35 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_36 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_36 : STD_LOGIC :=  '0';
 signal L_VALID_RT_36 : STD_LOGIC :=  '0';
 signal F_VALID_RT_36 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_37 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_37 : STD_LOGIC :=  '0';
 signal L_VALID_RT_37 : STD_LOGIC :=  '0';
 signal F_VALID_RT_37 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_38 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_38 : STD_LOGIC :=  '0';
 signal L_VALID_RT_38 : STD_LOGIC :=  '0';
 signal F_VALID_RT_38 : STD_LOGIC :=  '0';
 signal BG_MODEL_RT_39 : STD_LOGIC_VECTOR (BG_MODEL_SC_W -1 downto  0) := (others => '0');
 signal D_VALID_RT_39 : STD_LOGIC :=  '0';
 signal L_VALID_RT_39 : STD_LOGIC :=  '0';
 signal F_VALID_RT_39 : STD_LOGIC :=  '0';

 signal NEW_R_0 : STD_LOGIC_VECTOR (RT_W -1 downto  0) := (others => '0');
 signal NEW_R_1 : STD_LOGIC_VECTOR (RT_W -1 downto  0) := (others => '0');
 signal NEW_R_2 : STD_LOGIC_VECTOR (RT_W -1 downto  0) := (others => '0');
 signal NEW_R_3 : STD_LOGIC_VECTOR (RT_W -1 downto  0) := (others => '0');
 signal NEW_R_4 : STD_LOGIC_VECTOR (RT_W -1 downto  0) := (others => '0');
 signal NEW_R_5 : STD_LOGIC_VECTOR (RT_W -1 downto  0) := (others => '0');
 signal NEW_R_6 : STD_LOGIC_VECTOR (RT_W -1 downto  0) := (others => '0');
 signal NEW_R_7 : STD_LOGIC_VECTOR (RT_W -1 downto  0) := (others => '0');
 signal NEW_R_8 : STD_LOGIC_VECTOR (RT_W -1 downto  0) := (others => '0');
 signal NEW_R_9 : STD_LOGIC_VECTOR (RT_W -1 downto  0) := (others => '0');
 signal NEW_R_10 : STD_LOGIC_VECTOR (RT_W -1 downto  0) := (others => '0');
 signal NEW_R_11 : STD_LOGIC_VECTOR (RT_W -1 downto  0) := (others => '0');
 signal NEW_R_12 : STD_LOGIC_VECTOR (RT_W -1 downto  0) := (others => '0');


begin

	 PIXEL_0 <= PIXEL;
	 BG_MODEL_0 <= BG_MODEL_IN;
	 PARAM_R <= BG_MODEL_IN(BG_MODEL_SC_W - RT_W -1  downto BG_MODEL_SC_W - RT_W*2); 
	 PARAM_T <= BG_MODEL_IN(BG_MODEL_SC_W-1  downto BG_MODEL_SC_W - RT_W); 

 --------------------------------------------------------------------------------
	-- OBLICZANIE ODLEGLOSCI DLA KAZDEGO Z MODELI
	-- LATENCY = 2 
	--------------------------------------------------------------------------------
	 pix_model_dist_1C_1 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 D_VALID => D_VALID_IN, L_VALID => L_VALID_IN, F_VALID => F_VALID_IN,
		 D_VALID_OUT => D_VALID_DIST, L_VALID_OUT => L_VALID_DIST, F_VALID_OUT => F_VALID_DIST,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (7 downto 0),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(7 downto 0),
		 RESULT_OUT => RESULT_VEC(0) );
	 pix_model_dist_1C_2 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (23 downto 16),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(15 downto 8),
		 RESULT_OUT => RESULT_VEC(1) );
	 pix_model_dist_1C_3 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (39 downto 32),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(23 downto 16),
		 RESULT_OUT => RESULT_VEC(2) );
	 pix_model_dist_1C_4 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (55 downto 48),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(31 downto 24),
		 RESULT_OUT => RESULT_VEC(3) );
	 pix_model_dist_1C_5 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (71 downto 64),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(39 downto 32),
		 RESULT_OUT => RESULT_VEC(4) );
	 pix_model_dist_1C_6 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (87 downto 80),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(47 downto 40),
		 RESULT_OUT => RESULT_VEC(5) );
	 pix_model_dist_1C_7 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (103 downto 96),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(55 downto 48),
		 RESULT_OUT => RESULT_VEC(6) );
	 pix_model_dist_1C_8 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (119 downto 112),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(63 downto 56),
		 RESULT_OUT => RESULT_VEC(7) );
	 pix_model_dist_1C_9 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (135 downto 128),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(71 downto 64),
		 RESULT_OUT => RESULT_VEC(8) );
	 pix_model_dist_1C_10 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (151 downto 144),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(79 downto 72),
		 RESULT_OUT => RESULT_VEC(9) );
	 pix_model_dist_1C_11 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (167 downto 160),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(87 downto 80),
		 RESULT_OUT => RESULT_VEC(10) );
	 pix_model_dist_1C_12 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (183 downto 176),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(95 downto 88),
		 RESULT_OUT => RESULT_VEC(11) );
	 pix_model_dist_1C_13 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (199 downto 192),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(103 downto 96),
		 RESULT_OUT => RESULT_VEC(12) );
	 pix_model_dist_1C_14 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (215 downto 208),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(111 downto 104),
		 RESULT_OUT => RESULT_VEC(13) );
	 pix_model_dist_1C_15 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (231 downto 224),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(119 downto 112),
		 RESULT_OUT => RESULT_VEC(14) );
	 pix_model_dist_1C_16 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (247 downto 240),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(127 downto 120),
		 RESULT_OUT => RESULT_VEC(15) );
	 pix_model_dist_1C_17 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (263 downto 256),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(135 downto 128),
		 RESULT_OUT => RESULT_VEC(16) );
	 pix_model_dist_1C_18 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (279 downto 272),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(143 downto 136),
		 RESULT_OUT => RESULT_VEC(17) );
	 pix_model_dist_1C_19 : pix_model_dist_1C 
		 GENERIC MAP (PIXEL_W=>PIXEL_W, R_W => PIXEL_W, DIST_W => DIST_W)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 PIXEL => PIXEL,	MODEL => BG_MODEL_IN (295 downto 288),
		 PARAM_R => PARAM_R(15 downto 8),	DIST_OUT => DIST_VEC(151 downto 144),
		 RESULT_OUT => RESULT_VEC(18) );

	 DELAY_DIST : process (CLK)
	 begin
		 if ( rising_edge(CLK) ) then
			 if ( CE = '1' ) then
				 PIXEL_1 <= PIXEL_0;
				 BG_MODEL_1 <= BG_MODEL_0;
				 PIXEL_2 <= PIXEL_1;
				 BG_MODEL_2 <= BG_MODEL_1;
			 end if;
		 end if;
	end process;

 --------------------------------------------------------------------------------
	-- ZLICZANIE ODLEGLOSCI MNIEJSZYCH NIZ PROG
	-- LATENCY = 5
 	--------------------------------------------------------------------------------
	 sumTree_binary_19_I : sumTree_binary_19 
		 GENERIC MAP (SAMPLES_N => SAMPLES_N, OUTPUT_W => 6)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 INPUT => RESULT_VEC, SUM => SUM );
 --------------------------------------------------------------------------------
	-- WYSZUKIEWNIE MINIMUM I POZYCJI
	-- LATENCY = 5 
	--------------------------------------------------------------------------------
	 min_value_pos_tree_19_I : min_value_pos_tree_19 
		 GENERIC MAP (SAMPLES_N => SAMPLES_N, DIST_W => DIST_W, POS_W => 6)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
		 D_VALID => D_VALID_DIST, L_VALID => L_VALID_DIST, F_VALID => F_VALID_DIST,
		 D_VALID_OUT => D_VALID_BT, L_VALID_OUT => L_VALID_BT, F_VALID_OUT => F_VALID_BT,
		 DIST => DIST_VEC, MIN_DIST => MIN_DIST, MIN_POS => MIN_POS  );


	DELAY_TREE : process (CLK)
	 begin
		 if ( rising_edge(CLK) ) then
			 if ( CE = '1' ) then
				 PIXEL_3 <= PIXEL_2;
				 BG_MODEL_3 <= BG_MODEL_2;
				 PIXEL_4 <= PIXEL_3;
				 BG_MODEL_4 <= BG_MODEL_3;
				 PIXEL_5 <= PIXEL_4;
				 BG_MODEL_5 <= BG_MODEL_4;
				 PIXEL_6 <= PIXEL_5;
				 BG_MODEL_6 <= BG_MODEL_5;
				 PIXEL_7 <= PIXEL_6;
				 BG_MODEL_7 <= BG_MODEL_6;
			 end if;
		 end if;
	end process;


 --------------------------------------------------------------------------------
	-- DECYZJA UPDATE / NO UPDATE 
	-- LATENCY = 1 
	--------------------------------------------------------------------------------
	UPDATE_DEC : process (CLK)
	 begin
		 if ( rising_edge(CLK) ) then
			 if ( CE = '1' ) then
				 if ( SUM < PARAM_H_MIN(5 downto 0) ) then 
					 CLASSIFICATION <= '1';  -- foreground 
				 else 
					 CLASSIFICATION <= '0';  -- background 
				 end if; 
				 PIXEL_8 <= PIXEL_7;
				 BG_MODEL_8 <= BG_MODEL_7;
				 D_VALID_CLASS <= D_VALID_BT;
				 L_VALID_CLASS <= L_VALID_BT;
				 F_VALID_CLASS <= F_VALID_BT;
				 MIN_DIST_CLASS <= MIN_DIST;
				 MIN_POS_CLASS <= MIN_POS;
			 end if;
		 end if;
	end process;


 ---------------------------------------------------------------------------------------------------------------------
	-- WYJSCIE  - TYLKO MASKA ...
	---------------------------------------------------------------------------------------------------------------------
	D_VALID_MASK_OUT <= D_VALID_CLASS;
	L_VALID_MASK_OUT <= L_VALID_CLASS;
	F_VALID_MASK_OUT <= F_VALID_CLASS;
 MASK <= CLASSIFICATION;
	--------------------------------------------------------------------------------
	-- KONTEKST DLA CALEGO MODELU TLA I OBRAZU 3x3
	-- LATENCY = ???
	--------------------------------------------------------------------------------

	-- PRZYPISANIE POCZATKOWE------------------------------------------------------------
	 BG_MODEL_C0(BG_MODEL_SC_W-1 downto 0) <= BG_MODEL_8;
	 BG_MODEL_C0(BG_MODEL_SC_W + PIXEL_W -1  downto BG_MODEL_SC_W) <= PIXEL_8;
	 BG_MODEL_C0(BG_MODEL_SC_W + PIXEL_W + DIST_W -1  downto BG_MODEL_SC_W + PIXEL_W) <= MIN_DIST_CLASS;
	 BG_MODEL_C0(BG_MODEL_SC_W + PIXEL_W + DIST_W + POS_W -1  downto BG_MODEL_SC_W + PIXEL_W + DIST_W) <= MIN_POS_CLASS;

	 BG_MODEL_C0(BG_MODEL_SC_W + PIXEL_W+ DIST_W + POS_W+0) <= D_VALID_CLASS;
	 BG_MODEL_C0(BG_MODEL_SC_W + PIXEL_W+ DIST_W + POS_W+1) <= L_VALID_CLASS;
	 BG_MODEL_C0(BG_MODEL_SC_W + PIXEL_W+ DIST_W + POS_W+2) <= F_VALID_CLASS;
	 BG_MODEL_C0(BG_MODEL_SC_W + PIXEL_W+ DIST_W + POS_W+3) <= CLASSIFICATION;

 -- 	PRZYPISANIE POCZATKOWE------------------------------------------------------------
	 BG_MODEL_ALL_1_3_LONG(361 downto 0) <= BG_MODEL_1_3;

	 DLONG_1_P0 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_1_3_LONG(35 downto 0), DOUT=>BG_MODEL_C1(35 downto 0),H_SIZE =>H_SIZE-3);
	 DLONG_1_P1 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_1_3_LONG(71 downto 36), DOUT=>BG_MODEL_C1(71 downto 36),H_SIZE =>H_SIZE-3);
	 DLONG_1_P2 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_1_3_LONG(107 downto 72), DOUT=>BG_MODEL_C1(107 downto 72),H_SIZE =>H_SIZE-3);
	 DLONG_1_P3 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_1_3_LONG(143 downto 108), DOUT=>BG_MODEL_C1(143 downto 108),H_SIZE =>H_SIZE-3);
	 DLONG_1_P4 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_1_3_LONG(179 downto 144), DOUT=>BG_MODEL_C1(179 downto 144),H_SIZE =>H_SIZE-3);
	 DLONG_1_P5 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_1_3_LONG(215 downto 180), DOUT=>BG_MODEL_C1(215 downto 180),H_SIZE =>H_SIZE-3);
	 DLONG_1_P6 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_1_3_LONG(251 downto 216), DOUT=>BG_MODEL_C1(251 downto 216),H_SIZE =>H_SIZE-3);
	 DLONG_1_P7 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_1_3_LONG(287 downto 252), DOUT=>BG_MODEL_C1(287 downto 252),H_SIZE =>H_SIZE-3);
	 DLONG_1_P8 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_1_3_LONG(323 downto 288), DOUT=>BG_MODEL_C1(323 downto 288),H_SIZE =>H_SIZE-3);
	 DLONG_1_P9 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_1_3_LONG(359 downto 324), DOUT=>BG_MODEL_C1(359 downto 324),H_SIZE =>H_SIZE-3);
	 DLONG_1_P10 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_1_3_LONG(395 downto 360), DOUT=>BG_MODEL_C1(395 downto 360),H_SIZE =>H_SIZE-3);

	 BG_MODEL_ALL_2_3_LONG(361 downto 0) <= BG_MODEL_2_3;

	 DLONG_2_P0 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_2_3_LONG(35 downto 0), DOUT=>BG_MODEL_C2(35 downto 0),H_SIZE =>H_SIZE-3);
	 DLONG_2_P1 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_2_3_LONG(71 downto 36), DOUT=>BG_MODEL_C2(71 downto 36),H_SIZE =>H_SIZE-3);
	 DLONG_2_P2 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_2_3_LONG(107 downto 72), DOUT=>BG_MODEL_C2(107 downto 72),H_SIZE =>H_SIZE-3);
	 DLONG_2_P3 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_2_3_LONG(143 downto 108), DOUT=>BG_MODEL_C2(143 downto 108),H_SIZE =>H_SIZE-3);
	 DLONG_2_P4 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_2_3_LONG(179 downto 144), DOUT=>BG_MODEL_C2(179 downto 144),H_SIZE =>H_SIZE-3);
	 DLONG_2_P5 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_2_3_LONG(215 downto 180), DOUT=>BG_MODEL_C2(215 downto 180),H_SIZE =>H_SIZE-3);
	 DLONG_2_P6 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_2_3_LONG(251 downto 216), DOUT=>BG_MODEL_C2(251 downto 216),H_SIZE =>H_SIZE-3);
	 DLONG_2_P7 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_2_3_LONG(287 downto 252), DOUT=>BG_MODEL_C2(287 downto 252),H_SIZE =>H_SIZE-3);
	 DLONG_2_P8 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_2_3_LONG(323 downto 288), DOUT=>BG_MODEL_C2(323 downto 288),H_SIZE =>H_SIZE-3);
	 DLONG_2_P9 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_2_3_LONG(359 downto 324), DOUT=>BG_MODEL_C2(359 downto 324),H_SIZE =>H_SIZE-3);
	 DLONG_2_P10 : delayLineBramWP port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',	 DIN=>BG_MODEL_ALL_2_3_LONG(395 downto 360), DOUT=>BG_MODEL_C2(395 downto 360),H_SIZE =>H_SIZE-3);

	-- EXTRACTING CURRENT DATA ...

	 mask_c <= BG_MODEL_2_1(BG_MODEL_SC_W + PIXEL_W+ DIST_W + POS_W+3);   -- OBJECT MASK

	 up1 <= update and select8(0) and (not(mask_c)) and FCV;
	 SWM_0: switchModel_pbas_rgbs_19 
		 generic map(PIXEL_W=>PIXEL_W, DIST_W=> DIST_W, POS_W=>POS_W, RT_W=>RT_W, BG_MODEL_SC_W=> BG_MODEL_SC_W, BG_MODEL_ALL_W=>BG_MODEL_ALL_W )
			 PORT MAP(CLK =>CLK, RST =>RST, CE =>CE, SWITCH => up1,
			 TOSWITCH =>updateModel_19_2,IS_CENTRAL=>'0', BG_MODEL_IN =>BG_MODEL_C0(BG_MODEL_ALL_W -1 downto 0), BG_MODEL_OUT =>BG_MODEL_1_1);

	 up2 <= update and select8(1) and (not(mask_c)) and FCV;
	 SWM_1: switchModel_pbas_rgbs_19 
		 generic map(PIXEL_W=>PIXEL_W, DIST_W=> DIST_W, POS_W=>POS_W, RT_W=>RT_W, BG_MODEL_SC_W=> BG_MODEL_SC_W, BG_MODEL_ALL_W=>BG_MODEL_ALL_W )
			 PORT MAP(CLK =>CLK, RST =>RST, CE =>CE, SWITCH => up2,
			 TOSWITCH =>updateModel_19_2,IS_CENTRAL=>'0', BG_MODEL_IN =>BG_MODEL_1_1(BG_MODEL_ALL_W -1 downto 0), BG_MODEL_OUT =>BG_MODEL_1_2);

	 up3 <= update and select8(2) and (not(mask_c)) and FCV;
	 SWM_2: switchModel_pbas_rgbs_19 
		 generic map(PIXEL_W=>PIXEL_W, DIST_W=> DIST_W, POS_W=>POS_W, RT_W=>RT_W, BG_MODEL_SC_W=> BG_MODEL_SC_W, BG_MODEL_ALL_W=>BG_MODEL_ALL_W )
			 PORT MAP(CLK =>CLK, RST =>RST, CE =>CE, SWITCH => up3,
			 TOSWITCH =>updateModel_19_2,IS_CENTRAL=>'0', BG_MODEL_IN =>BG_MODEL_1_2(BG_MODEL_ALL_W -1 downto 0), BG_MODEL_OUT =>BG_MODEL_1_3);

	 up4 <= update and select8(3) and (not(mask_c)) and FCV;
	 SWM_3: switchModel_pbas_rgbs_19 
		 generic map(PIXEL_W=>PIXEL_W, DIST_W=> DIST_W, POS_W=>POS_W, RT_W=>RT_W, BG_MODEL_SC_W=> BG_MODEL_SC_W, BG_MODEL_ALL_W=>BG_MODEL_ALL_W )
			 PORT MAP(CLK =>CLK, RST =>RST, CE =>CE, SWITCH => up4,
			 TOSWITCH =>updateModel_19_2,IS_CENTRAL=>'0', BG_MODEL_IN =>BG_MODEL_C1(BG_MODEL_ALL_W -1 downto 0), BG_MODEL_OUT =>BG_MODEL_2_1);


	-----------------------------------------------------------------------------------------
	 up5 <= update and (not(mask_c)) and FCV;
	 SWM_4: switchModel_pbas_rgbs_19
		 generic map(PIXEL_W=>PIXEL_W, DIST_W=> DIST_W, POS_W=>POS_W, RT_W=>RT_W, BG_MODEL_SC_W=> BG_MODEL_SC_W, BG_MODEL_ALL_W=>BG_MODEL_ALL_W )
			 PORT MAP(CLK =>CLK, RST =>RST, CE =>CE, SWITCH => up5,
				 TOSWITCH =>updateModel_19_1,IS_CENTRAL=>'1', BG_MODEL_IN =>BG_MODEL_2_1(BG_MODEL_ALL_W -1 downto 0), BG_MODEL_OUT =>BG_MODEL_2_2);
	-----------------------------------------------------------------------------------------


	 up6 <= update and select8(4) and (not(mask_c)) and FCV;
	 SWM_5: switchModel_pbas_rgbs_19 
		 generic map(PIXEL_W=>PIXEL_W, DIST_W=> DIST_W, POS_W=>POS_W, RT_W=>RT_W, BG_MODEL_SC_W=> BG_MODEL_SC_W, BG_MODEL_ALL_W=>BG_MODEL_ALL_W )
			 PORT MAP(CLK =>CLK, RST =>RST, CE =>CE, SWITCH => up6,
			 TOSWITCH =>updateModel_19_2,IS_CENTRAL=>'0', BG_MODEL_IN =>BG_MODEL_2_2(BG_MODEL_ALL_W -1 downto 0), BG_MODEL_OUT =>BG_MODEL_2_3);

	 up7 <= update and select8(5) and (not(mask_c)) and FCV;
	 SWM_6: switchModel_pbas_rgbs_19 
		 generic map(PIXEL_W=>PIXEL_W, DIST_W=> DIST_W, POS_W=>POS_W, RT_W=>RT_W, BG_MODEL_SC_W=> BG_MODEL_SC_W, BG_MODEL_ALL_W=>BG_MODEL_ALL_W )
			 PORT MAP(CLK =>CLK, RST =>RST, CE =>CE, SWITCH => up7,
			 TOSWITCH =>updateModel_19_2,IS_CENTRAL=>'0', BG_MODEL_IN =>BG_MODEL_C2(BG_MODEL_ALL_W -1 downto 0), BG_MODEL_OUT =>BG_MODEL_3_1);

	 up8 <= update and select8(6) and (not(mask_c)) and FCV;
	 SWM_7: switchModel_pbas_rgbs_19 
		 generic map(PIXEL_W=>PIXEL_W, DIST_W=> DIST_W, POS_W=>POS_W, RT_W=>RT_W, BG_MODEL_SC_W=> BG_MODEL_SC_W, BG_MODEL_ALL_W=>BG_MODEL_ALL_W )
			 PORT MAP(CLK =>CLK, RST =>RST, CE =>CE, SWITCH => up8,
			 TOSWITCH =>updateModel_19_2,IS_CENTRAL=>'0', BG_MODEL_IN =>BG_MODEL_3_1(BG_MODEL_ALL_W -1 downto 0), BG_MODEL_OUT =>BG_MODEL_3_2);

	 up9 <= update and select8(7) and (not(mask_c)) and FCV;
	 SWM_8: switchModel_pbas_rgbs_19 
		 generic map(PIXEL_W=>PIXEL_W, DIST_W=> DIST_W, POS_W=>POS_W, RT_W=>RT_W, BG_MODEL_SC_W=> BG_MODEL_SC_W, BG_MODEL_ALL_W=>BG_MODEL_ALL_W )
			 PORT MAP(CLK =>CLK, RST =>RST, CE =>CE, SWITCH => up9,
			 TOSWITCH =>updateModel_19_2,IS_CENTRAL=>'0', BG_MODEL_IN =>BG_MODEL_3_2(BG_MODEL_ALL_W -1 downto 0), BG_MODEL_OUT =>BG_MODEL_3_3);

	--------------------------------------------------------------------------------
	--  WYPISANIE SYGNALU DIST_VECT
	--------------------------------------------------------------------------------

	 DIST_VECT_D(7 downto 0) <= BG_MODEL_3_3(15 downto 8);
	 DIST_VECT_D(15 downto 8) <= BG_MODEL_3_3(31 downto 24);
	 DIST_VECT_D(23 downto 16) <= BG_MODEL_3_3(47 downto 40);
	 DIST_VECT_D(31 downto 24) <= BG_MODEL_3_3(63 downto 56);
	 DIST_VECT_D(39 downto 32) <= BG_MODEL_3_3(79 downto 72);
	 DIST_VECT_D(47 downto 40) <= BG_MODEL_3_3(95 downto 88);
	 DIST_VECT_D(55 downto 48) <= BG_MODEL_3_3(111 downto 104);
	 DIST_VECT_D(63 downto 56) <= BG_MODEL_3_3(127 downto 120);
	 DIST_VECT_D(71 downto 64) <= BG_MODEL_3_3(143 downto 136);
	 DIST_VECT_D(79 downto 72) <= BG_MODEL_3_3(159 downto 152);
	 DIST_VECT_D(87 downto 80) <= BG_MODEL_3_3(175 downto 168);
	 DIST_VECT_D(95 downto 88) <= BG_MODEL_3_3(191 downto 184);
	 DIST_VECT_D(103 downto 96) <= BG_MODEL_3_3(207 downto 200);
	 DIST_VECT_D(111 downto 104) <= BG_MODEL_3_3(223 downto 216);
	 DIST_VECT_D(119 downto 112) <= BG_MODEL_3_3(239 downto 232);
	 DIST_VECT_D(127 downto 120) <= BG_MODEL_3_3(255 downto 248);
	 DIST_VECT_D(135 downto 128) <= BG_MODEL_3_3(271 downto 264);
	 DIST_VECT_D(143 downto 136) <= BG_MODEL_3_3(287 downto 280);
	 DIST_VECT_D(151 downto 144) <= BG_MODEL_3_3(303 downto 296);

	--------------------------------------------------------------------------------
	-- SUMOWANIE MINIMALNYCH ODLEGLOSCI
	-- LATENCY = 5
	--------------------------------------------------------------------------------
	sumTree_us_19_A: sumTree_us_19 PORT MAP( CLK => CLK, RST => RST, CE => CE,
		     CONTEXT => DIST_VECT_D, SUM => SUM_DIST);


	--------------------------------------------------------------------------------
	-- DZIELENIE PRZEZ "N"
	-- LATENCY = 22
	--------------------------------------------------------------------------------
	dividend_SUM_DIST(12 downto 0 ) <= SUM_DIST ;
	div_14_6_I : div_14_6
		 port map (
		 clk => clk,
		 rfd => rfd,
		 dividend => dividend_SUM_DIST,
		 divisor => "010011",
		 quotient => quotient_SUM_DIST,
		 fractional => fractional_SUM_DIST
		 );

	 MEAN_SUM_DIST <= quotient_SUM_DIST(DIST_W-1 downto 0) & fractional_SUM_DIST & "00" ;


	DELAY_MEAN : process (CLK)
	 begin
		 if ( rising_edge(CLK) ) then
			 if ( CE = '1' ) then
				 BG_MODEL_MEAN_1 <= BG_MODEL_3_3(BG_MODEL_SC_W-1 downto 0); 	 D_VALID_MEAN_1 <= BG_MODEL_3_3(BG_MODEL_SC_W + PIXEL_W+ DIST_W + POS_W+0); 	 L_VALID_MEAN_1 <= BG_MODEL_3_3(BG_MODEL_SC_W + PIXEL_W+ DIST_W + POS_W+1); 	 F_VALID_MEAN_1 <= BG_MODEL_3_3(BG_MODEL_SC_W + PIXEL_W+ DIST_W + POS_W+2); 	 MASK_MEAN_1 <= BG_MODEL_3_3(BG_MODEL_SC_W + PIXEL_W+ DIST_W + POS_W+3);
				 BG_MODEL_MEAN_2 <= BG_MODEL_MEAN_1; 	 D_VALID_MEAN_2 <= D_VALID_MEAN_1; 	 L_VALID_MEAN_2 <= L_VALID_MEAN_1; 	 F_VALID_MEAN_2 <= F_VALID_MEAN_1; 	 MASK_MEAN_2 <= MASK_MEAN_1;
				 BG_MODEL_MEAN_3 <= BG_MODEL_MEAN_2; 	 D_VALID_MEAN_3 <= D_VALID_MEAN_2; 	 L_VALID_MEAN_3 <= L_VALID_MEAN_2; 	 F_VALID_MEAN_3 <= F_VALID_MEAN_2; 	 MASK_MEAN_3 <= MASK_MEAN_2;
				 BG_MODEL_MEAN_4 <= BG_MODEL_MEAN_3; 	 D_VALID_MEAN_4 <= D_VALID_MEAN_3; 	 L_VALID_MEAN_4 <= L_VALID_MEAN_3; 	 F_VALID_MEAN_4 <= F_VALID_MEAN_3; 	 MASK_MEAN_4 <= MASK_MEAN_3;
				 BG_MODEL_MEAN_5 <= BG_MODEL_MEAN_4; 	 D_VALID_MEAN_5 <= D_VALID_MEAN_4; 	 L_VALID_MEAN_5 <= L_VALID_MEAN_4; 	 F_VALID_MEAN_5 <= F_VALID_MEAN_4; 	 MASK_MEAN_5 <= MASK_MEAN_4;
				 BG_MODEL_MEAN_6 <= BG_MODEL_MEAN_5; 	 D_VALID_MEAN_6 <= D_VALID_MEAN_5; 	 L_VALID_MEAN_6 <= L_VALID_MEAN_5; 	 F_VALID_MEAN_6 <= F_VALID_MEAN_5; 	 MASK_MEAN_6 <= MASK_MEAN_5;
				 BG_MODEL_MEAN_7 <= BG_MODEL_MEAN_6; 	 D_VALID_MEAN_7 <= D_VALID_MEAN_6; 	 L_VALID_MEAN_7 <= L_VALID_MEAN_6; 	 F_VALID_MEAN_7 <= F_VALID_MEAN_6; 	 MASK_MEAN_7 <= MASK_MEAN_6;
				 BG_MODEL_MEAN_8 <= BG_MODEL_MEAN_7; 	 D_VALID_MEAN_8 <= D_VALID_MEAN_7; 	 L_VALID_MEAN_8 <= L_VALID_MEAN_7; 	 F_VALID_MEAN_8 <= F_VALID_MEAN_7; 	 MASK_MEAN_8 <= MASK_MEAN_7;
				 BG_MODEL_MEAN_9 <= BG_MODEL_MEAN_8; 	 D_VALID_MEAN_9 <= D_VALID_MEAN_8; 	 L_VALID_MEAN_9 <= L_VALID_MEAN_8; 	 F_VALID_MEAN_9 <= F_VALID_MEAN_8; 	 MASK_MEAN_9 <= MASK_MEAN_8;
				 BG_MODEL_MEAN_10 <= BG_MODEL_MEAN_9; 	 D_VALID_MEAN_10 <= D_VALID_MEAN_9; 	 L_VALID_MEAN_10 <= L_VALID_MEAN_9; 	 F_VALID_MEAN_10 <= F_VALID_MEAN_9; 	 MASK_MEAN_10 <= MASK_MEAN_9;
				 BG_MODEL_MEAN_11 <= BG_MODEL_MEAN_10; 	 D_VALID_MEAN_11 <= D_VALID_MEAN_10; 	 L_VALID_MEAN_11 <= L_VALID_MEAN_10; 	 F_VALID_MEAN_11 <= F_VALID_MEAN_10; 	 MASK_MEAN_11 <= MASK_MEAN_10;
				 BG_MODEL_MEAN_12 <= BG_MODEL_MEAN_11; 	 D_VALID_MEAN_12 <= D_VALID_MEAN_11; 	 L_VALID_MEAN_12 <= L_VALID_MEAN_11; 	 F_VALID_MEAN_12 <= F_VALID_MEAN_11; 	 MASK_MEAN_12 <= MASK_MEAN_11;
				 BG_MODEL_MEAN_13 <= BG_MODEL_MEAN_12; 	 D_VALID_MEAN_13 <= D_VALID_MEAN_12; 	 L_VALID_MEAN_13 <= L_VALID_MEAN_12; 	 F_VALID_MEAN_13 <= F_VALID_MEAN_12; 	 MASK_MEAN_13 <= MASK_MEAN_12;
				 BG_MODEL_MEAN_14 <= BG_MODEL_MEAN_13; 	 D_VALID_MEAN_14 <= D_VALID_MEAN_13; 	 L_VALID_MEAN_14 <= L_VALID_MEAN_13; 	 F_VALID_MEAN_14 <= F_VALID_MEAN_13; 	 MASK_MEAN_14 <= MASK_MEAN_13;
				 BG_MODEL_MEAN_15 <= BG_MODEL_MEAN_14; 	 D_VALID_MEAN_15 <= D_VALID_MEAN_14; 	 L_VALID_MEAN_15 <= L_VALID_MEAN_14; 	 F_VALID_MEAN_15 <= F_VALID_MEAN_14; 	 MASK_MEAN_15 <= MASK_MEAN_14;
				 BG_MODEL_MEAN_16 <= BG_MODEL_MEAN_15; 	 D_VALID_MEAN_16 <= D_VALID_MEAN_15; 	 L_VALID_MEAN_16 <= L_VALID_MEAN_15; 	 F_VALID_MEAN_16 <= F_VALID_MEAN_15; 	 MASK_MEAN_16 <= MASK_MEAN_15;
				 BG_MODEL_MEAN_17 <= BG_MODEL_MEAN_16; 	 D_VALID_MEAN_17 <= D_VALID_MEAN_16; 	 L_VALID_MEAN_17 <= L_VALID_MEAN_16; 	 F_VALID_MEAN_17 <= F_VALID_MEAN_16; 	 MASK_MEAN_17 <= MASK_MEAN_16;
				 BG_MODEL_MEAN_18 <= BG_MODEL_MEAN_17; 	 D_VALID_MEAN_18 <= D_VALID_MEAN_17; 	 L_VALID_MEAN_18 <= L_VALID_MEAN_17; 	 F_VALID_MEAN_18 <= F_VALID_MEAN_17; 	 MASK_MEAN_18 <= MASK_MEAN_17;
				 BG_MODEL_MEAN_19 <= BG_MODEL_MEAN_18; 	 D_VALID_MEAN_19 <= D_VALID_MEAN_18; 	 L_VALID_MEAN_19 <= L_VALID_MEAN_18; 	 F_VALID_MEAN_19 <= F_VALID_MEAN_18; 	 MASK_MEAN_19 <= MASK_MEAN_18;
				 BG_MODEL_MEAN_20 <= BG_MODEL_MEAN_19; 	 D_VALID_MEAN_20 <= D_VALID_MEAN_19; 	 L_VALID_MEAN_20 <= L_VALID_MEAN_19; 	 F_VALID_MEAN_20 <= F_VALID_MEAN_19; 	 MASK_MEAN_20 <= MASK_MEAN_19;
				 BG_MODEL_MEAN_21 <= BG_MODEL_MEAN_20; 	 D_VALID_MEAN_21 <= D_VALID_MEAN_20; 	 L_VALID_MEAN_21 <= L_VALID_MEAN_20; 	 F_VALID_MEAN_21 <= F_VALID_MEAN_20; 	 MASK_MEAN_21 <= MASK_MEAN_20;
				 BG_MODEL_MEAN_22 <= BG_MODEL_MEAN_21; 	 D_VALID_MEAN_22 <= D_VALID_MEAN_21; 	 L_VALID_MEAN_22 <= L_VALID_MEAN_21; 	 F_VALID_MEAN_22 <= F_VALID_MEAN_21; 	 MASK_MEAN_22 <= MASK_MEAN_21;
				 BG_MODEL_MEAN_23 <= BG_MODEL_MEAN_22; 	 D_VALID_MEAN_23 <= D_VALID_MEAN_22; 	 L_VALID_MEAN_23 <= L_VALID_MEAN_22; 	 F_VALID_MEAN_23 <= F_VALID_MEAN_22; 	 MASK_MEAN_23 <= MASK_MEAN_22;
				 BG_MODEL_MEAN_24 <= BG_MODEL_MEAN_23; 	 D_VALID_MEAN_24 <= D_VALID_MEAN_23; 	 L_VALID_MEAN_24 <= L_VALID_MEAN_23; 	 F_VALID_MEAN_24 <= F_VALID_MEAN_23; 	 MASK_MEAN_24 <= MASK_MEAN_23;
				 BG_MODEL_MEAN_25 <= BG_MODEL_MEAN_24; 	 D_VALID_MEAN_25 <= D_VALID_MEAN_24; 	 L_VALID_MEAN_25 <= L_VALID_MEAN_24; 	 F_VALID_MEAN_25 <= F_VALID_MEAN_24; 	 MASK_MEAN_25 <= MASK_MEAN_24;
				 BG_MODEL_MEAN_26 <= BG_MODEL_MEAN_25; 	 D_VALID_MEAN_26 <= D_VALID_MEAN_25; 	 L_VALID_MEAN_26 <= L_VALID_MEAN_25; 	 F_VALID_MEAN_26 <= F_VALID_MEAN_25; 	 MASK_MEAN_26 <= MASK_MEAN_25;
				 BG_MODEL_MEAN_27 <= BG_MODEL_MEAN_26; 	 D_VALID_MEAN_27 <= D_VALID_MEAN_26; 	 L_VALID_MEAN_27 <= L_VALID_MEAN_26; 	 F_VALID_MEAN_27 <= F_VALID_MEAN_26; 	 MASK_MEAN_27 <= MASK_MEAN_26;
			 end if;
		 end if;
	end process;


 ---------------------------------------------------------------------------------------------------------------------
	-- OBLICZANIE NOWEGO PARAMETRU AKTUALIZACJI T -  ...
	-- LATENCY = 39 -  ...
	---------------------------------------------------------------------------------------------------------------------
learning_rate_I: learning_rate PORT MAP(
		clk => CLK ,
		tv => D_VALID_MEAN_27  ,
		tx => BG_MODEL_MEAN_27( 335 downto 320), -- T - element najstarszy
		fx =>  MASK_MEAN_27 ,
		dmin => MEAN_SUM_DIST,
		tinc => PARAM_T_INC ,
		tdec => PARAM_T_DEC ,
		tup => PARAM_T_UPPER ,
		tlow => PARAM_T_LOWER ,
		tnx => NEW_T 
	);
 ---------------------------------------------------------------------------------------------------------------------
	-- OBLICZANIE NOWEGO PROGU DECYZJI -  ...
	-- LATENCY = 12 -  ...
	---------------------------------------------------------------------------------------------------------------------
	decision_thr_I : decision_thr PORT MAP(
		clk => CLK ,
		rv =>  D_VALID_MEAN_27  ,
		rx => BG_MODEL_MEAN_27( 319 downto 304), -- R troche mlodszy
		dmin => MEAN_SUM_DIST,
		rscale => PARAM_R_SCALE ,
		rlow => PARAM_R_LOWER ,
		one_minus_rinc => PARAM_R_DEC_1 ,
		one_plus_rinc => PARAM_R_INC_1 ,
		rnx => NEW_R 
	);


	DELAY_RT : process (CLK)
	 begin
		 if ( rising_edge(CLK) ) then
			 if ( CE = '1' ) then
				 BG_MODEL_RT_1 <= BG_MODEL_MEAN_27; 	 D_VALID_RT_1 <= D_VALID_MEAN_27; 	 L_VALID_RT_1 <= L_VALID_MEAN_27; 	 F_VALID_RT_1 <= F_VALID_MEAN_27;
 				 BG_MODEL_RT_2 <= BG_MODEL_RT_1;	 D_VALID_RT_2 <= D_VALID_RT_1;	 L_VALID_RT_2 <= L_VALID_RT_1;	 F_VALID_RT_2 <= F_VALID_RT_1;
				 BG_MODEL_RT_3 <= BG_MODEL_RT_2;	 D_VALID_RT_3 <= D_VALID_RT_2;	 L_VALID_RT_3 <= L_VALID_RT_2;	 F_VALID_RT_3 <= F_VALID_RT_2;
				 BG_MODEL_RT_4 <= BG_MODEL_RT_3;	 D_VALID_RT_4 <= D_VALID_RT_3;	 L_VALID_RT_4 <= L_VALID_RT_3;	 F_VALID_RT_4 <= F_VALID_RT_3;
				 BG_MODEL_RT_5 <= BG_MODEL_RT_4;	 D_VALID_RT_5 <= D_VALID_RT_4;	 L_VALID_RT_5 <= L_VALID_RT_4;	 F_VALID_RT_5 <= F_VALID_RT_4;
				 BG_MODEL_RT_6 <= BG_MODEL_RT_5;	 D_VALID_RT_6 <= D_VALID_RT_5;	 L_VALID_RT_6 <= L_VALID_RT_5;	 F_VALID_RT_6 <= F_VALID_RT_5;
				 BG_MODEL_RT_7 <= BG_MODEL_RT_6;	 D_VALID_RT_7 <= D_VALID_RT_6;	 L_VALID_RT_7 <= L_VALID_RT_6;	 F_VALID_RT_7 <= F_VALID_RT_6;
				 BG_MODEL_RT_8 <= BG_MODEL_RT_7;	 D_VALID_RT_8 <= D_VALID_RT_7;	 L_VALID_RT_8 <= L_VALID_RT_7;	 F_VALID_RT_8 <= F_VALID_RT_7;
				 BG_MODEL_RT_9 <= BG_MODEL_RT_8;	 D_VALID_RT_9 <= D_VALID_RT_8;	 L_VALID_RT_9 <= L_VALID_RT_8;	 F_VALID_RT_9 <= F_VALID_RT_8;
				 BG_MODEL_RT_10 <= BG_MODEL_RT_9;	 D_VALID_RT_10 <= D_VALID_RT_9;	 L_VALID_RT_10 <= L_VALID_RT_9;	 F_VALID_RT_10 <= F_VALID_RT_9;
				 BG_MODEL_RT_11 <= BG_MODEL_RT_10;	 D_VALID_RT_11 <= D_VALID_RT_10;	 L_VALID_RT_11 <= L_VALID_RT_10;	 F_VALID_RT_11 <= F_VALID_RT_10;
				 BG_MODEL_RT_12 <= BG_MODEL_RT_11;	 D_VALID_RT_12 <= D_VALID_RT_11;	 L_VALID_RT_12 <= L_VALID_RT_11;	 F_VALID_RT_12 <= F_VALID_RT_11;
				 BG_MODEL_RT_13 <= BG_MODEL_RT_12;	 D_VALID_RT_13 <= D_VALID_RT_12;	 L_VALID_RT_13 <= L_VALID_RT_12;	 F_VALID_RT_13 <= F_VALID_RT_12;
				 BG_MODEL_RT_14 <= BG_MODEL_RT_13;	 D_VALID_RT_14 <= D_VALID_RT_13;	 L_VALID_RT_14 <= L_VALID_RT_13;	 F_VALID_RT_14 <= F_VALID_RT_13;
				 BG_MODEL_RT_15 <= BG_MODEL_RT_14;	 D_VALID_RT_15 <= D_VALID_RT_14;	 L_VALID_RT_15 <= L_VALID_RT_14;	 F_VALID_RT_15 <= F_VALID_RT_14;
				 BG_MODEL_RT_16 <= BG_MODEL_RT_15;	 D_VALID_RT_16 <= D_VALID_RT_15;	 L_VALID_RT_16 <= L_VALID_RT_15;	 F_VALID_RT_16 <= F_VALID_RT_15;
				 BG_MODEL_RT_17 <= BG_MODEL_RT_16;	 D_VALID_RT_17 <= D_VALID_RT_16;	 L_VALID_RT_17 <= L_VALID_RT_16;	 F_VALID_RT_17 <= F_VALID_RT_16;
				 BG_MODEL_RT_18 <= BG_MODEL_RT_17;	 D_VALID_RT_18 <= D_VALID_RT_17;	 L_VALID_RT_18 <= L_VALID_RT_17;	 F_VALID_RT_18 <= F_VALID_RT_17;
				 BG_MODEL_RT_19 <= BG_MODEL_RT_18;	 D_VALID_RT_19 <= D_VALID_RT_18;	 L_VALID_RT_19 <= L_VALID_RT_18;	 F_VALID_RT_19 <= F_VALID_RT_18;
				 BG_MODEL_RT_20 <= BG_MODEL_RT_19;	 D_VALID_RT_20 <= D_VALID_RT_19;	 L_VALID_RT_20 <= L_VALID_RT_19;	 F_VALID_RT_20 <= F_VALID_RT_19;
				 BG_MODEL_RT_21 <= BG_MODEL_RT_20;	 D_VALID_RT_21 <= D_VALID_RT_20;	 L_VALID_RT_21 <= L_VALID_RT_20;	 F_VALID_RT_21 <= F_VALID_RT_20;
				 BG_MODEL_RT_22 <= BG_MODEL_RT_21;	 D_VALID_RT_22 <= D_VALID_RT_21;	 L_VALID_RT_22 <= L_VALID_RT_21;	 F_VALID_RT_22 <= F_VALID_RT_21;
				 BG_MODEL_RT_23 <= BG_MODEL_RT_22;	 D_VALID_RT_23 <= D_VALID_RT_22;	 L_VALID_RT_23 <= L_VALID_RT_22;	 F_VALID_RT_23 <= F_VALID_RT_22;
				 BG_MODEL_RT_24 <= BG_MODEL_RT_23;	 D_VALID_RT_24 <= D_VALID_RT_23;	 L_VALID_RT_24 <= L_VALID_RT_23;	 F_VALID_RT_24 <= F_VALID_RT_23;
				 BG_MODEL_RT_25 <= BG_MODEL_RT_24;	 D_VALID_RT_25 <= D_VALID_RT_24;	 L_VALID_RT_25 <= L_VALID_RT_24;	 F_VALID_RT_25 <= F_VALID_RT_24;
				 BG_MODEL_RT_26 <= BG_MODEL_RT_25;	 D_VALID_RT_26 <= D_VALID_RT_25;	 L_VALID_RT_26 <= L_VALID_RT_25;	 F_VALID_RT_26 <= F_VALID_RT_25;
				 BG_MODEL_RT_27 <= BG_MODEL_RT_26;	 D_VALID_RT_27 <= D_VALID_RT_26;	 L_VALID_RT_27 <= L_VALID_RT_26;	 F_VALID_RT_27 <= F_VALID_RT_26;
				 BG_MODEL_RT_28 <= BG_MODEL_RT_27;	 D_VALID_RT_28 <= D_VALID_RT_27;	 L_VALID_RT_28 <= L_VALID_RT_27;	 F_VALID_RT_28 <= F_VALID_RT_27;
				 BG_MODEL_RT_29 <= BG_MODEL_RT_28;	 D_VALID_RT_29 <= D_VALID_RT_28;	 L_VALID_RT_29 <= L_VALID_RT_28;	 F_VALID_RT_29 <= F_VALID_RT_28;
				 BG_MODEL_RT_30 <= BG_MODEL_RT_29;	 D_VALID_RT_30 <= D_VALID_RT_29;	 L_VALID_RT_30 <= L_VALID_RT_29;	 F_VALID_RT_30 <= F_VALID_RT_29;
				 BG_MODEL_RT_31 <= BG_MODEL_RT_30;	 D_VALID_RT_31 <= D_VALID_RT_30;	 L_VALID_RT_31 <= L_VALID_RT_30;	 F_VALID_RT_31 <= F_VALID_RT_30;
				 BG_MODEL_RT_32 <= BG_MODEL_RT_31;	 D_VALID_RT_32 <= D_VALID_RT_31;	 L_VALID_RT_32 <= L_VALID_RT_31;	 F_VALID_RT_32 <= F_VALID_RT_31;
				 BG_MODEL_RT_33 <= BG_MODEL_RT_32;	 D_VALID_RT_33 <= D_VALID_RT_32;	 L_VALID_RT_33 <= L_VALID_RT_32;	 F_VALID_RT_33 <= F_VALID_RT_32;
				 BG_MODEL_RT_34 <= BG_MODEL_RT_33;	 D_VALID_RT_34 <= D_VALID_RT_33;	 L_VALID_RT_34 <= L_VALID_RT_33;	 F_VALID_RT_34 <= F_VALID_RT_33;
				 BG_MODEL_RT_35 <= BG_MODEL_RT_34;	 D_VALID_RT_35 <= D_VALID_RT_34;	 L_VALID_RT_35 <= L_VALID_RT_34;	 F_VALID_RT_35 <= F_VALID_RT_34;
				 BG_MODEL_RT_36 <= BG_MODEL_RT_35;	 D_VALID_RT_36 <= D_VALID_RT_35;	 L_VALID_RT_36 <= L_VALID_RT_35;	 F_VALID_RT_36 <= F_VALID_RT_35;
				 BG_MODEL_RT_37 <= BG_MODEL_RT_36;	 D_VALID_RT_37 <= D_VALID_RT_36;	 L_VALID_RT_37 <= L_VALID_RT_36;	 F_VALID_RT_37 <= F_VALID_RT_36;
				 BG_MODEL_RT_38 <= BG_MODEL_RT_37;	 D_VALID_RT_38 <= D_VALID_RT_37;	 L_VALID_RT_38 <= L_VALID_RT_37;	 F_VALID_RT_38 <= F_VALID_RT_37;
				 BG_MODEL_RT_39 <= BG_MODEL_RT_38;	 D_VALID_RT_39 <= D_VALID_RT_38;	 L_VALID_RT_39 <= L_VALID_RT_38;	 F_VALID_RT_39 <= F_VALID_RT_38;
				 NEW_R_1 <= NEW_R;
				 NEW_R_2 <= NEW_R_1;
				 NEW_R_3 <= NEW_R_2;
				 NEW_R_4 <= NEW_R_3;
				 NEW_R_5 <= NEW_R_4;
				 NEW_R_6 <= NEW_R_5;
				 NEW_R_7 <= NEW_R_6;
				 NEW_R_8 <= NEW_R_7;
				 NEW_R_9 <= NEW_R_8;
				 NEW_R_10 <= NEW_R_9;
				 NEW_R_11 <= NEW_R_10;
				 NEW_R_12 <= NEW_R_11;
			 end if;
		 end if;
	end process;


	 OUTPUT : process (CLK)
	 begin
		 if ( rising_edge(CLK) ) then
			 if ( CE = '1' ) then
				 D_VALID_MODEL_OUT <= D_VALID_RT_39;
				 L_VALID_MODEL_OUT <= L_VALID_RT_39;
				 F_VALID_MODEL_OUT <= F_VALID_RT_39;
				 BG_MODEL_OUT(335 downto 320) <= NEW_T;
				 BG_MODEL_OUT(319 downto 304) <= NEW_R_12;
				 BG_MODEL_OUT(303 downto 0) <= BG_MODEL_RT_39( 303 downto 0);
			 end if;
		 end if;
	end process;


---------------------------------------------------------------------------------------------------------------------
	-- TTTTTTTTTTTTTOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL	---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------
	-- RANDOM 1/T 
	---------------------------------------------------------------------------------------------------------------------
	process (CLK) is
	begin
		if (rising_edge(CLK) ) then
			if ( CE = '1' ) then
				if ( rng_T < "0000000010000000000000000000000000" ) then
					update <='1';	
				else
					update <='0';
				end if;	
			end if;	
		end if;	
	end process;
	
	---------------------------------------------------------------------------------------------------------------------
	-- RANDOM 1x 1/T 2x 1/ILE PROBEK + 1/9 - wybor modelu do aktualizacji ...
	---------------------------------------------------------------------------------------------------------------------
	mult_RNG_T : mult17x17
		PORT MAP (
			clk => clk,
			a => RNG(55 downto 39),
			b => ('0' & PARAM_T), 
			ce => ce,
			p => rng_T
	);
	mult_RNG_20_1 : mult17x17
		PORT MAP (
			clk => clk,
			a => RNG(72 downto 56),
			b => "00000000000010011",
			ce => ce,
			p => rng_20_1_1
	);

	mult_RNG_20_2 : mult17x17
		PORT MAP (
			clk => clk,
			a => RNG(38 downto 22),
			b => "00000000000010011",
			ce => ce,
			p => rng_20_1_2
	);

	mult_RNG_8_1 : mult17x17
		PORT MAP (
			clk => clk,
			a => RNG(55 downto 39),
			b => "00000000000001001",
			ce => ce,
			p => rng_8_1_1
	);

	updateModel_19_1 <= rng_20_1_1(24 downto 17);
	updateModel_19_2 <= rng_20_1_2(24 downto 17);
	selectContext_8_1 <= rng_8_1_1(21 downto 17);

	-- DEKODE 9
	select8 <= "00000001" when selectContext_8_1 = "00000" else
				  "00000010" when selectContext_8_1 = "00001" else
				  "00000100" when selectContext_8_1 = "00010" else
				  
				  "00001000" when selectContext_8_1 = "00011" else
				  "00010000" when selectContext_8_1 = "00100" else
				  "00100000" when selectContext_8_1 = "00101" else
				  
				  "01000000" when selectContext_8_1 = "00110" else
				  "10000000" when selectContext_8_1 = "00111" else
				  "00000000";


	---------------------------------------------------------------------------------------------------------------------
		-- DELAY COUNTING
	---------------------------------------------------------------------------------------------------------------------
		process (CLK) is
		begin
			if (rising_edge(CLK) ) then
				if ( CE = '1' ) then
				
					if ( RST = '1' or BG_MODEL_C0(BG_MODEL_SC_W + PIXEL_W+ DIST_W + POS_W+2) ='0' ) then  -- FRAME VALID	
						hDelayCnt <= (others => '0');
						vDelayCnt <= (others => '0');	
					else				
						if ( BG_MODEL_C0(BG_MODEL_SC_W + PIXEL_W+ DIST_W + POS_W+0) = '1' ) then -- DATA VALID
							
								-- HORIZONTAL AND VERICAL COUNTERS
								if ( hDelayCnt < H_SIZE_IMG-1 ) then
									hDelayCnt <= hDelayCnt + 1;
								else
									hDelayCnt <= (others => '0');
									if ( vDelayCnt < V_SIZE-1 ) then
										vDelayCnt <= vDelayCnt + 1;
									else
										vDelayCnt <= (others => '0');
									end if;
								end if;
								
								-- CONDITION
								if ( hDelayCnt >= 1 and hDelayCnt < H_SIZE_IMG and vDelayCnt > 1 and vDelayCnt < V_SIZE ) then
									-- gradients when inside
									FCV <='1';	
								else
									-- when on edges then '0'
									FCV <='0';
								end if;
								if ( hDelayCnt > 2 and hDelayCnt <= H_SIZE_IMG and vDelayCnt > 2 and vDelayCnt <= V_SIZE ) then
									-- gradients when inside
									FCV_LAST <='1';	
								else
									-- when on edges then '0'
									FCV_LAST <='0';
								end if;
							else
								FCV <='0';
								FCV_LAST <='0';
								
							end if; 	
						
					end if;	
				end if;	
			end if;	
		end process;
end Behavioral;
