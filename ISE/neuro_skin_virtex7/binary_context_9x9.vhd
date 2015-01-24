-- Tomasz Kryjak
-- AGH Krakow


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity binary_context_9x9 is
   generic (  CONTEXT_SIZE	: in natural := 81;
              BRAM_SIZE_W : in natural := 10
			   );		   
	  Port ( CLK : in  STD_LOGIC;
					  RST: in  STD_LOGIC;
					  CE : in STD_LOGIC;
					  D_IN : in STD_LOGIC; -- dane wejsciowe
					  D_VALID_IN : in  STD_LOGIC;	
					  L_VALID_IN : in  STD_LOGIC;	
					  F_VALID_IN : in  STD_LOGIC; 
					  H_SIZE          : in  STD_LOGIC_VECTOR  (BRAM_SIZE_W-1 downto 0);  
					  H_SIZE_IMG      : in  STD_LOGIC_VECTOR  (BRAM_SIZE_W-1 downto 0);  
					  V_SIZE          : in  STD_LOGIC_VECTOR  (BRAM_SIZE_W-1 downto 0);
					  D_VALID_OUT : out  STD_LOGIC;		 
					  L_VALID_OUT : out  STD_LOGIC;		
                   F_VALID_OUT : out  STD_LOGIC; 	
					  CONTEXT_VALID_OUT : out  STD_LOGIC; 
					  CONTEXT : out STD_LOGIC_VECTOR(CONTEXT_SIZE-1 downto 0)  
					  
			);		
end  binary_context_9x9;

architecture Behavioral of binary_context_9x9 is

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

	component singleDelay is 
   generic (
			WIDTH : in natural := 4
			);		
    Port ( CLK : in  STD_LOGIC;
			  RST: in  STD_LOGIC;
			  CE : in  STD_LOGIC;
			  
			  ENA : in  STD_LOGIC;

           DIN : in  STD_LOGIC_VECTOR (WIDTH-1 downto 0);
           DOUT : out  STD_LOGIC_VECTOR (WIDTH-1 downto 0) 
			  );
	end component singleDelay;

	 signal d1_0 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d1_1 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d1_2 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d1_3 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d1_4 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d1_5 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d1_6 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d1_7 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d1_8 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d1_9 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 

	 signal d2_0 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d2_1 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d2_2 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d2_3 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d2_4 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d2_5 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d2_6 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d2_7 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d2_8 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d2_9 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 

	 signal d3_0 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d3_1 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d3_2 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d3_3 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d3_4 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d3_5 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d3_6 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d3_7 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d3_8 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d3_9 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 

	 signal d4_0 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d4_1 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d4_2 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d4_3 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d4_4 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d4_5 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d4_6 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d4_7 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d4_8 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d4_9 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 

	 signal d5_0 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d5_1 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d5_2 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d5_3 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d5_4 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d5_5 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d5_6 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d5_7 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d5_8 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d5_9 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 

	 signal d6_0 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d6_1 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d6_2 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d6_3 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d6_4 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d6_5 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d6_6 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d6_7 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d6_8 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d6_9 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 

	 signal d7_0 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d7_1 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d7_2 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d7_3 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d7_4 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d7_5 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d7_6 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d7_7 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d7_8 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d7_9 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 

	 signal d8_0 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d8_1 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d8_2 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d8_3 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d8_4 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d8_5 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d8_6 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d8_7 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d8_8 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d8_9 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 

	 signal d9_0 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d9_1 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d9_2 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d9_3 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d9_4 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d9_5 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d9_6 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d9_7 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d9_8 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 
	 signal d9_9 : STD_LOGIC_VECTOR(3 downto 0):= (others => '0'); 

	-- FOR RAM ... 
	 signal dbram_in_1 : STD_LOGIC_VECTOR( 35 downto 0):= (others => '0'); 
	 signal dbram_out_1 : STD_LOGIC_VECTOR( 35 downto 0):= (others => '0'); 
	 signal hDelayCnt : STD_LOGIC_VECTOR  (BRAM_SIZE_W-1 downto 0) := (others => '0');   
	 signal vDelayCnt : STD_LOGIC_VECTOR  (BRAM_SIZE_W-1 downto 0) := (others => '0');  
	 signal H_SIZE_TEMP : STD_LOGIC_VECTOR  (BRAM_SIZE_W-1 downto 0) := (others => '0'); 
	 
begin

	 d1_0(0) <= D_IN;
	 d1_0(1) <= D_VALID_IN;
	 d1_0(2) <= L_VALID_IN;
	 d1_0(3) <= F_VALID_IN;
	 -- LONG DELAY LINES 
	 H_SIZE_TEMP <= H_SIZE-9; 
	 DLONG_1 : delayLineBramWP generic map(WIDTH=>36) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1', DIN=>dBRAM_IN_1, DOUT=>dBRAM_OUT_1,H_SIZE => H_SIZE_TEMP); 
	 dBRAM_IN_1(3 downto 0)   <= d1_9;
	 dBRAM_IN_1(7 downto 4)   <= d2_9;
	 dBRAM_IN_1(11 downto 8)   <= d3_9;
	 dBRAM_IN_1(15 downto 12)   <= d4_9;
	 dBRAM_IN_1(19 downto 16)   <= d5_9;
	 dBRAM_IN_1(23 downto 20)   <= d6_9;
	 dBRAM_IN_1(27 downto 24)   <= d7_9;
	 dBRAM_IN_1(31 downto 28)   <= d8_9;

	 d2_0 <=   dBRAM_OUT_1(3 downto 0);
	 d3_0 <=   dBRAM_OUT_1(7 downto 4);
	 d4_0 <=   dBRAM_OUT_1(11 downto 8);
	 d5_0 <=   dBRAM_OUT_1(15 downto 12);
	 d6_0 <=   dBRAM_OUT_1(19 downto 16);
	 d7_0 <=   dBRAM_OUT_1(23 downto 20);
	 d8_0 <=   dBRAM_OUT_1(27 downto 24);
	 d9_0 <=   dBRAM_OUT_1(31 downto 28);


	-- SHORT DELAY LINES

	 SD_1_0 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d1_0,   DOUT=>d1_1);
	 SD_1_1 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d1_1,   DOUT=>d1_2);
	 SD_1_2 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d1_2,   DOUT=>d1_3);
	 SD_1_3 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d1_3,   DOUT=>d1_4);
	 SD_1_4 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d1_4,   DOUT=>d1_5);
	 SD_1_5 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d1_5,   DOUT=>d1_6);
	 SD_1_6 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d1_6,   DOUT=>d1_7);
	 SD_1_7 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d1_7,   DOUT=>d1_8);
	 SD_1_8 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d1_8,   DOUT=>d1_9);

	 SD_2_0 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d2_0,   DOUT=>d2_1);
	 SD_2_1 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d2_1,   DOUT=>d2_2);
	 SD_2_2 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d2_2,   DOUT=>d2_3);
	 SD_2_3 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d2_3,   DOUT=>d2_4);
	 SD_2_4 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d2_4,   DOUT=>d2_5);
	 SD_2_5 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d2_5,   DOUT=>d2_6);
	 SD_2_6 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d2_6,   DOUT=>d2_7);
	 SD_2_7 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d2_7,   DOUT=>d2_8);
	 SD_2_8 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d2_8,   DOUT=>d2_9);

	 SD_3_0 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d3_0,   DOUT=>d3_1);
	 SD_3_1 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d3_1,   DOUT=>d3_2);
	 SD_3_2 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d3_2,   DOUT=>d3_3);
	 SD_3_3 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d3_3,   DOUT=>d3_4);
	 SD_3_4 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d3_4,   DOUT=>d3_5);
	 SD_3_5 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d3_5,   DOUT=>d3_6);
	 SD_3_6 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d3_6,   DOUT=>d3_7);
	 SD_3_7 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d3_7,   DOUT=>d3_8);
	 SD_3_8 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d3_8,   DOUT=>d3_9);

	 SD_4_0 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d4_0,   DOUT=>d4_1);
	 SD_4_1 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d4_1,   DOUT=>d4_2);
	 SD_4_2 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d4_2,   DOUT=>d4_3);
	 SD_4_3 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d4_3,   DOUT=>d4_4);
	 SD_4_4 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d4_4,   DOUT=>d4_5);
	 SD_4_5 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d4_5,   DOUT=>d4_6);
	 SD_4_6 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d4_6,   DOUT=>d4_7);
	 SD_4_7 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d4_7,   DOUT=>d4_8);
	 SD_4_8 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d4_8,   DOUT=>d4_9);

	 SD_5_0 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d5_0,   DOUT=>d5_1);
	 SD_5_1 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d5_1,   DOUT=>d5_2);
	 SD_5_2 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d5_2,   DOUT=>d5_3);
	 SD_5_3 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d5_3,   DOUT=>d5_4);
	 SD_5_4 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d5_4,   DOUT=>d5_5);
	 SD_5_5 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d5_5,   DOUT=>d5_6);
	 SD_5_6 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d5_6,   DOUT=>d5_7);
	 SD_5_7 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d5_7,   DOUT=>d5_8);
	 SD_5_8 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d5_8,   DOUT=>d5_9);

	 SD_6_0 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d6_0,   DOUT=>d6_1);
	 SD_6_1 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d6_1,   DOUT=>d6_2);
	 SD_6_2 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d6_2,   DOUT=>d6_3);
	 SD_6_3 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d6_3,   DOUT=>d6_4);
	 SD_6_4 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d6_4,   DOUT=>d6_5);
	 SD_6_5 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d6_5,   DOUT=>d6_6);
	 SD_6_6 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d6_6,   DOUT=>d6_7);
	 SD_6_7 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d6_7,   DOUT=>d6_8);
	 SD_6_8 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d6_8,   DOUT=>d6_9);

	 SD_7_0 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d7_0,   DOUT=>d7_1);
	 SD_7_1 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d7_1,   DOUT=>d7_2);
	 SD_7_2 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d7_2,   DOUT=>d7_3);
	 SD_7_3 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d7_3,   DOUT=>d7_4);
	 SD_7_4 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d7_4,   DOUT=>d7_5);
	 SD_7_5 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d7_5,   DOUT=>d7_6);
	 SD_7_6 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d7_6,   DOUT=>d7_7);
	 SD_7_7 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d7_7,   DOUT=>d7_8);
	 SD_7_8 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d7_8,   DOUT=>d7_9);

	 SD_8_0 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d8_0,   DOUT=>d8_1);
	 SD_8_1 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d8_1,   DOUT=>d8_2);
	 SD_8_2 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d8_2,   DOUT=>d8_3);
	 SD_8_3 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d8_3,   DOUT=>d8_4);
	 SD_8_4 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d8_4,   DOUT=>d8_5);
	 SD_8_5 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d8_5,   DOUT=>d8_6);
	 SD_8_6 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d8_6,   DOUT=>d8_7);
	 SD_8_7 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d8_7,   DOUT=>d8_8);
	 SD_8_8 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d8_8,   DOUT=>d8_9);

	 SD_9_0 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d9_0,   DOUT=>d9_1);
	 SD_9_1 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d9_1,   DOUT=>d9_2);
	 SD_9_2 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d9_2,   DOUT=>d9_3);
	 SD_9_3 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d9_3,   DOUT=>d9_4);
	 SD_9_4 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d9_4,   DOUT=>d9_5);
	 SD_9_5 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d9_5,   DOUT=>d9_6);
	 SD_9_6 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d9_6,   DOUT=>d9_7);
	 SD_9_7 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d9_7,   DOUT=>d9_8);
	 SD_9_8 : singleDelay generic map(WIDTH=>4) port map (CLK=>CLK,RST=>RST, CE=>CE, ENA =>'1',  DIN=>d9_8,   DOUT=>d9_9);



	 CONTEXT(0) <= d1_1(0);
	 CONTEXT(1) <= d1_2(0);
	 CONTEXT(2) <= d1_3(0);
	 CONTEXT(3) <= d1_4(0);
	 CONTEXT(4) <= d1_5(0);
	 CONTEXT(5) <= d1_6(0);
	 CONTEXT(6) <= d1_7(0);
	 CONTEXT(7) <= d1_8(0);
	 CONTEXT(8) <= d1_9(0);

	 CONTEXT(9) <= d2_1(0);
	 CONTEXT(10) <= d2_2(0);
	 CONTEXT(11) <= d2_3(0);
	 CONTEXT(12) <= d2_4(0);
	 CONTEXT(13) <= d2_5(0);
	 CONTEXT(14) <= d2_6(0);
	 CONTEXT(15) <= d2_7(0);
	 CONTEXT(16) <= d2_8(0);
	 CONTEXT(17) <= d2_9(0);

	 CONTEXT(18) <= d3_1(0);
	 CONTEXT(19) <= d3_2(0);
	 CONTEXT(20) <= d3_3(0);
	 CONTEXT(21) <= d3_4(0);
	 CONTEXT(22) <= d3_5(0);
	 CONTEXT(23) <= d3_6(0);
	 CONTEXT(24) <= d3_7(0);
	 CONTEXT(25) <= d3_8(0);
	 CONTEXT(26) <= d3_9(0);

	 CONTEXT(27) <= d4_1(0);
	 CONTEXT(28) <= d4_2(0);
	 CONTEXT(29) <= d4_3(0);
	 CONTEXT(30) <= d4_4(0);
	 CONTEXT(31) <= d4_5(0);
	 CONTEXT(32) <= d4_6(0);
	 CONTEXT(33) <= d4_7(0);
	 CONTEXT(34) <= d4_8(0);
	 CONTEXT(35) <= d4_9(0);

	 CONTEXT(36) <= d5_1(0);
	 CONTEXT(37) <= d5_2(0);
	 CONTEXT(38) <= d5_3(0);
	 CONTEXT(39) <= d5_4(0);
	 CONTEXT(40) <= d5_5(0);
	 CONTEXT(41) <= d5_6(0);
	 CONTEXT(42) <= d5_7(0);
	 CONTEXT(43) <= d5_8(0);
	 CONTEXT(44) <= d5_9(0);

	 CONTEXT(45) <= d6_1(0);
	 CONTEXT(46) <= d6_2(0);
	 CONTEXT(47) <= d6_3(0);
	 CONTEXT(48) <= d6_4(0);
	 CONTEXT(49) <= d6_5(0);
	 CONTEXT(50) <= d6_6(0);
	 CONTEXT(51) <= d6_7(0);
	 CONTEXT(52) <= d6_8(0);
	 CONTEXT(53) <= d6_9(0);

	 CONTEXT(54) <= d7_1(0);
	 CONTEXT(55) <= d7_2(0);
	 CONTEXT(56) <= d7_3(0);
	 CONTEXT(57) <= d7_4(0);
	 CONTEXT(58) <= d7_5(0);
	 CONTEXT(59) <= d7_6(0);
	 CONTEXT(60) <= d7_7(0);
	 CONTEXT(61) <= d7_8(0);
	 CONTEXT(62) <= d7_9(0);

	 CONTEXT(63) <= d8_1(0);
	 CONTEXT(64) <= d8_2(0);
	 CONTEXT(65) <= d8_3(0);
	 CONTEXT(66) <= d8_4(0);
	 CONTEXT(67) <= d8_5(0);
	 CONTEXT(68) <= d8_6(0);
	 CONTEXT(69) <= d8_7(0);
	 CONTEXT(70) <= d8_8(0);
	 CONTEXT(71) <= d8_9(0);

	 CONTEXT(72) <= d9_1(0);
	 CONTEXT(73) <= d9_2(0);
	 CONTEXT(74) <= d9_3(0);
	 CONTEXT(75) <= d9_4(0);
	 CONTEXT(76) <= d9_5(0);
	 CONTEXT(77) <= d9_6(0);
	 CONTEXT(78) <= d9_7(0);
	 CONTEXT(79) <= d9_8(0);
	 CONTEXT(80) <= d9_9(0);

	D_VALID_OUT <= d5_5(1);
	L_VALID_OUT <= d5_5(2);
	F_VALID_OUT <= d5_5(3);

 ---------------------------------------------------------------------------------------------------------
	-- DELAY COUNTING
 ---------------------------------------------------------------------------------------------------------
	process (CLK) is
	begin
		if (rising_edge(CLK) ) then
			if ( CE = '1' ) then
			
				-- POSSIBLE FROM FRAME VALID ...
				if ( RST = '1' or F_VALID_IN = '0' ) then		
					hDelayCnt <= (others => '0');
					vDelayCnt <= (others => '0');
					
				else				
					if ( D_VALID_IN = '1' ) then -- DATA_VALID	
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
						if ( hDelayCnt > 9 and hDelayCnt < H_SIZE_IMG and vDelayCnt > 9 and vDelayCnt < V_SIZE ) then
							CONTEXT_VALID_OUT <= '1';			
						else
							-- when on edges then '0'
							CONTEXT_VALID_OUT <= '0';
						end if;
					else
						CONTEXT_VALID_OUT <= '0';
					end if; 		
				end if;		
			end if;	
		end if;	
	end process;
end Behavioral;
