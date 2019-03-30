<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="STEP_EN" />
        <signal name="RESET" />
        <signal name="XLXN_9" />
        <signal name="CLK" />
        <signal name="wide(31:0)" />
        <signal name="Data(4:0)" />
        <signal name="reg_out(31:0)" />
        <signal name="wide(4:0)" />
        <signal name="reg_adr(4:0)" />
        <signal name="in_init" />
        <signal name="step_num(4:0)" />
        <signal name="state(3:0)" />
        <signal name="reg_write(4:0)" />
        <signal name="state(3)" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="reg_out(31:0)" />
        <port polarity="Input" name="reg_adr(4:0)" />
        <port polarity="Output" name="in_init" />
        <port polarity="Output" name="step_num(4:0)" />
        <port polarity="Output" name="state(3:0)" />
        <port polarity="Output" name="reg_write(4:0)" />
        <blockdef name="broja">
            <timestamp>2009-7-28T7:20:44</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <rect width="256" x="64" y="-192" height="256" />
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
        <blockdef name="BUF5">
            <timestamp>2017-4-21T5:16:40</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="step_counter">
            <timestamp>2009-7-28T7:27:49</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="MUX5BIT" name="XLXI_4">
            <blockpin signalname="state(3)" name="sel" />
            <blockpin signalname="wide(4:0)" name="A0(4:0)" />
            <blockpin signalname="reg_adr(4:0)" name="A1(4:0)" />
            <blockpin signalname="Data(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="RAM32X32S" name="XLXI_3">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_9" name="WE" />
            <blockpin signalname="wide(31:0)" name="D(31:0)" />
            <blockpin signalname="Data(4:0)" name="ADD(4:0)" />
            <blockpin signalname="reg_out(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="state(3)" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="broja" name="XLXI_1">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="STEP_EN" name="step" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="in_init" name="in_init" />
            <blockpin signalname="wide(31:0)" name="cnt(31:0)" />
            <blockpin signalname="state(3:0)" name="state(3:0)" />
        </block>
        <block symbolname="BUF5" name="XLXI_6">
            <blockpin signalname="wide(4:0)" name="Din(4:0)" />
            <blockpin signalname="reg_write(4:0)" name="Dout(4:0)" />
        </block>
        <block symbolname="step_counter" name="XLXI_7">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="STEP_EN" name="ce" />
            <blockpin signalname="RESET" name="reset" />
            <blockpin signalname="step_num(4:0)" name="cnt_o(4:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1536" y="1840" type="branch" />
            <wire x2="1600" y1="1840" y2="1840" x1="1536" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1536" y="1904" type="branch" />
            <wire x2="1600" y1="1904" y2="1904" x1="1536" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1536" y="1968" type="branch" />
            <wire x2="1600" y1="1968" y2="1968" x1="1536" />
        </branch>
        <instance x="1600" y="1696" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2160" y="1328" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1824" y="1200" name="XLXI_2" orien="R0" />
        <instance x="992" y="1328" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_9">
            <wire x2="2160" y1="1168" y2="1168" x1="2048" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2112" y="1104" type="branch" />
            <wire x2="2160" y1="1104" y2="1104" x1="2112" />
        </branch>
        <branch name="wide(31:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1648" y="1296" type="branch" />
            <wire x2="1648" y1="1296" y2="1296" x1="1376" />
            <wire x2="1760" y1="1296" y2="1296" x1="1648" />
            <wire x2="1760" y1="1232" y2="1296" x1="1760" />
            <wire x2="2160" y1="1232" y2="1232" x1="1760" />
        </branch>
        <branch name="reg_out(31:0)">
            <wire x2="2672" y1="1104" y2="1104" x1="2544" />
        </branch>
        <branch name="wide(4:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1520" y="1600" type="branch" />
            <wire x2="1600" y1="1600" y2="1600" x1="1520" />
        </branch>
        <branch name="reg_adr(4:0)">
            <wire x2="1584" y1="1664" y2="1664" x1="912" />
            <wire x2="1600" y1="1664" y2="1664" x1="1584" />
        </branch>
        <branch name="CLK">
            <wire x2="992" y1="1168" y2="1168" x1="304" />
        </branch>
        <branch name="STEP_EN">
            <wire x2="992" y1="1232" y2="1232" x1="304" />
        </branch>
        <branch name="RESET">
            <wire x2="992" y1="1296" y2="1296" x1="304" />
        </branch>
        <iomarker fontsize="28" x="2672" y="1104" name="reg_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2592" y="864" name="in_init" orien="R0" />
        <iomarker fontsize="28" x="304" y="1168" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="304" y="1232" name="STEP_EN" orien="R180" />
        <iomarker fontsize="28" x="304" y="1296" name="RESET" orien="R180" />
        <branch name="step_num(4:0)">
            <wire x2="2608" y1="1840" y2="1840" x1="1984" />
        </branch>
        <branch name="state(3:0)">
            <wire x2="2704" y1="1360" y2="1360" x1="1376" />
        </branch>
        <branch name="Data(4:0)">
            <wire x2="2064" y1="1536" y2="1536" x1="1984" />
            <wire x2="2160" y1="1296" y2="1296" x1="2064" />
            <wire x2="2064" y1="1296" y2="1536" x1="2064" />
        </branch>
        <instance x="2096" y="2144" name="XLXI_6" orien="R0">
        </instance>
        <branch name="wide(4:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="2112" type="branch" />
            <wire x2="2096" y1="2112" y2="2112" x1="2000" />
        </branch>
        <branch name="reg_write(4:0)">
            <wire x2="2592" y1="2112" y2="2112" x1="2480" />
        </branch>
        <instance x="1600" y="2000" name="XLXI_7" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2704" y="1360" name="state(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2608" y="1840" name="step_num(4:0)" orien="R0" />
        <iomarker fontsize="28" x="2592" y="2112" name="reg_write(4:0)" orien="R0" />
        <branch name="in_init">
            <wire x2="1520" y1="1168" y2="1168" x1="1376" />
            <wire x2="2592" y1="864" y2="864" x1="1520" />
            <wire x2="1520" y1="864" y2="1168" x1="1520" />
        </branch>
        <branch name="state(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1504" y="1536" type="branch" />
            <wire x2="1584" y1="1536" y2="1536" x1="1504" />
            <wire x2="1600" y1="1536" y2="1536" x1="1584" />
            <wire x2="1824" y1="1168" y2="1168" x1="1584" />
            <wire x2="1584" y1="1168" y2="1536" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="912" y="1664" name="reg_adr(4:0)" orien="R180" />
    </sheet>
</drawing>