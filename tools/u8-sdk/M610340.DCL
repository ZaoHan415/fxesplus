;;*********************************************************
;;   DCL FILE for ML610340, Ver.1.02
;;   Copyright (C) 2008-2009 OKI SEMICONDUCTOR CO., LTD.
;;
;;   Last Edition  Oct 15, 2009
;;*********************************************************

#CORE           "nX-U8/100"
#REVISION       "A3"
#TARGET         "ML610340"
#VERSION        "1.02"

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;       MEMORY RANGE
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;Program memory space (physical segment #0)
#ROM    0H , 0FFFFH
        SWI_VECTOR  00080H  , 000FFH
        CODE        00000H  , 0FBFFH
        CODE        0FC00H  , 0FDFFH
 
;Data memory space (physical segment #0)
#RAM    0H , 0FFFFH
        DATA        0E000H  , 0E1FFH
        DATA        0F000H  , 0FFFFH
        INTERNALRAM 0E000H  , 0E1FFH
        SFR         0F000H  , 0FFFFH

;;                  start_adr end_adr   WINVAL
        ROMWINDOW   00000H  , 0DFFFH    , 0FFH ; WINVAL is dummy

;;definition of physical segment #1 and over memory space

;; #EXTEND  cs_max, ds_max
;;      cs_max : number of physical segment for Program memory
;;      ds_max : number of physical segment for Data memory

#EXTEND  1, 10
        ROM       1:0000H,   1:07FFFH   ; CODE and TABLE type segments can be allocated
        ROM       8:0000H,   8:0FDFFH   ; CODE and TABLE type segments can be allocated
        ROM       9:0000H,   9:07FFFH   ; CODE and TABLE type segments can be allocated


;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;       CODE ADDRESS SYMBOLS
;
;       definition of CODE type symbols
;       - SYNTAX -
;       #DEFCODE
;               Symbol  Code_Address
;               ....................
;+++++++++++++++++++++++++++++++++++++++++++++++++++++

#DEFCODE
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;       VECTOR AREA
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
        WDTINT         0008H
        NMINT          000AH
        P00INT         0010H
        P01INT         0012H
        P02INT         0014H
        P03INT         0016H
        SIO0INT        0020H
        TM0INT         0030H
        TM1INT         0032H
        VC0INT         0038H
        T128HINT       006AH
        T32HINT        006EH
        T16HINT        0070H
        T2HINT         0076H


;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;       DATA ADDRESS SYMBOLS
;
;       definition of DATA type symbols
;
;       - SYNTAX -
;       #DEFDATA
;               Symbol  Data_Address
;               ....................
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#DEFDATA
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;       SFR AREA
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
          DSR             0F000H
          RSTAT           0F001H
        FCON            0F002H
          FCON0           0F002H
          FCON1           0F003H
          STPACP          0F008H
          SBYCON          0F009H
          LTBR            0F00AH
          HTBDR           0F00BH
          WDTCON          0F00EH
          WDTMOD          0F00FH
          IE1             0F011H
          IE2             0F012H
          IE3             0F013H
          IE6             0F016H
          IE7             0F017H
          IRQ0            0F018H
          IRQ1            0F019H
          IRQ2            0F01AH
          IRQ3            0F01BH
          IRQ6            0F01EH
          IRQ7            0F01FH
          EXICON0         0F020H
          EXICON1         0F021H
          EXICON2         0F022H
          BLKCON0         0F028H
          BLKCON2         0F02AH
          BLKCON3         0F02BH
        TM0DC           0F030H
          TM0D            0F030H
          TM0C            0F031H
        TM0CON          0F032H
          TM0CON0         0F032H
          TM0CON1         0F033H
        TM1DC           0F034H
          TM1D            0F034H
          TM1C            0F035H
        TM1CON          0F036H
          TM1CON0         0F036H
          TM1CON1         0F037H
          NMID            0F200H
          NMICON          0F201H
          P0D             0F204H
        P0CON           0F206H
          P0CON0          0F206H
          P0CON1          0F207H
          P1D             0F208H
        P1CON           0F20AH
          P1CON0          0F20AH
          P1CON1          0F20BH
          P2D             0F210H
        P2CON           0F212H
          P2CON0          0F212H
          P2CON1          0F213H
          P2MOD           0F214H
          P4D             0F220H
          P4DIR           0F221H
        P4CON           0F222H
          P4CON0          0F222H
          P4CON1          0F223H
        P4MOD           0F224H
          P4MOD0          0F224H
          P4MOD1          0F225H
        SIO0BUF         0F280H
          SIO0BUFL        0F280H
          SIO0BUFH        0F281H
          SIO0CON         0F282H
        SIO0MOD         0F284H
          SIO0MOD0        0F284H
          SIO0MOD1        0F285H
          VFDAT           0F2B0H
          VFEDAT          0F2B1H
          VHQSBL          0F2B2H
          VSTAT           0F2B3H
          VMOD            0F2B4H
          VTYPE           0F2B5H
          VVOL            0F2B6H
          VCON            0F2B7H
          SPCON           0F2BCH
          TSDMOD          0F2BDH
          TSDCON          0F2BEH
          DCDCON          0F2BFH

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;       BIT ADDRESS SYMBOLS
;
;       definition of BIT type symbols
;
;       - SYNTAX -
;       #DEFBIT
;               Symbol  Bit_Address
;               ....................
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#DEFBIT

;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;       SFR AREA
;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        DSR0            DSR.0
        DSR1            DSR.1
        DSR2            DSR.2
        DSR3            DSR.3

        POR             RSTAT.0
        WDTR            RSTAT.2

        SYSC0           FCON0.0
        SYSC1           FCON0.1
        OUTC0           FCON0.4
        OUTC1           FCON0.5

        SYSCLK          FCON1.0
        ENOSC           FCON1.1

        HLT             SBYCON.0
        STP             SBYCON.1

        T128HZ          LTBR.0
        T64HZ           LTBR.1
        T32HZ           LTBR.2
        T16HZ           LTBR.3
        T8HZ            LTBR.4
        T4HZ            LTBR.5
        T2HZ            LTBR.6
        T1HZ            LTBR.7

        HTD0            HTBDR.0
        HTD1            HTBDR.1
        HTD2            HTBDR.2
        HTD3            HTBDR.3

        WDP             WDTCON.0

        WDT0            WDTMOD.0
        WDT1            WDTMOD.1

        EP00            IE1.0
        EP01            IE1.1
        EP02            IE1.2
        EP03            IE1.3

        ESIO0           IE2.0

        ETM0            IE3.0
        ETM1            IE3.1
        EVC0            IE3.4

        E128H           IE6.5
        E32H            IE6.7

        E16H            IE7.0
        E2H             IE7.3

        QWDT            IRQ0.0
        QNMI            IRQ0.1

        QP00            IRQ1.0
        QP01            IRQ1.1
        QP02            IRQ1.2
        QP03            IRQ1.3

        QSIO0           IRQ2.0

        QTM0            IRQ3.0
        QTM1            IRQ3.1
        QVC0            IRQ3.4

        Q128H           IRQ6.5
        Q32H            IRQ6.7

        Q16H            IRQ7.0
        Q2H             IRQ7.3

        P00E0           EXICON0.0
        P01E0           EXICON0.1
        P02E0           EXICON0.2
        P03E0           EXICON0.3

        P00E1           EXICON1.0
        P01E1           EXICON1.1
        P02E1           EXICON1.2
        P03E1           EXICON1.3

        P00SM           EXICON2.0
        P01SM           EXICON2.1
        P02SM           EXICON2.2
        P03SM           EXICON2.3

        DTM0            BLKCON0.0
        DTM1            BLKCON0.1

        DSIO0           BLKCON2.0

        DVC0            BLKCON3.4

        T0D0            TM0D.0
        T0D1            TM0D.1
        T0D2            TM0D.2
        T0D3            TM0D.3
        T0D4            TM0D.4
        T0D5            TM0D.5
        T0D6            TM0D.6
        T0D7            TM0D.7

        T0C0            TM0C.0
        T0C1            TM0C.1
        T0C2            TM0C.2
        T0C3            TM0C.3
        T0C4            TM0C.4
        T0C5            TM0C.5
        T0C6            TM0C.6
        T0C7            TM0C.7

        T0CS0           TM0CON0.0
        T0CS1           TM0CON0.1
        T01M16          TM0CON0.2

        T0RUN           TM0CON1.0
        T0STAT          TM0CON1.7

        T1D0            TM1D.0
        T1D1            TM1D.1
        T1D2            TM1D.2
        T1D3            TM1D.3
        T1D4            TM1D.4
        T1D5            TM1D.5
        T1D6            TM1D.6
        T1D7            TM1D.7

        T1C0            TM1C.0
        T1C1            TM1C.1
        T1C2            TM1C.2
        T1C3            TM1C.3
        T1C4            TM1C.4
        T1C5            TM1C.5
        T1C6            TM1C.6
        T1C7            TM1C.7

        T1CS0           TM1CON0.0
        T1CS1           TM1CON0.1

        T1RUN           TM1CON1.0
        T1STAT          TM1CON1.7

        NMI             NMID.0

        NMIC            NMICON.0

        P00D            P0D.0
        P01D            P0D.1
        P02D            P0D.2
        P03D            P0D.3

        P00C0           P0CON0.0
        P01C0           P0CON0.1
        P02C0           P0CON0.2
        P03C0           P0CON0.3

        P00C1           P0CON1.0
        P01C1           P0CON1.1
        P02C1           P0CON1.2
        P03C1           P0CON1.3

        P11D            P1D.1

        P11C0           P1CON0.1

        P11C1           P1CON1.1

        P20D            P2D.0
        P21D            P2D.1
        P22D            P2D.2
        P23D            P2D.3

        P20C0           P2CON0.0
        P21C0           P2CON0.1
        P22C0           P2CON0.2
        P23C0           P2CON0.3

        P20C1           P2CON1.0
        P21C1           P2CON1.1
        P22C1           P2CON1.2
        P23C1           P2CON1.3

        P20MD           P2MOD.0
        P21MD           P2MOD.1
        P22MD           P2MOD.2
        P23MD           P2MOD.3

        P40D            P4D.0
        P41D            P4D.1
        P42D            P4D.2
        P43D            P4D.3

        P40DIR          P4DIR.0
        P41DIR          P4DIR.1
        P42DIR          P4DIR.2
        P43DIR          P4DIR.3

        P40C0           P4CON0.0
        P41C0           P4CON0.1
        P42C0           P4CON0.2
        P43C0           P4CON0.3

        P40C1           P4CON1.0
        P41C1           P4CON1.1
        P42C1           P4CON1.2
        P43C1           P4CON1.3

        P40MD0          P4MOD0.0
        P41MD0          P4MOD0.1
        P42MD0          P4MOD0.2
        P43MD0          P4MOD0.3

        P40MD1          P4MOD1.0
        P41MD1          P4MOD1.1
        P42MD1          P4MOD1.2
        P43MD1          P4MOD1.3

        S0B0            SIO0BUFL.0
        S0B1            SIO0BUFL.1
        S0B2            SIO0BUFL.2
        S0B3            SIO0BUFL.3
        S0B4            SIO0BUFL.4
        S0B5            SIO0BUFL.5
        S0B6            SIO0BUFL.6
        S0B7            SIO0BUFL.7

        S0B8            SIO0BUFH.0
        S0B9            SIO0BUFH.1
        S0B10           SIO0BUFH.2
        S0B11           SIO0BUFH.3
        S0B12           SIO0BUFH.4
        S0B13           SIO0BUFH.5
        S0B14           SIO0BUFH.6
        S0B15           SIO0BUFH.7

        S0EN            SIO0CON.0

        S0DIR           SIO0MOD0.0
        S0MD0           SIO0MOD0.1
        S0MD1           SIO0MOD0.2
        S0LG            SIO0MOD0.3

        S0CK0           SIO0MOD1.0
        S0CK1           SIO0MOD1.1
        S0CK2           SIO0MOD1.2
        S0CK3           SIO0MOD1.3
        S0CKT           SIO0MOD1.4

        VFDAT0          VFDAT.0
        VFDAT1          VFDAT.1
        VFDAT2          VFDAT.2
        VFDAT3          VFDAT.3
        VFDAT4          VFDAT.4
        VFDAT5          VFDAT.5
        VFDAT6          VFDAT.6
        VFDAT7          VFDAT.7

        VFEDAT0         VFEDAT.0
        VFEDAT1         VFEDAT.1
        VFEDAT2         VFEDAT.2
        VFEDAT3         VFEDAT.3
        VFEDAT4         VFEDAT.4
        VFEDAT5         VFEDAT.5
        VFEDAT6         VFEDAT.6
        VFEDAT7         VFEDAT.7

        VHQSBL0         VHQSBL.3
        VHQSBL1         VHQSBL.4
        VHQSBL2         VHQSBL.5
        VHQSBL3         VHQSBL.6
        VHQSBL4         VHQSBL.7

        VEMP            VSTAT.0
        VMID            VSTAT.1
        VFUL            VSTAT.2
        VDEND           VSTAT.3
        VAEND           VSTAT.4
        VERR            VSTAT.7

        VFMD0           VMOD.0
        VFMD1           VMOD.1
        VSG0            VMOD.2
        VSG1            VMOD.3
        VPOP            VMOD.4

        VSMP0           VTYPE.0
        VSMP1           VTYPE.1
        VSMP2           VTYPE.2
        VSMP3           VTYPE.3
        VSYN0           VTYPE.4
        VSYN1           VTYPE.5
        VSYN2           VTYPE.6

        VVOL0           VVOL.0
        VVOL1           VVOL.1
        VVOL2           VVOL.2
        VVOL3           VVOL.3
        VVOL4           VVOL.4

        VCEN            VCON.0
        VSTP            VCON.4

        SPEN            SPCON.0
        SPGAIN          SPCON.1

        TSDMD0          TSDMOD.0
        TSDMD1          TSDMOD.1
        TSDMD2          TSDMOD.2

        TSDEN           TSDCON.0
        TSDF            TSDCON.7

        DCDEN           DCDCON.0
        DCDF            DCDCON.7



;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;       SFR ACCESS ATTRIBUTE DEFINITIONS
;
;       - SYNTAX -
;       #ACCESS
;  Data_Address:| Access_Unit |        Bit_Pattern        |
;   Address     |   Word/Byte |   Read      |      Write  |
;   .......         .........     ....             .....
;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#ACCESS
    DSR             :   --RW    0000_1111B  0000_1111B
    RSTAT           :   --RW    0000_0101B  0000_0101B
    FCON0           :   RWRW    0011_0011B  0011_0011B
    FCON1           :   --RW    0000_0011B  0000_0011B
    STPACP          :   ---W    -           -         
    SBYCON          :   ---W    0000_0011B  0000_0011B
    LTBR            :   --RW    1111_1111B  1111_1111B
    HTBDR           :   --RW    0000_1111B  0000_1111B
    WDTCON          :   --RW    1111_1111B  1111_1111B
    WDTMOD          :   --RW    0000_0011B  0000_0011B
    IE1             :   --RW    0000_1111B  0000_1111B
    IE2             :   --RW    0000_0001B  0000_0001B
    IE3             :   --RW    0001_0011B  0001_0011B
    IE6             :   --RW    1010_0000B  1010_0000B
    IE7             :   --RW    0000_1001B  0000_1001B
    IRQ0            :   --RW    0000_0011B  0000_0011B
    IRQ1            :   --RW    0000_1111B  0000_1111B
    IRQ2            :   --RW    0000_0001B  0000_0001B
    IRQ3            :   --RW    0001_0011B  0001_0011B
    IRQ6            :   --RW    1010_0000B  1010_0000B
    IRQ7            :   --RW    0000_1001B  0000_1001B
    EXICON0         :   --RW    0000_1111B  0000_1111B
    EXICON1         :   --RW    0000_1111B  0000_1111B
    EXICON2         :   --RW    0000_1111B  0000_1111B
    BLKCON0         :   --RW    0000_0011B  0000_0011B
    BLKCON2         :   --RW    0000_0001B  0000_0001B
    BLKCON3         :   --RW    0001_0000B  0001_0000B
    TM0D            :   RWRW    1111_1111B  1111_1111B
    TM0C            :   --RW    1111_1111B  1111_1111B
    TM0CON0         :   RWRW    0000_0111B  0000_0111B
    TM0CON1         :   --RW    1000_0001B  1000_0001B
    TM1D            :   RWRW    1111_1111B  1111_1111B
    TM1C            :   --RW    1111_1111B  1111_1111B
    TM1CON0         :   RWRW    0000_0011B  0000_0011B
    TM1CON1         :   --RW    1000_0001B  1000_0001B
    NMID            :   --R-    0000_0001B  -         
    NMICON          :   --RW    0000_0001B  0000_0001B
    P0D             :   --R-    0000_1111B  -         
    P0CON0          :   RWRW    0000_1111B  0000_1111B
    P0CON1          :   --RW    0000_1111B  0000_1111B
    P1D             :   --R-    0000_0010B  -         
    P1CON0          :   RWRW    0000_0010B  0000_0010B
    P1CON1          :   --RW    0000_0010B  0000_0010B
    P2D             :   --RW    0000_1111B  0000_1111B
    P2CON0          :   RWRW    0000_1111B  0000_1111B
    P2CON1          :   --RW    0000_1111B  0000_1111B
    P2MOD           :   --RW    0000_1111B  0000_1111B
    P4D             :   --RW    0000_1111B  0000_1111B
    P4DIR           :   --RW    0000_1111B  0000_1111B
    P4CON0          :   RWRW    0000_1111B  0000_1111B
    P4CON1          :   --RW    0000_1111B  0000_1111B
    P4MOD0          :   RWRW    0000_1111B  0000_1111B
    P4MOD1          :   --RW    0000_1111B  0000_1111B
    SIO0BUFL        :   RWRW    1111_1111B  1111_1111B
    SIO0BUFH        :   --RW    1111_1111B  1111_1111B
    SIO0CON         :   --RW    0000_0001B  0000_0001B
    SIO0MOD0        :   RWRW    0000_1111B  0000_1111B
    SIO0MOD1        :   --RW    0001_1111B  0001_1111B
    VFDAT           :   ---W    1111_1111B  1111_1111B
    VFEDAT          :   ---W    1111_1111B  1111_1111B
    VHQSBL          :   --RW    1111_1000B  1111_1000B
    VSTAT           :   --R-    1001_1111B  -         
    VMOD            :   --RW    0001_1111B  0001_1111B
    VTYPE           :   --RW    0111_1111B  0111_1111B
    VVOL            :   --RW    0001_1111B  0001_1111B
    VCON            :   --RW    0001_0001B  0001_0001B
    SPCON           :   --RW    0000_0011B  0000_0011B
    TSDMOD          :   --RW    0000_0111B  0000_0111B
    TSDCON          :   --RW    1000_0001B  1000_0001B
    DCDCON          :   --RW    1000_0001B  1000_0001B


;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;       INSTRUCTION
;
;       definition of basic instruction mnemonic symbols
;       - SYNTAX -
;       #INSTRUCTION
;               Mnemonic List
;               .............
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
#INSTRUCTION
L     ST    LEA
MOV   CMP   ADD   SUB   AND   OR    XOR   SLL   SRL   SRA
CMPC  ADDC  SUBC  SLLC  SRLC
NEG   DAA   DAS
SB    RB    TB
INC   DEC
PUSH  POP
EI    DI    SC    RC    CPLC
EXTBW
MUL   DIV
BEQ   BNE   BAL
BLT   BLE   BGT   BGE
BLTS  BLES  BGTS  BGES
BOV   BNV   BPS   BNS
BNC   BCY   BNZ   BZ
BC
SWI   B     BL    RTI    RT    NOP
BRK

;#COPROCESSOR

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;        Absolute Assembler Information.
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
#CASE   ASM


#ENDCASE

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;        Relocatable Assembler Information.
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
#CASE   RAS

;   definition depends on RASU8

#ENDCASE

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;        Debugger Information.
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
#CASE   DEBUGGER

;   definition depends on DEBUGGER

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;        Interrupt Information.
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
#INTERRUPT
   WDTINT,        -,          QWDT
   NMINT,         -,          QNMI
   P00INT,        EP00,       QP00
   P01INT,        EP01,       QP01
   P02INT,        EP02,       QP02
   P03INT,        EP03,       QP03
   SIO0INT,       ESIO0,      QSIO0
   TM0INT,        ETM0,       QTM0
   TM1INT,        ETM1,       QTM1
   VC0INT,        EVC0,       QVC0
   T128HINT,      E128H,      Q128H
   T32HINT,       E32H,       Q32H
   T16HINT,       E16H,       Q16H
   T2HINT,        E2H,        Q2H


#ENDCASE

;------------- END OF DCL (ML610340) -------------
