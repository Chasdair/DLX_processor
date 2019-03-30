--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : SlaveMonitor.vhf
-- /___/   /\     Timestamp : 06/06/2017 12:50:13
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C6/SOURCE_S25/SlaveMonitor.vhf -w E:/adlx/C6/SOURCE_S25/SlaveMonitor.sch
--Design Name: SlaveMonitor
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FD8CE_HXILINX_SlaveMonitor -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8CE_HXILINX_SlaveMonitor is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );
end FD8CE_HXILINX_SlaveMonitor;

architecture Behavioral of FD8CE_HXILINX_SlaveMonitor is

begin

process(C, CLR)
begin
  if (CLR='1') then
    Q <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      Q <= D;
    end if;
  end if;
end process;


end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity LogicAnalyzer_MUSER_SlaveMonitor is
   port ( AI_IN    : in    std_logic_vector (4 downto 0); 
          clk      : in    std_logic; 
          IN_INIT  : in    std_logic; 
          MON_DATA : in    std_logic_vector (31 downto 0); 
          STEP_EN  : in    std_logic; 
          STOP_N   : in    std_logic; 
          D_OUT    : out   std_logic_vector (31 downto 0); 
          STATUS   : out   std_logic_vector (7 downto 0));
end LogicAnalyzer_MUSER_SlaveMonitor;

architecture BEHAVIORAL of LogicAnalyzer_MUSER_SlaveMonitor is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal AI                     : std_logic_vector (4 downto 0);
   signal cnt_reset              : std_logic;
   signal D                      : std_logic_vector (7 downto 0);
   signal LA_RUN                 : std_logic;
   signal LA_WE                  : std_logic;
   signal STS_CE                 : std_logic;
   signal XLXN_29                : std_logic;
   signal XLXN_54                : std_logic;
   signal XLXI_27_CLR_openSignal : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component OR3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3B1 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component MUX5BIT
      port ( sel : in    std_logic; 
             A0  : in    std_logic_vector (4 downto 0); 
             A1  : in    std_logic_vector (4 downto 0); 
             O   : out   std_logic_vector (4 downto 0));
   end component;
   
   component RAM32X32S
      port ( CLK : in    std_logic; 
             WE  : in    std_logic; 
             D   : in    std_logic_vector (31 downto 0); 
             ADD : in    std_logic_vector (4 downto 0); 
             DO  : out   std_logic_vector (31 downto 0));
   end component;
   
   component FD8CE_HXILINX_SlaveMonitor
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (7 downto 0); 
             Q   : out   std_logic_vector (7 downto 0));
   end component;
   
   component CNT5
      port ( clk   : in    std_logic; 
             ce    : in    std_logic; 
             reset : in    std_logic; 
             cnt_o : out   std_logic_vector (4 downto 0));
   end component;
   
   attribute HU_SET of XLXI_27 : label is "XLXI_27_2";
begin
   XLXI_6 : AND2
      port map (I0=>STOP_N,
                I1=>LA_RUN,
                O=>LA_WE);
   
   XLXI_7 : FD
      port map (C=>clk,
                D=>XLXN_29,
                Q=>XLXN_54);
   
   XLXI_8 : OR3B1
      port map (I0=>IN_INIT,
                I1=>XLXN_54,
                I2=>STEP_EN,
                O=>LA_RUN);
   
   XLXI_9 : INV
      port map (I=>IN_INIT,
                O=>XLXN_29);
   
   XLXI_22 : AND3B1
      port map (I0=>STEP_EN,
                I1=>XLXN_54,
                I2=>IN_INIT,
                O=>STS_CE);
   
   XLXI_24 : MUX5BIT
      port map (A0(4 downto 0)=>AI_IN(4 downto 0),
                A1(4 downto 0)=>D(4 downto 0),
                sel=>LA_WE,
                O(4 downto 0)=>AI(4 downto 0));
   
   XLXI_26 : RAM32X32S
      port map (ADD(4 downto 0)=>AI(4 downto 0),
                CLK=>clk,
                D(31 downto 0)=>MON_DATA(31 downto 0),
                WE=>LA_WE,
                DO(31 downto 0)=>D_OUT(31 downto 0));
   
   XLXI_27 : FD8CE_HXILINX_SlaveMonitor
      port map (C=>clk,
                CE=>cnt_reset,
                CLR=>XLXI_27_CLR_openSignal,
                D(7 downto 0)=>D(7 downto 0),
                Q(7 downto 0)=>STATUS(7 downto 0));
   
   XLXI_28 : FD
      port map (C=>clk,
                D=>STS_CE,
                Q=>cnt_reset);
   
   XLXI_29 : CNT5
      port map (ce=>LA_WE,
                clk=>clk,
                reset=>cnt_reset,
                cnt_o(4 downto 0)=>D(4 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity slave_monitor_MUSER_SlaveMonitor is
   port ( AI      : in    std_logic_vector (9 downto 0); 
          CARDSEL : in    std_logic; 
          clk     : in    std_logic; 
          M1      : in    std_logic_vector (31 downto 0); 
          M2      : in    std_logic_vector (31 downto 0); 
          M3      : in    std_logic_vector (31 downto 0); 
          M4      : in    std_logic_vector (31 downto 0); 
          WR_IN_N : in    std_logic; 
          SACK_N  : out   std_logic; 
          SDO     : out   std_logic_vector (31 downto 0));
end slave_monitor_MUSER_SlaveMonitor;

architecture BEHAVIORAL of slave_monitor_MUSER_SlaveMonitor is
   attribute BOX_TYPE   : string ;
   signal FD_IN   : std_logic;
   signal XLXN_25 : std_logic;
   signal XLXN_26 : std_logic;
   signal XLXN_31 : std_logic;
   component MUX4_32bit
      port ( A0  : in    std_logic_vector (31 downto 0); 
             A1  : in    std_logic_vector (31 downto 0); 
             A2  : in    std_logic_vector (31 downto 0); 
             A3  : in    std_logic_vector (31 downto 0); 
             sel : in    std_logic_vector (1 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component NAND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2B1 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component NOR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR3 : component is "BLACK_BOX";
   
begin
   XLXI_1 : MUX4_32bit
      port map (A0(31 downto 0)=>M1(31 downto 0),
                A1(31 downto 0)=>M2(31 downto 0),
                A2(31 downto 0)=>M3(31 downto 0),
                A3(31 downto 0)=>M4(31 downto 0),
                sel(1 downto 0)=>AI(6 downto 5),
                O(31 downto 0)=>SDO(31 downto 0));
   
   XLXI_3 : FD
      port map (C=>clk,
                D=>FD_IN,
                Q=>XLXN_25);
   
   XLXI_4 : FD
      port map (C=>clk,
                D=>XLXN_25,
                Q=>XLXN_26);
   
   XLXI_5 : NAND2B1
      port map (I0=>XLXN_26,
                I1=>XLXN_25,
                O=>SACK_N);
   
   XLXI_6 : AND3
      port map (I0=>WR_IN_N,
                I1=>CARDSEL,
                I2=>XLXN_31,
                O=>FD_IN);
   
   XLXI_10 : NOR3
      port map (I0=>AI(9),
                I1=>AI(8),
                I2=>AI(7),
                O=>XLXN_31);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SlaveMonitor is
   port ( AI       : in    std_logic_vector (9 downto 0); 
          CARDSEL  : in    std_logic; 
          clk      : in    std_logic; 
          IN_INIT  : in    std_logic; 
          MON_DATA : in    std_logic_vector (31 downto 0); 
          M3       : in    std_logic_vector (31 downto 0); 
          M4       : in    std_logic_vector (31 downto 0); 
          STEP_EN  : in    std_logic; 
          STOP_N   : in    std_logic; 
          WR_IN_N  : in    std_logic; 
          SACK_N   : out   std_logic; 
          SDO      : out   std_logic_vector (31 downto 0));
end SlaveMonitor;

architecture BEHAVIORAL of SlaveMonitor is
   signal M1       : std_logic_vector (31 downto 0);
   signal M2       : std_logic_vector (31 downto 0);
   component slave_monitor_MUSER_SlaveMonitor
      port ( M1      : in    std_logic_vector (31 downto 0); 
             M2      : in    std_logic_vector (31 downto 0); 
             M3      : in    std_logic_vector (31 downto 0); 
             M4      : in    std_logic_vector (31 downto 0); 
             AI      : in    std_logic_vector (9 downto 0); 
             CARDSEL : in    std_logic; 
             WR_IN_N : in    std_logic; 
             clk     : in    std_logic; 
             SDO     : out   std_logic_vector (31 downto 0); 
             SACK_N  : out   std_logic);
   end component;
   
   component ID_NUM
      port ( ID : out   std_logic_vector (7 downto 0));
   end component;
   
   component LogicAnalyzer_MUSER_SlaveMonitor
      port ( MON_DATA : in    std_logic_vector (31 downto 0); 
             clk      : in    std_logic; 
             STEP_EN  : in    std_logic; 
             AI_IN    : in    std_logic_vector (4 downto 0); 
             D_OUT    : out   std_logic_vector (31 downto 0); 
             STATUS   : out   std_logic_vector (7 downto 0); 
             IN_INIT  : in    std_logic; 
             STOP_N   : in    std_logic);
   end component;
   
begin
   slave : slave_monitor_MUSER_SlaveMonitor
      port map (AI(9 downto 0)=>AI(9 downto 0),
                CARDSEL=>CARDSEL,
                clk=>clk,
                M1(31 downto 0)=>M1(31 downto 0),
                M2(31 downto 0)=>M2(31 downto 0),
                M3(31 downto 0)=>M3(31 downto 0),
                M4(31 downto 0)=>M4(31 downto 0),
                WR_IN_N=>WR_IN_N,
                SACK_N=>SACK_N,
                SDO(31 downto 0)=>SDO(31 downto 0));
   
   XLXI_7 : ID_NUM
      port map (ID(7 downto 0)=>M2(15 downto 8));
   
   XLXI_8 : LogicAnalyzer_MUSER_SlaveMonitor
      port map (AI_IN(4 downto 0)=>AI(4 downto 0),
                clk=>clk,
                IN_INIT=>IN_INIT,
                MON_DATA(31 downto 0)=>MON_DATA(31 downto 0),
                STEP_EN=>STEP_EN,
                STOP_N=>STOP_N,
                D_OUT(31 downto 0)=>M1(31 downto 0),
                STATUS(7 downto 0)=>M2(7 downto 0));
   
end BEHAVIORAL;


