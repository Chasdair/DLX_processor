<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="MON_DATA(31:0)" />
        <signal name="clk" />
        <signal name="IN_INIT" />
        <signal name="STEP_EN" />
        <signal name="LA_RUN" />
        <signal name="STOP_N" />
        <signal name="LA_WE" />
        <signal name="XLXN_29" />
        <signal name="XLXN_54" />
        <signal name="STS_CE" />
        <signal name="AI(4:0)" />
        <signal name="AI_IN(4:0)" />
        <signal name="cnt_reset" />
        <signal name="D_OUT(31:0)" />
        <signal name="STATUS(7:0)" />
        <signal name="D(4:0)" />
        <signal name="D(7:0)" />
        <port polarity="Input" name="MON_DATA(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="IN_INIT" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Input" name="STOP_N" />
        <port polarity="Input" name="AI_IN(4:0)" />
        <port polarity="Output" name="D_OUT(31:0)" />
        <port polarity="Output" name="STATUS(7:0)" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
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
        <blockdef name="or3b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="28" y1="-64" y2="-64" x1="0" />
            <circle r="10" cx="38" cy="-62" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
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
        <blockdef name="and3b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="MUX5BIT">
            <timestamp>2017-6-6T7:25:28</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="CNT5">
            <timestamp>2017-6-6T7:36:33</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="RAM32X32S">
            <timestamp>2017-6-6T7:25:20</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="fd8ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="STOP_N" name="I0" />
            <blockpin signalname="LA_RUN" name="I1" />
            <blockpin signalname="LA_WE" name="O" />
        </block>
        <block symbolname="or3b1" name="XLXI_8">
            <blockpin signalname="IN_INIT" name="I0" />
            <blockpin signalname="XLXN_54" name="I1" />
            <blockpin signalname="STEP_EN" name="I2" />
            <blockpin signalname="LA_RUN" name="O" />
        </block>
        <block symbolname="fd" name="XLXI_7">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_29" name="D" />
            <blockpin signalname="XLXN_54" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="IN_INIT" name="I" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_22">
            <blockpin signalname="STEP_EN" name="I0" />
            <blockpin signalname="XLXN_54" name="I1" />
            <blockpin signalname="IN_INIT" name="I2" />
            <blockpin signalname="STS_CE" name="O" />
        </block>
        <block symbolname="MUX5BIT" name="XLXI_24">
            <blockpin signalname="LA_WE" name="sel" />
            <blockpin signalname="AI_IN(4:0)" name="A0(4:0)" />
            <blockpin signalname="D(4:0)" name="A1(4:0)" />
            <blockpin signalname="AI(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="RAM32X32S" name="XLXI_26">
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="LA_WE" name="WE" />
            <blockpin signalname="MON_DATA(31:0)" name="D(31:0)" />
            <blockpin signalname="AI(4:0)" name="ADD(4:0)" />
            <blockpin signalname="D_OUT(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="fd8ce" name="XLXI_27">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="cnt_reset" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="D(7:0)" name="D(7:0)" />
            <blockpin signalname="STATUS(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="fd" name="XLXI_28">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="STS_CE" name="D" />
            <blockpin signalname="cnt_reset" name="Q" />
        </block>
        <block symbolname="CNT5" name="XLXI_29">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="LA_WE" name="ce" />
            <blockpin signalname="cnt_reset" name="reset" />
            <blockpin signalname="D(4:0)" name="cnt_o(4:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="LA_RUN">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="176" type="branch" />
            <wire x2="2016" y1="176" y2="176" x1="2000" />
            <wire x2="2048" y1="176" y2="176" x1="2016" />
        </branch>
        <instance x="2048" y="304" name="XLXI_6" orien="R0" />
        <branch name="STOP_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="240" type="branch" />
            <wire x2="2048" y1="240" y2="240" x1="2032" />
        </branch>
        <branch name="LA_WE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="208" type="branch" />
            <wire x2="2320" y1="208" y2="208" x1="2304" />
        </branch>
        <instance x="1744" y="48" name="XLXI_8" orien="M180" />
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="112" type="branch" />
            <wire x2="1664" y1="112" y2="112" x1="1568" />
            <wire x2="1744" y1="112" y2="112" x1="1664" />
            <wire x2="1664" y1="112" y2="336" x1="1664" />
            <wire x2="1728" y1="336" y2="336" x1="1664" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="240" type="branch" />
            <wire x2="1600" y1="240" y2="240" x1="1568" />
            <wire x2="1600" y1="240" y2="464" x1="1600" />
            <wire x2="1728" y1="464" y2="464" x1="1600" />
            <wire x2="1744" y1="240" y2="240" x1="1600" />
        </branch>
        <instance x="1040" y="432" name="XLXI_7" orien="R0" />
        <instance x="784" y="208" name="XLXI_9" orien="R0" />
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="768" y="176" type="branch" />
            <wire x2="768" y1="176" y2="176" x1="752" />
            <wire x2="784" y1="176" y2="176" x1="768" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1040" y1="176" y2="176" x1="1008" />
        </branch>
        <instance x="1728" y="528" name="XLXI_22" orien="R0" />
        <branch name="XLXN_54">
            <wire x2="1632" y1="176" y2="176" x1="1424" />
            <wire x2="1632" y1="176" y2="400" x1="1632" />
            <wire x2="1728" y1="400" y2="400" x1="1632" />
            <wire x2="1744" y1="176" y2="176" x1="1632" />
        </branch>
        <branch name="STS_CE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="400" type="branch" />
            <wire x2="2000" y1="400" y2="400" x1="1984" />
        </branch>
        <instance x="1040" y="1008" name="XLXI_24" orien="R0">
        </instance>
        <branch name="LA_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="848" type="branch" />
            <wire x2="1040" y1="848" y2="848" x1="1024" />
        </branch>
        <branch name="AI_IN(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="912" type="branch" />
            <wire x2="1040" y1="912" y2="912" x1="1024" />
        </branch>
        <branch name="AI(4:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="848" type="branch" />
            <wire x2="1440" y1="848" y2="848" x1="1424" />
            <wire x2="1664" y1="848" y2="848" x1="1440" />
        </branch>
        <instance x="1664" y="880" name="XLXI_26" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="368" y="976" type="branch" />
            <wire x2="384" y1="976" y2="976" x1="368" />
        </branch>
        <branch name="LA_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1040" type="branch" />
            <wire x2="384" y1="1040" y2="1040" x1="368" />
        </branch>
        <branch name="cnt_reset">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1104" type="branch" />
            <wire x2="384" y1="1104" y2="1104" x1="368" />
            <wire x2="368" y1="1104" y2="1216" x1="368" />
            <wire x2="832" y1="1216" y2="1216" x1="368" />
            <wire x2="832" y1="1216" y2="1344" x1="832" />
            <wire x2="1040" y1="1216" y2="1216" x1="832" />
            <wire x2="832" y1="1344" y2="1344" x1="768" />
        </branch>
        <branch name="MON_DATA(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="784" type="branch" />
            <wire x2="1664" y1="784" y2="784" x1="1648" />
        </branch>
        <branch name="LA_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="720" type="branch" />
            <wire x2="1664" y1="720" y2="720" x1="1648" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="656" type="branch" />
            <wire x2="1664" y1="656" y2="656" x1="1648" />
        </branch>
        <branch name="D_OUT(31:0)">
            <wire x2="2112" y1="656" y2="656" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2112" y="656" name="D_OUT(31:0)" orien="R0" />
        <branch name="STATUS(7:0)">
            <wire x2="1520" y1="1152" y2="1152" x1="1424" />
            <wire x2="1536" y1="1152" y2="1152" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="1536" y="1152" name="STATUS(7:0)" orien="R0" />
        <instance x="384" y="1600" name="XLXI_28" orien="R0" />
        <branch name="STS_CE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1344" type="branch" />
            <wire x2="384" y1="1344" y2="1344" x1="368" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1472" type="branch" />
            <wire x2="384" y1="1472" y2="1472" x1="368" />
        </branch>
        <branch name="IN_INIT">
            <wire x2="368" y1="432" y2="432" x1="288" />
        </branch>
        <branch name="MON_DATA(31:0)">
            <wire x2="368" y1="352" y2="352" x1="288" />
        </branch>
        <branch name="STOP_N">
            <wire x2="368" y1="512" y2="512" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="432" name="IN_INIT" orien="R180" />
        <iomarker fontsize="28" x="288" y="352" name="MON_DATA(31:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="512" name="STOP_N" orien="R180" />
        <branch name="clk">
            <wire x2="368" y1="272" y2="272" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="272" name="clk" orien="R180" />
        <branch name="STEP_EN">
            <wire x2="368" y1="592" y2="592" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="592" name="STEP_EN" orien="R180" />
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="304" type="branch" />
            <wire x2="1040" y1="304" y2="304" x1="1024" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1280" type="branch" />
            <wire x2="1040" y1="1280" y2="1280" x1="1024" />
        </branch>
        <instance x="1040" y="1408" name="XLXI_27" orien="R0" />
        <branch name="D(4:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="848" y="976" type="branch" />
            <wire x2="848" y1="976" y2="976" x1="768" />
            <wire x2="1040" y1="976" y2="976" x1="848" />
        </branch>
        <branch name="D(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="1152" type="branch" />
            <wire x2="1040" y1="1152" y2="1152" x1="992" />
        </branch>
        <instance x="384" y="1136" name="XLXI_29" orien="R0">
        </instance>
    </sheet>
</drawing>