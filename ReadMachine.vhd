----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:53:06 05/12/2017 
-- Design Name: 
-- Module Name:    ReadMachine - Behavioral 
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

entity ReadMachine is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           STEP_EN : in  STD_LOGIC;
           ACK_N : in  STD_LOGIC;
           IN_INIT : out  STD_LOGIC := '1';
           AS_N : out  STD_LOGIC := '1';
           WR_N : out  STD_LOGIC := '1';
           STOP_N : out  STD_LOGIC := '1';
           STATE : out  STD_LOGIC_VECTOR(1 downto 0) );
end ReadMachine;

architecture Behavioral of ReadMachine is

	signal st: std_logic_vector(1 downto 0) := "00";
	signal st_prev: std_logic_vector(1 downto 0) := "00";

	constant S0_wait: std_logic_vector(1 downto 0) := "00";
	constant S1_fetch: std_logic_vector(1 downto 0) := "01";
	constant S2_wait4ack: std_logic_vector(1 downto 0) := "10";
	constant S3_load: std_logic_vector(1 downto 0) := "11";
	
	constant UP: std_logic := '1';
	constant DOWN: std_logic := '0';

begin

	main: process(clk, rst)
	begin

		if (rst = UP) then
			st <= S0_wait;
		
		elsif ((clk'event) and (clk = UP)) then
			st_prev <= st;
			case st is
			
				when S0_wait =>
					if (STEP_EN = UP) then
						st <= S1_fetch;
					end if;
					
				when S1_fetch =>
					st <= S2_wait4ack;
					
				when S2_wait4ack =>
					if (ACK_N = DOWN) then
						st <= S3_load;
					end if;
					
				when S3_load =>
					st <= S0_wait;
				
				when others => null;
				
			end case;
		end if;
	end process main;
	
	
	--output signals:
	STOP_N <= '0' when ((st = S2_wait4ack) and (st_prev = S2_wait4ack) and (ACK_N = UP)) else '1';
	IN_INIT <= '1' when (st = S0_wait) else '0';
	AS_N <= '0' when ((st = S2_wait4ack) or (st = S1_fetch)) else '1';
	STATE <= st;

end Behavioral;