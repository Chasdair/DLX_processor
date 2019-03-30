--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : slave_monitor.vhf
-- /___/   /\     Timestamp : 06/06/2017 12:50:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C6/SOURCE_S25/slave_monitor.vhf -w E:/adlx/C6/SOURCE_S25/slave_monitor.sch
--Design Name: slave_monitor
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

entity slave_monitor is
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
end slave_monitor;

architecture BEHAVIORAL of slave_monitor is
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


