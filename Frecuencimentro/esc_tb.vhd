--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:52:28 01/20/2015
-- Design Name:   
-- Module Name:   C:/Users/sed/Downloads/Frecuencimetroo 9.0B/frecuencimentro/esc_tb.vhd
-- Project Name:  Frecuencimentro
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top1
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
 
ENTITY esc_tb IS
END esc_tb;
 
ARCHITECTURE behavior OF esc_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top1
    PORT(
         entrada : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         led : OUT  std_logic_vector(6 downto 0);
         led_unidades : OUT  std_logic_vector(1 downto 0);
         selector : OUT  std_logic_vector(3 downto 0);
         prueba : OUT  std_logic_vector(15 downto 0)
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
   signal prueba : std_logic_vector(15 downto 0);

   -- Clock period definitions
   --constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top1 PORT MAP (
          entrada => entrada,
          clk => clk,
          reset => reset,
          led => led,
          led_unidades => led_unidades,
          selector => selector,
          prueba => prueba
        );

   -- Clock process definitions
--   clk_process :process
--   begin
--		clk <= '0';
--		wait for clk_period/2;
--		clk <= '1';
--		wait for clk_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
		
      wait for 100 ns;	

--      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
