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