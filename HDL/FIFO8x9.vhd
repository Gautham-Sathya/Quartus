library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FIFO8x9 is
   port(
      clk, rst:		in std_logic;
      RdPtrClr, WrPtrClr:	in std_logic;    
      RdInc, WrInc:	in std_logic;
      DataIn:	 in std_logic_vector(8 downto 0);
      DataOut: out std_logic_vector(8 downto 0);
      rden, wren: in std_logic
	);
end entity FIFO8x9;

architecture RTL of FIFO8x9 is
	--signal declarations
	type fifo_array is array(7 downto 0) of std_logic_vector(8 downto 0);  -- makes use of VHDL’s enumerated type
	signal fifo:  fifo_array;
	signal wrptr, rdptr: unsigned(2 downto 0);
	signal en: std_logic_vector(7 downto 0);
	signal dmuxout: std_logic_vector(8 downto 0);

begin
	op: process(clk,rst)
	begin
	
	if rst = '1' then
	wrptr <= (others => '0');
	rdptr <= (others => '0');
	elsif rising_edge(clk) then
		if WrPtrClr = '1' then wrptr <= (others =>'0');
		elsif WrInc = '1' then wrptr <= wrptr+1;
		end if;
		
		if RdPtrClr = '1' then rdptr <= (others =>'0');
		elsif RdInc = '1' then rdptr <= rdptr + 1;
		end if;
		
		if wren = '1' then 
			fifo(to_integer(wrptr))  <=DataIn;
		end if;

	end if;
	end process op;
DataOut <= fifo(to_integer(rdptr)) when rden = '1' else (others => 'Z');



end  RTL
