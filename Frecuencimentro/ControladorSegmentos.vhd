----------------------------------------------------------------------------------
-- Project Name: Frecuency Counter 
-- Target Devices: Spartan 3
-- Engineers: Ángel Larrañaga Muro
-- 			 Nicolás Jurado Jiménez
-- 			 Gonzalo Matarrubia Gonzalez
-- License: All files included in this proyect are licensed under a Creative Commons Attribution-ShareAlike 4.0 International License 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ControladorSegmentos is
    Port ( code : in  STD_LOGIC_VECTOR (15 downto 0);
           clk  : in   STD_LOGIC;
			  led : out  STD_LOGIC_VECTOR (6 downto 0);
			  selector : out std_logic_vector (3 downto 0));
end ControladorSegmentos;

architecture Behavioral of ControladorSegmentos is

	signal s_selector : std_logic_vector (3 downto 0) := "1110";
	signal s_interm: std_logic_vector(3 downto 0):="0001";
	
	COMPONENT decoder
	PORT(
		codigo : IN std_logic_vector(3 downto 0);          
		led : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

begin

	segmento: decoder PORT MAP(
		codigo => s_interm,
		led => led
	);
	
	PROCESS(clk)
		BEGIN
		if clk'event and clk='1' then
			s_selector<=s_selector(0)& s_selector(3 downto 1);
			selector<=s_selector;
			case s_selector is			
				when "0111" =>  s_interm<=code(15 downto 12);
				when "1011" =>  s_interm<=code(11 downto 8);
				when "1101" =>  s_interm<=code(7 downto 4);
				when "1110" =>  s_interm<=code(3 downto 0);			
				when others => s_interm<="0001";
			end case;
		end if;
		END PROCESS;
		
end Behavioral;
