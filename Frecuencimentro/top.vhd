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

entity top is
port(
	entrada : in std_logic;
	clk : in std_logic;
	reset : in std_logic;
	led: OUT std_logic_vector(6 downto 0);
   led_unidades: OUT std_logic_vector(1 DOWNTO 0);
	selector : out std_logic_vector(3 DOWNTO 0)
	);
end top;

architecture Behavioral of top is
			
	component clk_mod 
    Port (
        entrada: in  STD_LOGIC;
        reset  : in  STD_LOGIC;
        salida : out STD_LOGIC
    );
	 end component;
	 
	component CountEventsDown
	  Port ( 
		entrada_clk : in  STD_LOGIC;
		reset : in  STD_LOGIC;
		salida : out STD_LOGIC
		);
	 end component;
	 
	 component Divisor 
	 port(
		activacion: in STD_LOGIC;
		entrada: in STD_LOGIC_VECTOR (31 downto 0);
		salida: out std_logic_vector(31 downto 0);
		reset_cont: out STD_LOGIC
		);
	 end component;
	 
	 	 component CountEvents 
	 port( 
		Entrada: in std_logic;
		Reset: in std_logic;
		Reset_cont: in std_logic;
		Output: out std_logic_vector(0 to 31)
		);
	 end component;
	 
 	 component EscaladoPrePresentacion 
	 PORT(
		entrada_frec: in std_logic_vector(31 downto 0);
		salida_frec: out std_logic_vector(15 downto 0);
		salida_uds: out STD_LOGIC_VECTOR (1 downto 0)
		);
	 end component; 
	 
	COMPONENT ControladorSegmentos 
		Port (
			code : IN std_logic_vector(15 downto 0); 
			clk: in std_logic;
			led : OUT std_logic_vector(6 downto 0);
			selector : OUT std_logic_vector(3 downto 0)
		);
		END COMPONENT;

	COMPONENT decoder
		PORT(
			code : IN std_logic_vector(3 downto 0);          
			led : OUT std_logic_vector(6 downto 0)
		);
		END COMPONENT;

    signal s_clk_mod: STD_LOGIC;
	 signal s_act: STD_LOGIC;
	 signal s_reset_cont:STD_LOGIC;
	 signal s_contup: STD_LOGIC_VECTOR(31 downto 0);
	 signal s_frec: STD_LOGIC_VECTOR(31 downto 0);
	 signal s_frec_esc: STD_LOGIC_VECTOR(15 downto 0);
	 
	 begin
	 
		clk_modificado: clk_mod PORT MAP(
		  entrada => clk,
        reset => reset,
        salida => s_clk_mod);		

		countdown: CountEventsDown PORT MAP(
			entrada_clk => s_clk_mod,
			reset => reset,
			salida => s_act);
			
		div: Divisor PORT MAP(
			activacion => s_act,
			entrada => s_contup,
			salida => s_frec,
			reset_cont => s_reset_cont);

		countup: CountEvents PORT MAP(
			entrada => entrada,
			reset => reset,
			reset_cont => s_reset_cont,
			output => s_contup);
			
		escalado: EscaladoPrePresentacion PORT MAP(
			entrada_frec => s_frec,
			salida_frec => s_frec_esc,
			salida_uds => led_unidades);

		Segmentos: ControladorSegmentos Port MAP(
			code => s_frec_esc,
			clk => s_clk_mod,
			led => led,
			selector => selector);
			
end Behavioral;

