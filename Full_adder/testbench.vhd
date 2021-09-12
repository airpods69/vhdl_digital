library ieee;
use ieee.STD_logic_1164.all;

entity full_adder_tb is
end entity;

architecture tb of full_adder_tb is
    component full_adder_act1 is
        port(
        a,b,c : in std_logic;
        sum ,carry : out std_logic
    );
    end component;

    signal a, b, c, sum, carry: std_logic;

begin 
    uut : full_adder_act1 port map(
    a => a , b => b , c => c , sum => sum , carry => carry
    );

    stim: process
    begin

        a <= '0';
        b <= '0';
        c <= '0';
        wait for 20 ns;

        a <= '0';
        b <= '0';
        c <= '1';
        wait for 20 ns;

        a <= '0';
        b <= '1';
        c <= '0';
        wait for 20 ns;

        a <= '0';
        b <= '1';
        c <= '1';
        wait for 20 ns;

        a <= '1';
        b <= '0';
        c <= '0';
        wait for 20 ns;

        a <= '1';
        b <= '1';
        c <= '0';
        wait for 20 ns;

        a <= '1';
        b <= '0';
        c <= '1';
        wait for 20 ns;

        a <= '1';
        b <= '1';
        c <= '1';
        wait for 20 ns;
    assert false report "Reached end of test";
    wait;

end process;

end tb;
