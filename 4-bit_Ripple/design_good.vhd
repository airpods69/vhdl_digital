LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity add4 is
	port( a, b		: in	STD_LOGIC_VECTOR(3 downto 0);
	      ans		: out	STD_LOGIC_VECTOR(3 downto 0);
	      cout		: out	STD_LOGIC		);
end add4;

architecture STRUCTURE of add4 is

component BIT_ADDER
	port( a, b, cin		: in  STD_LOGIC;
	      sum, cout		: out STD_LOGIC );
end component;

signal c0, c1, c2, c3 : STD_LOGIC;
begin

c0 <= '0';
b_adder0: BIT_ADDER port map (a(0), b(0), c0, ans(0), c1);
b_adder1: BIT_ADDER port map (a(1), b(1), c1, ans(1), c2);
b_adder2: BIT_ADDER port map (a(2), b(2), c2, ans(2), c3);
b_adder3: BIT_ADDER port map (a(3), b(3), c3, ans(3), cout);

END STRUCTURE;

