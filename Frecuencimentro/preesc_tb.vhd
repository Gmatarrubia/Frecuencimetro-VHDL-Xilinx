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
 
ENTITY preesc_tb IS
END preesc_tb;
 
ARCHITECTURE behavior OF preesc_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT EscaladoPrePresentacion
    PORT(
         entrada_frec : IN  std_logic_vector(31 downto 0);
         salida_frec : OUT  std_logic_vector(15 downto 0);
         salida_uds : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada_frec : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal salida_frec : std_logic_vector(15 downto 0):="0000000000000000";
   signal salida_uds : std_logic_vector(1 downto 0):="00";
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: EscaladoPrePresentacion PORT MAP (
          entrada_frec => entrada_frec,
          salida_frec => salida_frec,
          salida_uds => salida_uds
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
     entrada_frec<="00000000000000000100000100010000";
	  -- hold reset state for 100 ns.
      wait for 100 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
