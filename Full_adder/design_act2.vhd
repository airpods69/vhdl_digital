library ieee;
use ieee.std_logic_1164.all;

entity full_adder_act2 is
    port(
        a,b,c : in std_logic;
        sum,carry : in std_logic
    );
end full_add_act2;

architecture full_adder_arch2 of full_adder_act2 is
    signal sel : std_logic_vector(1 downto 0);
