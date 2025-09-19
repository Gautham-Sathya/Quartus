
library ieee;                                	
use ieee.std_logic_1164.all;           	
                                             		
entity Majority is port (                 	
    A, B, C: in std_logic; 			
    Y: out std_logic);            		
end Majority;                   	

architecture behavioral of Majority is
begin
	logic: process (A,B,C)
		begin
			Y <= (A and B) or (B and C) or (A and C);
		end process logic;

end behavioral;


