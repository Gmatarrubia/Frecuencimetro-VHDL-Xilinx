----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:38:47 01/07/2015 
-- Design Name: 
-- Module Name:    ContadorEventos - Behavioral 
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
--use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ContadorEventos is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR(3 downto 0));
end ContadorEventos;

architecture behavioral of ContadorEventos is
	signal q_i: std_logic_vector(q'range):=(others => '0');
	begin
		p1:process(reset, clk)
		begin
		if reset = '1' then
			q_i <= (others => '0');
		elsif rising_edge(clk) then
			q_i <= std_logic_vector(unsigned(q_i) + 1);
		end if;
		end process;
		q <= q_i;
end behavioral;

