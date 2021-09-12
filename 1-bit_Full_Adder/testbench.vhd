library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity one_bit_adder_tb is
end entity;

architecture tb of one_bit_adder_tb is
    component one_bit_adder is
        port(
        a,b,c : in std_logic;
        sum,carry : out std_logic
    );
    end component;

signal a,b,c,sum,carry: std_logic;

begin
    uut : one_bit_adder port map(
        a => a, b => b, c => c,
        sum => sum, carry => carry
    );

    stim: process
    begin

        a <= '0';
        b <= '0';
        c <= '0';
        wait for 20 fs;

        a <= '0';
        b <= '1';
        c <= '0';
        wait for 20 fs;

        a <= '0';
        b <= '1';
        c <= '1';
        wait for 20 fs;

        a <= '0';
        b <= '0';
        c <= '1';
        wait for 20 fs;

        a <= '1';
        b <= '0';
        c <= '0';
        wait for 20 fs;

        a <= '1';
        b <= '1';
        c <= '0';
        wait for 20 fs;

        a <= '1';
        b <= '1';
        c <= '1';
        wait for 20 fs;

        a <= '1';
        b <= '0';
        c <= '1';
        wait for 20 fs;



wait;

end process;

end tb;
