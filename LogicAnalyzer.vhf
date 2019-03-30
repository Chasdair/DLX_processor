--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : LogicAnalyzer.vhf
-- /___/   /\     Timestamp : 06/06/2017 12:50:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C6/SOURCE_S25/LogicAnalyzer.vhf -w E:/adlx/C6/SOURCE_S25/LogicAnalyzer.sch
--Design Name: LogicAnalyzer
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FD8CE_HXILINX_LogicAnalyzer -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD8CE_HXILINX_LogicAnalyzer is
port (
    Q   : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(7 downto 0)
    );
end FD8CE_HXILINX_LogicAnalyzer;

architecture Behavioral of FD8CE_HXILINX_LogicAnalyzer is

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

entity LogicAnalyzer is
   port ( AI_IN    : in    std_logic_vector (4 downto 0); 
          clk      : in    std_logic; 
          IN_INIT  : in    std_logic; 
          MON_DATA : in    std_logic_vector (31 downto 0); 
          STEP_EN  : in    std_logic; 
          STOP_N   : in    std_logic; 
          D_OUT    : out   std_logic_vector (31 downto 0); 
          STATUS   : out   std_logic_vector (7 downto 0));
end LogicAnalyzer;

architecture BEHAVIORAL of LogicAnalyzer is
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
   
   component FD8CE_HXILINX_LogicAnalyzer
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
   
   attribute HU_SET of XLXI_27 : label is "XLXI_27_0";
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
   
   XLXI_27 : FD8CE_HXILINX_LogicAnalyzer
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


