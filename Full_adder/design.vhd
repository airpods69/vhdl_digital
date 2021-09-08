library ieee;
use ieee.STD_logic_1164.ALL;

entity full_adder is
    port(
        a,b,c : in std_logic;
        sum ,carry : out std_logic
    );
end full_adder;

architecture dataflow of full_adder is
begin
    sum <= (a xor b) xor c;
    carry <= ((a xor b) and c) or (a and b);
end dataflow;
