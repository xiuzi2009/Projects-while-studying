-- A library clause declares a name as a library.  It 
-- does not create the library; it simply forward declares 
-- it. 
LIBRARY ieee; -- This will be in every design USE ieee.std_logic_arith.all; USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all; 
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
---------------------------------------------------------------------------------------
ENTITY vga is
GENERIC
(
	pixels_x :  INTEGER := 640;   --row that last color will persist 
   pixels_y :  INTEGER := 480;   --column that last color will persist 
    
	Hsync_A  :  INTEGER := 800;   --flags for control H counter, after these value counter goes into corresponding period. D is regarded as zero, unit(times clk).
	
	Hsync_B  :  INTEGER := 655;   
	Hsync_C  :  INTEGER := 751;
	Hsync_D  :  INTEGER := 799;	--Video output
	Hsync_E  :  INTEGER := 639;
	
	Vsync_O  :  INTEGER := 525;	 --flags for control V counter,unit(times Hsync)
	
	Vsync_P  :  INTEGER := 489;
	Vsync_Q  :  INTEGER := 491;
	Vsync_R  :  INTEGER := 524;
	Vsync_S  :  INTEGER := 479  
    
);
PORT
 (
	clk  : IN STD_LOGIC; 
	rst  : IN STD_LOGIC;
	h_sync : OUT STD_LOGIC;
	v_sync : OUT STD_LOGIC;
	Vid: OUT  STD_LOGIC_VECTOR(23 DOWNTO 0) 
 );
END vga;
---------------------------------------------------------------------------------------
ARCHITECTURE behavior OF vga IS 
SIGNAL Hcnt : INTEGER;
SIGNAL Vcnt : INTEGER;
SIGNAL Ven : STD_LOGIC;
SIGNAL Hvdt : STD_LOGIC;	-- For D : video output period
SIGNAL Vvdt : STD_LOGIC;	-- For R : video output period
--The 24bit video output is constructed by three main color signal: R, G, B. Each signal has 8 bits.
SIGNAL R : STD_LOGIC_VECTOR(7 DOWNTO 0) ;  
SIGNAL G : STD_LOGIC_VECTOR(7 DOWNTO 0) ;
SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0) ;
-----------------------------------------
BEGIN 
	PROCESS(clk, rst)
		BEGIN
			IF(rst= '1') 							--IF reset is high, Reset H & V counters. Otherwise, run the process normally.
			THEN
				Hcnt<= 655;							-- Regard value of video starting as zero, so the initial value of counters are 655 and 488.               			
				Vcnt<= 488;					  			
			ELSIF (rising_edge(clk)) 
				THEN 
					Hcnt<= Hcnt + 1; 				 --Hcounter plus one when clk rising 
				
					CASE Hcnt is
					WHEN Hsync_C =>             -- when clk amount reach C, set h_sync to high
						h_sync  <= '1';
					WHEN Hsync_D => 				 -- D, set Hvideo high and clear counter
						Hvdt  <= '1';
						Hcnt	<= 0;
					WHEN Hsync_E=>					 -- E, set Hvideo low
						Hvdt	<='0';
					WHEN Hsync_B=>					 -- B, set h_sync to low, one H cycle ends, set Ven to high
						h_sync  <='0';
						Ven  <= '1';
					WHEN OTHERS =>
						null;							 -- others, do nothing.
					END CASE;
	
					IF(Ven = '1')						 -- If Ven=high, Vcnt+1. Then Ven set low.
					Then
						Vcnt <= Vcnt + 1;
						Ven<='0';
					END IF;
	
					CASE Vcnt is						
					WHEN Vsync_Q => 				-- when Hcnt amount reach Q, set V_sync to high
						v_sync  <= '1';
					WHEN Vsync_R =>            -- R, set Vvideo high and clear counter
						Vvdt  <= '1';
						Vcnt	<= 0;
					WHEN Vsync_S=> 				-- S, set Vvideo low
						Vvdt	<='0';
					WHEN Vsync_P=>					-- P, set V_sync to low, one V cycle ends
						v_sync  <='0';
					WHEN OTHERS =>
						null;							-- others, do nothing.
					END CASE;
					
				IF (Hcnt < pixels_x/8)			-- The Horizontal area is divided in 8 parts, each of them keeps one color.
				THEN
					R<=X"FF";G<=X"00";B<=X"00";									--FF0000
				ELSIF (Hcnt > pixels_x/8-1 AND Hcnt < pixels_x/8*2 )
				THEN
					R<=X"00";G<=X"FF";B<=X"00";									--00FF00
				ELSIF (Hcnt > pixels_x/8*2-1 AND Hcnt < pixels_x/8*3 )
				THEN
					R<=X"00";G<=X"00";B<=X"FF";									--0000FF
				ELSIF (Hcnt > pixels_x/8*3-1 AND Hcnt < pixels_x/8*4 )
					THEN
					R<=X"00";G<=X"00";B<=X"00";									--000000
				ELSIF (Hcnt > pixels_x/8*4-1 AND Hcnt < pixels_x/8*5 )
					THEN
					R<=X"FF";G<=X"CC";B<=X"99";									--FFCC99
				ELSIF (Hcnt > pixels_x/8*5-1 AND Hcnt < pixels_x/8*6 )
					THEN
					R<=X"99";G<=X"FF";B<=X"CC";									--99CCFF
				ELSIF (Hcnt > pixels_x/8*6-1 AND Hcnt < pixels_x/8*7 )
					THEN
					R<=X"CC";G<=X"99";B<=X"FF";									--CC99FF
				ELSIF (Hcnt > pixels_x/8*7-1 AND Hcnt < pixels_x )
					THEN
					R<=X"AA";G<=X"AA";B<=X"AA";									--AAAAAA
				END IF;
			
				IF (Hvdt = '1' AND Vvdt ='1')										--port Vid is active only when both H&V video are output.
				THEN
					IF ((Vcnt < pixels_y/2))										-- The vertical area is divided in 2 parts, lower part is inverted color of upper area.
					THEN
					Vid <= R & G & B;													--Upper area, combine the 3 color signal to video output directly.
					ELSE 
					Vid <= (not R) & (not G) & (not B);							--Lower area, reverse the 3 color signal then combine to video output.
					END IF;
				ELSE 
					Vid<= "XXXXXXXXXXXXXXXXXXXXXXXX";							--If the Hvdt or Vvdt is low, close the video signal output.
				END IF;
			END IF;
	END PROCESS;
END behavior;