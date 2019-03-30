<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5(31:0)" />
        <signal name="CLK" />
        <signal name="RST" />
        <signal name="STEP_EN" />
        <signal name="XLXN_18(31:0)" />
        <signal name="ADDR_OUT_BUS(31:0)" />
        <signal name="D_OUT_BUS(31:0)" />
        <signal name="IN_INIT" />
        <signal name="AS_N" />
        <signal name="WR_N" />
        <signal name="XLXN_25" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Output" name="IN_INIT" />
        <blockdef name="IO_SIMUL">
            <timestamp>2017-5-23T6:31:37</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-320" y2="-320" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="LoadStoreMac">
            <timestamp>2017-5-23T6:45:44</timestamp>
            <line x2="560" y1="32" y2="32" x1="496" />
            <line x2="560" y1="96" y2="96" x1="496" />
            <line x2="560" y1="160" y2="160" x1="496" />
            <line x2="560" y1="224" y2="224" x1="496" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-364" height="24" />
            <line x2="560" y1="-352" y2="-352" x1="496" />
            <rect width="64" x="496" y="-204" height="24" />
            <line x2="560" y1="-192" y2="-192" x1="496" />
            <rect width="64" x="496" y="-44" height="24" />
            <line x2="560" y1="-32" y2="-32" x1="496" />
            <rect width="432" x="64" y="-384" height="640" />
        </blockdef>
        <block symbolname="IO_SIMUL" name="XLXI_1">
            <blockpin signalname="CLK" name="clk_in" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="STEP_EN" name="PC_step_en" />
            <blockpin signalname="WR_N" name="WR_OUT_N" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="D_OUT_BUS(31:0)" name="MDO(31:0)" />
            <blockpin signalname="ADDR_OUT_BUS(31:0)" name="MAO(31:0)" />
            <blockpin signalname="XLXN_3" name="step_en" />
            <blockpin signalname="XLXN_1" name="RESET" />
            <blockpin signalname="XLXN_2" name="ACK_N" />
            <blockpin signalname="XLXN_4" name="CLK" />
            <blockpin signalname="XLXN_5(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="LoadStoreMac" name="XLXI_7">
            <blockpin signalname="XLXN_4" name="CLK" />
            <blockpin signalname="XLXN_1" name="RST" />
            <blockpin signalname="XLXN_2" name="ACK_N" />
            <blockpin signalname="XLXN_3" name="STEP_EN" />
            <blockpin name="D_ADDR(4:0)" />
            <blockpin signalname="XLXN_5(31:0)" name="D_IN_BUS(31:0)" />
            <blockpin signalname="XLXN_18(31:0)" name="DOUT(31:0)" />
            <blockpin signalname="D_OUT_BUS(31:0)" name="D_OUT_BUS(31:0)" />
            <blockpin signalname="ADDR_OUT_BUS(31:0)" name="ADDR_OUT_BUS(31:0)" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="XLXN_25" name="STOP_N" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="768" y="720" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1296" y1="400" y2="400" x1="1152" />
            <wire x2="1296" y1="368" y2="400" x1="1296" />
            <wire x2="1440" y1="368" y2="368" x1="1296" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1296" y1="496" y2="496" x1="1152" />
            <wire x2="1296" y1="432" y2="496" x1="1296" />
            <wire x2="1440" y1="432" y2="432" x1="1296" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1312" y1="304" y2="304" x1="1152" />
            <wire x2="1312" y1="304" y2="496" x1="1312" />
            <wire x2="1440" y1="496" y2="496" x1="1312" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1328" y1="592" y2="592" x1="1152" />
            <wire x2="1328" y1="304" y2="592" x1="1328" />
            <wire x2="1440" y1="304" y2="304" x1="1328" />
        </branch>
        <branch name="XLXN_5(31:0)">
            <wire x2="1296" y1="688" y2="688" x1="1152" />
            <wire x2="1296" y1="624" y2="688" x1="1296" />
            <wire x2="1440" y1="624" y2="624" x1="1296" />
        </branch>
        <branch name="CLK">
            <wire x2="736" y1="304" y2="304" x1="368" />
            <wire x2="768" y1="304" y2="304" x1="736" />
        </branch>
        <branch name="RST">
            <wire x2="736" y1="368" y2="368" x1="368" />
            <wire x2="768" y1="368" y2="368" x1="736" />
        </branch>
        <branch name="STEP_EN">
            <wire x2="736" y1="432" y2="432" x1="368" />
            <wire x2="768" y1="432" y2="432" x1="736" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="496" type="branch" />
            <wire x2="768" y1="496" y2="496" x1="736" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="560" type="branch" />
            <wire x2="768" y1="560" y2="560" x1="736" />
        </branch>
        <branch name="D_OUT_BUS(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="624" type="branch" />
            <wire x2="768" y1="624" y2="624" x1="736" />
        </branch>
        <branch name="ADDR_OUT_BUS(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="688" type="branch" />
            <wire x2="768" y1="688" y2="688" x1="736" />
        </branch>
        <branch name="XLXN_18(31:0)">
            <wire x2="2032" y1="304" y2="304" x1="2000" />
        </branch>
        <branch name="D_OUT_BUS(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="464" type="branch" />
            <wire x2="2032" y1="464" y2="464" x1="2000" />
        </branch>
        <branch name="ADDR_OUT_BUS(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="624" type="branch" />
            <wire x2="2032" y1="624" y2="624" x1="2000" />
        </branch>
        <branch name="IN_INIT">
            <wire x2="2032" y1="688" y2="688" x1="2000" />
            <wire x2="2464" y1="688" y2="688" x1="2032" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="752" type="branch" />
            <wire x2="2032" y1="752" y2="752" x1="2000" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="816" type="branch" />
            <wire x2="2032" y1="816" y2="816" x1="2000" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2032" y1="880" y2="880" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2464" y="688" name="IN_INIT" orien="R0" />
        <iomarker fontsize="28" x="368" y="304" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="368" y="368" name="RST" orien="R180" />
        <iomarker fontsize="28" x="368" y="432" name="STEP_EN" orien="R180" />
        <instance x="1440" y="656" name="XLXI_7" orien="R0">
        </instance>
    </sheet>
</drawing>