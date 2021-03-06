;;*********************************************************
;;   DCL FILE for ML610347, Ver.1.02
;;   Copyright (C) 2008-2009 OKI SEMICONDUCTOR CO., LTD.
;;
;;   Last Edition  Oct 15, 2009
;;*********************************************************

#CORE           "nX-U8/100"
#REVISION       "A3"
#TARGET         "ML610347"
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
        DATA        0E000H  , 0E3FFH
        DATA        0F000H  , 0FFFFH
        INTERNALRAM 0E000H  , 0E3FFH
        SFR         0F000H  , 0FFFFH

;;                  start_adr end_adr   WINVAL
        ROMWINDOW   00000H  , 0DFFFH    , 0FFH ; WINVAL is dummy

;;definition of physical segment #1 and over memory space

;; #EXTEND  cs_max, ds_max
;;      cs_max : number of physical segment for Program memory
;;      ds_max : number of physical segment for Data memory

#EXTEND  1, 10
        ROM       1:0000H,   1:0FFFFH   ; CODE and TABLE type segments can be allocated
        ROM       8:0000H,   8:0FDFFH   ; CODE and TABLE type segments can be allocated
        ROM       9:0000H,   9:0FFFFH   ; CODE and TABLE type segments can be allocated


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
        P04INT         0018H
        P05INT         001AH
        P06INT         001CH
        P07INT         001EH
        SIO0INT        0020H
        SADINT         0024H
        TM0INT         0030H
        TM1INT         0032H
        VC0INT         0038H
        UA0INT         0040H
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
          IE4             0F014H
          IE6             0F016H
          IE7             0F017H
          IRQ0            0F018H
          IRQ1            0F019H
          IRQ2            0F01AH
          IRQ3            0F01BH
          IRQ4            0F01CH
          IRQ6            0F01EH
          IRQ7            0F01FH
          EXICON0         0F020H
          EXICON1         0F021H
          EXICON2         0F022H
          BLKCON0         0F028H
          BLKCON2         0F02AH
          BLKCON3         0F02BH
          BLKCON4         0F02CH
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
          P3D             0F218H
          P3DIR           0F219H
        P3CON           0F21AH
          P3CON0          0F21AH
          P3CON1          0F21BH
        P3MOD           0F21CH
          P3MOD0          0F21CH
          P3MOD1          0F21DH
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
          UA0BUF          0F290H
          UA0CON          0F291H
        UA0MOD          0F292H
          UA0MOD0         0F292H
          UA0MOD1         0F293H
        UA0BRT          0F294H
          UA0BRTL         0F294H
          UA0BRTH         0F295H
          UA0STAT         0F296H
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
        SADR0           0F2D0H
          SADR0L          0F2D0H
          SADR0H          0F2D1H
        SADR1           0F2D2H
          SADR1L          0F2D2H
          SADR1H          0F2D3H
        SADR2           0F2D4H
          SADR2L          0F2D4H
          SADR2H          0F2D5H
        SADR3           0F2D6H
          SADR3L          0F2D6H
          SADR3H          0F2D7H
        SADR4           0F2D8H
          SADR4L          0F2D8H
          SADR4H          0F2D9H
        SADR5           0F2DAH
          SADR5L          0F2DAH
          SADR5H          0F2DBH
        SADR6           0F2DCH
          SADR6L          0F2DCH
          SADR6H          0F2DDH
        SADR7           0F2DEH
          SADR7L          0F2DEH
          SADR7H          0F2DFH
        SADR8           0F2E0H
          SADR8L          0F2E0H
          SADR8H          0F2E1H
        SADR9           0F2E2H
          SADR9L          0F2E2H
          SADR9H          0F2E3H
        SADRA           0F2E4H
          SADRAL          0F2E4H
          SADRAH          0F2E5H
        SADRB           0F2E6H
          SADRBL          0F2E6H
          SADRBH          0F2E7H
        SADCON          0F2F0H
          SADCON0         0F2F0H
          SADCON1         0F2F1H
        SADMOD          0F2F2H
          SADMOD0         0F2F2H
          SADMOD1         0F2F3H
          SADPWR          0F2F8H
          SADSMP          0F2F9H

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
        EP04            IE1.4
        EP05            IE1.5
        EP06            IE1.6
        EP07            IE1.7

        ESIO0           IE2.0
        ESAD            IE2.2

        ETM0            IE3.0
        ETM1            IE3.1
        EVC0            IE3.4

        EUA0            IE4.0

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
        QP04            IRQ1.4
        QP05            IRQ1.5
        QP06            IRQ1.6
        QP07            IRQ1.7

        QSIO0           IRQ2.0
        QSAD            IRQ2.2

        QTM0            IRQ3.0
        QTM1            IRQ3.1
        QVC0            IRQ3.4

        QUA0            IRQ4.0

        Q128H           IRQ6.5
        Q32H            IRQ6.7

        Q16H            IRQ7.0
        Q2H             IRQ7.3

        P00E0           EXICON0.0
        P01E0           EXICON0.1
        P02E0           EXICON0.2
        P03E0           EXICON0.3
        P04E0           EXICON0.4
        P05E0           EXICON0.5
        P06E0           EXICON0.6
        P07E0           EXICON0.7

        P00E1           EXICON1.0
        P01E1           EXICON1.1
        P02E1           EXICON1.2
        P03E1           EXICON1.3
        P04E1           EXICON1.4
        P05E1           EXICON1.5
        P06E1           EXICON1.6
        P07E1           EXICON1.7

        P00SM           EXICON2.0
        P01SM           EXICON2.1
        P02SM           EXICON2.2
        P03SM           EXICON2.3
        P04SM           EXICON2.4
        P05SM           EXICON2.5
        P06SM           EXICON2.6
        P07SM           EXICON2.7

        DTM0            BLKCON0.0
        DTM1            BLKCON0.1

        DSIO0           BLKCON2.0
        DUA0            BLKCON2.2

        DVC0            BLKCON3.4

        DSAD            BLKCON4.0

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
        P04D            P0D.4
        P05D            P0D.5
        P06D            P0D.6
        P07D            P0D.7

        P00C0           P0CON0.0
        P01C0           P0CON0.1
        P02C0           P0CON0.2
        P03C0           P0CON0.3
        P04C0           P0CON0.4
        P05C0           P0CON0.5
        P06C0           P0CON0.6
        P07C0           P0CON0.7

        P00C1           P0CON1.0
        P01C1           P0CON1.1
        P02C1           P0CON1.2
        P03C1           P0CON1.3
        P04C1           P0CON1.4
        P05C1           P0CON1.5
        P06C1           P0CON1.6
        P07C1           P0CON1.7

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

        P30D            P3D.0
        P31D            P3D.1
        P32D            P3D.2
        P33D            P3D.3
        P34D            P3D.4
        P35D            P3D.5
        P36D            P3D.6
        P37D            P3D.7

        P30DIR          P3DIR.0
        P31DIR          P3DIR.1
        P32DIR          P3DIR.2
        P33DIR          P3DIR.3
        P34DIR          P3DIR.4
        P35DIR          P3DIR.5
        P36DIR          P3DIR.6
        P37DIR          P3DIR.7

        P30C0           P3CON0.0
        P31C0           P3CON0.1
        P32C0           P3CON0.2
        P33C0           P3CON0.3
        P34C0           P3CON0.4
        P35C0           P3CON0.5
        P36C0           P3CON0.6
        P37C0           P3CON0.7

        P30C1           P3CON1.0
        P31C1           P3CON1.1
        P32C1           P3CON1.2
        P33C1           P3CON1.3
        P34C1           P3CON1.4
        P35C1           P3CON1.5
        P36C1           P3CON1.6
        P37C1           P3CON1.7

        P30MD0          P3MOD0.0
        P31MD0          P3MOD0.1
        P32MD0          P3MOD0.2
        P33MD0          P3MOD0.3
        P34MD0          P3MOD0.4
        P35MD0          P3MOD0.5
        P36MD0          P3MOD0.6
        P37MD0          P3MOD0.7

        P30MD1          P3MOD1.0
        P31MD1          P3MOD1.1
        P32MD1          P3MOD1.2
        P33MD1          P3MOD1.3
        P34MD1          P3MOD1.4
        P35MD1          P3MOD1.5
        P36MD1          P3MOD1.6
        P37MD1          P3MOD1.7

        P40D            P4D.0
        P41D            P4D.1
        P42D            P4D.2
        P43D            P4D.3
        P44D            P4D.4
        P45D            P4D.5
        P46D            P4D.6
        P47D            P4D.7

        P40DIR          P4DIR.0
        P41DIR          P4DIR.1
        P42DIR          P4DIR.2
        P43DIR          P4DIR.3
        P44DIR          P4DIR.4
        P45DIR          P4DIR.5
        P46DIR          P4DIR.6
        P47DIR          P4DIR.7

        P40C0           P4CON0.0
        P41C0           P4CON0.1
        P42C0           P4CON0.2
        P43C0           P4CON0.3
        P44C0           P4CON0.4
        P45C0           P4CON0.5
        P46C0           P4CON0.6
        P47C0           P4CON0.7

        P40C1           P4CON1.0
        P41C1           P4CON1.1
        P42C1           P4CON1.2
        P43C1           P4CON1.3
        P44C1           P4CON1.4
        P45C1           P4CON1.5
        P46C1           P4CON1.6
        P47C1           P4CON1.7

        P40MD0          P4MOD0.0
        P41MD0          P4MOD0.1
        P42MD0          P4MOD0.2
        P43MD0          P4MOD0.3
        P44MD0          P4MOD0.4
        P45MD0          P4MOD0.5
        P46MD0          P4MOD0.6
        P47MD0          P4MOD0.7

        P40MD1          P4MOD1.0
        P41MD1          P4MOD1.1
        P42MD1          P4MOD1.2
        P43MD1          P4MOD1.3
        P44MD1          P4MOD1.4
        P45MD1          P4MOD1.5
        P46MD1          P4MOD1.6
        P47MD1          P4MOD1.7

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

        U0B0            UA0BUF.0
        U0B1            UA0BUF.1
        U0B2            UA0BUF.2
        U0B3            UA0BUF.3
        U0B4            UA0BUF.4
        U0B5            UA0BUF.5
        U0B6            UA0BUF.6
        U0B7            UA0BUF.7

        U0EN            UA0CON.0

        U0IO            UA0MOD0.0
        U0RSEL          UA0MOD0.4
        U0RSS           UA0MOD0.5

        U0LG0           UA0MOD1.0
        U0LG1           UA0MOD1.1
        U0PT0           UA0MOD1.2
        U0PT1           UA0MOD1.3
        U0STP           UA0MOD1.4
        U0NEG           UA0MOD1.5
        U0DIR           UA0MOD1.6

        U0BR0           UA0BRTL.0
        U0BR1           UA0BRTL.1
        U0BR2           UA0BRTL.2
        U0BR3           UA0BRTL.3
        U0BR4           UA0BRTL.4
        U0BR5           UA0BRTL.5
        U0BR6           UA0BRTL.6
        U0BR7           UA0BRTL.7

        U0BR8           UA0BRTH.0
        U0BR9           UA0BRTH.1
        U0BR10          UA0BRTH.2
        U0BR11          UA0BRTH.3

        U0FER           UA0STAT.0
        U0OER           UA0STAT.1
        U0PER           UA0STAT.2
        U0FUL           UA0STAT.3

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

        SAR00           SADR0L.4
        SAR01           SADR0L.5
        SAR02           SADR0L.6
        SAR03           SADR0L.7

        SAR04           SADR0H.0
        SAR05           SADR0H.1
        SAR06           SADR0H.2
        SAR07           SADR0H.3
        SAR08           SADR0H.4
        SAR09           SADR0H.5
        SAR0A           SADR0H.6
        SAR0B           SADR0H.7

        SAR10           SADR1L.4
        SAR11           SADR1L.5
        SAR12           SADR1L.6
        SAR13           SADR1L.7

        SAR14           SADR1H.0
        SAR15           SADR1H.1
        SAR16           SADR1H.2
        SAR17           SADR1H.3
        SAR18           SADR1H.4
        SAR19           SADR1H.5
        SAR1A           SADR1H.6
        SAR1B           SADR1H.7

        SAR20           SADR2L.4
        SAR21           SADR2L.5
        SAR22           SADR2L.6
        SAR23           SADR2L.7

        SAR24           SADR2H.0
        SAR25           SADR2H.1
        SAR26           SADR2H.2
        SAR27           SADR2H.3
        SAR28           SADR2H.4
        SAR29           SADR2H.5
        SAR2A           SADR2H.6
        SAR2B           SADR2H.7

        SAR30           SADR3L.4
        SAR31           SADR3L.5
        SAR32           SADR3L.6
        SAR33           SADR3L.7

        SAR34           SADR3H.0
        SAR35           SADR3H.1
        SAR36           SADR3H.2
        SAR37           SADR3H.3
        SAR38           SADR3H.4
        SAR39           SADR3H.5
        SAR3A           SADR3H.6
        SAR3B           SADR3H.7

        SAR40           SADR4L.4
        SAR41           SADR4L.5
        SAR42           SADR4L.6
        SAR43           SADR4L.7

        SAR44           SADR4H.0
        SAR45           SADR4H.1
        SAR46           SADR4H.2
        SAR47           SADR4H.3
        SAR48           SADR4H.4
        SAR49           SADR4H.5
        SAR4A           SADR4H.6
        SAR4B           SADR4H.7

        SAR50           SADR5L.4
        SAR51           SADR5L.5
        SAR52           SADR5L.6
        SAR53           SADR5L.7

        SAR54           SADR5H.0
        SAR55           SADR5H.1
        SAR56           SADR5H.2
        SAR57           SADR5H.3
        SAR58           SADR5H.4
        SAR59           SADR5H.5
        SAR5A           SADR5H.6
        SAR5B           SADR5H.7

        SAR60           SADR6L.4
        SAR61           SADR6L.5
        SAR62           SADR6L.6
        SAR63           SADR6L.7

        SAR64           SADR6H.0
        SAR65           SADR6H.1
        SAR66           SADR6H.2
        SAR67           SADR6H.3
        SAR68           SADR6H.4
        SAR69           SADR6H.5
        SAR6A           SADR6H.6
        SAR6B           SADR6H.7

        SAR70           SADR7L.4
        SAR71           SADR7L.5
        SAR72           SADR7L.6
        SAR73           SADR7L.7

        SAR74           SADR7H.0
        SAR75           SADR7H.1
        SAR76           SADR7H.2
        SAR77           SADR7H.3
        SAR78           SADR7H.4
        SAR79           SADR7H.5
        SAR7A           SADR7H.6
        SAR7B           SADR7H.7

        SAR80           SADR8L.4
        SAR81           SADR8L.5
        SAR82           SADR8L.6
        SAR83           SADR8L.7

        SAR84           SADR8H.0
        SAR85           SADR8H.1
        SAR86           SADR8H.2
        SAR87           SADR8H.3
        SAR88           SADR8H.4
        SAR89           SADR8H.5
        SAR8A           SADR8H.6
        SAR8B           SADR8H.7

        SAR90           SADR9L.4
        SAR91           SADR9L.5
        SAR92           SADR9L.6
        SAR93           SADR9L.7

        SAR94           SADR9H.0
        SAR95           SADR9H.1
        SAR96           SADR9H.2
        SAR97           SADR9H.3
        SAR98           SADR9H.4
        SAR99           SADR9H.5
        SAR9A           SADR9H.6
        SAR9B           SADR9H.7

        SARA0           SADRAL.4
        SARA1           SADRAL.5
        SARA2           SADRAL.6
        SARA3           SADRAL.7

        SARA4           SADRAH.0
        SARA5           SADRAH.1
        SARA6           SADRAH.2
        SARA7           SADRAH.3
        SARA8           SADRAH.4
        SARA9           SADRAH.5
        SARAA           SADRAH.6
        SARAB           SADRAH.7

        SARB0           SADRBL.4
        SARB1           SADRBL.5
        SARB2           SADRBL.6
        SARB3           SADRBL.7

        SARB4           SADRBH.0
        SARB5           SADRBH.1
        SARB6           SADRBH.2
        SARB7           SADRBH.3
        SARB8           SADRBH.4
        SARB9           SADRBH.5
        SARBA           SADRBH.6
        SARBB           SADRBH.7

        SALP            SADCON0.0
        SACK            SADCON0.1

        SARUN           SADCON1.0

        SACH0           SADMOD0.0
        SACH1           SADMOD0.1
        SACH2           SADMOD0.2
        SACH3           SADMOD0.3
        SACH4           SADMOD0.4
        SACH5           SADMOD0.5
        SACH6           SADMOD0.6
        SACH7           SADMOD0.7

        SACH8           SADMOD1.0
        SACH9           SADMOD1.1
        SACHA           SADMOD1.2
        SACHB           SADMOD1.3

        SAPUP           SADPWR.0

        SASMP           SADSMP.0



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
    IE1             :   --RW    1111_1111B  1111_1111B
    IE2             :   --RW    0000_0101B  0000_0101B
    IE3             :   --RW    0001_0011B  0001_0011B
    IE4             :   --RW    0000_0001B  0000_0001B
    IE6             :   --RW    1010_0000B  1010_0000B
    IE7             :   --RW    0000_1001B  0000_1001B
    IRQ0            :   --RW    0000_0011B  0000_0011B
    IRQ1            :   --RW    1111_1111B  1111_1111B
    IRQ2            :   --RW    0000_0101B  0000_0101B
    IRQ3            :   --RW    0001_0011B  0001_0011B
    IRQ4            :   --RW    0000_0001B  0000_0001B
    IRQ6            :   --RW    1010_0000B  1010_0000B
    IRQ7            :   --RW    0000_1001B  0000_1001B
    EXICON0         :   --RW    1111_1111B  1111_1111B
    EXICON1         :   --RW    1111_1111B  1111_1111B
    EXICON2         :   --RW    1111_1111B  1111_1111B
    BLKCON0         :   --RW    0000_0011B  0000_0011B
    BLKCON2         :   --RW    0000_0101B  0000_0101B
    BLKCON3         :   --RW    0001_0000B  0001_0000B
    BLKCON4         :   --RW    0000_0001B  0000_0001B
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
    P0D             :   --R-    1111_1111B  -         
    P0CON0          :   RWRW    1111_1111B  1111_1111B
    P0CON1          :   --RW    1111_1111B  1111_1111B
    P1D             :   --R-    0000_0010B  -         
    P1CON0          :   RWRW    0000_0010B  0000_0010B
    P1CON1          :   --RW    0000_0010B  0000_0010B
    P2D             :   --RW    0000_1111B  0000_1111B
    P2CON0          :   RWRW    0000_1111B  0000_1111B
    P2CON1          :   --RW    0000_1111B  0000_1111B
    P2MOD           :   --RW    0000_1111B  0000_1111B
    P3D             :   --RW    1111_1111B  1111_1111B
    P3DIR           :   --RW    1111_1111B  1111_1111B
    P3CON0          :   RWRW    1111_1111B  1111_1111B
    P3CON1          :   --RW    1111_1111B  1111_1111B
    P3MOD0          :   RWRW    1111_1111B  1111_1111B
    P3MOD1          :   --RW    1111_1111B  1111_1111B
    P4D             :   --RW    1111_1111B  1111_1111B
    P4DIR           :   --RW    1111_1111B  1111_1111B
    P4CON0          :   RWRW    1111_1111B  1111_1111B
    P4CON1          :   --RW    1111_1111B  1111_1111B
    P4MOD0          :   RWRW    1111_1111B  1111_1111B
    P4MOD1          :   --RW    1111_1111B  1111_1111B
    SIO0BUFL        :   RWRW    1111_1111B  1111_1111B
    SIO0BUFH        :   --RW    1111_1111B  1111_1111B
    SIO0CON         :   --RW    0000_0001B  0000_0001B
    SIO0MOD0        :   RWRW    0000_1111B  0000_1111B
    SIO0MOD1        :   --RW    0001_1111B  0001_1111B
    UA0BUF          :   --RW    1111_1111B  1111_1111B
    UA0CON          :   --RW    0000_0001B  0000_0001B
    UA0MOD0         :   RWRW    0011_0001B  0011_0001B
    UA0MOD1         :   --RW    0111_1111B  0111_1111B
    UA0BRTL         :   RWRW    1111_1111B  1111_1111B
    UA0BRTH         :   --RW    0000_1111B  0000_1111B
    UA0STAT         :   --RW    0000_1111B  0000_1111B
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
    SADR0L          :   R-R-    1111_0000B  -         
    SADR0H          :   --R-    1111_1111B  -         
    SADR1L          :   R-R-    1111_0000B  -         
    SADR1H          :   --R-    1111_1111B  -         
    SADR2L          :   R-R-    1111_0000B  -         
    SADR2H          :   --R-    1111_1111B  -         
    SADR3L          :   R-R-    1111_0000B  -         
    SADR3H          :   --R-    1111_1111B  -         
    SADR4L          :   R-R-    1111_0000B  -         
    SADR4H          :   --R-    1111_1111B  -         
    SADR5L          :   R-R-    1111_0000B  -         
    SADR5H          :   --R-    1111_1111B  -         
    SADR6L          :   R-R-    1111_0000B  -         
    SADR6H          :   --R-    1111_1111B  -         
    SADR7L          :   R-R-    1111_0000B  -         
    SADR7H          :   --R-    1111_1111B  -         
    SADR8L          :   R-R-    1111_0000B  -         
    SADR8H          :   --R-    1111_1111B  -         
    SADR9L          :   R-R-    1111_0000B  -         
    SADR9H          :   --R-    1111_1111B  -         
    SADRAL          :   R-R-    1111_0000B  -         
    SADRAH          :   --R-    1111_1111B  -         
    SADRBL          :   R-R-    1111_0000B  -         
    SADRBH          :   --R-    1111_1111B  -         
    SADCON0         :   RWRW    0000_0011B  0000_0011B
    SADCON1         :   --RW    0000_0001B  0000_0001B
    SADMOD0         :   RWRW    1111_1111B  1111_1111B
    SADMOD1         :   --RW    0000_1111B  0000_1111B
    SADPWR          :   --RW    0000_0001B  0000_0001B
    SADSMP          :   --RW    0000_0001B  0000_0001B


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
   P04INT,        EP04,       QP04
   P05INT,        EP05,       QP05
   P06INT,        EP06,       QP06
   P07INT,        EP07,       QP07
   SIO0INT,       ESIO0,      QSIO0
   SADINT,        ESAD,       QSAD
   TM0INT,        ETM0,       QTM0
   TM1INT,        ETM1,       QTM1
   VC0INT,        EVC0,       QVC0
   UA0INT,        EUA0,       QUA0
   T128HINT,      E128H,      Q128H
   T32HINT,       E32H,       Q32H
   T16HINT,       E16H,       Q16H
   T2HINT,        E2H,        Q2H


#ENDCASE

;------------- END OF DCL (ML610347) -------------
