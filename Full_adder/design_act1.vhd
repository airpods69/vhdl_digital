library ieee;
use ieee.std_logic_1164.all;

entity full_adder_act1 is
    port(
        a,b,c : in std_logic;
        sum, carry : out std_logic
    );
end full_adder_act1;

architecture full_adder_arch of full_adder_act1 is
begin
    process(a,b,c)
    begin
        if (a='0' and b='0' and c='0') then
            sum <= '0' ; carry <= '0';
        elsif ((a='1' and b='0' and c='0') or (a='0' and b='1' and c='0') or (a='0' and b='0' and c='1')) then
            sum <= '1' ; carry <= '0';
        elsif ((a='1' and b='1' and c='0') or (a='0' and b='1' and c='1') or (a='1' and b='0' and c='1')) then
            sum <= '0' ; carry <= '1';
        else
            sum <= '1' ; carry <= '1';
        end if;
    end process;
end full_adder_arch;

