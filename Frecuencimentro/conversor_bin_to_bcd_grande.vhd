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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity bcd_g is
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
end bcd_g;

architecture Behavioral of bcd_g is
begin
   bin_to_bcd : process (entrada_int)
		
      variable shift : STD_LOGIC_VECTOR(71 downto 0);

   begin
		shift := (others => '0');
      shift(34 downto 3) := entrada_int;

      for i in 0 to 28 loop
		
         if  shift(35 downto 32) > 4 then
			    shift(35 downto 32) := shift(35 downto 32) + 3;
         end if;
         
         if shift(39 downto 36) > 4 then
			
            shift(39 downto 36) := shift(39 downto 36) + 3;
         end if;
         
         if shift(43 downto 40) > 4 then

            shift(43 downto 40) := shift(43 downto 40) + 3;
         end if;
			
			if shift(47 downto 44) > 4 then
				
            shift(47 downto 44) := shift(47 downto 44) + 3;
         end if;
			
			if shift(51 downto 48) > 4 then
				
            shift(51 downto 48) := shift(51 downto 48) + 3;
         end if;
         
         if shift(55 downto 52) > 4 then
				
            shift(55 downto 52) := shift(55 downto 52) + 3;
         end if;
			
			if shift(59 downto 56) > 4 then
				
            shift(59 downto 56) := shift(59 downto 56) + 3;
         end if;
			
			if shift(63 downto 60) > 4 then
				
            shift(63 downto 60) := shift(63 downto 60) + 3;
         end if;
         
			shift(71 downto 1):=shift(70 downto 0);
      end loop;
      
		decenas_millones <= std_logic_vector(shift(63 downto 60));
		millones <= std_logic_vector(shift(59 downto 56));
      centenas_mill <= std_logic_vector(shift(55 downto 52));
      decenas_mill <= std_logic_vector(shift(51 downto 48));
	   millares <= std_logic_vector(shift(47 downto 44));
      centenas <= std_logic_vector(shift(43 downto 40));
      decenas <= std_logic_vector(shift(39 downto 36));
      unidades <= std_logic_vector(shift(35 downto 32));
		
   end process;

end Behavioral;