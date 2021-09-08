library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_tb is
end entity;

architecture tb of half_adder_tb is
    component half_adder is
        port (a,b : IN std_logic;
        s,c : OUT std_logic
        ); 
    end component;

signal a,b,s,c: std_logic;

begin
    uut : half_adder port map(
        a => a, b => b,
        s => s, c => c
    );

    stim: process
    begin

        a <= '0';
        b <= '0';
        wait for 20 ns;

        a <= '0';
        b <= '1';
        wait for 20 ns;

        a <= '1';
        b <= '0';
        wait for 20 ns;

        a <= '1';
        b <= '1';
        wait for 20 ns;

wait;

end process;

end tb;