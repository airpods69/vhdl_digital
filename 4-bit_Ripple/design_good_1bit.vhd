library ieee;
use ieee.std_logic_1164.all;

entity rca_4bit is 
 port( a,b: in std_logic_vector(3 downto 0);
	cin: std_logic;      
       s: out std_logic_vector(4 downto 0));
end rca_4bit;

architecture rca_4bit_arch of rca_4bit is
 component fa is 
 port( a,b,cin: in std_logic;
       s,co: out std_logic);
 end component;

signal c1,c2,c3:std_logic;

begin

fa1: fa port map(a(0),b(0),cin,s(0),c1);
fa2: fa port map(a(1),b(1),c1,s(1),c2);
fa3: fa port map(a(2),b(2),c2,s(2),c3);
fa4: fa port map(a(3),b(3),c3,s(3),s(4));

end;