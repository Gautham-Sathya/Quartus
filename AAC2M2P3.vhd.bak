library ieee;
use ieee.std_logic_1164.all;

entity FSM is
port (In1: in std_logic;
   RST: in std_logic; 
   CLK: in std_logic;
   Out1 : inout std_logic);
end FSM;

architecture behavioural of FSM is 
signal state: std_logic_vector(1 downto 0);
begin

change: process (In1, RST, CLK)
begin

if RST = '1' then 
state <= "00";
Out1 <= '0';
elsif rising_edge(CLK) then
	if (In1 = '1' and state = "10") or (In1 = '0' and state = "00") then state <="00";
	elsif (In1 = '1' and state /= "10") then state <= "01";
	else
	 state <= "10";
	end if; 
end if;		


end process change;





end behavioural;



