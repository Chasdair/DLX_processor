-- Vhdl test bench created from schematic E:\adlx\C6\Home_S25\LoadStoreMac_SIM.sch - Tue May 23 09:53:32 2017
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
ENTITY LoadStoreMac_SIM_LoadStoreMac_SIM_sch_tb IS
END LoadStoreMac_SIM_LoadStoreMac_SIM_sch_tb;
ARCHITECTURE behavioral OF LoadStoreMac_SIM_LoadStoreMac_SIM_sch_tb IS 

   COMPONENT LoadStoreMac_SIM
   PORT( CLK	:	IN	STD_LOGIC; 
          RST	:	IN	STD_LOGIC; 
          STEP_EN	:	IN	STD_LOGIC; 
          IN_INIT	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL RST	:	STD_LOGIC;
   SIGNAL STEP_EN	:	STD_LOGIC;
   SIGNAL IN_INIT	:	STD_LOGIC;

BEGIN

   UUT: LoadStoreMac_SIM PORT MAP(
		CLK => CLK, 
		RST => RST, 
		STEP_EN => STEP_EN, 
		IN_INIT => IN_INIT
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
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	wait for 200 ns;
	wait for 2 ns;
	
	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;

	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;

	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;
	
	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;
	
	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';	
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;
	
	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;

	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;

	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;

	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;

	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;
	
	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;

	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;
	
	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;

	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;
	
	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;

	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;
	
	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;

	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;
	
	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;

	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;
	
	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;

	--step enable
	RST <= '1';
	wait for 200 ns;
	RST <= '0';
	STEP_EN <= '1';
	wait for 200 ns;
	STEP_EN <= '0';
	wait for 3000 ns;

	WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
