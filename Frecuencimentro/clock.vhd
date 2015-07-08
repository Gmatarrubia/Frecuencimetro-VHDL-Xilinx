 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test is
port (clk : in std_logic;
      count : out std_logic_vector(3 downto 0);
      reset :in std_logic
     );
end test;

architecture Behavioral of test is

 	--Outputs
   signal ms_signal : std_logic;

   -- Clock period definitions
   constant clk_period : time := 1 ns;
	
signal c : std_logic_vector(3 downto 0) :=(others => '0');  --initializing count to zero.
begin

clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
count <= c;
process(clk,reset)
begin
if(clk'event and clk='1') then
-- when count reaches its maximum(that is 15) reset it to 0
if(c = "1111") then
c <="0000";
end if;
c <= c+'1';  --increment count at every positive edge of clk.
end if;
if(reset='1') then  --when reset equal to '1' make count equal to 0.
c <=(others => '0');  -- c ="0000"
end if;
end process;

end Behavioral;