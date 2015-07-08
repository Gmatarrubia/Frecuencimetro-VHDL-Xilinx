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
 
ENTITY ControladorSegmentos_tb IS
END ControladorSegmentos_tb;
 
ARCHITECTURE behavior OF ControladorSegmentos_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ControladorSegmentos
    PORT(
         code : IN  std_logic_vector(15 downto 0);
         clk : IN  std_logic;
         led : OUT  std_logic_vector(6 downto 0);
         selector : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal code : std_logic_vector(15 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal led : std_logic_vector(6 downto 0);
   signal selector : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ms;
	constant code_1234_BCD : std_logic_vector (15 downto 0):= "0001001000110100";
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ControladorSegmentos PORT MAP (
          code => code,
          clk => clk,
          led => led,
          selector => selector
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
	code<=code_1234_BCD;
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
