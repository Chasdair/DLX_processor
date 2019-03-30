--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : PC.vhf
-- /___/   /\     Timestamp : 06/06/2017 12:50:13
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C6/SOURCE_S25/PC.vhf -w E:/adlx/C6/SOURCE_S25/PC.sch
--Design Name: PC
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

entity PC is
   port ( CE      : in    std_logic; 
          CLK     : in    std_logic; 
          RST     : in    std_logic; 
          PC_ADDR : out   std_logic_vector (15 downto 0));
end PC;

architecture BEHAVIORAL of PC is
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


