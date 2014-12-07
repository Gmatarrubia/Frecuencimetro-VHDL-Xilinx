----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:37:14 12/02/2014 
-- Design Name: 
-- Module Name:    RelojEscalado - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RelojEscalado is
	 Generic(escalaHz: positive:=5000); --5000 ciclos de reloj
    Port ( clk : in  STD_LOGIC;
           ms_signal : out  STD_LOGIC);
end RelojEscalado;

architecture Behavioral of RelojEscalado is
	signal outsig: STD_LOGIC;
begin
	p1:Process(clk)
	variable cuenta: positive;
		begin
		while true loop
			cuenta:=escalaHz;
			while cuenta>0 loop
			if clk'event and clk='1' then
				cuenta:=cuenta-1;
			end if;
			if cuenta=0 then
			outsig<= '1';
			else
			outsig<= '0';
			end if;
			end loop;
		end loop;
	end process;
	ms_signal<=outsig;
end Behavioral;

