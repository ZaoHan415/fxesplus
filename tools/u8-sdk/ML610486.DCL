;;*********************************************************
;;   DCL FILE for ML610486, Ver.1.02
;;   Copyright (C) 2011 OKI SEMICONDUCTOR CO., LTD.
;;
;;   Last Edition  Feb 28, 2011
;;*********************************************************

#CORE           "nX-U8/100"
#REVISION       "A3"
#TARGET         "ML610486"
#VERSION        "1.02"

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;       MEMORY RANGE
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;Program memory space (physical segment #0)
#ROM    0H , 0FFFFH
        SWI_VECTOR  00080H  , 000FFH
        CODE        00000H  , 07BFFH
        CODE        07C00H  , 07DFFH

;Data memory space (physical segment #0)
#RAM    0H , 0FFFFH
        DATA        0E000H  , 0E3FFH
        DATA        0F000H  , 0FFFFH
        INTERNALRAM 0E000H  , 0E3FFH
        SFR         0F000H  , 0FFFFH

;;                  start_adr end_adr   WINVAL
        ROMWINDOW   00000H  , 07DFFH    , 0FFH ; WINVAL is dummy

;;definition of physical segment #1 and over memory space

;; #EXTEND  cs_max, ds_max
;;      cs_max : number of physical segment for Program memory
;;      ds_max : number of physical segment for Data memory

#EXTEND  1, 16
        ROM     08H:00000H  ,  08H:07DFFH


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
        WDTINT          0008H
        NMINT           000AH
        P00INT          0010H
        P01INT          0012H
        P02INT          0014H
        P03INT          0016H
        SIO0INT         0020H
        SADINT          0024H
        I2C0INT         002EH
        TM0INT          0030H
        TM1INT          0032H
        UA0INT          0040H
        TM2INT          0058H
        TM3INT          005AH
        PW0INT          0060H
        T128HINT        006AH
        T32HINT         006EH
        T16HINT         0070H
        T2HINT          0076H

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
          IE5             0F015H
          IE6             0F016H
          IE7             0F017H
          IRQ0            0F018H
          IRQ1            0F019H
          IRQ2            0F01AH
          IRQ3            0F01BH
          IRQ4            0F01CH
          IRQ5            0F01DH
          IRQ6            0F01EH
          IRQ7            0F01FH
          EXICON0         0F020H
          EXICON1         0F021H
          EXICON2         0F022H
          BLKCON0         0F028H
          BLKCON1         0F029H
          BLKCON2         0F02AH
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
        TM2DC           0F038H
          TM2D            0F038H
          TM2C            0F039H
        TM2CON          0F03AH
          TM2CON0         0F03AH
          TM2CON1         0F03BH
        TM3DC           0F03CH
          TM3D            0F03CH
          TM3C            0F03DH
        TM3CON          0F03EH
          TM3CON0         0F03EH
          TM3CON1         0F03FH
        PW0P            0F0A0H
          PW0PL           0F0A0H
          PW0PH           0F0A1H
        PW0D            0F0A2H
          PW0DL           0F0A2H
          PW0DH           0F0A3H
        PW0C            0F0A4H
          PW0CL           0F0A4H
          PW0CH           0F0A5H
        PW0CON          0F0A6H
          PW0CON0         0F0A6H
          PW0CON1         0F0A7H
        BLDCON          0F0D0H
          BLDCON0         0F0D0H
          BLDCON1         0F0D1H
          NMID            0F200H
          NMICON          0F201H
          P0D             0F204H
        P0CON           0F206H
          P0CON0          0F206H
          P0CON1          0F207H
          P1D             0F208H
          P2D             0F210H
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
          PAD             0F250H
          PADIR           0F251H
        PACON           0F252H
          PACON0          0F252H
          PACON1          0F253H
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
          I2C0RD          0F2A0H
          I2C0SA          0F2A1H
          I2C0TD          0F2A2H
          I2C0CON         0F2A3H
          I2C0MOD         0F2A4H
          I2C0STAT        0F2A5H
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
        SADCON          0F2F0H
          SADCON0         0F2F0H
          SADCON1         0F2F1H
          SADMOD0         0F2F2H

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
        ESAD            IE2.2
        EI2C0           IE2.7

        ETM0            IE3.0
        ETM1            IE3.1

        EUA0            IE4.0

        ETM2            IE5.4
        ETM3            IE5.5

        EPW0            IE6.0
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
        QSAD            IRQ2.2
        QI2C0           IRQ2.7

        QTM0            IRQ3.0
        QTM1            IRQ3.1

        QUA0            IRQ4.0

        QTM2            IRQ5.4
        QTM3            IRQ5.5

        QPW0            IRQ6.0
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
        DTM2            BLKCON0.2
        DTM3            BLKCON0.3

        DPW0            BLKCON1.0

        DSIO0           BLKCON2.0
        DUA0            BLKCON2.2
        DI2C0           BLKCON2.7

        DSAD            BLKCON4.0
        DBLD            BLKCON4.5

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

        T2D0            TM2D.0
        T2D1            TM2D.1
        T2D2            TM2D.2
        T2D3            TM2D.3
        T2D4            TM2D.4
        T2D5            TM2D.5
        T2D6            TM2D.6
        T2D7            TM2D.7

        T2C0            TM2C.0
        T2C1            TM2C.1
        T2C2            TM2C.2
        T2C3            TM2C.3
        T2C4            TM2C.4
        T2C5            TM2C.5
        T2C6            TM2C.6
        T2C7            TM2C.7

        T2CS0           TM2CON0.0
        T2CS1           TM2CON0.1
        T23M16          TM2CON0.2
        T23MFM          TM2CON0.3
        T2FMA4          TM2CON0.4
        T2FMA5          TM2CON0.5
        T2FMA6          TM2CON0.6
        T2FMA7          TM2CON0.7

        T2RUN           TM2CON1.0
        T2STAT          TM2CON1.7

        T3D0            TM3D.0
        T3D1            TM3D.1
        T3D2            TM3D.2
        T3D3            TM3D.3
        T3D4            TM3D.4
        T3D5            TM3D.5
        T3D6            TM3D.6
        T3D7            TM3D.7

        T3C0            TM3C.0
        T3C1            TM3C.1
        T3C2            TM3C.2
        T3C3            TM3C.3
        T3C4            TM3C.4
        T3C5            TM3C.5
        T3C6            TM3C.6
        T3C7            TM3C.7

        T3CS0           TM3CON0.0
        T3CS1           TM3CON0.1

        T3RUN           TM3CON1.0
        T3STAT          TM3CON1.7

        P0P0            PW0PL.0
        P0P1            PW0PL.1
        P0P2            PW0PL.2
        P0P3            PW0PL.3
        P0P4            PW0PL.4
        P0P5            PW0PL.5
        P0P6            PW0PL.6
        P0P7            PW0PL.7

        P0P8            PW0PH.0
        P0P9            PW0PH.1
        P0P10           PW0PH.2
        P0P11           PW0PH.3
        P0P12           PW0PH.4
        P0P13           PW0PH.5
        P0P14           PW0PH.6
        P0P15           PW0PH.7

        P0D0            PW0DL.0
        P0D1            PW0DL.1
        P0D2            PW0DL.2
        P0D3            PW0DL.3
        P0D4            PW0DL.4
        P0D5            PW0DL.5
        P0D6            PW0DL.6
        P0D7            PW0DL.7

        P0D8            PW0DH.0
        P0D9            PW0DH.1
        P0D10           PW0DH.2
        P0D11           PW0DH.3
        P0D12           PW0DH.4
        P0D13           PW0DH.5
        P0D14           PW0DH.6
        P0D15           PW0DH.7

        P0C0            PW0CL.0
        P0C1            PW0CL.1
        P0C2            PW0CL.2
        P0C3            PW0CL.3
        P0C4            PW0CL.4
        P0C5            PW0CL.5
        P0C6            PW0CL.6
        P0C7            PW0CL.7

        P0C8            PW0CH.0
        P0C9            PW0CH.1
        P0C10           PW0CH.2
        P0C11           PW0CH.3
        P0C12           PW0CH.4
        P0C13           PW0CH.5
        P0C14           PW0CH.6
        P0C15           PW0CH.7

        P0CS0           PW0CON0.0
        P0CS1           PW0CON0.1
        P0IS0           PW0CON0.2
        P0IS1           PW0CON0.3
        P0NEG           PW0CON0.4

        P0RUN           PW0CON1.0
        P0FLG           PW0CON1.6
        P0STAT          PW0CON1.7

        LD0             BLDCON0.0
        LD1             BLDCON0.1
        LD2             BLDCON0.2
        LD3             BLDCON0.3

        ENBL            BLDCON1.0
        BLDF            BLDCON1.1

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

        P10D            P1D.0
        P11D            P1D.1

        P20D            P2D.0
        P21D            P2D.1
        P22D            P2D.2
        P23D            P2D.3
        P24D            P2D.4

        P30D            P3D.0
        P31D            P3D.1
        P32D            P3D.2
        P33D            P3D.3
        P34D            P3D.4

        P30DIR          P3DIR.0
        P31DIR          P3DIR.1
        P32DIR          P3DIR.2
        P33DIR          P3DIR.3
        P34DIR          P3DIR.4

        P30C0           P3CON0.0
        P31C0           P3CON0.1
        P32C0           P3CON0.2
        P33C0           P3CON0.3
        P34C0           P3CON0.4

        P30C1           P3CON1.0
        P31C1           P3CON1.1
        P32C1           P3CON1.2
        P33C1           P3CON1.3
        P34C1           P3CON1.4

        P30MD0          P3MOD0.0
        P31MD0          P3MOD0.1
        P32MD0          P3MOD0.2
        P33MD0          P3MOD0.3
        P34MD0          P3MOD0.4

        P30MD1          P3MOD1.0
        P31MD1          P3MOD1.1
        P32MD1          P3MOD1.2
        P33MD1          P3MOD1.3
        P34MD1          P3MOD1.4

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

        PA0D            PAD.0
        PA1D            PAD.1
        PA2D            PAD.2
        PA3D            PAD.3
        PA4D            PAD.4
        PA5D            PAD.5
        PA6D            PAD.6
        PA7D            PAD.7

        PA0DIR          PADIR.0
        PA1DIR          PADIR.1
        PA2DIR          PADIR.2
        PA3DIR          PADIR.3
        PA4DIR          PADIR.4
        PA5DIR          PADIR.5
        PA6DIR          PADIR.6
        PA7DIR          PADIR.7

        PA0C0           PACON0.0
        PA1C0           PACON0.1
        PA2C0           PACON0.2
        PA3C0           PACON0.3
        PA4C0           PACON0.4
        PA5C0           PACON0.5
        PA6C0           PACON0.6
        PA7C0           PACON0.7

        PA0C1           PACON1.0
        PA1C1           PACON1.1
        PA2C1           PACON1.2
        PA3C1           PACON1.3
        PA4C1           PACON1.4
        PA5C1           PACON1.5
        PA6C1           PACON1.6
        PA7C1           PACON1.7

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
        U0CK0           UA0MOD0.1
        U0CK1           UA0MOD0.2
        U0RSEL          UA0MOD0.4

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

        I20R0           I2C0RD.0
        I20R1           I2C0RD.1
        I20R2           I2C0RD.2
        I20R3           I2C0RD.3
        I20R4           I2C0RD.4
        I20R5           I2C0RD.5
        I20R6           I2C0RD.6
        I20R7           I2C0RD.7

        I20RW           I2C0SA.0
        I20A0           I2C0SA.1
        I20A1           I2C0SA.2
        I20A2           I2C0SA.3
        I20A3           I2C0SA.4
        I20A4           I2C0SA.5
        I20A5           I2C0SA.6
        I20A6           I2C0SA.7

        I20T0           I2C0TD.0
        I20T1           I2C0TD.1
        I20T2           I2C0TD.2
        I20T3           I2C0TD.3
        I20T4           I2C0TD.4
        I20T5           I2C0TD.5
        I20T6           I2C0TD.6
        I20T7           I2C0TD.7

        I20ST           I2C0CON.0
        I20SP           I2C0CON.1
        I20RS           I2C0CON.2
        I20ACT          I2C0CON.7

        I20EN           I2C0MOD.0
        I20MD           I2C0MOD.1
        I20DW0          I2C0MOD.2
        I20DW1          I2C0MOD.3
        I20SYN          I2C0MOD.4
        I20FSEL0        I2C0MOD.5
        I20FSEL1        I2C0MOD.6

        I20BB           I2C0STAT.0
        I20ACR          I2C0STAT.1
        I20ER           I2C0STAT.2

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

        SALP            SADCON0.0

        SARUN           SADCON1.0

        SACH0           SADMOD0.0
        SACH1           SADMOD0.1
        SACH2           SADMOD0.2
        SACH3           SADMOD0.3



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
    FCON0           :   RWRW    0000_0011B  0000_0011B
    FCON1           :   --RW    0000_0011B  0000_0011B
    STPACP          :   ---W    -           -         
    SBYCON          :   ---W    0000_0011B  0000_0011B
    LTBR            :   --RW    1111_1111B  1111_1111B
    HTBDR           :   --RW    0000_1111B  0000_1111B
    WDTCON          :   --RW    1111_1111B  1111_1111B
    WDTMOD          :   --RW    0000_0011B  0000_0011B
    IE1             :   --RW    0000_1111B  0000_1111B
    IE2             :   --RW    1000_0101B  1000_0101B
    IE3             :   --RW    0000_0011B  0000_0011B
    IE4             :   --RW    0000_0001B  0000_0001B
    IE5             :   --RW    0011_0000B  0011_0000B
    IE6             :   --RW    1010_0001B  1010_0001B
    IE7             :   --RW    0000_1001B  0000_1001B
    IRQ0            :   --RW    0000_0011B  0000_0011B
    IRQ1            :   --RW    0000_1111B  0000_1111B
    IRQ2            :   --RW    1000_0101B  1000_0101B
    IRQ3            :   --RW    0000_0011B  0000_0011B
    IRQ4            :   --RW    0000_0001B  0000_0001B
    IRQ5            :   --RW    0011_0000B  0011_0000B
    IRQ6            :   --RW    1010_0001B  1010_0001B
    IRQ7            :   --RW    0000_1001B  0000_1001B
    EXICON0         :   --RW    0000_1111B  0000_1111B
    EXICON1         :   --RW    0000_1111B  0000_1111B
    EXICON2         :   --RW    0000_1111B  0000_1111B
    BLKCON0         :   --RW    0000_1111B  0000_1111B
    BLKCON1         :   --RW    0000_0001B  0000_0001B
    BLKCON2         :   --RW    1000_0101B  1000_0101B
    BLKCON4         :   --RW    0010_0001B  0010_0001B
    TM0D            :   RWRW    1111_1111B  1111_1111B
    TM0C            :   --RW    1111_1111B  1111_1111B
    TM0CON0         :   RWRW    0000_0111B  0000_0111B
    TM0CON1         :   --RW    1000_0001B  1000_0001B
    TM1D            :   RWRW    1111_1111B  1111_1111B
    TM1C            :   --RW    1111_1111B  1111_1111B
    TM1CON0         :   RWRW    0000_0011B  0000_0011B
    TM1CON1         :   --RW    1000_0001B  1000_0001B
    TM2D            :   RWRW    1111_1111B  1111_1111B
    TM2C            :   --RW    1111_1111B  1111_1111B
    TM2CON0         :   RWRW    1111_1111B  1111_1111B
    TM2CON1         :   --RW    1000_0001B  1000_0001B
    TM3D            :   RWRW    1111_1111B  1111_1111B
    TM3C            :   --RW    1111_1111B  1111_1111B
    TM3CON0         :   RWRW    0000_0011B  0000_0011B
    TM3CON1         :   --RW    1000_0001B  1000_0001B
    PW0PL           :   RWRW    1111_1111B  1111_1111B
    PW0PH           :   --RW    1111_1111B  1111_1111B
    PW0DL           :   RWRW    1111_1111B  1111_1111B
    PW0DH           :   --RW    1111_1111B  1111_1111B
    PW0CL           :   RWRW    1111_1111B  1111_1111B
    PW0CH           :   --RW    1111_1111B  1111_1111B
    PW0CON0         :   RWRW    0001_1111B  0001_1111B
    PW0CON1         :   --RW    1100_0001B  1100_0001B
    BLDCON0         :   RWRW    0000_1111B  0000_1111B
    BLDCON1         :   --RW    0000_0011B  0000_0011B
    NMID            :   --R-    0000_0001B  -         
    NMICON          :   --RW    0000_0001B  0000_0001B
    P0D             :   --R-    0000_1111B  -         
    P0CON0          :   RWRW    0000_1111B  0000_1111B
    P0CON1          :   --RW    0000_1111B  0000_1111B
    P1D             :   --R-    0000_0011B  -         
    P2D             :   --RW    0001_1111B  0001_1111B
    P3D             :   --RW    0001_1111B  0001_1111B
    P3DIR           :   --RW    0001_1111B  0001_1111B
    P3CON0          :   RWRW    0001_1111B  0001_1111B
    P3CON1          :   --RW    0001_1111B  0001_1111B
    P3MOD0          :   RWRW    0001_1111B  0001_1111B
    P3MOD1          :   --RW    0001_1111B  0001_1111B
    P4D             :   --RW    1111_1111B  1111_1111B
    P4DIR           :   --RW    1111_1111B  1111_1111B
    P4CON0          :   RWRW    1111_1111B  1111_1111B
    P4CON1          :   --RW    1111_1111B  1111_1111B
    P4MOD0          :   RWRW    1111_1111B  1111_1111B
    P4MOD1          :   --RW    1111_1111B  1111_1111B
    PAD             :   --RW    1111_1111B  1111_1111B
    PADIR           :   --RW    1111_1111B  1111_1111B
    PACON0          :   RWRW    1111_1111B  1111_1111B
    PACON1          :   --RW    1111_1111B  1111_1111B
    SIO0BUFL        :   RWRW    1111_1111B  1111_1111B
    SIO0BUFH        :   --RW    1111_1111B  1111_1111B
    SIO0CON         :   --RW    0000_0001B  0000_0001B
    SIO0MOD0        :   RWRW    0000_1111B  0000_1111B
    SIO0MOD1        :   --RW    0001_0111B  0001_0111B
    UA0BUF          :   --RW    1111_1111B  1111_1111B
    UA0CON          :   --RW    0000_0001B  0000_0001B
    UA0MOD0         :   RWRW    0001_0111B  0001_0111B
    UA0MOD1         :   --RW    0111_1111B  0111_1111B
    UA0BRTL         :   RWRW    1111_1111B  1111_1111B
    UA0BRTH         :   --RW    0000_1111B  0000_1111B
    UA0STAT         :   --RW    0000_1111B  0000_1111B
    I2C0RD          :   --R-    1111_1111B  -         
    I2C0SA          :   --RW    1111_1111B  1111_1111B
    I2C0TD          :   --RW    1111_1111B  1111_1111B
    I2C0CON         :   --RW    1000_0111B  1000_0111B
    I2C0MOD         :   --RW    0111_1111B  0111_1111B
    I2C0STAT        :   --R-    0000_0111B  -         
    SADR0L          :   R-R-    1111_0000B  -         
    SADR0H          :   --R-    1111_1111B  -         
    SADR1L          :   R-R-    1111_0000B  -         
    SADR1H          :   --R-    1111_1111B  -         
    SADR2L          :   R-R-    1111_0000B  -         
    SADR2H          :   --R-    1111_1111B  -         
    SADR3L          :   R-R-    1111_0000B  -         
    SADR3H          :   --R-    1111_1111B  -         
    SADCON0         :   RWRW    0000_0001B  0000_0001B
    SADCON1         :   --RW    0000_0001B  0000_0001B
    SADMOD0         :   --RW    0000_1111B  0000_1111B


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
    WDTINT,         -,          QWDT
    NMINT,          -,          QNMI
    P00INT,         EP00,       QP00
    P01INT,         EP01,       QP01
    P02INT,         EP02,       QP02
    P03INT,         EP03,       QP03
    SIO0INT,        ESIO0,      QSIO0
    SADINT,         ESAD,       QSAD
    I2C0INT,        EI2C0,      QI2C0
    TM0INT,         ETM0,       QTM0
    TM1INT,         ETM1,       QTM1
    UA0INT,         EUA0,       QUA0
    TM2INT,         ETM2,       QTM2
    TM3INT,         ETM3,       QTM3
    PW0INT,         EPW0,       QPW0
    T128HINT,       E128H,      Q128H
    T32HINT,        E32H,       Q32H
    T16HINT,        E16H,       Q16H
    T2HINT,         E2H,        Q2H

#ENDCASE

;------------- END OF DCL (ML610486) -------------
