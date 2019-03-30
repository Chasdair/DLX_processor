-- Vhdl test bench created from schematic E:\adlx\C6\Home_S25\LoadStoreMac.sch - Tue May 23 11:16:44 2017
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
ENTITY LoadStoreMac_LoadStoreMac_sch_tb IS
END LoadStoreMac_LoadStoreMac_sch_tb;
ARCHITECTURE behavioral OF LoadStoreMac_LoadStoreMac_sch_tb IS 

   COMPONENT LoadStoreMac
   PORT( IN_INIT	:	OUT	STD_LOGIC; 
          DOUT	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          D_OUT_BUS	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          ADDR_OUT_BUS	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          CLK	:	IN	STD_LOGIC; 
          RST	:	IN	STD_LOGIC; 
          ACK_N	:	IN	STD_LOGIC; 
          STEP_EN	:	IN	STD_LOGIC; 
          D_ADDR	:	IN	STD_LOGIC_VECTOR (4 DOWNTO 0); 
          D_IN_BUS	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          AS_N	:	OUT	STD_LOGIC; 
          WR_N	:	OUT	STD_LOGIC; 
          STOP_N	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL IN_INIT	:	STD_LOGIC;
   SIGNAL DOUT	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL D_OUT_BUS	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL ADDR_OUT_BUS	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL RST	:	STD_LOGIC;
   SIGNAL ACK_N	:	STD_LOGIC;
   SIGNAL STEP_EN	:	STD_LOGIC;
   SIGNAL D_ADDR	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
   SIGNAL D_IN_BUS	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL AS_N	:	STD_LOGIC;
   SIGNAL WR_N	:	STD_LOGIC;
   SIGNAL STOP_N	:	STD_LOGIC;

BEGIN

   UUT: LoadStoreMac PORT MAP(
		IN_INIT => IN_INIT, 
		DOUT => DOUT, 
		D_OUT_BUS => D_OUT_BUS, 
		ADDR_OUT_BUS => ADDR_OUT_BUS, 
		CLK => CLK, 
		RST => RST, 
		ACK_N => ACK_N, 
		STEP_EN => STEP_EN, 
		D_ADDR => D_ADDR, 
		D_IN_BUS => D_IN_BUS, 
		AS_N => AS_N, 
		WR_N => WR_N, 
		STOP_N => STOP_N
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
	RST <= '1';
	D_IN_BUS <= X"AC000000";
	wait for 200 ns;
	RST <= '0';
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
	wait for 800 ns;
	
	--getting ACK_N
	ACK_N <= '0';
	wait for 200 ns;
	ACK_N <= '1';
	wait for 800 ns;
	
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	wait for 200 ns;
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
