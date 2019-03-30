<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Card_Sel" />
        <signal name="Rsel" />
        <signal name="AI(9:0)" />
        <signal name="DO(31:0)" />
        <signal name="WR_IN_N" />
        <signal name="RACK_N" />
        <signal name="MAO(31:0)" />
        <signal name="MDO(31:0)" />
        <signal name="SACK_N" />
        <signal name="IN_INIT" />
        <signal name="CLK" />
        <signal name="STEP_EN" />
        <signal name="AS_N" />
        <signal name="WR_OUT_N" />
        <signal name="RESET" />
        <signal name="R_DO(31:0)" />
        <signal name="sdClk_o" />
        <signal name="sdBs_o(1:0)" />
        <signal name="sdDqml_o" />
        <signal name="sdDqmh_o" />
        <signal name="sdWe_bo" />
        <signal name="sdCas_bo" />
        <signal name="sdRas_bo" />
        <signal name="sdCe_bo" />
        <signal name="sdCke_o" />
        <signal name="fpgaClk_i" />
        <signal name="sdClkFb_i" />
        <signal name="sdData_io(15:0)" />
        <signal name="sdAddr_o(12:0)" />
        <signal name="SDO(31:0)" />
        <signal name="ACK_N" />
        <signal name="AI(4:0)" />
        <signal name="Debug_D(31:0)" />
        <signal name="MON_DATA(0)" />
        <signal name="MON_DATA(22)" />
        <signal name="MON_DATA(1)" />
        <signal name="MON_DATA(12)" />
        <signal name="MON_DATA(13)" />
        <signal name="MON_DATA(26)" />
        <signal name="MON_DATA(25)" />
        <signal name="MON_DATA(27)" />
        <signal name="MON_DATA(2)" />
        <signal name="MON_DATA(20)" />
        <signal name="MON_DATA(21)" />
        <signal name="MON_DATA(18)" />
        <signal name="MON_DATA(19)" />
        <signal name="MON_DATA(16)" />
        <signal name="MON_DATA(15)" />
        <signal name="MON_DATA(14)" />
        <signal name="MON_DATA(17)" />
        <signal name="MON_DATA(24:23)" />
        <signal name="MON_DATA(5:3)" />
        <signal name="MON_DATA(31:0)" />
        <signal name="STOP_N" />
        <signal name="MON_DATA(11:6)" />
        <port polarity="Output" name="sdClk_o" />
        <port polarity="Output" name="sdBs_o(1:0)" />
        <port polarity="Output" name="sdDqml_o" />
        <port polarity="Output" name="sdDqmh_o" />
        <port polarity="Output" name="sdWe_bo" />
        <port polarity="Output" name="sdCas_bo" />
        <port polarity="Output" name="sdRas_bo" />
        <port polarity="Output" name="sdCe_bo" />
        <port polarity="Output" name="sdCke_o" />
        <port polarity="Input" name="fpgaClk_i" />
        <port polarity="Input" name="sdClkFb_i" />
        <port polarity="BiDirectional" name="sdData_io(15:0)" />
        <port polarity="Output" name="sdAddr_o(12:0)" />
        <blockdef name="IO_LOGIC_U">
            <timestamp>2015-7-8T11:14:45</timestamp>
            <rect width="304" x="64" y="-1280" height="1280" />
            <line x2="0" y1="-1248" y2="-1248" x1="64" />
            <line x2="0" y1="-1136" y2="-1136" x1="64" />
            <line x2="0" y1="-1024" y2="-1024" x1="64" />
            <line x2="0" y1="-912" y2="-912" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-688" y2="-688" x1="64" />
            <line x2="0" y1="-576" y2="-576" x1="64" />
            <rect width="64" x="0" y="-476" height="24" />
            <line x2="0" y1="-464" y2="-464" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-252" height="24" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="432" y1="-1248" y2="-1248" x1="368" />
            <line x2="432" y1="-1184" y2="-1184" x1="368" />
            <line x2="432" y1="-1120" y2="-1120" x1="368" />
            <line x2="432" y1="-1056" y2="-1056" x1="368" />
            <line x2="432" y1="-992" y2="-992" x1="368" />
            <line x2="432" y1="-928" y2="-928" x1="368" />
            <line x2="432" y1="-864" y2="-864" x1="368" />
            <line x2="432" y1="-800" y2="-800" x1="368" />
            <line x2="432" y1="-736" y2="-736" x1="368" />
            <line x2="432" y1="-672" y2="-672" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <rect width="64" x="368" y="-300" height="24" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="SlaveMonitor">
            <timestamp>2017-5-9T13:44:38</timestamp>
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-684" height="24" />
            <line x2="448" y1="-672" y2="-672" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <rect width="320" x="64" y="-704" height="960" />
        </blockdef>
        <blockdef name="LoadStoreMac">
            <timestamp>2017-6-6T7:2:11</timestamp>
            <rect width="64" x="496" y="1044" height="24" />
            <line x2="560" y1="1056" y2="1056" x1="496" />
            <line x2="560" y1="288" y2="288" x1="496" />
            <line x2="560" y1="352" y2="352" x1="496" />
            <line x2="560" y1="416" y2="416" x1="496" />
            <line x2="560" y1="480" y2="480" x1="496" />
            <line x2="560" y1="544" y2="544" x1="496" />
            <line x2="560" y1="608" y2="608" x1="496" />
            <line x2="560" y1="672" y2="672" x1="496" />
            <line x2="560" y1="736" y2="736" x1="496" />
            <line x2="560" y1="800" y2="800" x1="496" />
            <line x2="560" y1="864" y2="864" x1="496" />
            <rect width="64" x="496" y="916" height="24" />
            <line x2="560" y1="928" y2="928" x1="496" />
            <rect width="64" x="496" y="980" height="24" />
            <line x2="560" y1="992" y2="992" x1="496" />
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
            <rect width="432" x="64" y="-384" height="1472" />
        </blockdef>
        <block symbolname="IO_LOGIC_U" name="XLXI_23">
            <blockpin signalname="AS_N" name="AS_N_i" />
            <blockpin signalname="fpgaClk_i" name="fpgaClk_i" />
            <blockpin signalname="IN_INIT" name="in_init_i" />
            <blockpin signalname="RACK_N" name="RACK_N_i" />
            <blockpin signalname="SACK_N" name="SACK_N_i" />
            <blockpin signalname="sdClkFb_i" name="sdClkFb_i" />
            <blockpin signalname="WR_OUT_N" name="WR_N_i" />
            <blockpin signalname="MAO(31:0)" name="MA_i(31:0)" />
            <blockpin signalname="MDO(31:0)" name="MD_i(31:0)" />
            <blockpin signalname="R_DO(31:0)" name="RD_i(31:0)" />
            <blockpin signalname="SDO(31:0)" name="SD_i(31:0)" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="ACK_N" name="MACK_N_o" />
            <blockpin signalname="RESET" name="RESET" />
            <blockpin signalname="Rsel" name="Rsel_o" />
            <blockpin signalname="sdCas_bo" name="sdCas_bo" />
            <blockpin signalname="sdCe_bo" name="sdCe_bo" />
            <blockpin signalname="sdCke_o" name="sdCke_o" />
            <blockpin signalname="sdClk_o" name="sdClk_o" />
            <blockpin signalname="sdDqmh_o" name="sdDqmh_o" />
            <blockpin signalname="sdDqml_o" name="sdDqml_o" />
            <blockpin signalname="sdRas_bo" name="sdRas_bo" />
            <blockpin signalname="sdWe_bo" name="sdWe_bo" />
            <blockpin signalname="Card_Sel" name="Ssel_o" />
            <blockpin signalname="STEP_EN" name="step_en_o" />
            <blockpin signalname="WR_IN_N" name="WR_N_o" />
            <blockpin signalname="AI(9:0)" name="A_o(9:0)" />
            <blockpin signalname="DO(31:0)" name="DO(31:0)" />
            <blockpin signalname="sdAddr_o(12:0)" name="sdAddr_o(12:0)" />
            <blockpin signalname="sdBs_o(1:0)" name="sdBs_o(1:0)" />
            <blockpin signalname="sdData_io(15:0)" name="sdData_io(15:0)" />
        </block>
        <block symbolname="buf" name="XLXI_70">
            <blockpin signalname="RESET" name="I" />
            <blockpin signalname="MON_DATA(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_71">
            <blockpin signalname="ACK_N" name="I" />
            <blockpin signalname="MON_DATA(22)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_72">
            <blockpin signalname="STEP_EN" name="I" />
            <blockpin signalname="MON_DATA(1)" name="O" />
        </block>
        <block symbolname="LoadStoreMac" name="XLXI_73">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RESET" name="RST" />
            <blockpin signalname="ACK_N" name="ACK_N" />
            <blockpin signalname="STEP_EN" name="STEP_EN" />
            <blockpin signalname="AI(4:0)" name="D_ADDR(4:0)" />
            <blockpin signalname="DO(31:0)" name="D_IN_BUS(31:0)" />
            <blockpin signalname="MON_DATA(2)" name="BUSY" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="MON_DATA(20)" name="MW" />
            <blockpin signalname="MON_DATA(21)" name="MR" />
            <blockpin signalname="MON_DATA(18)" name="GPR_EN" />
            <blockpin signalname="MON_DATA(19)" name="PC_EN" />
            <blockpin signalname="MON_DATA(13)" name="MUXSEL" />
            <blockpin signalname="MON_DATA(16)" name="C_EN" />
            <blockpin signalname="MON_DATA(15)" name="B_EN" />
            <blockpin signalname="MON_DATA(14)" name="A_EN" />
            <blockpin signalname="MON_DATA(17)" name="IR_EN" />
            <blockpin signalname="Debug_D(31:0)" name="DOUT(31:0)" />
            <blockpin signalname="MDO(31:0)" name="D_OUT_BUS(31:0)" />
            <blockpin signalname="MAO(31:0)" name="ADDR_OUT_BUS(31:0)" />
            <blockpin signalname="AS_N" name="AS_N" />
            <blockpin signalname="WR_OUT_N" name="WR_N" />
            <blockpin signalname="STOP_N" name="STOP_N" />
            <blockpin signalname="MON_DATA(24:23)" name="MAC_ST(1:0)" />
            <blockpin signalname="MON_DATA(5:3)" name="CTRL_ST(2:0)" />
            <blockpin signalname="MON_DATA(11:6)" name="OPCODE(5:0)" />
        </block>
        <block symbolname="SlaveMonitor" name="XLXI_64">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="AI(9:0)" name="AI(9:0)" />
            <blockpin signalname="Debug_D(31:0)" name="M3(31:0)" />
            <blockpin signalname="MAO(31:0)" name="M4(31:0)" />
            <blockpin signalname="WR_IN_N" name="WR_IN_N" />
            <blockpin signalname="Card_Sel" name="CARDSEL" />
            <blockpin signalname="STEP_EN" name="STEP_EN" />
            <blockpin signalname="IN_INIT" name="IN_INIT" />
            <blockpin signalname="MON_DATA(31:0)" name="MON_DATA(31:0)" />
            <blockpin signalname="STOP_N" name="STOP_N" />
            <blockpin signalname="SACK_N" name="SACK_N" />
            <blockpin signalname="SDO(31:0)" name="SDO(31:0)" />
        </block>
        <block symbolname="buf" name="XLXI_74">
            <blockpin signalname="IN_INIT" name="I" />
            <blockpin signalname="MON_DATA(12)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_75">
            <blockpin signalname="AS_N" name="I" />
            <blockpin signalname="MON_DATA(26)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_76">
            <blockpin signalname="STOP_N" name="I" />
            <blockpin signalname="MON_DATA(27)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_77">
            <blockpin signalname="WR_OUT_N" name="I" />
            <blockpin signalname="MON_DATA(25)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="208" type="branch" />
            <wire x2="432" y1="208" y2="208" x1="240" />
        </branch>
        <branch name="WR_OUT_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="256" type="branch" />
            <wire x2="432" y1="256" y2="256" x1="240" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="304" type="branch" />
            <wire x2="432" y1="304" y2="304" x1="240" />
        </branch>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="352" type="branch" />
            <wire x2="432" y1="352" y2="352" x1="240" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="400" type="branch" />
            <wire x2="432" y1="400" y2="400" x1="240" />
        </branch>
        <text style="fontsize:32;fontname:Arial" x="268" y="488">Master I/O</text>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="576" type="branch" />
            <wire x2="448" y1="576" y2="576" x1="256" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="624" type="branch" />
            <wire x2="448" y1="624" y2="624" x1="256" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="672" type="branch" />
            <wire x2="448" y1="672" y2="672" x1="256" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="720" type="branch" />
            <wire x2="448" y1="720" y2="720" x1="256" />
        </branch>
        <text style="fontsize:32;fontname:Arial" x="284" y="784">Control I/O</text>
        <branch name="Card_Sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1344" type="branch" />
            <wire x2="448" y1="1344" y2="1344" x1="240" />
        </branch>
        <branch name="AI(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1296" type="branch" />
            <wire x2="448" y1="1296" y2="1296" x1="240" />
        </branch>
        <branch name="WR_IN_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1248" type="branch" />
            <wire x2="448" y1="1248" y2="1248" x1="240" />
        </branch>
        <branch name="SDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1200" type="branch" />
            <wire x2="448" y1="1200" y2="1200" x1="240" />
        </branch>
        <branch name="SACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1152" type="branch" />
            <wire x2="448" y1="1152" y2="1152" x1="240" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="896" type="branch" />
            <wire x2="448" y1="896" y2="896" x1="240" />
        </branch>
        <text style="fontsize:32;fontname:Arial" x="256" y="956">Bus data O</text>
        <text style="fontsize:32;fontname:Arial" x="280" y="1404">Slave I/O</text>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="176" type="branch" />
            <wire x2="1056" y1="176" y2="176" x1="1040" />
        </branch>
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="240" type="branch" />
            <wire x2="1056" y1="240" y2="240" x1="1040" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="304" type="branch" />
            <wire x2="1056" y1="304" y2="304" x1="1040" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="368" type="branch" />
            <wire x2="1056" y1="368" y2="368" x1="1040" />
        </branch>
        <branch name="AI(4:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="432" type="branch" />
            <wire x2="1056" y1="432" y2="432" x1="1040" />
        </branch>
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="496" type="branch" />
            <wire x2="1056" y1="496" y2="496" x1="1040" />
        </branch>
        <branch name="Debug_D(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="176" type="branch" />
            <wire x2="1632" y1="176" y2="176" x1="1616" />
        </branch>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="336" type="branch" />
            <wire x2="1632" y1="336" y2="336" x1="1616" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="496" type="branch" />
            <wire x2="1632" y1="496" y2="496" x1="1616" />
        </branch>
        <instance x="2720" y="544" name="XLXI_70" orien="R0" />
        <instance x="2720" y="640" name="XLXI_71" orien="R0" />
        <branch name="RESET">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="512" type="branch" />
            <wire x2="2720" y1="512" y2="512" x1="2704" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="608" type="branch" />
            <wire x2="2720" y1="608" y2="608" x1="2704" />
        </branch>
        <branch name="MON_DATA(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="512" type="branch" />
            <wire x2="2960" y1="512" y2="512" x1="2944" />
        </branch>
        <branch name="MON_DATA(22)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="608" type="branch" />
            <wire x2="2960" y1="608" y2="608" x1="2944" />
        </branch>
        <instance x="2720" y="752" name="XLXI_72" orien="R0" />
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="720" type="branch" />
            <wire x2="2720" y1="720" y2="720" x1="2704" />
        </branch>
        <branch name="MON_DATA(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="720" type="branch" />
            <wire x2="2960" y1="720" y2="720" x1="2944" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="560" type="branch" />
            <wire x2="1632" y1="560" y2="560" x1="1616" />
        </branch>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="624" type="branch" />
            <wire x2="1632" y1="624" y2="624" x1="1616" />
        </branch>
        <branch name="WR_OUT_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="688" type="branch" />
            <wire x2="1632" y1="688" y2="688" x1="1616" />
        </branch>
        <branch name="STOP_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="752" type="branch" />
            <wire x2="1632" y1="752" y2="752" x1="1616" />
        </branch>
        <branch name="MON_DATA(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="816" type="branch" />
            <wire x2="1632" y1="816" y2="816" x1="1616" />
        </branch>
        <branch name="MON_DATA(20)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="880" type="branch" />
            <wire x2="1632" y1="880" y2="880" x1="1616" />
        </branch>
        <branch name="MON_DATA(21)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="944" type="branch" />
            <wire x2="1632" y1="944" y2="944" x1="1616" />
        </branch>
        <branch name="MON_DATA(18)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="1008" type="branch" />
            <wire x2="1632" y1="1008" y2="1008" x1="1616" />
        </branch>
        <branch name="MON_DATA(19)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="1072" type="branch" />
            <wire x2="1632" y1="1072" y2="1072" x1="1616" />
        </branch>
        <branch name="MON_DATA(13)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="1136" type="branch" />
            <wire x2="1632" y1="1136" y2="1136" x1="1616" />
        </branch>
        <branch name="MON_DATA(16)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="1200" type="branch" />
            <wire x2="1632" y1="1200" y2="1200" x1="1616" />
        </branch>
        <branch name="MON_DATA(15)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="1264" type="branch" />
            <wire x2="1632" y1="1264" y2="1264" x1="1616" />
        </branch>
        <branch name="MON_DATA(14)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="1328" type="branch" />
            <wire x2="1632" y1="1328" y2="1328" x1="1616" />
        </branch>
        <branch name="MON_DATA(17)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="1392" type="branch" />
            <wire x2="1632" y1="1392" y2="1392" x1="1616" />
        </branch>
        <branch name="MON_DATA(24:23)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="1456" type="branch" />
            <wire x2="1632" y1="1456" y2="1456" x1="1616" />
        </branch>
        <branch name="MON_DATA(5:3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="1520" type="branch" />
            <wire x2="1632" y1="1520" y2="1520" x1="1616" />
        </branch>
        <instance x="1056" y="528" name="XLXI_73" orien="R0">
        </instance>
        <branch name="SACK_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="2384" type="branch" />
            <wire x2="1632" y1="2384" y2="2384" x1="1552" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="2064" type="branch" />
            <wire x2="1104" y1="2064" y2="2064" x1="1040" />
        </branch>
        <branch name="WR_IN_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="2320" type="branch" />
            <wire x2="1072" y1="2320" y2="2320" x1="1056" />
            <wire x2="1104" y1="2320" y2="2320" x1="1072" />
        </branch>
        <branch name="Card_Sel">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="2384" type="branch" />
            <wire x2="1104" y1="2384" y2="2384" x1="1056" />
        </branch>
        <branch name="AI(9:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="2128" type="branch" />
            <wire x2="1104" y1="2128" y2="2128" x1="1024" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1744" type="branch" />
            <wire x2="1104" y1="1744" y2="1744" x1="1088" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="2000" type="branch" />
            <wire x2="1104" y1="2000" y2="2000" x1="1088" />
        </branch>
        <branch name="Debug_D(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="2448" type="branch" />
            <wire x2="1088" y1="2448" y2="2448" x1="1040" />
            <wire x2="1104" y1="2448" y2="2448" x1="1088" />
        </branch>
        <branch name="MON_DATA(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="2576" type="branch" />
            <wire x2="1104" y1="2576" y2="2576" x1="1040" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="2512" type="branch" />
            <wire x2="1104" y1="2512" y2="2512" x1="1040" />
        </branch>
        <branch name="STOP_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="2640" type="branch" />
            <wire x2="1104" y1="2640" y2="2640" x1="1040" />
        </branch>
        <branch name="SDO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1568" y="1744" type="branch" />
            <wire x2="1568" y1="1744" y2="1744" x1="1552" />
        </branch>
        <instance x="1104" y="2416" name="XLXI_64" orien="R0">
        </instance>
        <branch name="MON_DATA(11:6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="1584" type="branch" />
            <wire x2="1632" y1="1584" y2="1584" x1="1616" />
        </branch>
        <instance x="2720" y="864" name="XLXI_74" orien="R0" />
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="832" type="branch" />
            <wire x2="2720" y1="832" y2="832" x1="2704" />
        </branch>
        <branch name="MON_DATA(12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="832" type="branch" />
            <wire x2="2960" y1="832" y2="832" x1="2944" />
        </branch>
        <instance x="2720" y="976" name="XLXI_75" orien="R0" />
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="944" type="branch" />
            <wire x2="2720" y1="944" y2="944" x1="2704" />
        </branch>
        <branch name="MON_DATA(26)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="944" type="branch" />
            <wire x2="2960" y1="944" y2="944" x1="2944" />
        </branch>
        <instance x="2720" y="1104" name="XLXI_76" orien="R0" />
        <branch name="STOP_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="1072" type="branch" />
            <wire x2="2720" y1="1072" y2="1072" x1="2704" />
        </branch>
        <branch name="MON_DATA(27)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="1072" type="branch" />
            <wire x2="2960" y1="1072" y2="1072" x1="2944" />
        </branch>
        <instance x="2720" y="1232" name="XLXI_77" orien="R0" />
        <branch name="WR_OUT_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2704" y="1200" type="branch" />
            <wire x2="2720" y1="1200" y2="1200" x1="2704" />
        </branch>
        <branch name="MON_DATA(25)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="1200" type="branch" />
            <wire x2="2960" y1="1200" y2="1200" x1="2944" />
        </branch>
    </sheet>
    <sheet sheetnum="2" width="3520" height="2720">
        <branch name="DO(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1632" type="branch" />
            <wire x2="2240" y1="1632" y2="1632" x1="1840" />
        </branch>
        <branch name="AI(9:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1568" type="branch" />
            <wire x2="2240" y1="1568" y2="1568" x1="1840" />
        </branch>
        <branch name="sdClk_o">
            <wire x2="1856" y1="1056" y2="1056" x1="1840" />
            <wire x2="1904" y1="1056" y2="1056" x1="1856" />
        </branch>
        <branch name="sdBs_o(1:0)">
            <wire x2="1856" y1="1760" y2="1760" x1="1840" />
            <wire x2="1904" y1="1760" y2="1760" x1="1856" />
        </branch>
        <branch name="sdDqml_o">
            <wire x2="1856" y1="1184" y2="1184" x1="1840" />
            <wire x2="1904" y1="1184" y2="1184" x1="1856" />
        </branch>
        <branch name="sdDqmh_o">
            <wire x2="1856" y1="1120" y2="1120" x1="1840" />
            <wire x2="1904" y1="1120" y2="1120" x1="1856" />
        </branch>
        <branch name="sdWe_bo">
            <wire x2="1856" y1="1312" y2="1312" x1="1840" />
            <wire x2="1904" y1="1312" y2="1312" x1="1856" />
        </branch>
        <branch name="sdCas_bo">
            <wire x2="1856" y1="864" y2="864" x1="1840" />
            <wire x2="1888" y1="864" y2="864" x1="1856" />
        </branch>
        <branch name="sdRas_bo">
            <wire x2="1856" y1="1248" y2="1248" x1="1840" />
            <wire x2="1904" y1="1248" y2="1248" x1="1856" />
        </branch>
        <branch name="sdCe_bo">
            <wire x2="1856" y1="928" y2="928" x1="1840" />
            <wire x2="1888" y1="928" y2="928" x1="1856" />
        </branch>
        <branch name="sdCke_o">
            <wire x2="1856" y1="992" y2="992" x1="1840" />
            <wire x2="1888" y1="992" y2="992" x1="1856" />
        </branch>
        <branch name="IN_INIT">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="832" type="branch" />
            <wire x2="1408" y1="832" y2="832" x1="1360" />
        </branch>
        <branch name="fpgaClk_i">
            <wire x2="1408" y1="720" y2="720" x1="1376" />
        </branch>
        <branch name="MAO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1392" type="branch" />
            <wire x2="1408" y1="1392" y2="1392" x1="1344" />
        </branch>
        <branch name="R_DO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1616" type="branch" />
            <wire x2="1408" y1="1616" y2="1616" x1="1328" />
        </branch>
        <instance x="1408" y="1856" name="XLXI_23" orien="R0">
        </instance>
        <branch name="AS_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="608" type="branch" />
            <wire x2="1408" y1="608" y2="608" x1="1360" />
        </branch>
        <branch name="WR_OUT_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1280" type="branch" />
            <wire x2="1408" y1="1280" y2="1280" x1="1344" />
        </branch>
        <branch name="RACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="944" type="branch" />
            <wire x2="1408" y1="944" y2="944" x1="1360" />
        </branch>
        <branch name="SACK_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1056" type="branch" />
            <wire x2="1408" y1="1056" y2="1056" x1="1344" />
        </branch>
        <branch name="MDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1504" type="branch" />
            <wire x2="1408" y1="1504" y2="1504" x1="1344" />
        </branch>
        <branch name="SDO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1728" type="branch" />
            <wire x2="1408" y1="1728" y2="1728" x1="1344" />
        </branch>
        <branch name="sdClkFb_i">
            <wire x2="1408" y1="1168" y2="1168" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1360" y="1168" name="sdClkFb_i" orien="R180" />
        <iomarker fontsize="28" x="1376" y="720" name="fpgaClk_i" orien="R180" />
        <branch name="RESET">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="736" type="branch" />
            <wire x2="1904" y1="736" y2="736" x1="1840" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="608" type="branch" />
            <wire x2="1904" y1="608" y2="608" x1="1840" />
        </branch>
        <branch name="STEP_EN">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="1440" type="branch" />
            <wire x2="1920" y1="1440" y2="1440" x1="1840" />
        </branch>
        <branch name="WR_IN_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1504" type="branch" />
            <wire x2="1936" y1="1504" y2="1504" x1="1840" />
        </branch>
        <branch name="ACK_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="672" type="branch" />
            <wire x2="1936" y1="672" y2="672" x1="1840" />
        </branch>
        <branch name="Rsel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="800" type="branch" />
            <wire x2="1936" y1="800" y2="800" x1="1840" />
        </branch>
        <branch name="Card_Sel">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1376" type="branch" />
            <wire x2="1936" y1="1376" y2="1376" x1="1840" />
        </branch>
        <branch name="sdData_io(15:0)">
            <wire x2="1856" y1="1824" y2="1824" x1="1840" />
            <wire x2="1904" y1="1824" y2="1824" x1="1856" />
        </branch>
        <branch name="sdAddr_o(12:0)">
            <wire x2="1904" y1="1696" y2="1696" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1696" name="sdAddr_o(12:0)" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1824" name="sdData_io(15:0)" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1056" name="sdClk_o" orien="R0" />
        <iomarker fontsize="28" x="1888" y="864" name="sdCas_bo" orien="R0" />
        <iomarker fontsize="28" x="1888" y="928" name="sdCe_bo" orien="R0" />
        <iomarker fontsize="28" x="1888" y="992" name="sdCke_o" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1184" name="sdDqml_o" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1120" name="sdDqmh_o" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1312" name="sdWe_bo" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1248" name="sdRas_bo" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1760" name="sdBs_o(1:0)" orien="R0" />
    </sheet>
</drawing>