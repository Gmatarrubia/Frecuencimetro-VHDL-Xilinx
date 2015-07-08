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

ENTITY top_TB IS
END top_TB;
 
ARCHITECTURE behavior OF top_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         entrada : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         led : OUT  std_logic_vector(6 downto 0);
         led_unidades : OUT  std_logic_vector(1 downto 0);
         selector : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal led : std_logic_vector(6 downto 0);
   signal led_unidades : std_logic_vector(1 downto 0);
   signal selector : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns; --50MHZ
	constant s_entrada_period : time := 8 us; --125KHZ
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top	PORT MAP (
          entrada => entrada,
          clk => clk,
          reset => reset,
          led => led,
          led_unidades => led_unidades,
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
	
	s_entrada_process :process
   begin
		entrada <= '0';
		wait for s_entrada_period/2;
		entrada <= '1';
		wait for s_entrada_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset<='1';
      wait for 100 ns;	
		reset<='0';
		
      wait for 2000ms;

      -- insert stimulus here 

      wait;
   end process;

END;
