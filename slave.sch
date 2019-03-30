<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="M1(31:0)" />
        <signal name="M2(31:0)" />
        <signal name="M3(31:0)" />
        <signal name="M4(31:0)" />
        <signal name="AI(9:0)" />
        <signal name="CARDSEL" />
        <signal name="WR_IN_N" />
        <signal name="clk" />
        <signal name="SDO(31:0)" />
        <signal name="AI(6:5)" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="SACK_N" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <port polarity="Input" name="M1(31:0)" />
        <port polarity="Input" name="M2(31:0)" />
        <port polarity="Input" name="M3(31:0)" />
        <port polarity="Input" name="M4(31:0)" />
        <port polarity="Input" name="AI(9:0)" />
        <port polarity="Input" name="CARDSEL" />
        <port polarity="Input" name="WR_IN_N" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="SDO(31:0)" />
        <port polarity="Output" name="SACK_N" />
        <blockdef name="MUX4_32bit">
            <timestamp>2017-3-31T13:38:2</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="nand2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="ID_NUM">
            <timestamp>2017-5-13T11:52:30</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="MUX4_32bit" name="XLXI_1">
            <blockpin signalname="M1(31:0)" name="A0(31:0)" />
            <blockpin signalname="M2(31:0)" name="A1(31:0)" />
            <blockpin signalname="M3(31:0)" name="A2(31:0)" />
            <blockpin signalname="M4(31:0)" name="A3(31:0)" />
            <blockpin signalname="AI(6:5)" name="sel(1:0)" />
            <blockpin signalname="SDO(31:0)" name="O(31:0)" />
        </block>
        <block symbolname="fd" name="XLXI_3">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_30" name="D" />
            <blockpin signalname="XLXN_25" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_4">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_25" name="D" />
            <blockpin signalname="XLXN_26" name="Q" />
        </block>
        <block symbolname="nand2b1" name="XLXI_5">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="SACK_N" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_6">
            <blockpin signalname="WR_IN_N" name="I0" />
            <blockpin signalname="CARDSEL" name="I1" />
            <blockpin signalname="XLXN_31" name="I2" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_7">
            <blockpin name="I0" />
            <blockpin name="I1" />
            <blockpin name="I2" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="ID_NUM" name="XLXI_9">
            <blockpin name="ID(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="M1(31:0)">
            <wire x2="288" y1="144" y2="144" x1="256" />
        </branch>
        <branch name="M2(31:0)">
            <wire x2="288" y1="176" y2="176" x1="256" />
        </branch>
        <branch name="M3(31:0)">
            <wire x2="288" y1="208" y2="208" x1="256" />
        </branch>
        <branch name="M4(31:0)">
            <wire x2="288" y1="240" y2="240" x1="256" />
        </branch>
        <branch name="AI(9:0)">
            <wire x2="288" y1="272" y2="272" x1="256" />
        </branch>
        <branch name="CARDSEL">
            <wire x2="288" y1="304" y2="304" x1="256" />
        </branch>
        <branch name="WR_IN_N">
            <wire x2="288" y1="336" y2="336" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="144" name="M1(31:0)" orien="R180" />
        <iomarker fontsize="28" x="256" y="176" name="M2(31:0)" orien="R180" />
        <iomarker fontsize="28" x="256" y="208" name="M3(31:0)" orien="R180" />
        <iomarker fontsize="28" x="256" y="240" name="M4(31:0)" orien="R180" />
        <iomarker fontsize="28" x="256" y="272" name="AI(9:0)" orien="R180" />
        <iomarker fontsize="28" x="256" y="304" name="CARDSEL" orien="R180" />
        <iomarker fontsize="28" x="256" y="336" name="WR_IN_N" orien="R180" />
        <branch name="clk">
            <wire x2="288" y1="368" y2="368" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="368" name="clk" orien="R180" />
        <branch name="M4(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="384" type="branch" />
            <wire x2="768" y1="384" y2="384" x1="752" />
        </branch>
        <branch name="M3(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="320" type="branch" />
            <wire x2="768" y1="320" y2="320" x1="752" />
        </branch>
        <branch name="M2(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="256" type="branch" />
            <wire x2="768" y1="256" y2="256" x1="752" />
        </branch>
        <branch name="M1(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="192" type="branch" />
            <wire x2="768" y1="192" y2="192" x1="752" />
        </branch>
        <branch name="SDO(31:0)">
            <wire x2="1168" y1="192" y2="192" x1="1152" />
            <wire x2="1920" y1="192" y2="192" x1="1168" />
        </branch>
        <branch name="AI(6:5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="448" type="branch" />
            <wire x2="768" y1="448" y2="448" x1="752" />
        </branch>
        <instance x="768" y="480" name="XLXI_1" orien="R0">
        </instance>
        <instance x="768" y="912" name="XLXI_3" orien="R0" />
        <branch name="XLXN_25">
            <wire x2="1168" y1="656" y2="656" x1="1152" />
            <wire x2="1184" y1="656" y2="656" x1="1168" />
            <wire x2="1168" y1="512" y2="656" x1="1168" />
            <wire x2="1584" y1="512" y2="512" x1="1168" />
            <wire x2="1584" y1="512" y2="592" x1="1584" />
            <wire x2="1600" y1="592" y2="592" x1="1584" />
        </branch>
        <instance x="1184" y="912" name="XLXI_4" orien="R0" />
        <branch name="XLXN_26">
            <wire x2="1600" y1="656" y2="656" x1="1568" />
        </branch>
        <instance x="1600" y="720" name="XLXI_5" orien="R0" />
        <branch name="SACK_N">
            <wire x2="1872" y1="624" y2="624" x1="1856" />
            <wire x2="1920" y1="624" y2="624" x1="1872" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="784" type="branch" />
            <wire x2="1184" y1="784" y2="784" x1="1168" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="752" y="784" type="branch" />
            <wire x2="768" y1="784" y2="784" x1="752" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="768" y1="656" y2="656" x1="736" />
        </branch>
        <instance x="480" y="784" name="XLXI_6" orien="R0" />
        <branch name="XLXN_31">
            <wire x2="480" y1="592" y2="592" x1="448" />
        </branch>
        <instance x="192" y="720" name="XLXI_7" orien="R0" />
        <branch name="CARDSEL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="464" y="656" type="branch" />
            <wire x2="480" y1="656" y2="656" x1="464" />
        </branch>
        <branch name="WR_IN_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="464" y="720" type="branch" />
            <wire x2="480" y1="720" y2="720" x1="464" />
        </branch>
        <instance x="144" y="1072" name="XLXI_9" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1920" y="624" name="SACK_N" orien="R0" />
        <iomarker fontsize="28" x="1920" y="192" name="SDO(31:0)" orien="R0" />
    </sheet>
</drawing>