--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:39:47 01/18/2015
-- Design Name:   
-- Module Name:   C:/Users/Angel LM/Desktop/Frecuencimetroo 6.0/Frecuencimentro/PrePresentacion_TB.vhd
-- Project Name:  Frecuencimentro
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: EscaladoPrePresentacion
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY PrePresentacion_TB IS
END PrePresentacion_TB;
 
ARCHITECTURE behavior OF PrePresentacion_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT EscaladoPrePresentacion
    PORT(
         entrada_frec : IN  std_logic_vector(0 to 31);
         salida_frec : OUT  std_logic_vector(15 downto 0);
         salida_uds : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal entrada_frec : std_logic_vector(0 to 31) := (others => '0');

 	--Outputs
   signal salida_frec : std_logic_vector(15 downto 0);
   signal salida_uds : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: EscaladoPrePresentacion PORT MAP (
          entrada_frec => entrada_frec,
          salida_frec => salida_frec,
          salida_uds => salida_uds
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
