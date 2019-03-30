<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="CE" />
        <signal name="RST" />
        <signal name="PC_ADDR(15:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="CE" />
        <port polarity="Input" name="RST" />
        <port polarity="Output" name="PC_ADDR(15:0)" />
        <blockdef name="CNT16">
            <timestamp>2017-5-19T9:17:35</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="CNT16" name="PCADDR">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="CE" name="ce" />
            <blockpin signalname="RST" name="reset" />
            <blockpin signalname="PC_ADDR(15:0)" name="cnt_o(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="528" y="304" name="PCADDR" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="528" y1="144" y2="144" x1="512" />
        </branch>
        <branch name="CE">
            <wire x2="528" y1="208" y2="208" x1="512" />
        </branch>
        <branch name="RST">
            <wire x2="528" y1="272" y2="272" x1="512" />
        </branch>
        <branch name="PC_ADDR(15:0)">
            <wire x2="928" y1="144" y2="144" x1="912" />
        </branch>
        <iomarker fontsize="28" x="512" y="144" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="512" y="208" name="CE" orien="R180" />
        <iomarker fontsize="28" x="512" y="272" name="RST" orien="R180" />
        <iomarker fontsize="28" x="928" y="144" name="PC_ADDR(15:0)" orien="R0" />
    </sheet>
</drawing>