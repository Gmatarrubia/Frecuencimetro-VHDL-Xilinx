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
 
ENTITY ConversorBinToBCD_TB IS
END ConversorBinToBCD_TB;
 
ARCHITECTURE behavior OF ConversorBinToBCD_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bcd
    PORT(
         entrada_bin : IN  std_logic_vector(15 downto 0);
         millares : OUT  std_logic_vector(3 downto 0);
         centenas : OUT  std_logic_vector(3 downto 0);
         decenas : OUT  std_logic_vector(3 downto 0);
         unidades : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada_bin : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal millares : std_logic_vector(3 downto 0);
   signal centenas : std_logic_vector(3 downto 0);
   signal decenas : std_logic_vector(3 downto 0);
   signal unidades : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bcd PORT MAP (
          entrada_bin => entrada_bin,
          millares => millares,
          centenas => centenas,
          decenas => decenas,
          unidades => unidades
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		entrada_bin<="0001111100101101";


      -- insert stimulus here 

      wait;
   end process;

END;
