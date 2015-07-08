--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:40:58 01/18/2015
-- Design Name:   
-- Module Name:   C:/Users/Angel LM/Documents/Frecuencimetroo/Frecuencimentro/divisor_tb.vhd
-- Project Name:  Frecuencimentro
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Divisor
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
USE ieee.numeric_std.ALL;
 
ENTITY divisor_tb IS
END divisor_tb;
 
ARCHITECTURE behavior OF divisor_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Divisor
    PORT(
         activacion : IN  std_logic;
         entrada : IN  std_logic_vector(0 to 31);
         escala : IN  std_logic_vector(0 to 9);
         salida : OUT  std_logic_vector(0 to 31)
        );
    END COMPONENT;
    

   --Inputs
   signal activacion : std_logic := '0';
   signal entrada : std_logic_vector(0 to 31) := (others => '0');
   signal escala : std_logic_vector(0 to 9) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(0 to 31);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Divisor PORT MAP (
          activacion => activacion,
          entrada => entrada,
          escala => escala,
          salida => salida
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		entrada<="00000000000000000000000000000100";
		escala<="0000000010";
      wait for 100 ns;	
		activacion<='1';
		


      -- insert stimulus here 

      wait;
   end process;

END;
