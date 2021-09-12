library ieee;
use ieee.std_logic_1164.all;

entity fa is 
 port( a,b,cin: in std_logic;
       s,co: out std_logic);
end fa;

architecture fa_arch of fa is

begin

process(a,b,cin)
 begin
  if (a='0' and b='0' and cin='0') then
		s<='0'; co<='0';
 	elsif(a='0' and b='0' and cin='1') then
 		s<='1'; co<='0';
 	elsif(a='0' and b='1' and cin='0') then
 		s<='1'; co<='0';
 	elsif(a='0' and b='1' and cin='1') then
 		s<='0'; co<='1';
 	elsif(a='1' and b='0' and cin='0') then
 		s<='1'; co<='0';
 	elsif(a='1' and b='0' and cin='1') then
 		s<='0'; co<='1';
 	elsif(a='1' and b='1' and cin='0') then
 		s<='0'; co<='1';
 	else
 		s<='1'; co<='1';
 	end if;
 end process;
end;