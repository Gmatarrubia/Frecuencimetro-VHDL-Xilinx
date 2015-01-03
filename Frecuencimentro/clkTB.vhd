--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:17:53 12/31/2014
-- Design Name:   
-- Module Name:   C:/Users/Angel LM/Documents/Frecuencimetro-VHDL-Xilinx/Frecuencimentro/clkTB.vhd
-- Project Name:  Frecuencimentro
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clk200Hz
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
 
ENTITY clkTB IS
END clkTB;
 
ARCHITECTURE behavior OF clkTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clk_mod
    PORT(
        entrada : IN  std_logic;
        reset   : IN  std_logic;
        salida  : OUT std_logic
    );
    END COMPONENT;
 
    -- Entradas
    signal entrada : std_logic := '0';
    signal reset   : std_logic := '0';
    -- Salidas
    signal salida  : std_logic;
    constant entrada_t : time := 20 ns;
BEGIN
    -- Instancia de la unidad bajo prueba.
    uut: clk_mod PORT MAP (
        entrada => entrada,
        reset   => reset,
        salida  => salida
    );
 
    -- Definición del reloj.
    entrada_process :process
        begin
        entrada <= '0';
        wait for entrada_t / 2;
        entrada <= '1';
        wait for entrada_t / 2;
    end process;
 
    -- Procesamiento de estímulos.
    estimulos: process
    begin
        reset <= '1'; -- Condiciones iniciales.
        wait for 100 ns;
        reset <= '0'; -- ¡A trabajar!
        wait;
    end process;
END;