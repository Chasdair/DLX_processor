<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="AI(9:0)" />
        <signal name="M1(31:0)" />
        <signal name="M3(31:0)" />
        <signal name="M4(31:0)" />
        <signal name="WR_IN_N" />
        <signal name="CARDSEL" />
        <signal name="STEP_EN" />
        <signal name="IN_INIT" />
        <signal name="M2(7:0)" />
        <signal name="MON_DATA(31:0)" />
        <signal name="AI(4:0)" />
        <signal name="STOP_N" />
        <signal name="M2(15:8)" />
        <signal name="M2(31:0)" />
        <signal name="SACK_N" />
        <signal name="SDO(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="AI(9:0)" />
        <port polarity="Input" name="M3(31:0)" />
        <port polarity="Input" name="M4(31:0)" />
        <port polarity="Input" name="WR_IN_N" />
        <port polarity="Input" name="CARDSEL" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Input" name="IN_INIT" />
        <port polarity="Input" name="MON_DATA(31:0)" />
        <port polarity="Input" name="STOP_N" />
        <port polarity="Output" name="SACK_N" />
        <port polarity="Output" name="SDO(31:0)" />
        <blockdef name="ID_NUM">
            <timestamp>2017-5-13T11:52:30</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="LogicAnalyzer">
            <timestamp>2017-4-25T6:27:1</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <rect width="336" x="64" y="-192" height="384" />
        </blockdef>
        <blockdef name="slave_monitor">
            <timestamp>2017-4-25T8:55:23</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-512" height="640" />
        </blockdef>
        <block symbolname="ID_NUM" name="XLXI_7">
            <blockpin signalname="M2(15:8)" name="ID(7:0)" />
        </block>
        <block symbolname="slave_monitor" name="slave">
            <blockpin signalname="M1(31:0)" name="M1(31:0)" />
            <blockpin signalname="M2(31:0)" name="M2(31:0)" />
            <blockpin signalname="M3(31:0)" name="M3(31:0)" />
            <blockpin signalname="M4(31:0)" name="M4(31:0)" />
            <blockpin signalname="AI(9:0)" name="AI(9:0)" />
            <blockpin signalname="CARDSEL" name="CARDSEL" />
            <blockpin signalname="WR_IN_N" name="WR_IN_N" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="SDO(31:0)" name="SDO(31:0)" />
            <blockpin signalname="SACK_N" name="SACK_N" />
        </block>
        <block symbolname="LogicAnalyzer" name="XLXI_8">
            <blockpin signalname="MON_DATA(31:0)" name="MON_DATA(31:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="STEP_EN" name="STEP_EN" />
            <blockpin signalname="AI(4:0)" name="AI_IN(4:0)" />
            <blockpin signalname="M1(31:0)" name="D_OUT(31:0)" />
            <blockpin signalname="M2(7:0)" name="STATUS(7:0)" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="STOP_N" name="STOP_N" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="528" y1="928" y2="928" x1="464" />
        </branch>
        <branch name="WR_IN_N">
            <wire x2="528" y1="976" y2="976" x1="464" />
        </branch>
        <branch name="CARDSEL">
            <wire x2="528" y1="1024" y2="1024" x1="464" />
        </branch>
        <branch name="AI(9:0)">
            <wire x2="528" y1="1072" y2="1072" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="1072" name="AI(9:0)" orien="R180" />
        <iomarker fontsize="28" x="464" y="1024" name="CARDSEL" orien="R180" />
        <iomarker fontsize="28" x="464" y="976" name="WR_IN_N" orien="R180" />
        <iomarker fontsize="28" x="464" y="928" name="clk" orien="R180" />
        <iomarker fontsize="28" x="464" y="880" name="STEP_EN" orien="R180" />
        <branch name="STEP_EN">
            <wire x2="528" y1="880" y2="880" x1="464" />
        </branch>
        <branch name="M2(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="464" type="branch" />
            <wire x2="1872" y1="464" y2="464" x1="1856" />
        </branch>
        <branch name="MON_DATA(31:0)">
            <wire x2="1360" y1="336" y2="336" x1="464" />
            <wire x2="1392" y1="336" y2="336" x1="1360" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="400" type="branch" />
            <wire x2="1392" y1="400" y2="400" x1="1344" />
        </branch>
        <branch name="AI(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="464" type="branch" />
            <wire x2="1392" y1="464" y2="464" x1="1344" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="528" type="branch" />
            <wire x2="1392" y1="528" y2="528" x1="1344" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="592" type="branch" />
            <wire x2="1392" y1="592" y2="592" x1="1344" />
        </branch>
        <branch name="STOP_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="656" type="branch" />
            <wire x2="1392" y1="656" y2="656" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="464" y="336" name="MON_DATA(31:0)" orien="R180" />
        <branch name="M3(31:0)">
            <wire x2="528" y1="400" y2="400" x1="464" />
        </branch>
        <branch name="M4(31:0)">
            <wire x2="528" y1="448" y2="448" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="400" name="M3(31:0)" orien="R180" />
        <iomarker fontsize="28" x="464" y="448" name="M4(31:0)" orien="R180" />
        <branch name="M2(15:8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="800" type="branch" />
            <wire x2="1872" y1="800" y2="800" x1="1856" />
        </branch>
        <instance x="1472" y="832" name="XLXI_7" orien="R0">
        </instance>
        <branch name="M1(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2096" y="336" type="branch" />
            <wire x2="2096" y1="336" y2="336" x1="1856" />
            <wire x2="2096" y1="336" y2="544" x1="2096" />
            <wire x2="2256" y1="544" y2="544" x1="2096" />
        </branch>
        <branch name="M3(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="672" type="branch" />
            <wire x2="2240" y1="672" y2="672" x1="2224" />
            <wire x2="2256" y1="672" y2="672" x1="2240" />
        </branch>
        <branch name="M4(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="736" type="branch" />
            <wire x2="2240" y1="736" y2="736" x1="2224" />
            <wire x2="2256" y1="736" y2="736" x1="2240" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="992" type="branch" />
            <wire x2="2256" y1="992" y2="992" x1="2240" />
        </branch>
        <branch name="WR_IN_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="928" type="branch" />
            <wire x2="2256" y1="928" y2="928" x1="2240" />
        </branch>
        <branch name="CARDSEL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="864" type="branch" />
            <wire x2="2256" y1="864" y2="864" x1="2240" />
        </branch>
        <branch name="AI(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="800" type="branch" />
            <wire x2="2240" y1="800" y2="800" x1="2224" />
            <wire x2="2256" y1="800" y2="800" x1="2240" />
        </branch>
        <branch name="M2(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="608" type="branch" />
            <wire x2="2080" y1="608" y2="608" x1="2064" />
            <wire x2="2144" y1="608" y2="608" x1="2080" />
            <wire x2="2256" y1="608" y2="608" x1="2144" />
        </branch>
        <branch name="STOP_N">
            <wire x2="528" y1="816" y2="816" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="816" name="STOP_N" orien="R180" />
        <branch name="IN_INIT">
            <wire x2="528" y1="752" y2="752" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="752" name="IN_INIT" orien="R180" />
        <instance x="2256" y="1024" name="slave" orien="R0">
        </instance>
        <branch name="SACK_N">
            <wire x2="2832" y1="1120" y2="1120" x1="2640" />
            <wire x2="2848" y1="1120" y2="1120" x1="2832" />
        </branch>
        <iomarker fontsize="28" x="2848" y="1120" name="SACK_N" orien="R0" />
        <branch name="SDO(31:0)">
            <wire x2="2832" y1="1056" y2="1056" x1="2640" />
            <wire x2="2848" y1="1056" y2="1056" x1="2832" />
        </branch>
        <iomarker fontsize="28" x="2848" y="1056" name="SDO(31:0)" orien="R0" />
        <instance x="1392" y="496" name="XLXI_8" orien="R0">
        </instance>
    </sheet>
</drawing>