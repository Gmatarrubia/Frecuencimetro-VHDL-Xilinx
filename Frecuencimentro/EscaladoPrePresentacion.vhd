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
use IEEE.NUMERIC_STD.ALL;


entity EscaladoPrePresentacion is
	PORT(
		entrada_frec: in std_logic_vector (31 downto 0);
		salida_frec: out STD_LOGIC_VECTOR(15 downto 0);
		salida_uds: out STD_LOGIC_VECTOR (1 downto 0)--introducir variables bcd
		);
end EscaladoPrePresentacion;

architecture Behavioral of EscaladoPrePresentacion is

component bcd_g
   Port ( 
		entrada_int: in std_logic_vector (31 downto 0);
		decenas_millones : out std_logic_vector (3 downto 0);
		millones : out std_logic_vector (3 downto 0);
      centenas_mill : out std_logic_vector (3 downto 0);
      decenas_mill : out std_logic_vector (3 downto 0);
		millares : out std_logic_vector (3 downto 0);
      centenas : out std_logic_vector (3 downto 0);
      decenas : out std_logic_vector (3 downto 0);
      unidades : out std_logic_vector (3 downto 0)
   );
end component;

	signal temp : std_logic_vector (31 downto 0);
	constant c1 : integer:=10000;
	constant c2 : integer:=10000000;
	signal unidades_esc: STD_LOGIC_VECTOR(1 downto 0);
		signal sal : std_logic_vector(15 downto 0);
	   signal decenas_millones : std_logic_vector (3 downto 0);
	   signal millones :  std_logic_vector (3 downto 0);
      signal centenas_mill : std_logic_vector (3 downto 0);
      signal decenas_mill :  std_logic_vector (3 downto 0);
		signal millares :  std_logic_vector (3 downto 0);
      signal centenas :  std_logic_vector (3 downto 0);
      signal decenas :  std_logic_vector (3 downto 0);
      signal unidades :  std_logic_vector (3 downto 0);
	
begin
	temp<=entrada_frec;
	conversor: bcd_g PORT MAP(
		entrada_int=>entrada_frec,
		decenas_millones=>decenas_millones,
		millones=>millones, 
      centenas_mill=>centenas_mill,
      decenas_mill=>decenas_mill,
		millares=>millares,
      centenas=>centenas,
      decenas=>decenas,
      unidades=>unidades);
		
		process(temp)
		begin
		if unsigned(temp)<c1 then
			sal<=millares & centenas & decenas & unidades;
			unidades_esc<="00";
		elsif  to_integer(unsigned(temp))>=c1 and  to_integer(unsigned(temp))<c2 then
			sal<=millones&centenas_mill&decenas_mill&millares;
			unidades_esc<="01";
		elsif  to_integer(unsigned(temp))>=c2 then
			unidades_esc<="10";
			sal<="00000000" & decenas_millones & millones;
		else 
			unidades_esc<="00";
			sal<="0000000000000000";
		end if;
		end process;

salida_uds<=unidades_esc;
salida_frec<=sal;

end Behavioral;

