--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Top_Level.vhf
-- /___/   /\     Timestamp : 06/06/2017 12:50:12
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C6/SOURCE_S25/Top_Level.vhf -w E:/adlx/C6/SOURCE_S25/Top_Level.sch
--Design Name: Top_Level
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FD8CE_HXILINX_Top_Level -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8CE_HXILINX_Top_Level is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );
end FD8CE_HXILINX_Top_Level;

architecture Behavioral of FD8CE_HXILINX_Top_Level is

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

entity LogicAnalyzer_MUSER_Top_Level is
   port ( AI_IN    : in    std_logic_vector (4 downto 0); 
          clk      : in    std_logic; 
          IN_INIT  : in    std_logic; 
          MON_DATA : in    std_logic_vector (31 downto 0); 
          STEP_EN  : in    std_logic; 
          STOP_N   : in    std_logic; 
          D_OUT    : out   std_logic_vector (31 downto 0); 
          STATUS   : out   std_logic_vector (7 downto 0));
end LogicAnalyzer_MUSER_Top_Level;

architecture BEHAVIORAL of LogicAnalyzer_MUSER_Top_Level is
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
   
   component FD8CE_HXILINX_Top_Level
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
   
   attribute HU_SET of XLXI_27 : label is "XLXI_27_1";
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
   
   XLXI_27 : FD8CE_HXILINX_Top_Level
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

entity slave_monitor_MUSER_Top_Level is
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
end slave_monitor_MUSER_Top_Level;

architecture BEHAVIORAL of slave_monitor_MUSER_Top_Level is
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

entity SlaveMonitor_MUSER_Top_Level is
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
end SlaveMonitor_MUSER_Top_Level;

architecture BEHAVIORAL of SlaveMonitor_MUSER_Top_Level is
   signal M1       : std_logic_vector (31 downto 0);
   signal M2       : std_logic_vector (31 downto 0);
   component slave_monitor_MUSER_Top_Level
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
   
   component LogicAnalyzer_MUSER_Top_Level
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
   slave : slave_monitor_MUSER_Top_Level
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
   
   XLXI_8 : LogicAnalyzer_MUSER_Top_Level
      port map (AI_IN(4 downto 0)=>AI(4 downto 0),
                clk=>clk,
                IN_INIT=>IN_INIT,
                MON_DATA(31 downto 0)=>MON_DATA(31 downto 0),
                STEP_EN=>STEP_EN,
                STOP_N=>STOP_N,
                D_OUT(31 downto 0)=>M1(31 downto 0),
                STATUS(7 downto 0)=>M2(7 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity GPR_MUSER_Top_Level is
   port ( A_ADDR : in    std_logic_vector (4 downto 0); 
          B_ADDR : in    std_logic_vector (4 downto 0); 
          CLK    : in    std_logic; 
          C_ADDR : in    std_logic_vector (4 downto 0); 
          DATA   : in    std_logic_vector (31 downto 0); 
          D_ADDR : in    std_logic_vector (4 downto 0); 
          GPR_WE : in    std_logic; 
          AOUT   : out   std_logic_vector (31 downto 0); 
          BOUT   : out   std_logic_vector (31 downto 0); 
          DOUT   : out   std_logic_vector (31 downto 0));
end GPR_MUSER_Top_Level;

architecture BEHAVIORAL of GPR_MUSER_Top_Level is
   attribute BOX_TYPE   : string ;
   signal RAM_WE  : std_logic;
   signal XLXN_13 : std_logic_vector (4 downto 0);
   signal XLXN_19 : std_logic_vector (4 downto 0);
   signal XLXN_24 : std_logic_vector (4 downto 0);
   signal XLXN_98 : std_logic;
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
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   MUX_A : MUX5BIT
      port map (A0(4 downto 0)=>A_ADDR(4 downto 0),
                A1(4 downto 0)=>C_ADDR(4 downto 0),
                sel=>GPR_WE,
                O(4 downto 0)=>XLXN_13(4 downto 0));
   
   MUX_B : MUX5BIT
      port map (A0(4 downto 0)=>B_ADDR(4 downto 0),
                A1(4 downto 0)=>C_ADDR(4 downto 0),
                sel=>GPR_WE,
                O(4 downto 0)=>XLXN_19(4 downto 0));
   
   MUX_D : MUX5BIT
      port map (A0(4 downto 0)=>D_ADDR(4 downto 0),
                A1(4 downto 0)=>C_ADDR(4 downto 0),
                sel=>GPR_WE,
                O(4 downto 0)=>XLXN_24(4 downto 0));
   
   RAM_A : RAM32X32S
      port map (ADD(4 downto 0)=>XLXN_13(4 downto 0),
                CLK=>CLK,
                D(31 downto 0)=>DATA(31 downto 0),
                WE=>RAM_WE,
                DO(31 downto 0)=>AOUT(31 downto 0));
   
   RAM_B : RAM32X32S
      port map (ADD(4 downto 0)=>XLXN_19(4 downto 0),
                CLK=>CLK,
                D(31 downto 0)=>DATA(31 downto 0),
                WE=>RAM_WE,
                DO(31 downto 0)=>BOUT(31 downto 0));
   
   RAM_D : RAM32X32S
      port map (ADD(4 downto 0)=>XLXN_24(4 downto 0),
                CLK=>CLK,
                D(31 downto 0)=>DATA(31 downto 0),
                WE=>RAM_WE,
                DO(31 downto 0)=>DOUT(31 downto 0));
   
   XLXI_21 : OR5
      port map (I0=>C_ADDR(4),
                I1=>C_ADDR(3),
                I2=>C_ADDR(2),
                I3=>C_ADDR(1),
                I4=>C_ADDR(0),
                O=>XLXN_98);
   
   XLXI_22 : AND2
      port map (I0=>GPR_WE,
                I1=>XLXN_98,
                O=>RAM_WE);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity PC_MUSER_Top_Level is
   port ( CE      : in    std_logic; 
          CLK     : in    std_logic; 
          RST     : in    std_logic; 
          PC_ADDR : out   std_logic_vector (15 downto 0));
end PC_MUSER_Top_Level;

architecture BEHAVIORAL of PC_MUSER_Top_Level is
   component CNT16
      port ( clk   : in    std_logic; 
             ce    : in    std_logic; 
             reset : in    std_logic; 
             cnt_o : out   std_logic_vector (15 downto 0));
   end component;
   
begin
   PCADDR : CNT16
      port map (ce=>CE,
                clk=>CLK,
                reset=>RST,
                cnt_o(15 downto 0)=>PC_ADDR(15 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity DataPath_MUSER_Top_Level is
   port ( A_CE     : in    std_logic; 
          B_CE     : in    std_logic; 
          CLK      : in    std_logic; 
          C_CE     : in    std_logic; 
          D_ADDR   : in    std_logic_vector (4 downto 0); 
          D_IN_BUS : in    std_logic_vector (31 downto 0); 
          GPR_EN   : in    std_logic; 
          IR_EN    : in    std_logic; 
          MUX_SEL  : in    std_logic; 
          PC_EN    : in    std_logic; 
          RST      : in    std_logic; 
          ADDR_BUS : out   std_logic_vector (31 downto 0); 
          DOUT     : out   std_logic_vector (31 downto 0); 
          DOUT_BUS : out   std_logic_vector (31 downto 0); 
          OPCODE   : out   std_logic_vector (5 downto 0));
end DataPath_MUSER_Top_Level;

architecture BEHAVIORAL of DataPath_MUSER_Top_Level is
   signal BOUT     : std_logic_vector (31 downto 0);
   signal C_DATA   : std_logic_vector (31 downto 0);
   signal Imm      : std_logic_vector (15 downto 0);
   signal PC_ADDR  : std_logic_vector (15 downto 0);
   signal RD       : std_logic_vector (4 downto 0);
   signal RS1      : std_logic_vector (4 downto 0);
   signal XLXN_51  : std_logic_vector (15 downto 0);
   signal XLXN_57  : std_logic_vector (31 downto 0);
   component REG32CE
      port ( CLK  : in    std_logic; 
             CE   : in    std_logic; 
             DIN  : in    std_logic_vector (31 downto 0); 
             DOUT : out   std_logic_vector (31 downto 0));
   end component;
   
   component IR
      port ( clk    : in    std_logic; 
             IR_EN  : in    std_logic; 
             DI     : in    std_logic_vector (31 downto 0); 
             OPCODE : out   std_logic_vector (5 downto 0); 
             RS1    : out   std_logic_vector (4 downto 0); 
             RD     : out   std_logic_vector (4 downto 0); 
             Imm    : out   std_logic_vector (15 downto 0));
   end component;
   
   component PC_MUSER_Top_Level
      port ( CLK     : in    std_logic; 
             CE      : in    std_logic; 
             RST     : in    std_logic; 
             PC_ADDR : out   std_logic_vector (15 downto 0));
   end component;
   
   component GPR_MUSER_Top_Level
      port ( GPR_WE : in    std_logic; 
             DATA   : in    std_logic_vector (31 downto 0); 
             C_ADDR : in    std_logic_vector (4 downto 0); 
             A_ADDR : in    std_logic_vector (4 downto 0); 
             B_ADDR : in    std_logic_vector (4 downto 0); 
             D_ADDR : in    std_logic_vector (4 downto 0); 
             CLK    : in    std_logic; 
             AOUT   : out   std_logic_vector (31 downto 0); 
             BOUT   : out   std_logic_vector (31 downto 0); 
             DOUT   : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX16bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (15 downto 0); 
             B   : in    std_logic_vector (15 downto 0); 
             O   : out   std_logic_vector (15 downto 0));
   end component;
   
   component MMU
      port ( AI : in    std_logic_vector (15 downto 0); 
             AO : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   B_REG : REG32CE
      port map (CE=>B_CE,
                CLK=>CLK,
                DIN(31 downto 0)=>BOUT(31 downto 0),
                DOUT(31 downto 0)=>DOUT_BUS(31 downto 0));
   
   C_REG : REG32CE
      port map (CE=>C_CE,
                CLK=>CLK,
                DIN(31 downto 0)=>D_IN_BUS(31 downto 0),
                DOUT(31 downto 0)=>C_DATA(31 downto 0));
   
   XLXI_2 : IR
      port map (clk=>CLK,
                DI(31 downto 0)=>D_IN_BUS(31 downto 0),
                IR_EN=>IR_EN,
                Imm(15 downto 0)=>Imm(15 downto 0),
                OPCODE(5 downto 0)=>OPCODE(5 downto 0),
                RD(4 downto 0)=>RD(4 downto 0),
                RS1(4 downto 0)=>RS1(4 downto 0));
   
   XLXI_4 : PC_MUSER_Top_Level
      port map (CE=>PC_EN,
                CLK=>CLK,
                RST=>RST,
                PC_ADDR(15 downto 0)=>PC_ADDR(15 downto 0));
   
   XLXI_5 : GPR_MUSER_Top_Level
      port map (A_ADDR(4 downto 0)=>RS1(4 downto 0),
                B_ADDR(4 downto 0)=>RD(4 downto 0),
                CLK=>CLK,
                C_ADDR(4 downto 0)=>RD(4 downto 0),
                DATA(31 downto 0)=>C_DATA(31 downto 0),
                D_ADDR(4 downto 0)=>D_ADDR(4 downto 0),
                GPR_WE=>GPR_EN,
                AOUT(31 downto 0)=>XLXN_57(31 downto 0),
                BOUT(31 downto 0)=>BOUT(31 downto 0),
                DOUT(31 downto 0)=>DOUT(31 downto 0));
   
   XLXI_13 : MUX16bit
      port map (A(15 downto 0)=>Imm(15 downto 0),
                B(15 downto 0)=>PC_ADDR(15 downto 0),
                sel=>MUX_SEL,
                O(15 downto 0)=>XLXN_51(15 downto 0));
   
   XLXI_14 : MMU
      port map (AI(15 downto 0)=>XLXN_51(15 downto 0),
                AO(31 downto 0)=>ADDR_BUS(31 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity LoadStoreMac_MUSER_Top_Level is
   port ( ACK_N        : in    std_logic; 
          CLK          : in    std_logic; 
          D_ADDR       : in    std_logic_vector (4 downto 0); 
          D_IN_BUS     : in    std_logic_vector (31 downto 0); 
          RST          : in    std_logic; 
          STEP_EN      : in    std_logic; 
          ADDR_OUT_BUS : out   std_logic_vector (31 downto 0); 
          AS_N         : out   std_logic; 
          A_EN         : out   std_logic; 
          BUSY         : out   std_logic; 
          B_EN         : out   std_logic; 
          CTRL_ST      : out   std_logic_vector (2 downto 0); 
          C_EN         : out   std_logic; 
          DOUT         : out   std_logic_vector (31 downto 0); 
          D_OUT_BUS    : out   std_logic_vector (31 downto 0); 
          GPR_EN       : out   std_logic; 
          IN_INIT      : out   std_logic; 
          IR_EN        : out   std_logic; 
          MAC_ST       : out   std_logic_vector (1 downto 0); 
          MR           : out   std_logic; 
          MUXSEL       : out   std_logic; 
          MW           : out   std_logic; 
          OPCODE       : out   std_logic_vector (5 downto 0); 
          PC_EN        : out   std_logic; 
          STOP_N       : out   std_logic; 
          WR_N         : out   std_logic);
end LoadStoreMac_MUSER_Top_Level;

architecture BEHAVIORAL of LoadStoreMac_MUSER_Top_Level is
   signal A_EN_DUMMY   : std_logic;
   signal PC_EN_DUMMY  : std_logic;
   signal OPCODE_DUMMY : std_logic_vector (5 downto 0);
   signal B_EN_DUMMY   : std_logic;
   signal GPR_EN_DUMMY : std_logic;
   signal BUSY_DUMMY   : std_logic;
   signal MR_DUMMY     : std_logic;
   signal MUXSEL_DUMMY : std_logic;
   signal MW_DUMMY     : std_logic;
   signal C_EN_DUMMY   : std_logic;
   signal IR_EN_DUMMY  : std_logic;
   component DataPath_MUSER_Top_Level
      port ( MUX_SEL  : in    std_logic; 
             CLK      : in    std_logic; 
             C_CE     : in    std_logic; 
             IR_EN    : in    std_logic; 
             RST      : in    std_logic; 
             B_CE     : in    std_logic; 
             A_CE     : in    std_logic; 
             PC_EN    : in    std_logic; 
             GPR_EN   : in    std_logic; 
             D_ADDR   : in    std_logic_vector (4 downto 0); 
             DOUT     : out   std_logic_vector (31 downto 0); 
             DOUT_BUS : out   std_logic_vector (31 downto 0); 
             ADDR_BUS : out   std_logic_vector (31 downto 0); 
             OPCODE   : out   std_logic_vector (5 downto 0); 
             D_IN_BUS : in    std_logic_vector (31 downto 0));
   end component;
   
   component MAC
      port ( CLK    : in    std_logic; 
             RST    : in    std_logic; 
             MR     : in    std_logic; 
             MW     : in    std_logic; 
             ACK_N  : in    std_logic; 
             BUSY   : out   std_logic; 
             AS_N   : out   std_logic; 
             WR_N   : out   std_logic; 
             STOP_N : out   std_logic; 
             STATE  : out   std_logic_vector (1 downto 0));
   end component;
   
   component DLX_CTRL
      port ( clk     : in    std_logic; 
             rst     : in    std_logic; 
             BUSY    : in    std_logic; 
             STEP_EN : in    std_logic; 
             OPCODE  : in    std_logic_vector (5 downto 0); 
             A_EN    : out   std_logic; 
             B_EN    : out   std_logic; 
             C_EN    : out   std_logic; 
             MUXSEL  : out   std_logic; 
             PC_EN   : out   std_logic; 
             IR_EN   : out   std_logic; 
             GPR_EN  : out   std_logic; 
             MRD     : out   std_logic; 
             MRW     : out   std_logic; 
             IN_INIT : out   std_logic; 
             STATE   : out   std_logic_vector (2 downto 0));
   end component;
   
begin
   A_EN <= A_EN_DUMMY;
   BUSY <= BUSY_DUMMY;
   B_EN <= B_EN_DUMMY;
   C_EN <= C_EN_DUMMY;
   GPR_EN <= GPR_EN_DUMMY;
   IR_EN <= IR_EN_DUMMY;
   MR <= MR_DUMMY;
   MUXSEL <= MUXSEL_DUMMY;
   MW <= MW_DUMMY;
   OPCODE(5 downto 0) <= OPCODE_DUMMY(5 downto 0);
   PC_EN <= PC_EN_DUMMY;
   XLXI_3 : DataPath_MUSER_Top_Level
      port map (A_CE=>A_EN_DUMMY,
                B_CE=>B_EN_DUMMY,
                CLK=>CLK,
                C_CE=>C_EN_DUMMY,
                D_ADDR(4 downto 0)=>D_ADDR(4 downto 0),
                D_IN_BUS(31 downto 0)=>D_IN_BUS(31 downto 0),
                GPR_EN=>GPR_EN_DUMMY,
                IR_EN=>IR_EN_DUMMY,
                MUX_SEL=>MUXSEL_DUMMY,
                PC_EN=>PC_EN_DUMMY,
                RST=>RST,
                ADDR_BUS(31 downto 0)=>ADDR_OUT_BUS(31 downto 0),
                DOUT(31 downto 0)=>DOUT(31 downto 0),
                DOUT_BUS(31 downto 0)=>D_OUT_BUS(31 downto 0),
                OPCODE(5 downto 0)=>OPCODE_DUMMY(5 downto 0));
   
   XLXI_4 : MAC
      port map (ACK_N=>ACK_N,
                CLK=>CLK,
                MR=>MR_DUMMY,
                MW=>MW_DUMMY,
                RST=>RST,
                AS_N=>AS_N,
                BUSY=>BUSY_DUMMY,
                STATE(1 downto 0)=>MAC_ST(1 downto 0),
                STOP_N=>STOP_N,
                WR_N=>WR_N);
   
   XLXI_8 : DLX_CTRL
      port map (BUSY=>BUSY_DUMMY,
                clk=>CLK,
                OPCODE(5 downto 0)=>OPCODE_DUMMY(5 downto 0),
                rst=>RST,
                STEP_EN=>STEP_EN,
                A_EN=>A_EN_DUMMY,
                B_EN=>B_EN_DUMMY,
                C_EN=>C_EN_DUMMY,
                GPR_EN=>GPR_EN_DUMMY,
                IN_INIT=>IN_INIT,
                IR_EN=>IR_EN_DUMMY,
                MRD=>MR_DUMMY,
                MRW=>MW_DUMMY,
                MUXSEL=>MUXSEL_DUMMY,
                PC_EN=>PC_EN_DUMMY,
                STATE(2 downto 0)=>CTRL_ST(2 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Top_Level is
   port ( fpgaClk_i : in    std_logic; 
          sdClkFb_i : in    std_logic; 
          sdAddr_o  : out   std_logic_vector (12 downto 0); 
          sdBs_o    : out   std_logic_vector (1 downto 0); 
          sdCas_bo  : out   std_logic; 
          sdCe_bo   : out   std_logic; 
          sdCke_o   : out   std_logic; 
          sdClk_o   : out   std_logic; 
          sdDqmh_o  : out   std_logic; 
          sdDqml_o  : out   std_logic; 
          sdRas_bo  : out   std_logic; 
          sdWe_bo   : out   std_logic; 
          sdData_io : inout std_logic_vector (15 downto 0));
end Top_Level;

architecture BEHAVIORAL of Top_Level is
   attribute BOX_TYPE   : string ;
   signal ACK_N     : std_logic;
   signal AI        : std_logic_vector (9 downto 0);
   signal AS_N      : std_logic;
   signal Card_Sel  : std_logic;
   signal CLK       : std_logic;
   signal Debug_D   : std_logic_vector (31 downto 0);
   signal DO        : std_logic_vector (31 downto 0);
   signal IN_INIT   : std_logic;
   signal MAO       : std_logic_vector (31 downto 0);
   signal MDO       : std_logic_vector (31 downto 0);
   signal MON_DATA  : std_logic_vector (31 downto 0);
   signal RACK_N    : std_logic;
   signal RESET     : std_logic;
   signal Rsel      : std_logic;
   signal R_DO      : std_logic_vector (31 downto 0);
   signal SACK_N    : std_logic;
   signal SDO       : std_logic_vector (31 downto 0);
   signal STEP_EN   : std_logic;
   signal STOP_N    : std_logic;
   signal WR_IN_N   : std_logic;
   signal WR_OUT_N  : std_logic;
   component IO_LOGIC_U
      port ( AS_N_i    : in    std_logic; 
             fpgaClk_i : in    std_logic; 
             in_init_i : in    std_logic; 
             RACK_N_i  : in    std_logic; 
             SACK_N_i  : in    std_logic; 
             sdClkFb_i : in    std_logic; 
             WR_N_i    : in    std_logic; 
             MA_i      : in    std_logic_vector (31 downto 0); 
             MD_i      : in    std_logic_vector (31 downto 0); 
             RD_i      : in    std_logic_vector (31 downto 0); 
             SD_i      : in    std_logic_vector (31 downto 0); 
             CLK       : out   std_logic; 
             MACK_N_o  : out   std_logic; 
             RESET     : out   std_logic; 
             Rsel_o    : out   std_logic; 
             sdCas_bo  : out   std_logic; 
             sdCe_bo   : out   std_logic; 
             sdCke_o   : out   std_logic; 
             sdClk_o   : out   std_logic; 
             sdDqmh_o  : out   std_logic; 
             sdDqml_o  : out   std_logic; 
             sdRas_bo  : out   std_logic; 
             sdWe_bo   : out   std_logic; 
             Ssel_o    : out   std_logic; 
             step_en_o : out   std_logic; 
             WR_N_o    : out   std_logic; 
             A_o       : out   std_logic_vector (9 downto 0); 
             DO        : out   std_logic_vector (31 downto 0); 
             sdAddr_o  : out   std_logic_vector (12 downto 0); 
             sdBs_o    : out   std_logic_vector (1 downto 0); 
             sdData_io : inout std_logic_vector (15 downto 0));
   end component;
   
   component SlaveMonitor_MUSER_Top_Level
      port ( clk      : in    std_logic; 
             AI       : in    std_logic_vector (9 downto 0); 
             M3       : in    std_logic_vector (31 downto 0); 
             M4       : in    std_logic_vector (31 downto 0); 
             WR_IN_N  : in    std_logic; 
             CARDSEL  : in    std_logic; 
             STEP_EN  : in    std_logic; 
             IN_INIT  : in    std_logic; 
             MON_DATA : in    std_logic_vector (31 downto 0); 
             STOP_N   : in    std_logic; 
             SACK_N   : out   std_logic; 
             SDO      : out   std_logic_vector (31 downto 0));
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component LoadStoreMac_MUSER_Top_Level
      port ( CLK          : in    std_logic; 
             RST          : in    std_logic; 
             ACK_N        : in    std_logic; 
             STEP_EN      : in    std_logic; 
             D_ADDR       : in    std_logic_vector (4 downto 0); 
             D_IN_BUS     : in    std_logic_vector (31 downto 0); 
             BUSY         : out   std_logic; 
             IN_INIT      : out   std_logic; 
             MW           : out   std_logic; 
             MR           : out   std_logic; 
             GPR_EN       : out   std_logic; 
             PC_EN        : out   std_logic; 
             MUXSEL       : out   std_logic; 
             C_EN         : out   std_logic; 
             B_EN         : out   std_logic; 
             A_EN         : out   std_logic; 
             IR_EN        : out   std_logic; 
             DOUT         : out   std_logic_vector (31 downto 0); 
             D_OUT_BUS    : out   std_logic_vector (31 downto 0); 
             ADDR_OUT_BUS : out   std_logic_vector (31 downto 0); 
             AS_N         : out   std_logic; 
             WR_N         : out   std_logic; 
             STOP_N       : out   std_logic; 
             MAC_ST       : out   std_logic_vector (1 downto 0); 
             CTRL_ST      : out   std_logic_vector (2 downto 0); 
             OPCODE       : out   std_logic_vector (5 downto 0));
   end component;
   
begin
   XLXI_23 : IO_LOGIC_U
      port map (AS_N_i=>AS_N,
                fpgaClk_i=>fpgaClk_i,
                in_init_i=>IN_INIT,
                MA_i(31 downto 0)=>MAO(31 downto 0),
                MD_i(31 downto 0)=>MDO(31 downto 0),
                RACK_N_i=>RACK_N,
                RD_i(31 downto 0)=>R_DO(31 downto 0),
                SACK_N_i=>SACK_N,
                sdClkFb_i=>sdClkFb_i,
                SD_i(31 downto 0)=>SDO(31 downto 0),
                WR_N_i=>WR_OUT_N,
                A_o(9 downto 0)=>AI(9 downto 0),
                CLK=>CLK,
                DO(31 downto 0)=>DO(31 downto 0),
                MACK_N_o=>ACK_N,
                RESET=>RESET,
                Rsel_o=>Rsel,
                sdAddr_o(12 downto 0)=>sdAddr_o(12 downto 0),
                sdBs_o(1 downto 0)=>sdBs_o(1 downto 0),
                sdCas_bo=>sdCas_bo,
                sdCe_bo=>sdCe_bo,
                sdCke_o=>sdCke_o,
                sdClk_o=>sdClk_o,
                sdDqmh_o=>sdDqmh_o,
                sdDqml_o=>sdDqml_o,
                sdRas_bo=>sdRas_bo,
                sdWe_bo=>sdWe_bo,
                Ssel_o=>Card_Sel,
                step_en_o=>STEP_EN,
                WR_N_o=>WR_IN_N,
                sdData_io(15 downto 0)=>sdData_io(15 downto 0));
   
   XLXI_64 : SlaveMonitor_MUSER_Top_Level
      port map (AI(9 downto 0)=>AI(9 downto 0),
                CARDSEL=>Card_Sel,
                clk=>CLK,
                IN_INIT=>IN_INIT,
                MON_DATA(31 downto 0)=>MON_DATA(31 downto 0),
                M3(31 downto 0)=>Debug_D(31 downto 0),
                M4(31 downto 0)=>MAO(31 downto 0),
                STEP_EN=>STEP_EN,
                STOP_N=>STOP_N,
                WR_IN_N=>WR_IN_N,
                SACK_N=>SACK_N,
                SDO(31 downto 0)=>SDO(31 downto 0));
   
   XLXI_70 : BUF
      port map (I=>RESET,
                O=>MON_DATA(0));
   
   XLXI_71 : BUF
      port map (I=>ACK_N,
                O=>MON_DATA(22));
   
   XLXI_72 : BUF
      port map (I=>STEP_EN,
                O=>MON_DATA(1));
   
   XLXI_73 : LoadStoreMac_MUSER_Top_Level
      port map (ACK_N=>ACK_N,
                CLK=>CLK,
                D_ADDR(4 downto 0)=>AI(4 downto 0),
                D_IN_BUS(31 downto 0)=>DO(31 downto 0),
                RST=>RESET,
                STEP_EN=>STEP_EN,
                ADDR_OUT_BUS(31 downto 0)=>MAO(31 downto 0),
                AS_N=>AS_N,
                A_EN=>MON_DATA(14),
                BUSY=>MON_DATA(2),
                B_EN=>MON_DATA(15),
                CTRL_ST(2 downto 0)=>MON_DATA(5 downto 3),
                C_EN=>MON_DATA(16),
                DOUT(31 downto 0)=>Debug_D(31 downto 0),
                D_OUT_BUS(31 downto 0)=>MDO(31 downto 0),
                GPR_EN=>MON_DATA(18),
                IN_INIT=>IN_INIT,
                IR_EN=>MON_DATA(17),
                MAC_ST(1 downto 0)=>MON_DATA(24 downto 23),
                MR=>MON_DATA(21),
                MUXSEL=>MON_DATA(13),
                MW=>MON_DATA(20),
                OPCODE(5 downto 0)=>MON_DATA(11 downto 6),
                PC_EN=>MON_DATA(19),
                STOP_N=>STOP_N,
                WR_N=>WR_OUT_N);
   
   XLXI_74 : BUF
      port map (I=>IN_INIT,
                O=>MON_DATA(12));
   
   XLXI_75 : BUF
      port map (I=>AS_N,
                O=>MON_DATA(26));
   
   XLXI_76 : BUF
      port map (I=>STOP_N,
                O=>MON_DATA(27));
   
   XLXI_77 : BUF
      port map (I=>WR_OUT_N,
                O=>MON_DATA(25));
   
end BEHAVIORAL;


