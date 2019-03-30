VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Din(4:0)
        SIGNAL Din(0)
        SIGNAL Din(1)
        SIGNAL Din(2)
        SIGNAL Din(3)
        SIGNAL Din(4)
        SIGNAL Dout(0)
        SIGNAL Dout(1)
        SIGNAL Dout(2)
        SIGNAL Dout(3)
        SIGNAL Dout(4)
        SIGNAL Dout(4:0)
        PORT Input Din(4:0)
        PORT Output Dout(4:0)
        BEGIN BLOCKDEF buf
            TIMESTAMP 2001 2 2 12 51 12
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
            LINE N 64 0 128 -32 
            LINE N 128 -32 64 -64 
            LINE N 64 -64 64 0 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 buf
            PIN I Din(0)
            PIN O Dout(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 buf
            PIN I Din(1)
            PIN O Dout(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 buf
            PIN I Din(2)
            PIN O Dout(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 buf
            PIN I Din(3)
            PIN O Dout(3)
        END BLOCK
        BEGIN BLOCK XLXI_5 buf
            PIN I Din(4)
            PIN O Dout(4)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1296 592 R0
        INSTANCE XLXI_2 1296 704 R0
        INSTANCE XLXI_3 1296 832 R0
        INSTANCE XLXI_4 1296 944 R0
        INSTANCE XLXI_5 1296 1072 R0
        BEGIN BRANCH Din(4:0)
            WIRE 928 496 960 496
            WIRE 960 496 1008 496
        END BRANCH
        BEGIN BRANCH Din(0)
            WIRE 1232 560 1296 560
            BEGIN DISPLAY 1232 560 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Din(1)
            WIRE 1232 672 1296 672
            BEGIN DISPLAY 1232 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Din(2)
            WIRE 1232 800 1296 800
            BEGIN DISPLAY 1232 800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Din(3)
            WIRE 1232 912 1296 912
            BEGIN DISPLAY 1232 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Din(4)
            WIRE 1232 1040 1296 1040
            BEGIN DISPLAY 1232 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Dout(0)
            WIRE 1520 560 1568 560
            BEGIN DISPLAY 1568 560 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Dout(1)
            WIRE 1520 672 1568 672
            BEGIN DISPLAY 1568 672 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Dout(2)
            WIRE 1520 800 1584 800
            BEGIN DISPLAY 1584 800 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Dout(3)
            WIRE 1520 912 1584 912
            BEGIN DISPLAY 1584 912 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Dout(4)
            WIRE 1520 1040 1568 1040
            BEGIN DISPLAY 1568 1040 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Dout(4:0)
            WIRE 1952 512 2016 512
        END BRANCH
        IOMARKER 2016 512 Dout(4:0) R0 28
        IOMARKER 928 496 Din(4:0) R180 28
    END SHEET
END SCHEMATIC
