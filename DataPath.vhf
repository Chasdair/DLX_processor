--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : DataPath.vhf
-- /___/   /\     Timestamp : 06/06/2017 12:50:13
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C6/SOURCE_S25/DataPath.vhf -w E:/adlx/C6/SOURCE_S25/DataPath.sch
--Design Name: DataPath
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity GPR_MUSER_DataPath is
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
end GPR_MUSER_DataPath;

architecture BEHAVIORAL of GPR_MUSER_DataPath is
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

entity PC_MUSER_DataPath is
   port ( CE      : in    std_logic; 
          CLK     : in    std_logic; 
          RST     : in    std_logic; 
          PC_ADDR : out   std_logic_vector (15 downto 0));
end PC_MUSER_DataPath;

architecture BEHAVIORAL of PC_MUSER_DataPath is
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

entity DataPath is
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
end DataPath;

architecture BEHAVIORAL of DataPath is
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
   
   component PC_MUSER_DataPath
      port ( CLK     : in    std_logic; 
             CE      : in    std_logic; 
             RST     : in    std_logic; 
             PC_ADDR : out   std_logic_vector (15 downto 0));
   end component;
   
   component GPR_MUSER_DataPath
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
   
   XLXI_4 : PC_MUSER_DataPath
      port map (CE=>PC_EN,
                CLK=>CLK,
                RST=>RST,
                PC_ADDR(15 downto 0)=>PC_ADDR(15 downto 0));
   
   XLXI_5 : GPR_MUSER_DataPath
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


