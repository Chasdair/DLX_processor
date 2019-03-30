----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:03:32 05/19/2017 
-- Design Name: 
-- Module Name:    IR - Behavioral 
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

entity IR is
    Port ( clk : in  STD_LOGIC;
           IR_EN : in  STD_LOGIC;
           DI : in  STD_LOGIC_VECTOR (31 downto 0);
           OPCODE : out  STD_LOGIC_VECTOR (5 downto 0);
           RS1 : out  STD_LOGIC_VECTOR (4 downto 0);
           RD : out  STD_LOGIC_VECTOR (4 downto 0);
           Imm : out  STD_LOGIC_VECTOR (15 downto 0));
end IR;

architecture Behavioral of IR is

signal data : std_logic_vector(31 downto 0);

constant UP: STD_LOGIC := '1';
constant DOWN: STD_LOGIC := '0';

begin

main: process(clk)
begin

	if ((clk'event) and (clk = UP) and (IR_EN = UP)) then
		data <= DI;
	end if;

end process main;

--outputs:
OPCODE <= data(31 downto 26);
RS1 <= 	data(25 downto 21);
RD <= 	data(20 downto 16);
Imm <= 	data(15 downto 0);

end Behavioral;

