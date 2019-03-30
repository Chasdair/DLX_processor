<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="rst" />
        <signal name="STEP_EN" />
        <signal name="ACK_N" />
        <signal name="XLXN_35" />
        <signal name="IN_INIT" />
        <signal name="AS_N" />
        <signal name="WR_N" />
        <signal name="STOP_N" />
        <signal name="STATE(1:0)" />
        <signal name="AOUT(31:0)" />
        <signal name="DOUT(31:0)" />
        <signal name="DOUT(7:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Input" name="ACK_N" />
        <port polarity="Output" name="IN_INIT" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Output" name="STOP_N" />
        <port polarity="Output" name="STATE(1:0)" />
        <port polarity="Output" name="AOUT(31:0)" />
        <port polarity="Output" name="DOUT(31:0)" />
        <blockdef name="CNT32">
            <timestamp>2017-5-13T10:36:53</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="ID_NUM">
            <timestamp>2017-5-13T11:52:30</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="WriteMachine">
            <timestamp>2017-5-13T12:0:2</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="320" />
        </blockdef>
        <block symbolname="CNT32" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_35" name="ce" />
            <blockpin signalname="rst" name="reset" />
            <blockpin signalname="AOUT(31:0)" name="cnt_o(31:0)" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="ACK_N" name="I" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="ID_NUM" name="XLXI_15">
            <blockpin signalname="DOUT(7:0)" name="ID(7:0)" />
        </block>
        <block symbolname="WriteMachine" name="XLXI_16">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="STEP_EN" name="STEP_EN" />
            <blockpin signalname="ACK_N" name="ACK_N" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="STOP_N" name="STOP_N" />
            <blockpin signalname="STATE(1:0)" name="STATE(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1008" y="432" name="XLXI_5" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="512" y1="240" y2="240" x1="432" />
        </branch>
        <branch name="rst">
            <wire x2="512" y1="320" y2="320" x1="432" />
        </branch>
        <branch name="STEP_EN">
            <wire x2="512" y1="400" y2="400" x1="432" />
        </branch>
        <branch name="ACK_N">
            <wire x2="512" y1="480" y2="480" x1="432" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="272" type="branch" />
            <wire x2="1008" y1="272" y2="272" x1="992" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="1008" y1="336" y2="336" x1="992" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="400" type="branch" />
            <wire x2="1008" y1="400" y2="400" x1="992" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="848" type="branch" />
            <wire x2="1008" y1="848" y2="848" x1="992" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="912" type="branch" />
            <wire x2="1008" y1="912" y2="912" x1="992" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="976" type="branch" />
            <wire x2="1008" y1="976" y2="976" x1="992" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1040" type="branch" />
            <wire x2="1008" y1="1040" y2="1040" x1="992" />
        </branch>
        <instance x="768" y="368" name="XLXI_6" orien="R0" />
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="336" type="branch" />
            <wire x2="768" y1="336" y2="336" x1="752" />
        </branch>
        <branch name="IN_INIT">
            <wire x2="2112" y1="240" y2="240" x1="2032" />
        </branch>
        <branch name="AS_N">
            <wire x2="2112" y1="320" y2="320" x1="2032" />
        </branch>
        <branch name="WR_N">
            <wire x2="2112" y1="400" y2="400" x1="2032" />
        </branch>
        <branch name="STOP_N">
            <wire x2="2112" y1="480" y2="480" x1="2032" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="848" type="branch" />
            <wire x2="1408" y1="848" y2="848" x1="1392" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="912" type="branch" />
            <wire x2="1408" y1="912" y2="912" x1="1392" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="976" type="branch" />
            <wire x2="1408" y1="976" y2="976" x1="1392" />
        </branch>
        <branch name="STOP_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1040" type="branch" />
            <wire x2="1408" y1="1040" y2="1040" x1="1392" />
        </branch>
        <branch name="AOUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="272" type="branch" />
            <wire x2="1408" y1="272" y2="272" x1="1392" />
        </branch>
        <branch name="AOUT(31:0)">
            <wire x2="2112" y1="640" y2="640" x1="2032" />
        </branch>
        <branch name="STATE(1:0)">
            <wire x2="2112" y1="720" y2="720" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="432" y="240" name="clk" orien="R180" />
        <iomarker fontsize="28" x="432" y="320" name="rst" orien="R180" />
        <iomarker fontsize="28" x="432" y="400" name="STEP_EN" orien="R180" />
        <iomarker fontsize="28" x="432" y="480" name="ACK_N" orien="R180" />
        <iomarker fontsize="28" x="2112" y="240" name="IN_INIT" orien="R0" />
        <iomarker fontsize="28" x="2112" y="320" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="2112" y="400" name="WR_N" orien="R0" />
        <iomarker fontsize="28" x="2112" y="480" name="STOP_N" orien="R0" />
        <iomarker fontsize="28" x="2112" y="640" name="AOUT(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2112" y="720" name="STATE(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2112" y="560" name="DOUT(31:0)" orien="R0" />
        <branch name="DOUT(31:0)">
            <wire x2="2112" y1="560" y2="560" x1="2032" />
        </branch>
        <instance x="1008" y="576" name="XLXI_15" orien="R0">
        </instance>
        <branch name="DOUT(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="544" type="branch" />
            <wire x2="1408" y1="544" y2="544" x1="1392" />
        </branch>
        <instance x="1008" y="1072" name="XLXI_16" orien="R0">
        </instance>
        <branch name="STATE(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1408" y="1104" type="branch" />
            <wire x2="1408" y1="1104" y2="1104" x1="1392" />
        </branch>
    </sheet>
</drawing>