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
 
ENTITY CLK_escalado_y_CountDown IS
END CLK_escalado_y_CountDown;
 
ARCHITECTURE behavior OF CLK_escalado_y_CountDown IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CountEventsDown
    PORT(
         entrada_clk : IN  std_logic;
         reset : IN  std_logic;
         salida : OUT  std_logic
        );
    END COMPONENT;
	 
    COMPONENT clk_mod
    PORT(
        entrada : IN  std_logic;
        reset   : IN  std_logic;
        salida  : OUT std_logic
    );
    END COMPONENT;

   --Inputs
   signal reset   : std_logic := '0';
   signal entrada_clk : std_logic := '0';
   signal reset_clk : std_logic := '0';

 	--Outputs
   signal salida : std_logic;
   signal salida_clk  : std_logic;
   constant entrada_t : time := 20 ns;
	
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
    uut: clk_mod PORT MAP (
        entrada => entrada_clk,
        reset   => reset_clk,
        salida => salida_clk
    );
		  
    uut2: CountEventsDown PORT MAP (
          entrada_clk => salida_clk,
          reset => reset,
          salida => salida
        );

    -- Definición del reloj.
    entrada_process :process
        begin
        entrada_clk <= '0';
        wait for entrada_t / 2;
        entrada_clk <= '1';
        wait for entrada_t / 2;
    end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      reset<='1';
	   reset_clk<='1';-- hold reset state for 100 ns.
      wait for 100 ns;	
		reset_clk<='0';
		wait for 100 ns;	
		reset<='0';
		
      wait for entrada_t*20;

      -- insert stimulus here 

      wait;
   end process;

END;
