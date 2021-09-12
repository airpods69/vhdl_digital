library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
 
entity TestALU is 
end TestALU; 
 
architecture arc_TestALU of TestALU is 
 component ALU is 
 port (A, B: in std_logic_vector(7 downto 0); 
 Sel: in std_logic_vector(2 downto 0); 
 Y : out std_logic_vector(7 downto 0)); 
 end component; 
 signal a, b, y : std_logic_vector(7 downto 0); 
 signal sel: std_logic_vector(2 downto 0); 
 begin 
   ALU0: ALU port map (a, b, sel, y); --ALU instantiation 
   process  
   begin 
      a<= "01010011"; b<= "01010001"; sel<="000"; wait for 100 ns; 
 a<= "01010011"; b<= "01000001"; sel<="001"; wait for 100 ns; 
 a<= "01010011"; b<= "01010001"; sel<="010"; wait for 100 ns; 
 a<= "01000011"; b<= "01010011"; sel<="011"; wait for 100 ns; 
 a<= "01010010"; b<= "01000001"; sel<="100"; wait for 100 ns; 
 a<= "01011011"; b<= "01010000"; sel<="101"; wait for 100 ns; 
 a<= "01010111"; b<= "01010011"; sel<="110"; wait for 100 ns; 
 a<= "00010011"; b<= "01010000"; sel<="111"; wait for 100 ns; 
     wait;    
   end process; 
end arc_TestALU;