library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bcd is
   Port ( 
		entrada_int: in integer range 0 to 65536;
		millares : out std_logic_vector (3 downto 0);
      centenas : out std_logic_vector (3 downto 0);
      decenas : out std_logic_vector (3 downto 0);
      unidades : out std_logic_vector (3 downto 0)
   );
end bcd;

architecture Behavioral of bcd is
signal entrada_bin: std_logic_vector(15 downto 0);
begin
	
	entrada_bin<=std_logic_vector(to_unsigned(entrada_int,entrada_bin'length));
	
   bin_to_bcd : process (entrada_bin)
		
      variable shift : unsigned(31 downto 0);
      
      alias num is shift(15 downto 0);
      alias unidad is shift(19 downto 16);
      alias decena is shift(23 downto 20);
      alias centena is shift(27 downto 24);
		alias millar is shift(31 downto 28);

   begin

      num := unsigned(entrada_bin);
      unidad := "0000";
      decena := "0000";
      centena := "0000";
      millar := "0000";

      for i in 1 to num'Length loop
         if unidad >= 5 then
            unidad := unidad + 3;
         end if;
         
         if decena >= 5 then
            decena := decena + 3;
         end if;
         
         if centena >= 5 then
            centena := centena + 3;
         end if;
			
			if millar >= 5 then
            millar := millar + 3;
         end if;
         
         shift := shift_left(shift, 1);
      end loop;
      
	   millares <= std_logic_vector(millar);
      centenas <= std_logic_vector(centena);
      decenas <= std_logic_vector(decena);
      unidades <= std_logic_vector(unidad);
		
   end process;

end Behavioral;