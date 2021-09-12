-- VHDL program for 8-bit ALU 
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
 
entity ALU is 
port (A, B: in std_logic_vector(7 downto 0); 
 Sel: in std_logic_vector(2 downto 0); 
 Y : out std_logic_vector(7 downto 0)); 
end ALU; 
 
architecture arch_ALU of ALU is 
begin 
 process(A, B, Sel) 
 begin 
  if(Sel = "000") then Y<= A+B;  --Addition 
  elsif(Sel = "001") then Y<= A-B; --Subtraction 
  elsif(Sel = "010") then Y<= A AND B; --AND Operation 
  elsif(Sel = "011") then Y<= A OR B; 
  elsif(Sel = "100") then Y<= NOT(A); 
  elsif(Sel = "101") then Y<= A NAND B; 
  elsif(Sel = "110") then Y<= A NOR B; 
  else Y<= A XOR B; 
  end if; 
 end process; 
end; 
