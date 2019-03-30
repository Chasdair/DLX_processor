-- Vhdl test bench created from schematic C:\Users\nitzanc\OneDrive\University\Computers Structure Lab\XILINK Workspace\Lab5\ReadMachineSuite.sch - Sat May 13 13:49:50 2017
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY ReadMachineSuite_ReadMachineSuite_sch_tb IS
END ReadMachineSuite_ReadMachineSuite_sch_tb;
ARCHITECTURE behavioral OF ReadMachineSuite_ReadMachineSuite_sch_tb IS 

   COMPONENT ReadMachineSuite
   PORT( clk	:	IN	STD_LOGIC; 
          rst	:	IN	STD_LOGIC; 
          STEP_EN	:	IN	STD_LOGIC; 
          ACK_N	:	IN	STD_LOGIC; 
          DIN	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          IN_INIT	:	OUT	STD_LOGIC; 
          STOP_N	:	OUT	STD_LOGIC; 
          DOUT	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          AS_N	:	OUT	STD_LOGIC; 
          WR_N	:	OUT	STD_LOGIC; 
          STATE	:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          AOUT	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0));
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL rst	:	STD_LOGIC;
   SIGNAL STEP_EN	:	STD_LOGIC;
   SIGNAL ACK_N	:	STD_LOGIC;
   SIGNAL DIN	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL IN_INIT	:	STD_LOGIC;
   SIGNAL STOP_N	:	STD_LOGIC;
   SIGNAL DOUT	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL AS_N	:	STD_LOGIC;
   SIGNAL WR_N	:	STD_LOGIC;
   SIGNAL STATE	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL AOUT	:	STD_LOGIC_VECTOR (31 DOWNTO 0);

BEGIN

   UUT: ReadMachineSuite PORT MAP(
		clk => clk, 
		rst => rst, 
		STEP_EN => STEP_EN, 
		ACK_N => ACK_N, 
		DIN => DIN, 
		IN_INIT => IN_INIT, 
		STOP_N => STOP_N, 
		DOUT => DOUT, 
		AS_N => AS_N, 
		WR_N => WR_N, 
		STATE => STATE, 
		AOUT => AOUT
   );

-- *** Test Bench - User Defined Section ***
	CLK_process: PROCESS
	begin
		clk <= '1';
		wait for 100 ns;
		clk <= '0';
		wait for 100 ns;
	END PROCESS;
	
   tb : PROCESS
   BEGIN
	--initialize inputs
	STEP_EN <= '0';
	ACK_N <= '1';
	RST <= '0';
	DIN <= X"00000000";
	wait for 200 ns;
	wait for 2 ns;
	
	--step enable
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 800 ns;
	
	--getting ACK_N
	ACK_N <= '0';
	wait for 200 ns;
	ACK_N <= '1';
	wait for 200 ns;
	
	
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
