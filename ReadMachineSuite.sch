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
        <signal name="XLXN_7" />
        <signal name="XLXN_10" />
        <signal name="DIN(31:0)" />
        <signal name="IN_INIT" />
        <signal name="STOP_N" />
        <signal name="DOUT(31:0)" />
        <signal name="AS_N" />
        <signal name="WR_N" />
        <signal name="STATE(1:0)" />
        <signal name="AOUT(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Input" name="ACK_N" />
        <port polarity="Input" name="DIN(31:0)" />
        <port polarity="Output" name="IN_INIT" />
        <port polarity="Output" name="STOP_N" />
        <port polarity="Output" name="DOUT(31:0)" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Output" name="STATE(1:0)" />
        <port polarity="Output" name="AOUT(31:0)" />
        <blockdef name="ReadMachine">
            <timestamp>2017-5-13T12:12:34</timestamp>
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="REG32CE">
            <timestamp>2017-5-13T10:32:10</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
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
        <block symbolname="ReadMachine" name="XLXI_1">
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
        <block symbolname="REG32CE" name="XLXI_2">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="XLXN_10" name="CE" />
            <blockpin signalname="DIN(31:0)" name="DIN(31:0)" />
            <blockpin signalname="DOUT(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="CNT32" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_7" name="ce" />
            <blockpin signalname="rst" name="reset" />
            <blockpin signalname="AOUT(31:0)" name="cnt_o(31:0)" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="ACK_N" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="ACK_N" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1056" y="992" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1056" y="640" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1056" y="352" name="XLXI_5" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="560" y1="160" y2="160" x1="480" />
        </branch>
        <branch name="rst">
            <wire x2="560" y1="240" y2="240" x1="480" />
        </branch>
        <branch name="STEP_EN">
            <wire x2="560" y1="320" y2="320" x1="480" />
        </branch>
        <branch name="ACK_N">
            <wire x2="560" y1="400" y2="400" x1="480" />
        </branch>
        <iomarker fontsize="28" x="480" y="160" name="clk" orien="R180" />
        <iomarker fontsize="28" x="480" y="240" name="rst" orien="R180" />
        <iomarker fontsize="28" x="480" y="320" name="STEP_EN" orien="R180" />
        <iomarker fontsize="28" x="480" y="400" name="ACK_N" orien="R180" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="192" type="branch" />
            <wire x2="1056" y1="192" y2="192" x1="1040" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1056" y1="256" y2="256" x1="1040" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="320" type="branch" />
            <wire x2="1056" y1="320" y2="320" x1="1040" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="480" type="branch" />
            <wire x2="1056" y1="480" y2="480" x1="1040" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1056" y1="544" y2="544" x1="1040" />
        </branch>
        <branch name="DIN(31:0)">
            <wire x2="1056" y1="608" y2="608" x1="480" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="768" type="branch" />
            <wire x2="1056" y1="768" y2="768" x1="1040" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="832" type="branch" />
            <wire x2="1056" y1="832" y2="832" x1="1040" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="896" type="branch" />
            <wire x2="1056" y1="896" y2="896" x1="1040" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="960" type="branch" />
            <wire x2="1056" y1="960" y2="960" x1="1040" />
        </branch>
        <instance x="816" y="288" name="XLXI_6" orien="R0" />
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="256" type="branch" />
            <wire x2="816" y1="256" y2="256" x1="800" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="544" type="branch" />
            <wire x2="816" y1="544" y2="544" x1="800" />
        </branch>
        <instance x="816" y="576" name="XLXI_7" orien="R0" />
        <iomarker fontsize="28" x="480" y="608" name="DIN(31:0)" orien="R180" />
        <branch name="IN_INIT">
            <wire x2="2160" y1="160" y2="160" x1="2080" />
        </branch>
        <branch name="AS_N">
            <wire x2="2160" y1="240" y2="240" x1="2080" />
        </branch>
        <branch name="WR_N">
            <wire x2="2160" y1="320" y2="320" x1="2080" />
        </branch>
        <branch name="STOP_N">
            <wire x2="2160" y1="400" y2="400" x1="2080" />
        </branch>
        <branch name="DOUT(31:0)">
            <wire x2="1456" y1="480" y2="480" x1="1440" />
            <wire x2="2160" y1="480" y2="480" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="2160" y="160" name="IN_INIT" orien="R0" />
        <iomarker fontsize="28" x="2160" y="240" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="2160" y="320" name="WR_N" orien="R0" />
        <iomarker fontsize="28" x="2160" y="400" name="STOP_N" orien="R0" />
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="768" type="branch" />
            <wire x2="1456" y1="768" y2="768" x1="1440" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="832" type="branch" />
            <wire x2="1456" y1="832" y2="832" x1="1440" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="896" type="branch" />
            <wire x2="1456" y1="896" y2="896" x1="1440" />
        </branch>
        <branch name="STOP_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="960" type="branch" />
            <wire x2="1456" y1="960" y2="960" x1="1440" />
        </branch>
        <branch name="STATE(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="1088" type="branch" />
            <wire x2="1456" y1="1088" y2="1088" x1="1440" />
        </branch>
        <branch name="AOUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1456" y="192" type="branch" />
            <wire x2="1456" y1="192" y2="192" x1="1440" />
        </branch>
        <branch name="AOUT(31:0)">
            <wire x2="2160" y1="560" y2="560" x1="2080" />
        </branch>
        <branch name="STATE(1:0)">
            <wire x2="2160" y1="640" y2="640" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2160" y="560" name="AOUT(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2160" y="640" name="STATE(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2160" y="480" name="DOUT(31:0)" orien="R0" />
    </sheet>
</drawing>