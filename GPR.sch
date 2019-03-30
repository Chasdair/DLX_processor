<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="GPR_WE" />
        <signal name="DATA(31:0)" />
        <signal name="C_ADDR(4:0)" />
        <signal name="A_ADDR(4:0)" />
        <signal name="B_ADDR(4:0)" />
        <signal name="D_ADDR(4:0)" />
        <signal name="CLK" />
        <signal name="XLXN_13(4:0)" />
        <signal name="AOUT(31:0)" />
        <signal name="XLXN_19(4:0)" />
        <signal name="BOUT(31:0)" />
        <signal name="XLXN_24(4:0)" />
        <signal name="DOUT(31:0)" />
        <signal name="XLXN_98" />
        <signal name="RAM_WE" />
        <signal name="C_ADDR(0)" />
        <signal name="C_ADDR(1)" />
        <signal name="C_ADDR(2)" />
        <signal name="C_ADDR(3)" />
        <signal name="C_ADDR(4)" />
        <port polarity="Input" name="GPR_WE" />
        <port polarity="Input" name="DATA(31:0)" />
        <port polarity="Input" name="C_ADDR(4:0)" />
        <port polarity="Input" name="A_ADDR(4:0)" />
        <port polarity="Input" name="B_ADDR(4:0)" />
        <port polarity="Input" name="D_ADDR(4:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="AOUT(31:0)" />
        <port polarity="Output" name="BOUT(31:0)" />
        <port polarity="Output" name="DOUT(31:0)" />
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
        <blockdef name="or5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="72" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="48" y1="-320" y2="-320" x1="0" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <arc ex="192" ey="-192" sx="112" sy="-144" r="88" cx="116" cy="-232" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <line x2="48" y1="-64" y2="-144" x1="48" />
            <line x2="48" y1="-320" y2="-240" x1="48" />
            <arc ex="112" ey="-240" sx="192" sy="-192" r="88" cx="116" cy="-152" />
            <arc ex="48" ey="-240" sx="48" sy="-144" r="56" cx="16" cy="-192" />
        </blockdef>
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
        <block symbolname="RAM32X32S" name="RAM_A">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RAM_WE" name="WE" />
            <blockpin signalname="DATA(31:0)" name="D(31:0)" />
            <blockpin signalname="XLXN_13(4:0)" name="ADD(4:0)" />
            <blockpin signalname="AOUT(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="RAM32X32S" name="RAM_B">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RAM_WE" name="WE" />
            <blockpin signalname="DATA(31:0)" name="D(31:0)" />
            <blockpin signalname="XLXN_19(4:0)" name="ADD(4:0)" />
            <blockpin signalname="BOUT(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="RAM32X32S" name="RAM_D">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RAM_WE" name="WE" />
            <blockpin signalname="DATA(31:0)" name="D(31:0)" />
            <blockpin signalname="XLXN_24(4:0)" name="ADD(4:0)" />
            <blockpin signalname="DOUT(31:0)" name="DO(31:0)" />
        </block>
        <block symbolname="MUX5BIT" name="MUX_A">
            <blockpin signalname="GPR_WE" name="sel" />
            <blockpin signalname="A_ADDR(4:0)" name="A0(4:0)" />
            <blockpin signalname="C_ADDR(4:0)" name="A1(4:0)" />
            <blockpin signalname="XLXN_13(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="MUX5BIT" name="MUX_B">
            <blockpin signalname="GPR_WE" name="sel" />
            <blockpin signalname="B_ADDR(4:0)" name="A0(4:0)" />
            <blockpin signalname="C_ADDR(4:0)" name="A1(4:0)" />
            <blockpin signalname="XLXN_19(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="MUX5BIT" name="MUX_D">
            <blockpin signalname="GPR_WE" name="sel" />
            <blockpin signalname="D_ADDR(4:0)" name="A0(4:0)" />
            <blockpin signalname="C_ADDR(4:0)" name="A1(4:0)" />
            <blockpin signalname="XLXN_24(4:0)" name="O(4:0)" />
        </block>
        <block symbolname="or5" name="XLXI_21">
            <blockpin signalname="C_ADDR(4)" name="I0" />
            <blockpin signalname="C_ADDR(3)" name="I1" />
            <blockpin signalname="C_ADDR(2)" name="I2" />
            <blockpin signalname="C_ADDR(1)" name="I3" />
            <blockpin signalname="C_ADDR(0)" name="I4" />
            <blockpin signalname="XLXN_98" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_22">
            <blockpin signalname="GPR_WE" name="I0" />
            <blockpin signalname="XLXN_98" name="I1" />
            <blockpin signalname="RAM_WE" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="GPR_WE">
            <wire x2="400" y1="160" y2="160" x1="320" />
        </branch>
        <branch name="DATA(31:0)">
            <wire x2="400" y1="320" y2="320" x1="320" />
        </branch>
        <branch name="C_ADDR(4:0)">
            <wire x2="400" y1="400" y2="400" x1="320" />
        </branch>
        <branch name="A_ADDR(4:0)">
            <wire x2="400" y1="560" y2="560" x1="320" />
        </branch>
        <branch name="B_ADDR(4:0)">
            <wire x2="400" y1="640" y2="640" x1="320" />
        </branch>
        <branch name="D_ADDR(4:0)">
            <wire x2="400" y1="720" y2="720" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="160" name="GPR_WE" orien="R180" />
        <iomarker fontsize="28" x="320" y="320" name="DATA(31:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="400" name="C_ADDR(4:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="560" name="A_ADDR(4:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="640" name="B_ADDR(4:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="720" name="D_ADDR(4:0)" orien="R180" />
        <branch name="CLK">
            <wire x2="400" y1="80" y2="80" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="80" name="CLK" orien="R180" />
        <instance x="1488" y="384" name="RAM_A" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="160" type="branch" />
            <wire x2="1488" y1="160" y2="160" x1="1472" />
        </branch>
        <branch name="RAM_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="224" type="branch" />
            <wire x2="1488" y1="224" y2="224" x1="1472" />
        </branch>
        <branch name="DATA(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="288" type="branch" />
            <wire x2="1488" y1="288" y2="288" x1="1472" />
        </branch>
        <branch name="XLXN_13(4:0)">
            <wire x2="1280" y1="224" y2="224" x1="1248" />
            <wire x2="1280" y1="224" y2="352" x1="1280" />
            <wire x2="1488" y1="352" y2="352" x1="1280" />
        </branch>
        <branch name="AOUT(31:0)">
            <wire x2="2016" y1="160" y2="160" x1="1872" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="528" type="branch" />
            <wire x2="1488" y1="528" y2="528" x1="1472" />
        </branch>
        <branch name="RAM_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="592" type="branch" />
            <wire x2="1488" y1="592" y2="592" x1="1472" />
        </branch>
        <branch name="DATA(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="656" type="branch" />
            <wire x2="1488" y1="656" y2="656" x1="1472" />
        </branch>
        <branch name="XLXN_19(4:0)">
            <wire x2="1280" y1="592" y2="592" x1="1248" />
            <wire x2="1280" y1="592" y2="720" x1="1280" />
            <wire x2="1488" y1="720" y2="720" x1="1280" />
        </branch>
        <branch name="BOUT(31:0)">
            <wire x2="2016" y1="528" y2="528" x1="1872" />
        </branch>
        <instance x="1488" y="752" name="RAM_B" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2016" y="160" name="AOUT(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2016" y="528" name="BOUT(31:0)" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="896" type="branch" />
            <wire x2="1488" y1="896" y2="896" x1="1472" />
        </branch>
        <branch name="RAM_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="960" type="branch" />
            <wire x2="1488" y1="960" y2="960" x1="1472" />
        </branch>
        <branch name="DATA(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1024" type="branch" />
            <wire x2="1488" y1="1024" y2="1024" x1="1472" />
        </branch>
        <branch name="XLXN_24(4:0)">
            <wire x2="1280" y1="960" y2="960" x1="1248" />
            <wire x2="1280" y1="960" y2="1088" x1="1280" />
            <wire x2="1488" y1="1088" y2="1088" x1="1280" />
        </branch>
        <branch name="DOUT(31:0)">
            <wire x2="1888" y1="896" y2="896" x1="1872" />
            <wire x2="2016" y1="896" y2="896" x1="1888" />
        </branch>
        <instance x="1488" y="1120" name="RAM_D" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2016" y="896" name="DOUT(31:0)" orien="R0" />
        <instance x="864" y="384" name="MUX_A" orien="R0">
        </instance>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="848" y="224" type="branch" />
            <wire x2="864" y1="224" y2="224" x1="848" />
        </branch>
        <branch name="A_ADDR(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="848" y="288" type="branch" />
            <wire x2="864" y1="288" y2="288" x1="848" />
        </branch>
        <branch name="C_ADDR(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="848" y="352" type="branch" />
            <wire x2="864" y1="352" y2="352" x1="848" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="848" y="592" type="branch" />
            <wire x2="864" y1="592" y2="592" x1="848" />
        </branch>
        <branch name="B_ADDR(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="848" y="656" type="branch" />
            <wire x2="864" y1="656" y2="656" x1="848" />
        </branch>
        <branch name="C_ADDR(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="848" y="720" type="branch" />
            <wire x2="864" y1="720" y2="720" x1="848" />
        </branch>
        <instance x="864" y="752" name="MUX_B" orien="R0">
        </instance>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="848" y="960" type="branch" />
            <wire x2="864" y1="960" y2="960" x1="848" />
        </branch>
        <branch name="D_ADDR(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="848" y="1024" type="branch" />
            <wire x2="864" y1="1024" y2="1024" x1="848" />
        </branch>
        <branch name="C_ADDR(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="848" y="1088" type="branch" />
            <wire x2="864" y1="1088" y2="1088" x1="848" />
        </branch>
        <instance x="864" y="1120" name="MUX_D" orien="R0">
        </instance>
        <instance x="240" y="1456" name="XLXI_21" orien="R0" />
        <branch name="XLXN_98">
            <wire x2="528" y1="1264" y2="1264" x1="496" />
        </branch>
        <instance x="528" y="1392" name="XLXI_22" orien="R0" />
        <branch name="RAM_WE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1296" type="branch" />
            <wire x2="800" y1="1296" y2="1296" x1="784" />
        </branch>
        <branch name="GPR_WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="1328" type="branch" />
            <wire x2="528" y1="1328" y2="1328" x1="512" />
        </branch>
        <branch name="C_ADDR(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1136" type="branch" />
            <wire x2="240" y1="1136" y2="1136" x1="224" />
        </branch>
        <branch name="C_ADDR(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1200" type="branch" />
            <wire x2="240" y1="1200" y2="1200" x1="224" />
        </branch>
        <branch name="C_ADDR(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1264" type="branch" />
            <wire x2="240" y1="1264" y2="1264" x1="224" />
        </branch>
        <branch name="C_ADDR(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1328" type="branch" />
            <wire x2="240" y1="1328" y2="1328" x1="224" />
        </branch>
        <branch name="C_ADDR(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="224" y="1392" type="branch" />
            <wire x2="240" y1="1392" y2="1392" x1="224" />
        </branch>
    </sheet>
</drawing>