;;*********************************************************
;;   DCL FILE for ML610401, Ver.1.00
;;   Copyright (C) 2010 OKI SEMICONDUCTOR CO., LTD.
;;
;;   Last Edition  Jun 25, 2010
;;*********************************************************

#CORE           "nX-U8/100"
#REVISION       "A3"
#TARGET         "ML610401"
#VERSION        "1.00"

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;       MEMORY RANGE
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;Program memory space (physical segment #0)
#ROM    0H , 0FFFFH
        SWI_VECTOR  00080H  , 000FFH
        CODE        00000H  , 016FFH
        CODE        01700H  , 03BFFH
        CODE        03C00H  , 03DFFH

;Data memory space (physical segment #0)
#RAM    0H , 0FFFFH
        DATA        0E000H  , 0E0BFH
        DATA        0F000H  , 0FFFFH
        INTERNALRAM 0E000H  , 0E0BFH
        SFR         0F000H  , 0FFFFH

;;                  start_adr end_adr   WINVAL
        ROMWINDOW   00000H  , 03DFFH    , 0FFH ; WINVAL is dummy

;;definition of physical segment #1 and over memory space

;; #EXTEND  cs_max, ds_max
;;      cs_max : number of physical segment for Program memory
;;      ds_max : number of physical segment for Data memory

#EXTEND  1, 16
        ROM     08H:00000H  ,  08H:03DFFH


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
        P00INT          0010H
        P01INT          0012H
        P02INT          0014H
        P03INT          0016H
        P5INT           0026H
        UA0INT          0040H
        MD0INT          0044H
        RADINT          004AH
        TM2INT          0058H
        TM3INT          005AH
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
        LTBADJ          0F00CH
          LTBADJL         0F00CH
          LTBADJH         0F00DH
          WDTCON          0F00EH
          WDTMOD          0F00FH
          IE1             0F011H
          IE2             0F012H
          IE4             0F014H
          IE5             0F015H
          IE6             0F016H
          IE7             0F017H
          IRQ0            0F018H
          IRQ1            0F019H
          IRQ2            0F01AH
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
          BLKCON3         0F02BH
          BLKCON4         0F02CH
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
          CAPCON          0F090H
          CAPSTAT         0F091H
          CAPR0           0F092H
          CAPR1           0F093H
          CAPTB           0F094H
          BIASCON         0F0F0H
        DSPMOD          0F0F2H
          DSPMOD0         0F0F2H
          DSPMOD1         0F0F3H
          DSPCON          0F0F4H
          DSPR00          0F100H
          DSPR01          0F101H
          DSPR02          0F102H
          DSPR03          0F103H
          DSPR04          0F104H
          DSPR05          0F105H
          DSPR06          0F106H
          DSPR07          0F107H
          DSPR08          0F108H
          DSPR09          0F109H
          DSPR0A          0F10AH
          DSPR0B          0F10BH
          DSPR0C          0F10CH
          DSPR0D          0F10DH
          DSPR0E          0F10EH
          DSPR0F          0F10FH
          DSPR10          0F110H
          DSPR11          0F111H
          DSPR12          0F112H
          DSPR13          0F113H
          DSPR14          0F114H
          DSPR15          0F115H
          P0D             0F204H
        P0CON           0F206H
          P0CON0          0F206H
          P0CON1          0F207H
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
          P3MOD0          0F21CH
          P4D             0F220H
          P4DIR           0F221H
        P4CON           0F222H
          P4CON0          0F222H
          P4CON1          0F223H
        P4MOD           0F224H
          P4MOD0          0F224H
          P4MOD1          0F225H
          P5D             0F228H
          P5DIR           0F229H
        P5CON           0F22AH
          P5CON0          0F22AH
          P5CON1          0F22BH
        P5MOD           0F22CH
          P5MOD0          0F22CH
          P5MOD1          0F22DH
          P5ISEL          0F22EH
          P6D             0F230H
          P6CON0          0F232H
          UA0BUF          0F290H
          UA0CON          0F291H
        UA0MOD          0F292H
          UA0MOD0         0F292H
          UA0MOD1         0F293H
        UA0BRT          0F294H
          UA0BRTL         0F294H
          UA0BRTH         0F295H
          UA0STAT         0F296H
          MD0CON          0F2C0H
          MD0TMP          0F2C1H
        MD0TL           0F2C2H
          MD0TON          0F2C2H
          MD0LEN          0F2C3H
          RADCA0          0F300H
          RADCA1          0F301H
          RADCB0          0F304H
          RADCB1          0F305H
          RADMOD          0F308H
          RADCON          0F309H
          DS0C0A          0F400H
          DS1C0A          0F401H
          DS2C0A          0F402H
          DS3C0A          0F403H
          DS4C0A          0F404H
          DS5C0A          0F405H
          DS6C0A          0F406H
          DS7C0A          0F407H
          DS8C0A          0F408H
          DS9C0A          0F409H
          DS10C0A         0F40AH
          DS11C0A         0F40BH
          DS12C0A         0F40CH
          DS13C0A         0F40DH
          DS14C0A         0F40EH
          DS15C0A         0F40FH
          DS16C0A         0F410H
          DS17C0A         0F411H
          DS18C0A         0F412H
          DS19C0A         0F413H
          DS20C0A         0F414H
          DS21C0A         0F415H
          DS0C1A          0F440H
          DS1C1A          0F441H
          DS2C1A          0F442H
          DS3C1A          0F443H
          DS4C1A          0F444H
          DS5C1A          0F445H
          DS6C1A          0F446H
          DS7C1A          0F447H
          DS8C1A          0F448H
          DS9C1A          0F449H
          DS10C1A         0F44AH
          DS11C1A         0F44BH
          DS12C1A         0F44CH
          DS13C1A         0F44DH
          DS14C1A         0F44EH
          DS15C1A         0F44FH
          DS16C1A         0F450H
          DS17C1A         0F451H
          DS18C1A         0F452H
          DS19C1A         0F453H
          DS20C1A         0F454H
          DS21C1A         0F455H
          DS0C2A          0F480H
          DS1C2A          0F481H
          DS2C2A          0F482H
          DS3C2A          0F483H
          DS4C2A          0F484H
          DS5C2A          0F485H
          DS6C2A          0F486H
          DS7C2A          0F487H
          DS8C2A          0F488H
          DS9C2A          0F489H
          DS10C2A         0F48AH
          DS11C2A         0F48BH
          DS12C2A         0F48CH
          DS13C2A         0F48DH
          DS14C2A         0F48EH
          DS15C2A         0F48FH
          DS16C2A         0F490H
          DS17C2A         0F491H
          DS18C2A         0F492H
          DS19C2A         0F493H
          DS20C2A         0F494H
          DS21C2A         0F495H
          DS0C3A          0F4C0H
          DS1C3A          0F4C1H
          DS2C3A          0F4C2H
          DS3C3A          0F4C3H
          DS4C3A          0F4C4H
          DS5C3A          0F4C5H
          DS6C3A          0F4C6H
          DS7C3A          0F4C7H
          DS8C3A          0F4C8H
          DS9C3A          0F4C9H
          DS10C3A         0F4CAH
          DS11C3A         0F4CBH
          DS12C3A         0F4CCH
          DS13C3A         0F4CDH
          DS14C3A         0F4CEH
          DS15C3A         0F4CFH
          DS16C3A         0F4D0H
          DS17C3A         0F4D1H
          DS18C3A         0F4D2H
          DS19C3A         0F4D3H
          DS20C3A         0F4D4H
          DS21C3A         0F4D5H
          DS0C4A          0F500H
          DS1C4A          0F501H
          DS2C4A          0F502H
          DS3C4A          0F503H
          DS4C4A          0F504H
          DS5C4A          0F505H
          DS6C4A          0F506H
          DS7C4A          0F507H
          DS8C4A          0F508H
          DS9C4A          0F509H
          DS10C4A         0F50AH
          DS11C4A         0F50BH
          DS12C4A         0F50CH
          DS13C4A         0F50DH
          DS14C4A         0F50EH
          DS15C4A         0F50FH
          DS16C4A         0F510H
          DS17C4A         0F511H
          DS18C4A         0F512H
          DS19C4A         0F513H
          DS20C4A         0F514H
          DS21C4A         0F515H
          DS0C0B          0F600H
          DS1C0B          0F601H
          DS2C0B          0F602H
          DS3C0B          0F603H
          DS4C0B          0F604H
          DS5C0B          0F605H
          DS6C0B          0F606H
          DS7C0B          0F607H
          DS8C0B          0F608H
          DS9C0B          0F609H
          DS10C0B         0F60AH
          DS11C0B         0F60BH
          DS12C0B         0F60CH
          DS13C0B         0F60DH
          DS14C0B         0F60EH
          DS15C0B         0F60FH
          DS16C0B         0F610H
          DS17C0B         0F611H
          DS18C0B         0F612H
          DS19C0B         0F613H
          DS20C0B         0F614H
          DS21C0B         0F615H
          DS0C1B          0F640H
          DS1C1B          0F641H
          DS2C1B          0F642H
          DS3C1B          0F643H
          DS4C1B          0F644H
          DS5C1B          0F645H
          DS6C1B          0F646H
          DS7C1B          0F647H
          DS8C1B          0F648H
          DS9C1B          0F649H
          DS10C1B         0F64AH
          DS11C1B         0F64BH
          DS12C1B         0F64CH
          DS13C1B         0F64DH
          DS14C1B         0F64EH
          DS15C1B         0F64FH
          DS16C1B         0F650H
          DS17C1B         0F651H
          DS18C1B         0F652H
          DS19C1B         0F653H
          DS20C1B         0F654H
          DS21C1B         0F655H
          DS0C2B          0F680H
          DS1C2B          0F681H
          DS2C2B          0F682H
          DS3C2B          0F683H
          DS4C2B          0F684H
          DS5C2B          0F685H
          DS6C2B          0F686H
          DS7C2B          0F687H
          DS8C2B          0F688H
          DS9C2B          0F689H
          DS10C2B         0F68AH
          DS11C2B         0F68BH
          DS12C2B         0F68CH
          DS13C2B         0F68DH
          DS14C2B         0F68EH
          DS15C2B         0F68FH
          DS16C2B         0F690H
          DS17C2B         0F691H
          DS18C2B         0F692H
          DS19C2B         0F693H
          DS20C2B         0F694H
          DS21C2B         0F695H
          DS0C3B          0F6C0H
          DS1C3B          0F6C1H
          DS2C3B          0F6C2H
          DS3C3B          0F6C3H
          DS4C3B          0F6C4H
          DS5C3B          0F6C5H
          DS6C3B          0F6C6H
          DS7C3B          0F6C7H
          DS8C3B          0F6C8H
          DS9C3B          0F6C9H
          DS10C3B         0F6CAH
          DS11C3B         0F6CBH
          DS12C3B         0F6CCH
          DS13C3B         0F6CDH
          DS14C3B         0F6CEH
          DS15C3B         0F6CFH
          DS16C3B         0F6D0H
          DS17C3B         0F6D1H
          DS18C3B         0F6D2H
          DS19C3B         0F6D3H
          DS20C3B         0F6D4H
          DS21C3B         0F6D5H
          DS0C4B          0F700H
          DS1C4B          0F701H
          DS2C4B          0F702H
          DS3C4B          0F703H
          DS4C4B          0F704H
          DS5C4B          0F705H
          DS6C4B          0F706H
          DS7C4B          0F707H
          DS8C4B          0F708H
          DS9C4B          0F709H
          DS10C4B         0F70AH
          DS11C4B         0F70BH
          DS12C4B         0F70CH
          DS13C4B         0F70DH
          DS14C4B         0F70EH
          DS15C4B         0F70FH
          DS16C4B         0F710H
          DS17C4B         0F711H
          DS18C4B         0F712H
          DS19C4B         0F713H
          DS20C4B         0F714H
          DS21C4B         0F715H

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
        XSTR            RSTAT.1
        WDTR            RSTAT.2

        SYSC0           FCON0.0
        SYSC1           FCON0.1
        OUTC0           FCON0.4
        OUTC1           FCON0.5

        SYSCLK          FCON1.0
        ENOSC           FCON1.1
        ENMLT           FCON1.2

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

        LADJ0           LTBADJL.0
        LADJ1           LTBADJL.1
        LADJ2           LTBADJL.2
        LADJ3           LTBADJL.3
        LADJ4           LTBADJL.4
        LADJ5           LTBADJL.5
        LADJ6           LTBADJL.6
        LADJ7           LTBADJL.7

        LADJ8           LTBADJH.0
        LADJ9           LTBADJH.1
        LADJS           LTBADJH.2

        WDP             WDTCON.0

        WDT0            WDTMOD.0
        WDT1            WDTMOD.1

        EP00            IE1.0
        EP01            IE1.1
        EP02            IE1.2
        EP03            IE1.3

        EP5             IE2.3

        EUA0            IE4.0
        EMD0            IE4.2
        ERAD            IE4.5

        ETM2            IE5.4
        ETM3            IE5.5

        E128H           IE6.5
        E32H            IE6.7

        E16H            IE7.0
        E2H             IE7.3

        QWDT            IRQ0.0

        QP00            IRQ1.0
        QP01            IRQ1.1
        QP02            IRQ1.2
        QP03            IRQ1.3

        QP5             IRQ2.3

        QUA0            IRQ4.0
        QMD0            IRQ4.2
        QRAD            IRQ4.5

        QTM2            IRQ5.4
        QTM3            IRQ5.5

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

        DTM2            BLKCON0.2
        DTM3            BLKCON0.3

        DCAPR           BLKCON1.6

        DUA0            BLKCON2.2

        DMD0            BLKCON3.0

        DRAD            BLKCON4.1
        DLCD            BLKCON4.6

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

        ECAP0           CAPCON.0
        ECAP1           CAPCON.1

        CAPF0           CAPSTAT.0
        CAPF1           CAPSTAT.1

        CP00            CAPR0.0
        CP01            CAPR0.1
        CP02            CAPR0.2
        CP03            CAPR0.3
        CP04            CAPR0.4
        CP05            CAPR0.5
        CP06            CAPR0.6
        CP07            CAPR0.7

        CP10            CAPR1.0
        CP11            CAPR1.1
        CP12            CAPR1.2
        CP13            CAPR1.3
        CP14            CAPR1.4
        CP15            CAPR1.5
        CP16            CAPR1.6
        CP17            CAPR1.7

        CPTB0           CAPTB.0
        CPTB1           CAPTB.1
        CPTB2           CAPTB.2
        CPTB3           CAPTB.3
        CPTB4           CAPTB.4
        CPTB5           CAPTB.5
        CPTB6           CAPTB.6
        CPTB7           CAPTB.7

        BSN0            BIASCON.1
        BSN1            BIASCON.2
        BSN2            BIASCON.3
        BSEL0           BIASCON.4
        BSEL1           BIASCON.5

        DUTY0           DSPMOD0.0
        DUTY1           DSPMOD0.1
        DUTY2           DSPMOD0.2
        FRM0            DSPMOD0.5
        FRM1            DSPMOD0.6

        DASN            DSPMOD1.2

        LMD0            DSPCON.0
        LMD1            DSPCON.1

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

        P20D            P2D.0
        P21D            P2D.1
        P22D            P2D.2
        P24D            P2D.4

        P20C0           P2CON0.0
        P21C0           P2CON0.1
        P22C0           P2CON0.2
        P24C0           P2CON0.4

        P20C1           P2CON1.0
        P21C1           P2CON1.1
        P22C1           P2CON1.2
        P24C1           P2CON1.4

        P20MD           P2MOD.0
        P21MD           P2MOD.1
        P22MD           P2MOD.2

        P30D            P3D.0
        P31D            P3D.1
        P32D            P3D.2
        P33D            P3D.3
        P34D            P3D.4
        P35D            P3D.5

        P30DIR          P3DIR.0
        P31DIR          P3DIR.1
        P32DIR          P3DIR.2
        P33DIR          P3DIR.3
        P34DIR          P3DIR.4
        P35DIR          P3DIR.5

        P30C0           P3CON0.0
        P31C0           P3CON0.1
        P32C0           P3CON0.2
        P33C0           P3CON0.3
        P34C0           P3CON0.4
        P35C0           P3CON0.5

        P30C1           P3CON1.0
        P31C1           P3CON1.1
        P32C1           P3CON1.2
        P33C1           P3CON1.3
        P34C1           P3CON1.4
        P35C1           P3CON1.5

        P30MD0          P3MOD0.0
        P31MD0          P3MOD0.1
        P32MD0          P3MOD0.2
        P33MD0          P3MOD0.3
        P34MD0          P3MOD0.4
        P35MD0          P3MOD0.5

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

        P42MD0          P4MOD0.2
        P43MD0          P4MOD0.3
        P44MD0          P4MOD0.4
        P45MD0          P4MOD0.5
        P46MD0          P4MOD0.6
        P47MD0          P4MOD0.7

        P42MD1          P4MOD1.2
        P43MD1          P4MOD1.3
        P44MD1          P4MOD1.4
        P45MD1          P4MOD1.5
        P46MD1          P4MOD1.6
        P47MD1          P4MOD1.7

        P50D            P5D.0
        P51D            P5D.1
        P52D            P5D.2
        P53D            P5D.3

        P50DIR          P5DIR.0
        P51DIR          P5DIR.1
        P52DIR          P5DIR.2
        P53DIR          P5DIR.3

        P50C0           P5CON0.0
        P51C0           P5CON0.1
        P52C0           P5CON0.2
        P53C0           P5CON0.3

        P5UD            P5CON1.0

        P50MD0          P5MOD0.0

        P50MD1          P5MOD1.0

        P50IS           P5ISEL.0
        P51IS           P5ISEL.1
        P52IS           P5ISEL.2
        P53IS           P5ISEL.3

        P60D            P6D.0
        P61D            P6D.1
        P62D            P6D.2
        P63D            P6D.3
        P64D            P6D.4
        P65D            P6D.5
        P66D            P6D.6
        P67D            P6D.7

        P60C0           P6CON0.0
        P61C0           P6CON0.1
        P62C0           P6CON0.2
        P63C0           P6CON0.3
        P64C0           P6CON0.4
        P65C0           P6CON0.5
        P66C0           P6CON0.6
        P67C0           P6CON0.7

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

        M0RUN           MD0CON.0
        BZMD            MD0CON.1

        M0TM0           MD0TMP.0
        M0TM1           MD0TMP.1
        M0TM2           MD0TMP.2
        M0TM3           MD0TMP.3

        M0TN0           MD0TON.0
        M0TN1           MD0TON.1
        M0TN2           MD0TON.2
        M0TN3           MD0TON.3
        M0TN4           MD0TON.4
        M0TN5           MD0TON.5
        M0TN6           MD0TON.6

        M0LN0           MD0LEN.0
        M0LN1           MD0LEN.1
        M0LN2           MD0LEN.2
        M0LN3           MD0LEN.3
        M0LN4           MD0LEN.4
        M0LN5           MD0LEN.5

        RAA0            RADCA0.0
        RAA1            RADCA0.1
        RAA2            RADCA0.2
        RAA3            RADCA0.3
        RAA4            RADCA0.4
        RAA5            RADCA0.5
        RAA6            RADCA0.6
        RAA7            RADCA0.7

        RAA8            RADCA1.0
        RAA9            RADCA1.1
        RAA10           RADCA1.2
        RAA11           RADCA1.3
        RAA12           RADCA1.4
        RAA13           RADCA1.5
        RAA14           RADCA1.6
        RAA15           RADCA1.7

        RAB0            RADCB0.0
        RAB1            RADCB0.1
        RAB2            RADCB0.2
        RAB3            RADCB0.3
        RAB4            RADCB0.4
        RAB5            RADCB0.5
        RAB6            RADCB0.6
        RAB7            RADCB0.7

        RAB8            RADCB1.0
        RAB9            RADCB1.1
        RAB10           RADCB1.2
        RAB11           RADCB1.3
        RAB12           RADCB1.4
        RAB13           RADCB1.5
        RAB14           RADCB1.6
        RAB15           RADCB1.7

        OM0             RADMOD.0
        OM1             RADMOD.1
        OM2             RADMOD.2
        OM3             RADMOD.3
        RADI            RADMOD.4
        RACK0           RADMOD.5
        RACK1           RADMOD.6
        RACK2           RADMOD.7

        RARUN           RADCON.0



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
    RSTAT           :   --RW    0000_0111B  0000_0111B
    FCON0           :   RWRW    0011_0011B  0011_0011B
    FCON1           :   --RW    0000_0111B  0000_0111B
    STPACP          :   ---W    -           -         
    SBYCON          :   ---W    0000_0011B  0000_0011B
    LTBR            :   --RW    1111_1111B  1111_1111B
    HTBDR           :   --RW    0000_1111B  0000_1111B
    LTBADJL         :   RWRW    1111_1111B  1111_1111B
    LTBADJH         :   --RW    0000_0111B  0000_0111B
    WDTCON          :   --RW    1111_1111B  1111_1111B
    WDTMOD          :   --RW    0000_0011B  0000_0011B
    IE1             :   --RW    0000_1111B  0000_1111B
    IE2             :   --RW    0000_1000B  0000_1000B
    IE4             :   --RW    0010_0101B  0010_0101B
    IE5             :   --RW    0011_0000B  0011_0000B
    IE6             :   --RW    1010_0000B  1010_0000B
    IE7             :   --RW    0000_1001B  0000_1001B
    IRQ0            :   --RW    0000_0001B  0000_0001B
    IRQ1            :   --RW    0000_1111B  0000_1111B
    IRQ2            :   --RW    0000_1000B  0000_1000B
    IRQ4            :   --RW    0010_0101B  0010_0101B
    IRQ5            :   --RW    0011_0000B  0011_0000B
    IRQ6            :   --RW    1010_0000B  1010_0000B
    IRQ7            :   --RW    0000_1001B  0000_1001B
    EXICON0         :   --RW    0000_1111B  0000_1111B
    EXICON1         :   --RW    0000_1111B  0000_1111B
    EXICON2         :   --RW    0000_1111B  0000_1111B
    BLKCON0         :   --RW    0000_1100B  0000_1100B
    BLKCON1         :   --RW    0100_0000B  0100_0000B
    BLKCON2         :   --RW    0000_0100B  0000_0100B
    BLKCON3         :   --RW    0000_0001B  0000_0001B
    BLKCON4         :   --RW    0100_0010B  0100_0010B
    TM2D            :   RWRW    1111_1111B  1111_1111B
    TM2C            :   --RW    1111_1111B  1111_1111B
    TM2CON0         :   RWRW    1111_1111B  1111_1111B
    TM2CON1         :   --RW    1000_0001B  1000_0001B
    TM3D            :   RWRW    1111_1111B  1111_1111B
    TM3C            :   --RW    1111_1111B  1111_1111B
    TM3CON0         :   RWRW    0000_0011B  0000_0011B
    TM3CON1         :   --RW    1000_0001B  1000_0001B
    CAPCON          :   --RW    0000_0011B  0000_0011B
    CAPSTAT         :   --R-    0000_0011B  -         
    CAPR0           :   --RW    1111_1111B  1111_1111B
    CAPR1           :   --RW    1111_1111B  1111_1111B
    CAPTB           :   --R-    1111_1111B  -         
    BIASCON         :   --RW    0011_1110B  0011_1110B
    DSPMOD0         :   RWRW    0110_0111B  0110_0111B
    DSPMOD1         :   --RW    0000_0100B  0000_0100B
    DSPCON          :   --RW    0000_0011B  0000_0011B
    DSPR00          :   --RW    0001_1111B  0001_1111B
    DSPR01          :   --RW    0001_1111B  0001_1111B
    DSPR02          :   --RW    0001_1111B  0001_1111B
    DSPR03          :   --RW    0001_1111B  0001_1111B
    DSPR04          :   --RW    0001_1111B  0001_1111B
    DSPR05          :   --RW    0001_1111B  0001_1111B
    DSPR06          :   --RW    0001_1111B  0001_1111B
    DSPR07          :   --RW    0001_1111B  0001_1111B
    DSPR08          :   --RW    0001_1111B  0001_1111B
    DSPR09          :   --RW    0001_1111B  0001_1111B
    DSPR0A          :   --RW    0001_1111B  0001_1111B
    DSPR0B          :   --RW    0001_1111B  0001_1111B
    DSPR0C          :   --RW    0001_1111B  0001_1111B
    DSPR0D          :   --RW    0001_1111B  0001_1111B
    DSPR0E          :   --RW    0001_1111B  0001_1111B
    DSPR0F          :   --RW    0001_1111B  0001_1111B
    DSPR10          :   --RW    0001_1111B  0001_1111B
    DSPR11          :   --RW    0001_1111B  0001_1111B
    DSPR12          :   --RW    0001_1111B  0001_1111B
    DSPR13          :   --RW    0001_1111B  0001_1111B
    DSPR14          :   --RW    0001_1111B  0001_1111B
    DSPR15          :   --RW    0001_1111B  0001_1111B
    P0D             :   --R-    0000_1111B  -         
    P0CON0          :   RWRW    0000_1111B  0000_1111B
    P0CON1          :   --RW    0000_1111B  0000_1111B
    P2D             :   --RW    0001_0111B  0001_0111B
    P2CON0          :   RWRW    0001_0111B  0001_0111B
    P2CON1          :   --RW    0001_0111B  0001_0111B
    P2MOD           :   --RW    0000_0111B  0000_0111B
    P3D             :   --RW    0011_1111B  0011_1111B
    P3DIR           :   --RW    0011_1111B  0011_1111B
    P3CON0          :   RWRW    0011_1111B  0011_1111B
    P3CON1          :   --RW    0011_1111B  0011_1111B
    P3MOD0          :   --RW    0011_1111B  0011_1111B
    P4D             :   --RW    1111_1111B  1111_1111B
    P4DIR           :   --RW    1111_1111B  1111_1111B
    P4CON0          :   RWRW    1111_1111B  1111_1111B
    P4CON1          :   --RW    1111_1111B  1111_1111B
    P4MOD0          :   RWRW    1111_1100B  1111_1100B
    P4MOD1          :   --RW    1111_1100B  1111_1100B
    P5D             :   --RW    0000_1111B  0000_1111B
    P5DIR           :   --RW    0000_1111B  0000_1111B
    P5CON0          :   RWRW    0000_1111B  0000_1111B
    P5CON1          :   --RW    0000_0001B  0000_0001B
    P5MOD0          :   RWRW    0000_0001B  0000_0001B
    P5MOD1          :   --RW    0000_0001B  0000_0001B
    P5ISEL          :   --RW    0000_1111B  0000_1111B
    P6D             :   --RW    1111_1111B  1111_1111B
    P6CON0          :   --RW    1111_1111B  1111_1111B
    UA0BUF          :   --RW    1111_1111B  1111_1111B
    UA0CON          :   --RW    0000_0001B  0000_0001B
    UA0MOD0         :   RWRW    0011_0111B  0011_0111B
    UA0MOD1         :   --RW    0111_1111B  0111_1111B
    UA0BRTL         :   RWRW    1111_1111B  1111_1111B
    UA0BRTH         :   --RW    0000_1111B  0000_1111B
    UA0STAT         :   --RW    0000_1111B  0000_1111B
    MD0CON          :   --RW    0000_0011B  0000_0011B
    MD0TMP          :   --RW    0000_1111B  0000_1111B
    MD0TON          :   RWRW    0111_1111B  0111_1111B
    MD0LEN          :   --RW    0011_1111B  0011_1111B
    RADCA0          :   --RW    1111_1111B  1111_1111B
    RADCA1          :   --RW    1111_1111B  1111_1111B
    RADCB0          :   --RW    1111_1111B  1111_1111B
    RADCB1          :   --RW    1111_1111B  1111_1111B
    RADMOD          :   --RW    1111_1111B  1111_1111B
    RADCON          :   --RW    0000_0001B  0000_0001B
    DS0C0A          :   --RW    0001_1111B  0001_1111B
    DS1C0A          :   --RW    0001_1111B  0001_1111B
    DS2C0A          :   --RW    0001_1111B  0001_1111B
    DS3C0A          :   --RW    0001_1111B  0001_1111B
    DS4C0A          :   --RW    0001_1111B  0001_1111B
    DS5C0A          :   --RW    0001_1111B  0001_1111B
    DS6C0A          :   --RW    0001_1111B  0001_1111B
    DS7C0A          :   --RW    0001_1111B  0001_1111B
    DS8C0A          :   --RW    0001_1111B  0001_1111B
    DS9C0A          :   --RW    0001_1111B  0001_1111B
    DS10C0A         :   --RW    0001_1111B  0001_1111B
    DS11C0A         :   --RW    0001_1111B  0001_1111B
    DS12C0A         :   --RW    0001_1111B  0001_1111B
    DS13C0A         :   --RW    0001_1111B  0001_1111B
    DS14C0A         :   --RW    0001_1111B  0001_1111B
    DS15C0A         :   --RW    0001_1111B  0001_1111B
    DS16C0A         :   --RW    0001_1111B  0001_1111B
    DS17C0A         :   --RW    0001_1111B  0001_1111B
    DS18C0A         :   --RW    0001_1111B  0001_1111B
    DS19C0A         :   --RW    0001_1111B  0001_1111B
    DS20C0A         :   --RW    0001_1111B  0001_1111B
    DS21C0A         :   --RW    0001_1111B  0001_1111B
    DS0C1A          :   --RW    0001_1111B  0001_1111B
    DS1C1A          :   --RW    0001_1111B  0001_1111B
    DS2C1A          :   --RW    0001_1111B  0001_1111B
    DS3C1A          :   --RW    0001_1111B  0001_1111B
    DS4C1A          :   --RW    0001_1111B  0001_1111B
    DS5C1A          :   --RW    0001_1111B  0001_1111B
    DS6C1A          :   --RW    0001_1111B  0001_1111B
    DS7C1A          :   --RW    0001_1111B  0001_1111B
    DS8C1A          :   --RW    0001_1111B  0001_1111B
    DS9C1A          :   --RW    0001_1111B  0001_1111B
    DS10C1A         :   --RW    0001_1111B  0001_1111B
    DS11C1A         :   --RW    0001_1111B  0001_1111B
    DS12C1A         :   --RW    0001_1111B  0001_1111B
    DS13C1A         :   --RW    0001_1111B  0001_1111B
    DS14C1A         :   --RW    0001_1111B  0001_1111B
    DS15C1A         :   --RW    0001_1111B  0001_1111B
    DS16C1A         :   --RW    0001_1111B  0001_1111B
    DS17C1A         :   --RW    0001_1111B  0001_1111B
    DS18C1A         :   --RW    0001_1111B  0001_1111B
    DS19C1A         :   --RW    0001_1111B  0001_1111B
    DS20C1A         :   --RW    0001_1111B  0001_1111B
    DS21C1A         :   --RW    0001_1111B  0001_1111B
    DS0C2A          :   --RW    0001_1111B  0001_1111B
    DS1C2A          :   --RW    0001_1111B  0001_1111B
    DS2C2A          :   --RW    0001_1111B  0001_1111B
    DS3C2A          :   --RW    0001_1111B  0001_1111B
    DS4C2A          :   --RW    0001_1111B  0001_1111B
    DS5C2A          :   --RW    0001_1111B  0001_1111B
    DS6C2A          :   --RW    0001_1111B  0001_1111B
    DS7C2A          :   --RW    0001_1111B  0001_1111B
    DS8C2A          :   --RW    0001_1111B  0001_1111B
    DS9C2A          :   --RW    0001_1111B  0001_1111B
    DS10C2A         :   --RW    0001_1111B  0001_1111B
    DS11C2A         :   --RW    0001_1111B  0001_1111B
    DS12C2A         :   --RW    0001_1111B  0001_1111B
    DS13C2A         :   --RW    0001_1111B  0001_1111B
    DS14C2A         :   --RW    0001_1111B  0001_1111B
    DS15C2A         :   --RW    0001_1111B  0001_1111B
    DS16C2A         :   --RW    0001_1111B  0001_1111B
    DS17C2A         :   --RW    0001_1111B  0001_1111B
    DS18C2A         :   --RW    0001_1111B  0001_1111B
    DS19C2A         :   --RW    0001_1111B  0001_1111B
    DS20C2A         :   --RW    0001_1111B  0001_1111B
    DS21C2A         :   --RW    0001_1111B  0001_1111B
    DS0C3A          :   --RW    0001_1111B  0001_1111B
    DS1C3A          :   --RW    0001_1111B  0001_1111B
    DS2C3A          :   --RW    0001_1111B  0001_1111B
    DS3C3A          :   --RW    0001_1111B  0001_1111B
    DS4C3A          :   --RW    0001_1111B  0001_1111B
    DS5C3A          :   --RW    0001_1111B  0001_1111B
    DS6C3A          :   --RW    0001_1111B  0001_1111B
    DS7C3A          :   --RW    0001_1111B  0001_1111B
    DS8C3A          :   --RW    0001_1111B  0001_1111B
    DS9C3A          :   --RW    0001_1111B  0001_1111B
    DS10C3A         :   --RW    0001_1111B  0001_1111B
    DS11C3A         :   --RW    0001_1111B  0001_1111B
    DS12C3A         :   --RW    0001_1111B  0001_1111B
    DS13C3A         :   --RW    0001_1111B  0001_1111B
    DS14C3A         :   --RW    0001_1111B  0001_1111B
    DS15C3A         :   --RW    0001_1111B  0001_1111B
    DS16C3A         :   --RW    0001_1111B  0001_1111B
    DS17C3A         :   --RW    0001_1111B  0001_1111B
    DS18C3A         :   --RW    0001_1111B  0001_1111B
    DS19C3A         :   --RW    0001_1111B  0001_1111B
    DS20C3A         :   --RW    0001_1111B  0001_1111B
    DS21C3A         :   --RW    0001_1111B  0001_1111B
    DS0C4A          :   --RW    0001_1111B  0001_1111B
    DS1C4A          :   --RW    0001_1111B  0001_1111B
    DS2C4A          :   --RW    0001_1111B  0001_1111B
    DS3C4A          :   --RW    0001_1111B  0001_1111B
    DS4C4A          :   --RW    0001_1111B  0001_1111B
    DS5C4A          :   --RW    0001_1111B  0001_1111B
    DS6C4A          :   --RW    0001_1111B  0001_1111B
    DS7C4A          :   --RW    0001_1111B  0001_1111B
    DS8C4A          :   --RW    0001_1111B  0001_1111B
    DS9C4A          :   --RW    0001_1111B  0001_1111B
    DS10C4A         :   --RW    0001_1111B  0001_1111B
    DS11C4A         :   --RW    0001_1111B  0001_1111B
    DS12C4A         :   --RW    0001_1111B  0001_1111B
    DS13C4A         :   --RW    0001_1111B  0001_1111B
    DS14C4A         :   --RW    0001_1111B  0001_1111B
    DS15C4A         :   --RW    0001_1111B  0001_1111B
    DS16C4A         :   --RW    0001_1111B  0001_1111B
    DS17C4A         :   --RW    0001_1111B  0001_1111B
    DS18C4A         :   --RW    0001_1111B  0001_1111B
    DS19C4A         :   --RW    0001_1111B  0001_1111B
    DS20C4A         :   --RW    0001_1111B  0001_1111B
    DS21C4A         :   --RW    0001_1111B  0001_1111B
    DS0C0B          :   --RW    0000_0111B  0000_0111B
    DS1C0B          :   --RW    0000_0111B  0000_0111B
    DS2C0B          :   --RW    0000_0111B  0000_0111B
    DS3C0B          :   --RW    0000_0111B  0000_0111B
    DS4C0B          :   --RW    0000_0111B  0000_0111B
    DS5C0B          :   --RW    0000_0111B  0000_0111B
    DS6C0B          :   --RW    0000_0111B  0000_0111B
    DS7C0B          :   --RW    0000_0111B  0000_0111B
    DS8C0B          :   --RW    0000_0111B  0000_0111B
    DS9C0B          :   --RW    0000_0111B  0000_0111B
    DS10C0B         :   --RW    0000_0111B  0000_0111B
    DS11C0B         :   --RW    0000_0111B  0000_0111B
    DS12C0B         :   --RW    0000_0111B  0000_0111B
    DS13C0B         :   --RW    0000_0111B  0000_0111B
    DS14C0B         :   --RW    0000_0111B  0000_0111B
    DS15C0B         :   --RW    0000_0111B  0000_0111B
    DS16C0B         :   --RW    0000_0111B  0000_0111B
    DS17C0B         :   --RW    0000_0111B  0000_0111B
    DS18C0B         :   --RW    0000_0111B  0000_0111B
    DS19C0B         :   --RW    0000_0111B  0000_0111B
    DS20C0B         :   --RW    0000_0111B  0000_0111B
    DS21C0B         :   --RW    0000_0111B  0000_0111B
    DS0C1B          :   --RW    0000_0111B  0000_0111B
    DS1C1B          :   --RW    0000_0111B  0000_0111B
    DS2C1B          :   --RW    0000_0111B  0000_0111B
    DS3C1B          :   --RW    0000_0111B  0000_0111B
    DS4C1B          :   --RW    0000_0111B  0000_0111B
    DS5C1B          :   --RW    0000_0111B  0000_0111B
    DS6C1B          :   --RW    0000_0111B  0000_0111B
    DS7C1B          :   --RW    0000_0111B  0000_0111B
    DS8C1B          :   --RW    0000_0111B  0000_0111B
    DS9C1B          :   --RW    0000_0111B  0000_0111B
    DS10C1B         :   --RW    0000_0111B  0000_0111B
    DS11C1B         :   --RW    0000_0111B  0000_0111B
    DS12C1B         :   --RW    0000_0111B  0000_0111B
    DS13C1B         :   --RW    0000_0111B  0000_0111B
    DS14C1B         :   --RW    0000_0111B  0000_0111B
    DS15C1B         :   --RW    0000_0111B  0000_0111B
    DS16C1B         :   --RW    0000_0111B  0000_0111B
    DS17C1B         :   --RW    0000_0111B  0000_0111B
    DS18C1B         :   --RW    0000_0111B  0000_0111B
    DS19C1B         :   --RW    0000_0111B  0000_0111B
    DS20C1B         :   --RW    0000_0111B  0000_0111B
    DS21C1B         :   --RW    0000_0111B  0000_0111B
    DS0C2B          :   --RW    0000_0111B  0000_0111B
    DS1C2B          :   --RW    0000_0111B  0000_0111B
    DS2C2B          :   --RW    0000_0111B  0000_0111B
    DS3C2B          :   --RW    0000_0111B  0000_0111B
    DS4C2B          :   --RW    0000_0111B  0000_0111B
    DS5C2B          :   --RW    0000_0111B  0000_0111B
    DS6C2B          :   --RW    0000_0111B  0000_0111B
    DS7C2B          :   --RW    0000_0111B  0000_0111B
    DS8C2B          :   --RW    0000_0111B  0000_0111B
    DS9C2B          :   --RW    0000_0111B  0000_0111B
    DS10C2B         :   --RW    0000_0111B  0000_0111B
    DS11C2B         :   --RW    0000_0111B  0000_0111B
    DS12C2B         :   --RW    0000_0111B  0000_0111B
    DS13C2B         :   --RW    0000_0111B  0000_0111B
    DS14C2B         :   --RW    0000_0111B  0000_0111B
    DS15C2B         :   --RW    0000_0111B  0000_0111B
    DS16C2B         :   --RW    0000_0111B  0000_0111B
    DS17C2B         :   --RW    0000_0111B  0000_0111B
    DS18C2B         :   --RW    0000_0111B  0000_0111B
    DS19C2B         :   --RW    0000_0111B  0000_0111B
    DS20C2B         :   --RW    0000_0111B  0000_0111B
    DS21C2B         :   --RW    0000_0111B  0000_0111B
    DS0C3B          :   --RW    0000_0111B  0000_0111B
    DS1C3B          :   --RW    0000_0111B  0000_0111B
    DS2C3B          :   --RW    0000_0111B  0000_0111B
    DS3C3B          :   --RW    0000_0111B  0000_0111B
    DS4C3B          :   --RW    0000_0111B  0000_0111B
    DS5C3B          :   --RW    0000_0111B  0000_0111B
    DS6C3B          :   --RW    0000_0111B  0000_0111B
    DS7C3B          :   --RW    0000_0111B  0000_0111B
    DS8C3B          :   --RW    0000_0111B  0000_0111B
    DS9C3B          :   --RW    0000_0111B  0000_0111B
    DS10C3B         :   --RW    0000_0111B  0000_0111B
    DS11C3B         :   --RW    0000_0111B  0000_0111B
    DS12C3B         :   --RW    0000_0111B  0000_0111B
    DS13C3B         :   --RW    0000_0111B  0000_0111B
    DS14C3B         :   --RW    0000_0111B  0000_0111B
    DS15C3B         :   --RW    0000_0111B  0000_0111B
    DS16C3B         :   --RW    0000_0111B  0000_0111B
    DS17C3B         :   --RW    0000_0111B  0000_0111B
    DS18C3B         :   --RW    0000_0111B  0000_0111B
    DS19C3B         :   --RW    0000_0111B  0000_0111B
    DS20C3B         :   --RW    0000_0111B  0000_0111B
    DS21C3B         :   --RW    0000_0111B  0000_0111B
    DS0C4B          :   --RW    0000_0111B  0000_0111B
    DS1C4B          :   --RW    0000_0111B  0000_0111B
    DS2C4B          :   --RW    0000_0111B  0000_0111B
    DS3C4B          :   --RW    0000_0111B  0000_0111B
    DS4C4B          :   --RW    0000_0111B  0000_0111B
    DS5C4B          :   --RW    0000_0111B  0000_0111B
    DS6C4B          :   --RW    0000_0111B  0000_0111B
    DS7C4B          :   --RW    0000_0111B  0000_0111B
    DS8C4B          :   --RW    0000_0111B  0000_0111B
    DS9C4B          :   --RW    0000_0111B  0000_0111B
    DS10C4B         :   --RW    0000_0111B  0000_0111B
    DS11C4B         :   --RW    0000_0111B  0000_0111B
    DS12C4B         :   --RW    0000_0111B  0000_0111B
    DS13C4B         :   --RW    0000_0111B  0000_0111B
    DS14C4B         :   --RW    0000_0111B  0000_0111B
    DS15C4B         :   --RW    0000_0111B  0000_0111B
    DS16C4B         :   --RW    0000_0111B  0000_0111B
    DS17C4B         :   --RW    0000_0111B  0000_0111B
    DS18C4B         :   --RW    0000_0111B  0000_0111B
    DS19C4B         :   --RW    0000_0111B  0000_0111B
    DS20C4B         :   --RW    0000_0111B  0000_0111B
    DS21C4B         :   --RW    0000_0111B  0000_0111B


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
    P00INT,         EP00,       QP00
    P01INT,         EP01,       QP01
    P02INT,         EP02,       QP02
    P03INT,         EP03,       QP03
    P5INT,          EP5,        QP5
    UA0INT,         EUA0,       QUA0
    MD0INT,         EMD0,       QMD0
    RADINT,         ERAD,       QRAD
    TM2INT,         ETM2,       QTM2
    TM3INT,         ETM3,       QTM3
    T128HINT,       E128H,      Q128H
    T32HINT,        E32H,       Q32H
    T16HINT,        E16H,       Q16H
    T2HINT,         E2H,        Q2H

#ENDCASE

;------------- END OF DCL (ML610401) -------------
