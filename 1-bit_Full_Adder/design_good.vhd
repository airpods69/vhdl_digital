library ieee;
use ieee.STD_LOGIC_1164.all;

entity one_bit_adder is
    port(
        a,b,c : in std_logic;
        sum,carry : out std_logic
    );
end one_bit_adder;

architecture dataflow of one_bit_adder is
begin
    sum <= c xor (a xor b);
    carry <= (a and b) or ((a xor b) and c);
end dataflow;
