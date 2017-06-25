library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SyncRAM is
    Generic (
           ADDRESSWIDTH: natural := 8; 
           DATAWIDTH: natural := 8
    );
    Port ( 
		data		: IN STD_LOGIC_VECTOR (DATAWIDTH-1 DOWNTO 0);
		rdaddress		: IN STD_LOGIC_VECTOR (ADDRESSWIDTH-1 DOWNTO 0);
		rdclock		: IN STD_LOGIC ;
		wraddress		: IN STD_LOGIC_VECTOR (ADDRESSWIDTH-1 DOWNTO 0);
		wrclock		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC  := '0';
		q		: OUT STD_LOGIC_VECTOR (DATAWIDTH-1 DOWNTO 0)
    );
end SyncRAM;

architecture UseBlockRAM of SyncRAM is
type mem_t is array(0 to (2**ADDRESSWIDTH)-1) of STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);
signal mem : mem_t;   
signal a : STD_LOGIC_VECTOR (ADDRESSWIDTH-1 DOWNTO 0);
begin
  process (wrclock,rdclock) 
  begin
    if rising_edge(wrclock) then
		if (wren='1') then
			mem(to_integer(unsigned(wraddress))) <= data;
		end if;
	end if;
	if rising_edge(rdclock) then
		q <= mem(to_integer(unsigned(a)));
		a <= rdaddress;
	end if;
  end process;
end UseBlockRAM;
