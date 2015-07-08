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
USE ieee.numeric_std.ALL;
 
ENTITY conv_grande_tb IS
END conv_grande_tb;
 
ARCHITECTURE behavior OF conv_grande_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bcd_g
    PORT(
         entrada_int : IN  std_logic_vector(31 downto 0);
         decenas_millones : OUT  std_logic_vector(3 downto 0);
         millones : OUT  std_logic_vector(3 downto 0);
         centenas_mill : OUT  std_logic_vector(3 downto 0);
         decenas_mill : OUT  std_logic_vector(3 downto 0);
         millares : OUT  std_logic_vector(3 downto 0);
         centenas : OUT  std_logic_vector(3 downto 0);
         decenas : OUT  std_logic_vector(3 downto 0);
         unidades : OUT  std_logic_vector(3 downto 0);
			prueba : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada_int : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal decenas_millones : std_logic_vector(3 downto 0);
   signal millones : std_logic_vector(3 downto 0);
   signal centenas_mill : std_logic_vector(3 downto 0);
   signal decenas_mill : std_logic_vector(3 downto 0);
   signal millares : std_logic_vector(3 downto 0);
   signal centenas : std_logic_vector(3 downto 0);
   signal decenas : std_logic_vector(3 downto 0);
   signal unidades : std_logic_vector(3 downto 0);
	signal prueba : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bcd_g PORT MAP (
          entrada_int => entrada_int,
          decenas_millones => decenas_millones,
          millones => millones,
          centenas_mill => centenas_mill,
          decenas_mill => decenas_mill,
          millares => millares,
          centenas => centenas,
          decenas => decenas,
          unidades => unidades,
			 prueba=>prueba
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		entrada_int<="00000000000000000000000001000100";
      wait for 100 ns;	
--
      -- insert stimulus here 

      wait;
   end process;

END;
