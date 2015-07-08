----------------------------------------------------------------------------------
-- Project Name: Frecuency Counter 
-- Target Devices: Spartan 3
-- Engineers: Ángel Larrañaga Muro
-- 			 Nicolás Jurado Jiménez
-- 			 Gonzalo Matarrubia Gonzalez
-- License: All files included in this proyect are licensed under a Creative Commons Attribution-ShareAlike 4.0 International License 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity CountEvents is
   port( 
	 Entrada: in std_logic;
 	 Reset: in std_logic;
	 Reset_cont: in std_logic;
 	 Output: out std_logic_vector (31 downto 0));
end CountEvents;
 
architecture Behavioral of CountEvents is
   signal temp: std_logic_vector (31 downto 0);
begin   
process(Reset, Entrada, Reset_cont)
   begin
      if Reset_cont='1' then
         temp <= "00000000000000000000000000000000";
		elsif Reset='1' then
         temp <= "00000000000000000000000000000000";
      elsif(Entrada'event and Entrada='1') then
	    if temp="11111111111111111111111111111111" then
	       temp<="00000000000000000000000000000000";
	    else
	       temp <= temp + 1;
	    end if;
      end if;
   end process;
   Output <= temp;
end Behavioral;

