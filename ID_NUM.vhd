----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:00:23 03/31/2017 
-- Design Name: 
-- Module Name:    ID_NUM - Behavioral 
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

entity ID_NUM is
    Port ( ID : out  STD_LOGIC_VECTOR (7 downto 0));
end ID_NUM;

architecture Behavioral of ID_NUM is

constant ID_C: std_logic_vector(7 downto 0):= "11000110";
begin

		ID <= ID_C;

end Behavioral;

