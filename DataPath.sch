<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="C_DATA(31:0)" />
        <signal name="Imm(15:0)" />
        <signal name="RS1(4:0)" />
        <signal name="RD(4:0)" />
        <signal name="MUX_SEL" />
        <signal name="CLK" />
        <signal name="C_CE" />
        <signal name="IR_EN" />
        <signal name="RST" />
        <signal name="XLXN_51(15:0)" />
        <signal name="DOUT(31:0)" />
        <signal name="BOUT(31:0)" />
        <signal name="XLXN_57(31:0)" />
        <signal name="PC_ADDR(15:0)" />
        <signal name="B_CE" />
        <signal name="A_CE" />
        <signal name="PC_EN" />
        <signal name="GPR_EN" />
        <signal name="D_ADDR(4:0)" />
        <signal name="D_IN_BUS(31:0)" />
        <signal name="DOUT_BUS(31:0)" />
        <signal name="ADDR_BUS(31:0)" />
        <signal name="OPCODE(5:0)" />
        <port polarity="Input" name="MUX_SEL" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="C_CE" />
        <port polarity="Input" name="IR_EN" />
        <port polarity="Input" name="RST" />
        <port polarity="Output" name="DOUT(31:0)" />
        <port polarity="Input" name="B_CE" />
        <port polarity="Input" name="A_CE" />
        <port polarity="Input" name="PC_EN" />
        <port polarity="Input" name="GPR_EN" />
        <port polarity="Input" name="D_ADDR(4:0)" />
        <port polarity="Input" name="D_IN_BUS(31:0)" />
        <port polarity="Output" name="DOUT_BUS(31:0)" />
        <port polarity="Output" name="ADDR_BUS(31:0)" />
        <port polarity="Output" name="OPCODE(5:0)" />
        <blockdef name="IR">
            <timestamp>2017-5-19T9:15:51</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="REG32CE">
            <timestamp>2017-5-19T10:24:40</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="PC">
            <timestamp>2017-5-19T10:45:17</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="GPR">
            <timestamp>2017-6-6T7:22:56</timestamp>
            <rect width="288" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-428" height="24" />
            <line x2="416" y1="-416" y2="-416" x1="352" />
            <rect width="64" x="352" y="-236" height="24" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="MUX16bit">
            <timestamp>2017-5-19T10:30:4</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="MMU">
            <timestamp>2017-5-19T10:19:50</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="REG32CE" name="C_REG">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="C_CE" name="CE" />
            <blockpin signalname="D_IN_BUS(31:0)" name="DIN(31:0)" />
            <blockpin signalname="C_DATA(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="IR" name="XLXI_2">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="IR_EN" name="IR_EN" />
            <blockpin signalname="D_IN_BUS(31:0)" name="DI(31:0)" />
            <blockpin signalname="OPCODE(5:0)" name="OPCODE(5:0)" />
            <blockpin signalname="RS1(4:0)" name="RS1(4:0)" />
            <blockpin signalname="RD(4:0)" name="RD(4:0)" />
            <blockpin signalname="Imm(15:0)" name="Imm(15:0)" />
        </block>
        <block symbolname="PC" name="XLXI_4">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="PC_EN" name="CE" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="PC_ADDR(15:0)" name="PC_ADDR(15:0)" />
        </block>
        <block symbolname="GPR" name="XLXI_5">
            <blockpin signalname="GPR_EN" name="GPR_WE" />
            <blockpin signalname="C_DATA(31:0)" name="DATA(31:0)" />
            <blockpin signalname="RD(4:0)" name="C_ADDR(4:0)" />
            <blockpin signalname="RS1(4:0)" name="A_ADDR(4:0)" />
            <blockpin signalname="RD(4:0)" name="B_ADDR(4:0)" />
            <blockpin signalname="D_ADDR(4:0)" name="D_ADDR(4:0)" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_57(31:0)" name="AOUT(31:0)" />
            <blockpin signalname="BOUT(31:0)" name="BOUT(31:0)" />
            <blockpin signalname="DOUT(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="MUX16bit" name="XLXI_13">
            <blockpin signalname="MUX_SEL" name="sel" />
            <blockpin signalname="Imm(15:0)" name="A(15:0)" />
            <blockpin signalname="PC_ADDR(15:0)" name="B(15:0)" />
            <blockpin signalname="XLXN_51(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="REG32CE" name="B_REG">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="B_CE" name="CE" />
            <blockpin signalname="BOUT(31:0)" name="DIN(31:0)" />
            <blockpin signalname="DOUT_BUS(31:0)" name="DOUT(31:0)" />
        </block>
        <block symbolname="MMU" name="XLXI_14">
            <blockpin signalname="XLXN_51(15:0)" name="AI(15:0)" />
            <blockpin signalname="ADDR_BUS(31:0)" name="AO(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="624" y="1248" name="XLXI_4" orien="R0">
        </instance>
        <instance x="624" y="912" name="XLXI_2" orien="R0">
        </instance>
        <branch name="C_DATA(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="352" type="branch" />
            <wire x2="1024" y1="352" y2="352" x1="1008" />
        </branch>
        <branch name="OPCODE(5:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="688" type="branch" />
            <wire x2="1024" y1="688" y2="688" x1="1008" />
        </branch>
        <branch name="RS1(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="752" type="branch" />
            <wire x2="1024" y1="752" y2="752" x1="1008" />
        </branch>
        <branch name="RD(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="816" type="branch" />
            <wire x2="1024" y1="816" y2="816" x1="1008" />
        </branch>
        <branch name="Imm(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="880" type="branch" />
            <wire x2="1024" y1="880" y2="880" x1="1008" />
        </branch>
        <instance x="1520" y="816" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1536" y="1184" name="XLXI_13" orien="R0">
        </instance>
        <branch name="D_ADDR(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="720" type="branch" />
            <wire x2="1520" y1="720" y2="720" x1="1504" />
        </branch>
        <branch name="PC_ADDR(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1152" type="branch" />
            <wire x2="1536" y1="1152" y2="1152" x1="1520" />
        </branch>
        <branch name="Imm(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1088" type="branch" />
            <wire x2="1536" y1="1088" y2="1088" x1="1520" />
        </branch>
        <branch name="MUX_SEL">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1024" type="branch" />
            <wire x2="1536" y1="1024" y2="1024" x1="1520" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="784" type="branch" />
            <wire x2="1520" y1="784" y2="784" x1="1504" />
        </branch>
        <branch name="RD(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="656" type="branch" />
            <wire x2="1520" y1="656" y2="656" x1="1504" />
        </branch>
        <branch name="RS1(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="592" type="branch" />
            <wire x2="1520" y1="592" y2="592" x1="1504" />
        </branch>
        <branch name="RD(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="528" type="branch" />
            <wire x2="1520" y1="528" y2="528" x1="1504" />
        </branch>
        <branch name="C_DATA(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="464" type="branch" />
            <wire x2="1520" y1="464" y2="464" x1="1504" />
        </branch>
        <branch name="GPR_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="400" type="branch" />
            <wire x2="1520" y1="400" y2="400" x1="1504" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="352" type="branch" />
            <wire x2="624" y1="352" y2="352" x1="608" />
        </branch>
        <branch name="C_CE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="416" type="branch" />
            <wire x2="624" y1="416" y2="416" x1="608" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="688" type="branch" />
            <wire x2="624" y1="688" y2="688" x1="608" />
        </branch>
        <branch name="IR_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="784" type="branch" />
            <wire x2="624" y1="784" y2="784" x1="608" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="1088" type="branch" />
            <wire x2="624" y1="1088" y2="1088" x1="608" />
        </branch>
        <branch name="PC_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="1152" type="branch" />
            <wire x2="624" y1="1152" y2="1152" x1="608" />
        </branch>
        <branch name="RST">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="1216" type="branch" />
            <wire x2="624" y1="1216" y2="1216" x1="608" />
        </branch>
        <branch name="XLXN_51(15:0)">
            <wire x2="1936" y1="1024" y2="1024" x1="1920" />
            <wire x2="2304" y1="1024" y2="1024" x1="1936" />
        </branch>
        <branch name="DOUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="784" type="branch" />
            <wire x2="1952" y1="784" y2="784" x1="1936" />
        </branch>
        <branch name="BOUT(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="592" type="branch" />
            <wire x2="1952" y1="592" y2="592" x1="1936" />
        </branch>
        <branch name="XLXN_57(31:0)">
            <wire x2="1952" y1="400" y2="400" x1="1936" />
        </branch>
        <branch name="PC_ADDR(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1280" type="branch" />
            <wire x2="1024" y1="1280" y2="1280" x1="1008" />
        </branch>
        <instance x="2304" y="704" name="B_REG" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="-104" type="instance" />
        </instance>
        <instance x="2304" y="1056" name="XLXI_14" orien="R0">
        </instance>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="544" type="branch" />
            <wire x2="2304" y1="544" y2="544" x1="2288" />
        </branch>
        <branch name="B_CE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="608" type="branch" />
            <wire x2="2304" y1="608" y2="608" x1="2288" />
        </branch>
        <branch name="BOUT(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2288" y="672" type="branch" />
            <wire x2="2304" y1="672" y2="672" x1="2288" />
        </branch>
        <branch name="DOUT_BUS(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="544" type="branch" />
            <wire x2="2704" y1="544" y2="544" x1="2688" />
        </branch>
        <branch name="ADDR_BUS(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="1024" type="branch" />
            <wire x2="2704" y1="1024" y2="1024" x1="2688" />
        </branch>
        <branch name="RST">
            <wire x2="288" y1="128" y2="128" x1="208" />
        </branch>
        <branch name="A_CE">
            <wire x2="288" y1="160" y2="160" x1="208" />
        </branch>
        <branch name="CLK">
            <wire x2="224" y1="96" y2="96" x1="208" />
            <wire x2="288" y1="96" y2="96" x1="224" />
        </branch>
        <branch name="B_CE">
            <wire x2="288" y1="192" y2="192" x1="208" />
        </branch>
        <branch name="C_CE">
            <wire x2="288" y1="224" y2="224" x1="208" />
        </branch>
        <branch name="PC_EN">
            <wire x2="288" y1="256" y2="256" x1="208" />
        </branch>
        <branch name="IR_EN">
            <wire x2="288" y1="288" y2="288" x1="208" />
        </branch>
        <branch name="GPR_EN">
            <wire x2="288" y1="320" y2="320" x1="208" />
        </branch>
        <branch name="MUX_SEL">
            <wire x2="288" y1="352" y2="352" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="96" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="208" y="128" name="RST" orien="R180" />
        <iomarker fontsize="28" x="208" y="160" name="A_CE" orien="R180" />
        <iomarker fontsize="28" x="208" y="192" name="B_CE" orien="R180" />
        <iomarker fontsize="28" x="208" y="224" name="C_CE" orien="R180" />
        <iomarker fontsize="28" x="208" y="256" name="PC_EN" orien="R180" />
        <iomarker fontsize="28" x="208" y="288" name="IR_EN" orien="R180" />
        <iomarker fontsize="28" x="208" y="320" name="GPR_EN" orien="R180" />
        <iomarker fontsize="28" x="208" y="352" name="MUX_SEL" orien="R180" />
        <branch name="D_ADDR(4:0)">
            <wire x2="288" y1="544" y2="544" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="544" name="D_ADDR(4:0)" orien="R180" />
        <branch name="D_IN_BUS(31:0)">
            <wire x2="288" y1="512" y2="512" x1="256" />
        </branch>
        <iomarker fontsize="28" x="256" y="512" name="D_IN_BUS(31:0)" orien="R180" />
        <branch name="OPCODE(5:0)">
            <wire x2="3232" y1="176" y2="176" x1="3152" />
        </branch>
        <branch name="DOUT(31:0)">
            <wire x2="3232" y1="256" y2="256" x1="3152" />
        </branch>
        <branch name="DOUT_BUS(31:0)">
            <wire x2="3232" y1="336" y2="336" x1="3152" />
        </branch>
        <branch name="ADDR_BUS(31:0)">
            <wire x2="3232" y1="416" y2="416" x1="3152" />
        </branch>
        <iomarker fontsize="28" x="3232" y="176" name="OPCODE(5:0)" orien="R0" />
        <iomarker fontsize="28" x="3232" y="256" name="DOUT(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3232" y="336" name="DOUT_BUS(31:0)" orien="R0" />
        <iomarker fontsize="28" x="3232" y="416" name="ADDR_BUS(31:0)" orien="R0" />
        <instance x="624" y="512" name="C_REG" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="-104" type="instance" />
        </instance>
        <branch name="D_IN_BUS(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="480" type="branch" />
            <wire x2="624" y1="480" y2="480" x1="608" />
        </branch>
        <branch name="D_IN_BUS(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="880" type="branch" />
            <wire x2="624" y1="880" y2="880" x1="608" />
        </branch>
    </sheet>
</drawing>