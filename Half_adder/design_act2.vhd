library ieee;
use ieee.std_logic_1164.all;

entity half_add is
port ( a,b : in std_logic;
sum, carry : out std_logic);
end half_add;

architecture HA1 of half_add is
signal sel : std_logic_vector(1 downto 0);
begin
sel <= a & b;
process (sel)

begin

case sel is
when "00" => sum <= '0'; carry <= '0';
when "01" => sum <= '1'; carry <= '0';
when "10" => sum <= '1'; carry <= '0';
when others => sum <= '0'; carry <= '1';

end case;

end process;

end HA1;
