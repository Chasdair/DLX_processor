----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:55:16 05/19/2017 
-- Design Name: 
-- Module Name:    MAC - Behavioral 
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

entity MAC is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           MR : in  STD_LOGIC;
           MW : in  STD_LOGIC;
           ACK_N : in  STD_LOGIC;
           BUSY : out  STD_LOGIC;
           AS_N : out  STD_LOGIC;
           WR_N : out  STD_LOGIC;
           STOP_N : out  STD_LOGIC;
           STATE : out  STD_LOGIC_VECTOR (1 downto 0));
end MAC;

architecture Behavioral of MAC is

--vars:
signal st: STD_LOGIC_VECTOR(1 downto 0) := "00";
signal st_curr: STD_LOGIC_VECTOR(1 downto 0) := "00";

--states:
constant S_WAIT4REQ: STD_LOGIC_VECTOR(1 downto 0) := "00";
constant S_WAIT4ACK: STD_LOGIC_VECTOR(1 downto 0) := "01";
constant S_NEXT: STD_LOGIC_VECTOR(1 downto 0) := "10";

constant UP: STD_LOGIC := '1';
constant DOWN: STD_LOGIC := '0';

begin

main: process(clk, rst)
begin
	if (rst = UP) then
		st_curr <= S_WAIT4REQ;

	elsif ((clk'event) and (clk = UP)) then
		st <= st_curr;
		case st_curr is

			when S_WAIT4REQ =>
				if (MR = UP) or (MW = UP) then
					st_curr <= S_WAIT4ACK;
				else
					st_curr <= S_WAIT4REQ;
				end if;
			
			when S_WAIT4ACK =>
				if (ACK_N = DOWN) then
					st_curr <= S_NEXT;
				else
					st_curr <= S_WAIT4ACK;
				end if;
			
			when S_NEXT =>
				st_curr <= S_WAIT4REQ;

			when others => null;
			
			end case;
	end if;
end process main;

--outputs:
BUSY <= UP when ((MW = UP) or (MR = UP)) and ACK_N = UP else DOWN;
AS_N <= DOWN when (st_curr = S_WAIT4ACK) else UP;
WR_N <= DOWN when (MW = UP) and (st_curr = S_WAIT4ACK) else UP;
STOP_N <= DOWN when ((st_curr = S_WAIT4ACK) and (st = S_WAIT4ACK) and (ACK_N= UP)) else UP; 
STATE <= st_curr;

end Behavioral;

