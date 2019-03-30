----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:15:37 05/19/2017 
-- Design Name: 
-- Module Name:    DLX_CTRL - Behavioral 
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

entity DLX_CTRL is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           BUSY : in  STD_LOGIC;
           STEP_EN : in  STD_LOGIC;
           OPCODE : in  STD_LOGIC_VECTOR (5 downto 0);
           A_EN : out  STD_LOGIC;
           B_EN : out  STD_LOGIC;
           C_EN : out  STD_LOGIC;
           MUXSEL : out  STD_LOGIC;
           PC_EN : out  STD_LOGIC;
           IR_EN : out  STD_LOGIC;
           GPR_EN : out  STD_LOGIC;
           MRD : out  STD_LOGIC;
           MRW : out  STD_LOGIC;
           IN_INIT : out  STD_LOGIC;
           STATE : out  STD_LOGIC_VECTOR (2 downto 0));
end DLX_CTRL;

architecture Behavioral of DLX_CTRL is

--vars:
signal st: STD_LOGIC_VECTOR(2 downto 0) := "000";

--states:
constant S_INIT: STD_LOGIC_VECTOR(2 downto 0) := "000";
constant S_FETCH: STD_LOGIC_VECTOR(2 downto 0) := "001";
constant S_DECODE: STD_LOGIC_VECTOR(2 downto 0) := "010";
constant S_LOAD: STD_LOGIC_VECTOR(2 downto 0) := "100";
constant S_WB: STD_LOGIC_VECTOR(2 downto 0) := "101";
constant S_STORE: STD_LOGIC_VECTOR(2 downto 0) := "110";
constant S_HALT: STD_LOGIC_VECTOR(2 downto 0) := "111";

--opcodes:
constant OP_LOAD: STD_LOGIC_VECTOR(5 downto 0) := "100011";
constant OP_STORE: STD_LOGIC_VECTOR(5 downto 0) := "101011";

constant UP: STD_LOGIC := '1';
constant DOWN: STD_LOGIC := '0';

begin

main: process(clk, rst)
begin
	if (rst = UP) then
		st <= S_INIT;

	elsif ((clk'event) and (clk = UP)) then
		case st is

			when S_INIT =>
				if (STEP_EN = UP) then
					st <= S_FETCH;
				else
					st <= S_INIT;
				end if;
			
			when S_FETCH =>
				if (BUSY = UP) then
					st <= S_FETCH;
				else
					st <= S_DECODE;
				end if;
			
			when S_DECODE =>
				case OPCODE is
					when OP_LOAD =>
						st <= S_LOAD;
					when OP_STORE =>
						st <= S_STORE;
					when others =>
						st <= S_HALT;
				end case;
				
			when S_LOAD =>
				if (BUSY = UP) then
					st <= S_LOAD;
				else
					st <= S_WB;
				end if;
				
			when S_STORE =>
				if (BUSY = UP) then
					st <= S_STORE;
				else
					st <= S_INIT;
				end if;					
			
			when S_HALT =>
				st <= S_HALT;
				
			when S_WB =>
				st <= S_INIT;
				
			when others => null;
		end case;
	end if;

end process main;

--outputs:
IN_INIT <= UP when (st = S_INIT) or (st = S_HALT) else DOWN;
A_EN <= UP when (st = S_DECODE) else DOWN;
B_EN <= UP when (st = S_DECODE) else DOWN;
C_EN <= UP when (st = S_LOAD) and (BUSY = DOWN) else DOWN;
IR_EN <= UP when (st = S_FETCH) and (BUSY = DOWN) else DOWN;
PC_EN <= UP when (st = S_DECODE) else DOWN;
GPR_EN <= UP when (st = S_WB) else DOWN;
MRD <= UP when (st = S_FETCH) or (st = S_LOAD) else DOWN;
MRW <= UP when (st = S_STORE) else DOWN;
MUXSEL <= UP when (st = S_FETCH) or (st = S_INIT) or (st = S_HALT) else DOWN;
STATE <= st;

end Behavioral;

