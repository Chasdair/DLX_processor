<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="BUSY" />
        <signal name="OPCODE(5:0)" />
        <signal name="IN_INIT" />
        <signal name="MW" />
        <signal name="MR" />
        <signal name="GPR_EN" />
        <signal name="PC_EN" />
        <signal name="MUXSEL" />
        <signal name="C_EN" />
        <signal name="B_EN" />
        <signal name="A_EN" />
        <signal name="IR_EN" />
        <signal name="DOUT(31:0)" />
        <signal name="D_OUT_BUS(31:0)" />
        <signal name="ADDR_OUT_BUS(31:0)" />
        <signal name="CLK" />
        <signal name="RST" />
        <signal name="ACK_N" />
        <signal name="STEP_EN" />
        <signal name="D_ADDR(4:0)" />
        <signal name="D_IN_BUS(31:0)" />
        <signal name="AS_N" />
        <signal name="WR_N" />
        <signal name="STOP_N" />
        <signal name="CTRL_ST(2:0)" />
        <signal name="MAC_ST(1:0)" />
        <port polarity="Output" name="BUSY" />
        <port polarity="Output" name="OPCODE(5:0)" />
        <port polarity="Output" name="IN_INIT" />
        <port polarity="Output" name="MW" />
        <port polarity="Output" name="MR" />
        <port polarity="Output" name="GPR_EN" />
        <port polarity="Output" name="PC_EN" />
        <port polarity="Output" name="MUXSEL" />
        <port polarity="Output" name="C_EN" />
        <port polarity="Output" name="B_EN" />
        <port polarity="Output" name="A_EN" />
        <port polarity="Output" name="IR_EN" />
        <port polarity="Output" name="DOUT(31:0)" />
        <port polarity="Output" name="D_OUT_BUS(31:0)" />
        <port polarity="Output" name="ADDR_OUT_BUS(31:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="ACK_N" />
        <port polarity="Input" name="STEP_EN" />
        <port polarity="Input" name="D_ADDR(4:0)" />
        <port polarity="Input" name="D_IN_BUS(31:0)" />
        <port polarity="Output" name="AS_N" />
        <port polarity="Output" name="WR_N" />
        <port polarity="Output" name="STOP_N" />
        <port polarity="Output" name="CTRL_ST(2:0)" />
        <port polarity="Output" name="MAC_ST(1:0)" />
        <blockdef name="DataPath">
            <timestamp>2017-5-19T11:51:51</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="416" y="-748" height="24" />
            <line x2="480" y1="-736" y2="-736" x1="416" />
            <rect width="64" x="416" y="-524" height="24" />
            <line x2="480" y1="-512" y2="-512" x1="416" />
            <rect width="64" x="416" y="-300" height="24" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <rect width="64" x="416" y="-76" height="24" />
            <line x2="480" y1="-64" y2="-64" x1="416" />
            <rect width="352" x="64" y="-768" height="832" />
        </blockdef>
        <blockdef name="MAC">
            <timestamp>2017-5-19T11:28:48</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="DLX_CTRL">
            <timestamp>2017-5-19T11:45:59</timestamp>
            <rect width="288" x="64" y="-768" height="768" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-560" y2="-560" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-736" y2="-736" x1="352" />
            <line x2="416" y1="-672" y2="-672" x1="352" />
            <line x2="416" y1="-608" y2="-608" x1="352" />
            <line x2="416" y1="-480" y2="-480" x1="352" />
            <line x2="416" y1="-416" y2="-416" x1="352" />
            <line x2="416" y1="-352" y2="-352" x1="352" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <block symbolname="DataPath" name="XLXI_3">
            <blockpin signalname="MUXSEL" name="MUX_SEL" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="C_EN" name="C_CE" />
            <blockpin signalname="IR_EN" name="IR_EN" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="B_EN" name="B_CE" />
            <blockpin signalname="A_EN" name="A_CE" />
            <blockpin signalname="PC_EN" name="PC_EN" />
            <blockpin signalname="GPR_EN" name="GPR_EN" />
            <blockpin signalname="D_ADDR(4:0)" name="D_ADDR(4:0)" />
            <blockpin signalname="DOUT(31:0)" name="DOUT(31:0)" />
            <blockpin signalname="D_OUT_BUS(31:0)" name="DOUT_BUS(31:0)" />
            <blockpin signalname="ADDR_OUT_BUS(31:0)" name="ADDR_BUS(31:0)" />
            <blockpin signalname="OPCODE(5:0)" name="OPCODE(5:0)" />
            <blockpin signalname="D_IN_BUS(31:0)" name="D_IN_BUS(31:0)" />
        </block>
        <block symbolname="MAC" name="XLXI_4">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="MR" name="MR" />
            <blockpin signalname="MW" name="MW" />
            <blockpin signalname="ACK_N" name="ACK_N" />
            <blockpin signalname="BUSY" name="BUSY" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="WR_N" name="WR_N" />
            <blockpin signalname="STOP_N" name="STOP_N" />
            <blockpin signalname="MAC_ST(1:0)" name="STATE(1:0)" />
        </block>
        <block symbolname="DLX_CTRL" name="XLXI_8">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="RST" name="rst" />
            <blockpin signalname="BUSY" name="BUSY" />
            <blockpin signalname="STEP_EN" name="STEP_EN" />
            <blockpin signalname="OPCODE(5:0)" name="OPCODE(5:0)" />
            <blockpin signalname="A_EN" name="A_EN" />
            <blockpin signalname="B_EN" name="B_EN" />
            <blockpin signalname="C_EN" name="C_EN" />
            <blockpin signalname="MUXSEL" name="MUXSEL" />
            <blockpin signalname="PC_EN" name="PC_EN" />
            <blockpin signalname="IR_EN" name="IR_EN" />
            <blockpin signalname="GPR_EN" name="GPR_EN" />
            <blockpin signalname="MR" name="MRD" />
            <blockpin signalname="MW" name="MRW" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="CTRL_ST(2:0)" name="STATE(2:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2336" y="1008" name="XLXI_3" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="256" type="branch" />
            <wire x2="896" y1="256" y2="256" x1="880" />
        </branch>
        <branch name="RST">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="432" type="branch" />
            <wire x2="896" y1="432" y2="432" x1="880" />
        </branch>
        <branch name="BUSY">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="608" type="branch" />
            <wire x2="896" y1="608" y2="608" x1="880" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="784" type="branch" />
            <wire x2="896" y1="784" y2="784" x1="880" />
        </branch>
        <branch name="OPCODE(5:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="880" y="960" type="branch" />
            <wire x2="896" y1="960" y2="960" x1="880" />
        </branch>
        <branch name="CTRL_ST(2:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="960" type="branch" />
            <wire x2="1328" y1="960" y2="960" x1="1312" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="896" type="branch" />
            <wire x2="1328" y1="896" y2="896" x1="1312" />
        </branch>
        <branch name="MW">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="832" type="branch" />
            <wire x2="1328" y1="832" y2="832" x1="1312" />
        </branch>
        <branch name="MR">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="768" type="branch" />
            <wire x2="1328" y1="768" y2="768" x1="1312" />
        </branch>
        <branch name="GPR_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="704" type="branch" />
            <wire x2="1328" y1="704" y2="704" x1="1312" />
        </branch>
        <branch name="IR_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="640" type="branch" />
            <wire x2="1328" y1="640" y2="640" x1="1312" />
        </branch>
        <branch name="PC_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="576" type="branch" />
            <wire x2="1328" y1="576" y2="576" x1="1312" />
        </branch>
        <branch name="MUXSEL">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="512" type="branch" />
            <wire x2="1328" y1="512" y2="512" x1="1312" />
        </branch>
        <branch name="C_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="384" type="branch" />
            <wire x2="1328" y1="384" y2="384" x1="1312" />
        </branch>
        <branch name="B_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="320" type="branch" />
            <wire x2="1328" y1="320" y2="320" x1="1312" />
        </branch>
        <branch name="A_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="256" type="branch" />
            <wire x2="1328" y1="256" y2="256" x1="1312" />
        </branch>
        <branch name="MUXSEL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="336" type="branch" />
            <wire x2="2336" y1="336" y2="336" x1="2320" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="400" type="branch" />
            <wire x2="2336" y1="400" y2="400" x1="2320" />
        </branch>
        <branch name="C_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="464" type="branch" />
            <wire x2="2336" y1="464" y2="464" x1="2320" />
        </branch>
        <branch name="IR_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="528" type="branch" />
            <wire x2="2336" y1="528" y2="528" x1="2320" />
        </branch>
        <branch name="RST">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="592" type="branch" />
            <wire x2="2336" y1="592" y2="592" x1="2320" />
        </branch>
        <branch name="B_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="656" type="branch" />
            <wire x2="2336" y1="656" y2="656" x1="2320" />
        </branch>
        <branch name="A_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="720" type="branch" />
            <wire x2="2336" y1="720" y2="720" x1="2320" />
        </branch>
        <branch name="PC_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="784" type="branch" />
            <wire x2="2336" y1="784" y2="784" x1="2320" />
        </branch>
        <branch name="GPR_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="848" type="branch" />
            <wire x2="2336" y1="848" y2="848" x1="2320" />
        </branch>
        <branch name="DOUT(31:0)">
            <wire x2="2832" y1="272" y2="272" x1="2816" />
            <wire x2="3040" y1="272" y2="272" x1="2832" />
        </branch>
        <branch name="D_OUT_BUS(31:0)">
            <wire x2="2832" y1="496" y2="496" x1="2816" />
            <wire x2="3040" y1="496" y2="496" x1="2832" />
        </branch>
        <branch name="ADDR_OUT_BUS(31:0)">
            <wire x2="2832" y1="720" y2="720" x1="2816" />
            <wire x2="3040" y1="720" y2="720" x1="2832" />
        </branch>
        <branch name="OPCODE(5:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2832" y="944" type="branch" />
            <wire x2="2832" y1="944" y2="944" x1="2816" />
        </branch>
        <branch name="D_ADDR(4:0)">
            <wire x2="368" y1="240" y2="240" x1="288" />
        </branch>
        <branch name="D_IN_BUS(31:0)">
            <wire x2="368" y1="272" y2="272" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="240" name="D_ADDR(4:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="272" name="D_IN_BUS(31:0)" orien="R180" />
        <instance x="1616" y="992" name="XLXI_4" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="704" type="branch" />
            <wire x2="1616" y1="704" y2="704" x1="1600" />
        </branch>
        <branch name="RST">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="768" type="branch" />
            <wire x2="1616" y1="768" y2="768" x1="1600" />
        </branch>
        <branch name="MR">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="832" type="branch" />
            <wire x2="1616" y1="832" y2="832" x1="1600" />
        </branch>
        <branch name="MW">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="896" type="branch" />
            <wire x2="1616" y1="896" y2="896" x1="1600" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="960" type="branch" />
            <wire x2="1616" y1="960" y2="960" x1="1600" />
        </branch>
        <branch name="BUSY">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="704" type="branch" />
            <wire x2="2016" y1="704" y2="704" x1="2000" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="768" type="branch" />
            <wire x2="2016" y1="768" y2="768" x1="2000" />
        </branch>
        <branch name="WR_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="832" type="branch" />
            <wire x2="2016" y1="832" y2="832" x1="2000" />
        </branch>
        <branch name="STOP_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="896" type="branch" />
            <wire x2="2016" y1="896" y2="896" x1="2000" />
        </branch>
        <branch name="MAC_ST(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="960" type="branch" />
            <wire x2="2016" y1="960" y2="960" x1="2000" />
        </branch>
        <instance x="896" y="992" name="XLXI_8" orien="R0">
        </instance>
        <branch name="D_ADDR(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="272" type="branch" />
            <wire x2="2336" y1="272" y2="272" x1="2320" />
        </branch>
        <branch name="D_IN_BUS(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="1040" type="branch" />
            <wire x2="2336" y1="1040" y2="1040" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="3040" y="272" name="DOUT(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3040" y="496" name="D_OUT_BUS(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3040" y="720" name="ADDR_OUT_BUS(31:0)" orien="R0" />
        <branch name="WR_N">
            <wire x2="3200" y1="1232" y2="1232" x1="3136" />
        </branch>
        <branch name="AS_N">
            <wire x2="3200" y1="1296" y2="1296" x1="3136" />
        </branch>
        <branch name="IN_INIT">
            <wire x2="3200" y1="1360" y2="1360" x1="3136" />
        </branch>
        <branch name="STOP_N">
            <wire x2="3200" y1="1424" y2="1424" x1="3136" />
        </branch>
        <iomarker fontsize="28" x="3200" y="1232" name="WR_N" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1296" name="AS_N" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1360" name="IN_INIT" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1424" name="STOP_N" orien="R0" />
        <branch name="STEP_EN">
            <wire x2="368" y1="48" y2="48" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="48" name="STEP_EN" orien="R180" />
        <branch name="RST">
            <wire x2="368" y1="80" y2="80" x1="288" />
        </branch>
        <branch name="ACK_N">
            <wire x2="368" y1="112" y2="112" x1="288" />
        </branch>
        <branch name="CLK">
            <wire x2="368" y1="144" y2="144" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="80" name="RST" orien="R180" />
        <iomarker fontsize="28" x="288" y="112" name="ACK_N" orien="R180" />
        <iomarker fontsize="28" x="288" y="144" name="CLK" orien="R180" />
        <branch name="A_EN">
            <wire x2="3200" y1="1504" y2="1504" x1="3136" />
        </branch>
        <branch name="B_EN">
            <wire x2="3200" y1="1568" y2="1568" x1="3136" />
        </branch>
        <branch name="C_EN">
            <wire x2="3200" y1="1632" y2="1632" x1="3136" />
        </branch>
        <branch name="MUXSEL">
            <wire x2="3200" y1="1696" y2="1696" x1="3136" />
        </branch>
        <iomarker fontsize="28" x="3200" y="1504" name="A_EN" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1568" name="B_EN" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1632" name="C_EN" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1696" name="MUXSEL" orien="R0" />
        <branch name="PC_EN">
            <wire x2="3200" y1="1760" y2="1760" x1="3136" />
        </branch>
        <branch name="IR_EN">
            <wire x2="3200" y1="1824" y2="1824" x1="3136" />
        </branch>
        <branch name="GPR_EN">
            <wire x2="3200" y1="1888" y2="1888" x1="3136" />
        </branch>
        <branch name="MR">
            <wire x2="3200" y1="1952" y2="1952" x1="3136" />
        </branch>
        <iomarker fontsize="28" x="3200" y="1760" name="PC_EN" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1824" name="IR_EN" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1888" name="GPR_EN" orien="R0" />
        <iomarker fontsize="28" x="3200" y="1952" name="MR" orien="R0" />
        <branch name="MW">
            <wire x2="3200" y1="2016" y2="2016" x1="3136" />
        </branch>
        <branch name="BUSY">
            <wire x2="3200" y1="2080" y2="2080" x1="3136" />
        </branch>
        <branch name="CTRL_ST(2:0)">
            <wire x2="3200" y1="2144" y2="2144" x1="3136" />
        </branch>
        <branch name="MAC_ST(1:0)">
            <wire x2="3200" y1="2208" y2="2208" x1="3136" />
        </branch>
        <iomarker fontsize="28" x="3200" y="2016" name="MW" orien="R0" />
        <iomarker fontsize="28" x="3200" y="2080" name="BUSY" orien="R0" />
        <iomarker fontsize="28" x="3200" y="2144" name="CTRL_ST(2:0)" orien="R0" />
        <iomarker fontsize="28" x="3200" y="2208" name="MAC_ST(1:0)" orien="R0" />
        <branch name="OPCODE(5:0)">
            <wire x2="3200" y1="2272" y2="2272" x1="3136" />
        </branch>
        <iomarker fontsize="28" x="3200" y="2272" name="OPCODE(5:0)" orien="R0" />
    </sheet>
</drawing>