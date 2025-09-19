

library ieee;
use ieee.std_logic_1164.all;

entity FullAdd is port ( 
A, B, Cin: in std_logic; 
Sum, Cout: out std_logic 
); 
end FullAdd;

architecture behavioral of FullAdd is
begin

	logic:process(A,B,Cin)
		Sum<= A xor B xor Cin;
		Cout <= ((A xor B) and Cin) or (A and B);
	end process logic;

end behavioral;

