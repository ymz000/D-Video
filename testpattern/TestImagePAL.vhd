library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.DVideo2HDMI_pkg.all;

-- Implement a test image generator for the D-Video board.


entity TestImagePAL is	
	port (
	   -- clocking input
		CLK50: in std_logic;	
		
	   -- HDMI interface
		adv7513_scl: inout std_logic; 
		adv7513_sda: inout std_logic; 
      adv7513_hs : out std_logic; 
      adv7513_vs : out std_logic;
      adv7513_clk : out std_logic;
      adv7513_d : out STD_LOGIC_VECTOR(23 downto 0);
      adv7513_de : out std_logic;
		
		-- GPIO  
		GPIO30    : out std_logic;
		GPIO29    : out std_logic;
		GPIO28    : out std_logic;

		GPIO0 : in std_logic

	);	
end entity;


architecture immediate of TestImagePAL is

   component DVideo2HDMI is
	generic ( 
		 timings:videotimings;
		 configurations:pllconfigurations;
 		 vstretch:boolean
	);
	port (
	   -- default clocking and reset
		CLK50: in std_logic;	
      RST: in std_logic;
		
	   -- HDMI interface
		adv7513_scl: inout std_logic; 
		adv7513_sda: inout std_logic; 
      adv7513_hs : out std_logic; 
      adv7513_vs : out std_logic;
      adv7513_clk : out std_logic;
      adv7513_d : out STD_LOGIC_VECTOR(23 downto 0);
      adv7513_de : out std_logic;
	
		-- DVideo input -----
		DVID_CLK    : in std_logic;
		DVID_REFCLK : in std_logic;
		DVID_HSYNC  : in std_logic;
		DVID_VSYNC  : in std_logic;
		DVID_RGB    : in STD_LOGIC_VECTOR(11 downto 0);
		
		-- debugging output ---
		DEBUG0 : out std_logic;
		DEBUG1 : out std_logic
	);	
	end component;

	-- communication between components 
	signal DVID_CLK    : std_logic;
	signal DVID_HSYNC   : std_logic;
	signal DVID_VSYNC   : std_logic;
	signal DVID_RGB    : STD_LOGIC_VECTOR(11 downto 0);

	-- settings for possible resolutions in 50Hz
   constant timings:videotimings := ( 
		( 128 + 30, 200, 1280, 72, -130,  7*384,  7 + 9,  23, 1024, 3 ),   -- 1280x1024
		( 176 + 15, 264, 1680, 88,   72,  4*384,  6 + 5,  24, 1050, 3 ),   -- 1680x1050
		( 200 + 4 , 312, 1920, 112, 192,  0*384,  5 + 26, 26, 1080, 3 )    -- 1920x1080
	);
	constant configurations:pllconfigurations := (
		-- 205 output clocks for every 8 input clocks
			"000001000100000001"   -- CP,LF
		 & "100000000000000000"   -- N
		 & "001100111101100110"   -- M
	    & "000000100000000100"   -- C0
		 & "100000000000000000"   -- C1
		 & "100000000000000000"   -- C2
		 & "100000000000000000"   -- C3
       & "100000000000000000"   -- C4
		,
		 -- 34 times input clock
			"000001000000000001"   -- CP,LF
		 & "100000000000000000"   -- N
		 & "000110011000110011"   -- M
	    & "000000010100000001"   -- C0
		 & "100000000000000000"   -- C1
		 & "100000000000000000"   -- C2
		 & "100000000000000000"   -- C3
       & "100000000000000000"   -- C4
		 ,
		 -- 245 output clocks for every 6 input clocks
			"000001000100000001"   -- CP,LF
		 & "100000000000000000"   -- N
		 & "001111011101111010"   -- M
	    & "000000011000000011"   -- C0
		 & "100000000000000000"   -- C1
		 & "100000000000000000"   -- C2
		 & "100000000000000000"   -- C3
       & "100000000000000000"   -- C4
	);

		
begin		
		
   part1 : DVideo2HDMI 
		generic map(timings,configurations,false) 
		port map (
		CLK50, '0',
		adv7513_scl, adv7513_sda, adv7513_hs, adv7513_vs, adv7513_clk,
		adv7513_d, adv7513_de,
		DVID_CLK, GPIO0, DVID_HSYNC, DVID_VSYNC, DVID_RGB,
		GPIO29, GPIO28 );

	
	------- generator for the test image (a low-res DVideo signal)	
	process (CLK50) 
	
	variable ticks: integer range 0 to 6 := 0; -- divider 7 -> pixel clock: 7,14285 Mhz
                      -- 
	variable x:integer range 0 to 511 := 0;  
	variable y:integer range 0 to 511 := 0;  	
	variable t_x: integer range 0 to 127; 
	variable t_y: integer range 0 to 63; 
	
	variable out_clk    : std_logic := '0';
	variable out_hsync  : std_logic := '0';
	variable out_vsync  : std_logic := '0';
	variable out_rgb    : std_logic_vector(11 downto 0) := "000000000000";    
		
	begin

		if rising_edge(CLK50) then

		
			if ticks<6 then
				ticks := ticks+1;
			else
				ticks := 0;
				if x<456-1 then
				    x := x+1;
			   else
				   x := 0;
					if y<312-1 then
						y := y+1;
					else
						y := 0;
					end if;
				end if;
				
				out_clk := not out_clk;
				
				if x<384 then out_hsync:='0'; else out_hsync := '1'; end if;
				if y<270 then out_vsync:='0'; else out_vsync := '1'; end if;
				
				if x=0 or x=383 or y=0 or y=270-1 then
					out_rgb := "111111111111";
				elsif x>=32 and x<32+320 and y>=7 and y<7+256 then
					t_x := ((x-32)/4) mod 128;
					t_y := ((y-7)/4) mod 64;
					if t_x<64 then
						out_rgb(11 downto 8) := std_logic_vector(to_unsigned(t_x mod 16,4));	
						out_rgb(7 downto 4)  := std_logic_vector(to_unsigned(t_y mod 16,4));	
						out_rgb(3 downto 0)  := std_logic_vector(to_unsigned((t_x/16)+(t_y/16)*4,4));
					elsif t_x>=72 then
						out_rgb(11 downto 4) := "00000000";	
						out_rgb(3 downto 0)  := std_logic_vector(to_unsigned(t_y/4,4));
					else 
						out_rgb(11 downto 0) := "000000110000";	
					end if;
				else
					out_rgb := "011001100110";
				end if;
							
			end if;
		end if;
		
		DVID_CLK <= out_clk;
		GPIO30 <= out_clk;
		DVID_HSYNC <= out_hsync;
		DVID_VSYNC <= out_vsync;
		DVID_RGB <= out_rgb;			
	end process;


end immediate;
