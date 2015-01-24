-- Tomasz Kryjak
-- AGH Krakow

			  
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity median_9x9 is
	
	 generic (  CONTEXT_SIZE	: in natural := 81;
	       BRAM_SIZE_W	: in natural := 10
				);

    Port ( CLK : in  STD_LOGIC;
			  RST: in  STD_LOGIC; 
			  CE : in STD_LOGIC;
	 
	        DATA_IN : in STD_LOGIC; -- dane wejsciowe
			  
			  D_VALID_IN : in  STD_LOGIC;	
			  L_VALID_IN : in  STD_LOGIC;	
			  F_VALID_IN : in  STD_LOGIC;  	

			   -- RESOLUTION PARAMETERS
			  H_SIZE          : in  STD_LOGIC_VECTOR  (BRAM_SIZE_W-1 downto 0); 
			  H_SIZE_IMG      : in  STD_LOGIC_VECTOR  (BRAM_SIZE_W-1 downto 0); 
			  V_SIZE          : in  STD_LOGIC_VECTOR  (BRAM_SIZE_W-1 downto 0); 
			 			  
			  D_VALID_OUT : out  STD_LOGIC;	
			  L_VALID_OUT : out STD_LOGIC;	
			  F_VALID_OUT : out  STD_LOGIC; 
			  
			  DATA_OUT : out STD_LOGIC     -- dane wyjsciowe
			  	
			  
			  );
end median_9x9;
			  
architecture Behavioral of median_9x9 is

	component binary_context_9x9 is
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
	end component binary_context_9x9;
component sumTree_binary_81 is
	 Generic ( SAMPLES_N : natural := 81;
			   OUTPUT_W : natural := 8
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
end component sumTree_binary_81;

	 signal CONTEXT : STD_LOGIC_VECTOR(CONTEXT_SIZE -1 downto 0) := (others => '0');	
	 signal SUM : STD_LOGIC_VECTOR(8 -1 downto 0) := (others => '0');	
	 signal D_VALID_INT1 : STD_LOGIC:= '0';
	 signal L_VALID_INT1 : STD_LOGIC:= '0';
	 signal F_VALID_INT1 : STD_LOGIC:= '0';
	 signal D_VALID_INT2 : STD_LOGIC:= '0';
	 signal L_VALID_INT2 : STD_LOGIC:= '0';
	 signal F_VALID_INT2 : STD_LOGIC:= '0';

	 signal CONTEXT_VALID_INT_0 : STD_LOGIC := '0';
	 signal CONTEXT_VALID_INT_1 : STD_LOGIC := '0';
	 signal CONTEXT_VALID_INT_2 : STD_LOGIC := '0';
	 signal CONTEXT_VALID_INT_3 : STD_LOGIC := '0';
	 signal CONTEXT_VALID_INT_4 : STD_LOGIC := '0';
	 signal CONTEXT_VALID_INT_5 : STD_LOGIC := '0';
	 signal CONTEXT_VALID_INT_6 : STD_LOGIC := '0';
	 signal CONTEXT_VALID_INT_7 : STD_LOGIC := '0';

 begin

 --------------------------------------------------------------------------------
	-- KONTEKST
	-- LATENCY = 1
 	--------------------------------------------------------------------------------
binary_context_9x9_I:  binary_context_9x9 
	          generic map ( CONTEXT_SIZE=>CONTEXT_SIZE, BRAM_SIZE_W => BRAM_SIZE_W)
				 Port map ( CLK => CLK, 
					       CE=> CE,
						  RST => RST, 
						  D_IN => DATA_IN,  
						  D_VALID_IN => D_VALID_IN,
						  L_VALID_IN => L_VALID_IN,
						  F_VALID_IN => F_VALID_IN,
						  H_SIZE=> H_SIZE,
						  H_SIZE_IMG=> H_SIZE_IMG,
						  V_SIZE=> V_SIZE,
						  CONTEXT_VALID_OUT => CONTEXT_VALID_INT_0,
						  CONTEXT => CONTEXT,
						  D_VALID_OUT => D_VALID_INT1, 
						  L_VALID_OUT => L_VALID_INT1, 
						  F_VALID_OUT => F_VALID_INT1	
				);		

 --------------------------------------------------------------------------------
	-- ZLICZANIE ODLEGLOSCI MNIEJSZYCH NIZ PROG
	-- LATENCY = 7
 	--------------------------------------------------------------------------------
	 sumTree_binary_81_I : sumTree_binary_81 
		 GENERIC MAP (SAMPLES_N => CONTEXT_SIZE, OUTPUT_W => 8)
		 PORT MAP(CLK => CLK, RST => RST, CE => CE,
			D_VALID => D_VALID_INT1, L_VALID => L_VALID_INT1, F_VALID => F_VALID_INT1,
			D_VALID_OUT => D_VALID_INT2, L_VALID_OUT => L_VALID_INT2, F_VALID_OUT => F_VALID_INT2, 
		 INPUT => CONTEXT, SUM => SUM );

	 DELAY_TREE : process (CLK)
	 begin
		 if ( rising_edge(CLK) ) then
			 if ( CE = '1' ) then
				 CONTEXT_VALID_INT_1 <= CONTEXT_VALID_INT_0;
				 CONTEXT_VALID_INT_2 <= CONTEXT_VALID_INT_1;
				 CONTEXT_VALID_INT_3 <= CONTEXT_VALID_INT_2;
				 CONTEXT_VALID_INT_4 <= CONTEXT_VALID_INT_3;
				 CONTEXT_VALID_INT_5 <= CONTEXT_VALID_INT_4;
				 CONTEXT_VALID_INT_6 <= CONTEXT_VALID_INT_5;
				 CONTEXT_VALID_INT_7 <= CONTEXT_VALID_INT_6;
			 end if;
		 end if;
	 end process;


	 process (CLK)
	 begin
		 if (CLK = '1' and CLK'event) then
			 if ( CE = '1' ) then
				 if ( SUM > "00101000" and CONTEXT_VALID_INT_7 = '1' ) then
					 DATA_OUT <='1';
				 else
					 DATA_OUT <='0';
				 end if;

				 D_VALID_OUT <= D_VALID_INT2;
				 L_VALID_OUT <= L_VALID_INT2;
				 F_VALID_OUT <= F_VALID_INT2;	

			 end if;
		 end if;
	 end process;
end Behavioral;
