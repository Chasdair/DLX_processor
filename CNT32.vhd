library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CNT32 is
    Port ( clk : in std_logic;
           ce : in std_logic;
           reset : in std_logic;
           cnt_o : out std_logic_vector(31 downto 0));
end CNT32;

architecture Behavioral of CNT32 is
signal cnt_s: std_logic_vector(31 downto 0) := X"00000000";

begin

main: process(clk)
begin
  if (clk'event and clk='1') then
      
	 if reset ='1'
	    then cnt_s <= X"00000000";
	    elsif ce = '1' then cnt_s <= cnt_s + 1;
				    else cnt_s <= cnt_s;
	 end if;
   end if;
   end process main;

   cnt_o<=cnt_s;



end Behavioral;
