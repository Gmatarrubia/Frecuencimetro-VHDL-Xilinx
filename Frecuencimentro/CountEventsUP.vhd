----------------------------------------------------------------------------------
-- Project Name: Frecuency Counter 
-- Target Devices: Spartan 3
-- Engineers: Ángel Larrañaga Muro
-- 			 Nicolás Jurado Jiménez
-- 			 Gonzalo Matarrubia Gonzalez
-- License: All files included in this proyect are licensed under a Creative Commons Attribution-ShareAlike 4.0 International License 
----------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY CountEventsUP IS
END CountEventsUP;
 
ARCHITECTURE behavior OF CountEventsUP IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CountEvents
    PORT(
         Entrada : IN  std_logic;
         Reset : IN  std_logic;
         Output : OUT  std_logic_vector(0 to 31)
        );
    END COMPONENT;
    

   --Inputs
   signal Entrada : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal Output : std_logic_vector(0 to 31);
 
   constant Entrada_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CountEvents PORT MAP (
          Entrada => Entrada,
          Reset => Reset,
          Output => Output
        );

   -- Clock process definitions
   Entrada_process :process
   begin
		Entrada <= '0';
		wait for Entrada_period/2;
		Entrada <= '1';
		wait for Entrada_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		Reset <= '1';
      wait for 100 ns;
		Reset <= '0';
		
      wait for Entrada_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
