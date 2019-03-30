--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:04:14 05/23/2017
-- Design Name:   
-- Module Name:   E:/adlx/C6/Home_S25/DLX_CTRL_t.vhd
-- Project Name:  Home_V14_S25
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DLX_CTRL
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY DLX_CTRL_t IS
END DLX_CTRL_t;
 
ARCHITECTURE behavior OF DLX_CTRL_t IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DLX_CTRL
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         BUSY : IN  std_logic;
         STEP_EN : IN  std_logic;
         OPCODE : IN  std_logic_vector(5 downto 0);
         A_EN : OUT  std_logic;
         B_EN : OUT  std_logic;
         C_EN : OUT  std_logic;
         MUXSEL : OUT  std_logic;
         PC_EN : OUT  std_logic;
         IR_EN : OUT  std_logic;
         GPR_EN : OUT  std_logic;
         MRD : OUT  std_logic;
         MRW : OUT  std_logic;
         IN_INIT : OUT  std_logic;
         STATE : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal BUSY : std_logic := '0';
   signal STEP_EN : std_logic := '0';
   signal OPCODE : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal A_EN : std_logic;
   signal B_EN : std_logic;
   signal C_EN : std_logic;
   signal MUXSEL : std_logic;
   signal PC_EN : std_logic;
   signal IR_EN : std_logic;
   signal GPR_EN : std_logic;
   signal MRD : std_logic;
   signal MRW : std_logic;
   signal IN_INIT : std_logic;
   signal STATE : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 200 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DLX_CTRL PORT MAP (
          clk => clk,
          rst => rst,
          BUSY => BUSY,
          STEP_EN => STEP_EN,
          OPCODE => OPCODE,
          A_EN => A_EN,
          B_EN => B_EN,
          C_EN => C_EN,
          MUXSEL => MUXSEL,
          PC_EN => PC_EN,
          IR_EN => IR_EN,
          GPR_EN => GPR_EN,
          MRD => MRD,
          MRW => MRW,
          IN_INIT => IN_INIT,
          STATE => STATE
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
	OPCODE <= "100011"; --read

-- *** Test Bench - User Defined Section ***
	--initialize inputs
	STEP_EN <= '0';
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	wait for 200 ns;
	wait for 2 ns;
	
	--step enable
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 800 ns;

      wait;
   end process;

END;
