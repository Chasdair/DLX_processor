--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : GPR.vhf
-- /___/   /\     Timestamp : 06/06/2017 12:50:13
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C6/SOURCE_S25/GPR.vhf -w E:/adlx/C6/SOURCE_S25/GPR.sch
--Design Name: GPR
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

entity GPR is
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
end GPR;

architecture BEHAVIORAL of GPR is
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


