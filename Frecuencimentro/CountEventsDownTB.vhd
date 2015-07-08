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
 
ENTITY CountEventsDownTB IS
END CountEventsDownTB;
 
ARCHITECTURE behavior OF CountEventsDownTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CountEventsDown
    PORT(
         entrada_clk : IN  std_logic;
			reset : IN  std_logic;
         salida : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
	signal reset : std_logic := '0';
   signal entrada_clk : std_logic := '0';

 	--Outputs
   signal salida : std_logic;

   -- Clock period definitions
   constant entrada_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CountEventsDown PORT MAP (
			 reset => reset,
          entrada_clk => entrada_clk,
          salida => salida
        );

   -- Clock process definitions
   entrada_clk_process :process
   begin
		entrada_clk <= '0';
		wait for entrada_clk_period/2;
		entrada_clk <= '1';
		wait for entrada_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      reset <= '1';-- hold reset state for 100 ns.
      wait for 100 ns;	
		reset <= '0';
      wait for entrada_clk_period*10;

      -- insert stimulus here 

      wait;
   end process;
END;
