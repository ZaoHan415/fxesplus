;;*********************************************************
;;   DCL FILE for ML610405, Ver.1.00
;;   Copyright (C) 2010 OKI SEMICONDUCTOR CO., LTD.
;;
;;   Last Edition  Jun 25, 2010
;;*********************************************************

#CORE           "nX-U8/100"
#REVISION       "A3"
#TARGET         "ML610405"
#VERSION        "1.00"

;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;       MEMORY RANGE
;+++++++++++++++++++++++++++++++++++++++++++++++++++++
;Program memory space (physical segment #0)
#ROM    0H , 0FFFFH
        SWI_VECTOR  00080H  , 000FFH
        CODE        00000H  , 01EFFH
        CODE        01F00H  , 03BFFH
        CODE        03C00H  , 03DFFH

;Data memory space (physical segment #0)
#RAM    0H , 0FFFFH
        DATA        0E000H  , 0E0FFH
        DATA        0F000H  , 0FFFFH
        INTERNALRAM 0E000H  , 0E0FFH
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
        P04INT          0018H
        SIO0INT         0020H
        SIO1INT         0022H
        P5INT           0026H
        TM0INT          0030H
        TM1INT          0032H
        UA0INT          0040H
        MD0INT          0044H
        RADINT          004AH
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
        LTBADJ          0F00CH
          LTBADJL         0F00CH
          LTBADJH         0F00DH
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
          DSPR16          0F116H
          DSPR17          0F117H
          DSPR18          0F118H
          DSPR19          0F119H
          DSPR1A          0F11AH
          DSPR1B          0F11BH
          DSPR1C          0F11CH
          DSPR1D          0F11DH
          DSPR1E          0F11EH
          DSPR1F          0F11FH
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
        SIO0BUF         0F280H
          SIO0BUFL        0F280H
          SIO0BUFH        0F281H
          SIO0CON         0F282H
        SIO0MOD         0F284H
          SIO0MOD0        0F284H
          SIO0MOD1        0F285H
        SIO1BUF         0F288H
          SIO1BUFL        0F288H
          SIO1BUFH        0F289H
          SIO1CON         0F28AH
        SIO1MOD         0F28CH
          SIO1MOD0        0F28CH
          SIO1MOD1        0F28DH
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
          DS22C0A         0F416H
          DS23C0A         0F417H
          DS24C0A         0F418H
          DS25C0A         0F419H
          DS26C0A         0F41AH
          DS27C0A         0F41BH
          DS28C0A         0F41CH
          DS29C0A         0F41DH
          DS30C0A         0F41EH
          DS31C0A         0F41FH
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
          DS22C1A         0F456H
          DS23C1A         0F457H
          DS24C1A         0F458H
          DS25C1A         0F459H
          DS26C1A         0F45AH
          DS27C1A         0F45BH
          DS28C1A         0F45CH
          DS29C1A         0F45DH
          DS30C1A         0F45EH
          DS31C1A         0F45FH
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
          DS22C2A         0F496H
          DS23C2A         0F497H
          DS24C2A         0F498H
          DS25C2A         0F499H
          DS26C2A         0F49AH
          DS27C2A         0F49BH
          DS28C2A         0F49CH
          DS29C2A         0F49DH
          DS30C2A         0F49EH
          DS31C2A         0F49FH
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
          DS22C3A         0F4D6H
          DS23C3A         0F4D7H
          DS24C3A         0F4D8H
          DS25C3A         0F4D9H
          DS26C3A         0F4DAH
          DS27C3A         0F4DBH
          DS28C3A         0F4DCH
          DS29C3A         0F4DDH
          DS30C3A         0F4DEH
          DS31C3A         0F4DFH
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
          DS22C4A         0F516H
          DS23C4A         0F517H
          DS24C4A         0F518H
          DS25C4A         0F519H
          DS26C4A         0F51AH
          DS27C4A         0F51BH
          DS28C4A         0F51CH
          DS29C4A         0F51DH
          DS30C4A         0F51EH
          DS31C4A         0F51FH
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
          DS22C0B         0F616H
          DS23C0B         0F617H
          DS24C0B         0F618H
          DS25C0B         0F619H
          DS26C0B         0F61AH
          DS27C0B         0F61BH
          DS28C0B         0F61CH
          DS29C0B         0F61DH
          DS30C0B         0F61EH
          DS31C0B         0F61FH
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
          DS22C1B         0F656H
          DS23C1B         0F657H
          DS24C1B         0F658H
          DS25C1B         0F659H
          DS26C1B         0F65AH
          DS27C1B         0F65BH
          DS28C1B         0F65CH
          DS29C1B         0F65DH
          DS30C1B         0F65EH
          DS31C1B         0F65FH
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
          DS22C2B         0F696H
          DS23C2B         0F697H
          DS24C2B         0F698H
          DS25C2B         0F699H
          DS26C2B         0F69AH
          DS27C2B         0F69BH
          DS28C2B         0F69CH
          DS29C2B         0F69DH
          DS30C2B         0F69EH
          DS31C2B         0F69FH
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
          DS22C3B         0F6D6H
          DS23C3B         0F6D7H
          DS24C3B         0F6D8H
          DS25C3B         0F6D9H
          DS26C3B         0F6DAH
          DS27C3B         0F6DBH
          DS28C3B         0F6DCH
          DS29C3B         0F6DDH
          DS30C3B         0F6DEH
          DS31C3B         0F6DFH
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
          DS22C4B         0F716H
          DS23C4B         0F717H
          DS24C4B         0F718H
          DS25C4B         0F719H
          DS26C4B         0F71AH
          DS27C4B         0F71BH
          DS28C4B         0F71CH
          DS29C4B         0F71DH
          DS30C4B         0F71EH
          DS31C4B         0F71FH

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
        OSCM2           FCON0.6

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
        EP04            IE1.4

        ESIO0           IE2.0
        ESIO1           IE2.1
        EP5             IE2.3

        ETM0            IE3.0
        ETM1            IE3.1

        EUA0            IE4.0
        EMD0            IE4.2
        ERAD            IE4.5

        ETM2            IE5.4
        ETM3            IE5.5

        EPW0            IE6.0
        E128H           IE6.5
        E32H            IE6.7

        E16H            IE7.0
        E2H             IE7.3

        QWDT            IRQ0.0

        QP00            IRQ1.0
        QP01            IRQ1.1
        QP02            IRQ1.2
        QP03            IRQ1.3
        QP04            IRQ1.4

        QSIO0           IRQ2.0
        QSIO1           IRQ2.1
        QP5             IRQ2.3

        QTM0            IRQ3.0
        QTM1            IRQ3.1

        QUA0            IRQ4.0
        QMD0            IRQ4.2
        QRAD            IRQ4.5

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
        P04E0           EXICON0.4

        P00E1           EXICON1.0
        P01E1           EXICON1.1
        P02E1           EXICON1.2
        P03E1           EXICON1.3
        P04E1           EXICON1.4

        P00SM           EXICON2.0
        P01SM           EXICON2.1
        P02SM           EXICON2.2
        P03SM           EXICON2.3
        P04SM           EXICON2.4

        DTM0            BLKCON0.0
        DTM1            BLKCON0.1
        DTM2            BLKCON0.2
        DTM3            BLKCON0.3

        DPW0            BLKCON1.0
        DCAPR           BLKCON1.6

        DSIO0           BLKCON2.0
        DSIO1           BLKCON2.1
        DUA0            BLKCON2.2

        DMD0            BLKCON3.0

        DRAD            BLKCON4.1
        DLCD            BLKCON4.6

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
        P04D            P0D.4

        P00C0           P0CON0.0
        P01C0           P0CON0.1
        P02C0           P0CON0.2
        P03C0           P0CON0.3
        P04C0           P0CON0.4

        P00C1           P0CON1.0
        P01C1           P0CON1.1
        P02C1           P0CON1.2
        P03C1           P0CON1.3
        P04C1           P0CON1.4

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
        P24MD           P2MOD.4

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

        P50D            P5D.0
        P51D            P5D.1
        P52D            P5D.2
        P53D            P5D.3
        P54D            P5D.4
        P55D            P5D.5
        P56D            P5D.6
        P57D            P5D.7

        P50DIR          P5DIR.0
        P51DIR          P5DIR.1
        P52DIR          P5DIR.2
        P53DIR          P5DIR.3
        P54DIR          P5DIR.4
        P55DIR          P5DIR.5
        P56DIR          P5DIR.6
        P57DIR          P5DIR.7

        P50C0           P5CON0.0
        P51C0           P5CON0.1
        P52C0           P5CON0.2
        P53C0           P5CON0.3
        P54C0           P5CON0.4
        P55C0           P5CON0.5
        P56C0           P5CON0.6
        P57C0           P5CON0.7

        P5UD            P5CON1.0

        P50MD0          P5MOD0.0
        P51MD0          P5MOD0.1
        P52MD0          P5MOD0.2
        P54MD0          P5MOD0.4
        P55MD0          P5MOD0.5
        P56MD0          P5MOD0.6

        P50MD1          P5MOD1.0
        P51MD1          P5MOD1.1
        P52MD1          P5MOD1.2
        P54MD1          P5MOD1.4
        P55MD1          P5MOD1.5
        P56MD1          P5MOD1.6

        P50IS           P5ISEL.0
        P51IS           P5ISEL.1
        P52IS           P5ISEL.2
        P53IS           P5ISEL.3
        P54IS           P5ISEL.4
        P55IS           P5ISEL.5
        P56IS           P5ISEL.6
        P57IS           P5ISEL.7

        P60D            P6D.0
        P61D            P6D.1
        P62D            P6D.2
        P63D            P6D.3

        P60C0           P6CON0.0
        P61C0           P6CON0.1
        P62C0           P6CON0.2
        P63C0           P6CON0.3

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
        S0NEG           SIO0MOD1.5

        S1B0            SIO1BUFL.0
        S1B1            SIO1BUFL.1
        S1B2            SIO1BUFL.2
        S1B3            SIO1BUFL.3
        S1B4            SIO1BUFL.4
        S1B5            SIO1BUFL.5
        S1B6            SIO1BUFL.6
        S1B7            SIO1BUFL.7

        S1B8            SIO1BUFH.0
        S1B9            SIO1BUFH.1
        S1B10           SIO1BUFH.2
        S1B11           SIO1BUFH.3
        S1B12           SIO1BUFH.4
        S1B13           SIO1BUFH.5
        S1B14           SIO1BUFH.6
        S1B15           SIO1BUFH.7

        S1EN            SIO1CON.0

        S1DIR           SIO1MOD0.0
        S1MD0           SIO1MOD0.1
        S1MD1           SIO1MOD0.2
        S1LG            SIO1MOD0.3

        S1CK0           SIO1MOD1.0
        S1CK1           SIO1MOD1.1
        S1CK2           SIO1MOD1.2
        S1CKT           SIO1MOD1.4
        S1NEG           SIO1MOD1.5

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
    FCON0           :   RWRW    0111_0011B  0111_0011B
    FCON1           :   --RW    0000_0111B  0000_0111B
    STPACP          :   ---W    -           -         
    SBYCON          :   ---W    0000_0011B  0000_0011B
    LTBR            :   --RW    1111_1111B  1111_1111B
    HTBDR           :   --RW    0000_1111B  0000_1111B
    LTBADJL         :   RWRW    1111_1111B  1111_1111B
    LTBADJH         :   --RW    0000_0111B  0000_0111B
    WDTCON          :   --RW    1111_1111B  1111_1111B
    WDTMOD          :   --RW    0000_0011B  0000_0011B
    IE1             :   --RW    0001_1111B  0001_1111B
    IE2             :   --RW    0000_1011B  0000_1011B
    IE3             :   --RW    0000_0011B  0000_0011B
    IE4             :   --RW    0010_0101B  0010_0101B
    IE5             :   --RW    0011_0000B  0011_0000B
    IE6             :   --RW    1010_0001B  1010_0001B
    IE7             :   --RW    0000_1001B  0000_1001B
    IRQ0            :   --RW    0000_0001B  0000_0001B
    IRQ1            :   --RW    0001_1111B  0001_1111B
    IRQ2            :   --RW    0000_1011B  0000_1011B
    IRQ3            :   --RW    0000_0011B  0000_0011B
    IRQ4            :   --RW    0010_0101B  0010_0101B
    IRQ5            :   --RW    0011_0000B  0011_0000B
    IRQ6            :   --RW    1010_0001B  1010_0001B
    IRQ7            :   --RW    0000_1001B  0000_1001B
    EXICON0         :   --RW    0001_1111B  0001_1111B
    EXICON1         :   --RW    0001_1111B  0001_1111B
    EXICON2         :   --RW    0001_1111B  0001_1111B
    BLKCON0         :   --RW    0000_1111B  0000_1111B
    BLKCON1         :   --RW    0100_0001B  0100_0001B
    BLKCON2         :   --RW    0000_0111B  0000_0111B
    BLKCON3         :   --RW    0000_0001B  0000_0001B
    BLKCON4         :   --RW    0100_0010B  0100_0010B
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
    CAPCON          :   --RW    0000_0011B  0000_0011B
    CAPSTAT         :   --R-    0000_0011B  -         
    CAPR0           :   --RW    1111_1111B  1111_1111B
    CAPR1           :   --RW    1111_1111B  1111_1111B
    CAPTB           :   --R-    1111_1111B  -         
    PW0PL           :   RWRW    1111_1111B  1111_1111B
    PW0PH           :   --RW    1111_1111B  1111_1111B
    PW0DL           :   RWRW    1111_1111B  1111_1111B
    PW0DH           :   --RW    1111_1111B  1111_1111B
    PW0CL           :   RWRW    1111_1111B  1111_1111B
    PW0CH           :   --RW    1111_1111B  1111_1111B
    PW0CON0         :   RWRW    0001_1111B  0001_1111B
    PW0CON1         :   --RW    1100_0001B  1100_0001B
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
    DSPR16          :   --RW    0001_1111B  0001_1111B
    DSPR17          :   --RW    0001_1111B  0001_1111B
    DSPR18          :   --RW    0001_1111B  0001_1111B
    DSPR19          :   --RW    0001_1111B  0001_1111B
    DSPR1A          :   --RW    0001_1111B  0001_1111B
    DSPR1B          :   --RW    0001_1111B  0001_1111B
    DSPR1C          :   --RW    0001_1111B  0001_1111B
    DSPR1D          :   --RW    0001_1111B  0001_1111B
    DSPR1E          :   --RW    0001_1111B  0001_1111B
    DSPR1F          :   --RW    0001_1111B  0001_1111B
    P0D             :   --R-    0001_1111B  -         
    P0CON0          :   RWRW    0001_1111B  0001_1111B
    P0CON1          :   --RW    0001_1111B  0001_1111B
    P2D             :   --RW    0001_0111B  0001_0111B
    P2CON0          :   RWRW    0001_0111B  0001_0111B
    P2CON1          :   --RW    0001_0111B  0001_0111B
    P2MOD           :   --RW    0001_0111B  0001_0111B
    P3D             :   --RW    0011_1111B  0011_1111B
    P3DIR           :   --RW    0011_1111B  0011_1111B
    P3CON0          :   RWRW    0011_1111B  0011_1111B
    P3CON1          :   --RW    0011_1111B  0011_1111B
    P3MOD0          :   --RW    0011_1111B  0011_1111B
    P4D             :   --RW    1111_1111B  1111_1111B
    P4DIR           :   --RW    1111_1111B  1111_1111B
    P4CON0          :   RWRW    1111_1111B  1111_1111B
    P4CON1          :   --RW    1111_1111B  1111_1111B
    P4MOD0          :   RWRW    1111_1111B  1111_1111B
    P4MOD1          :   --RW    1111_1111B  1111_1111B
    P5D             :   --RW    1111_1111B  1111_1111B
    P5DIR           :   --RW    1111_1111B  1111_1111B
    P5CON0          :   RWRW    1111_1111B  1111_1111B
    P5CON1          :   --RW    0000_0001B  0000_0001B
    P5MOD0          :   RWRW    0111_0111B  0111_0111B
    P5MOD1          :   --RW    0111_0111B  0111_0111B
    P5ISEL          :   --RW    1111_1111B  1111_1111B
    P6D             :   --RW    0000_1111B  0000_1111B
    P6CON0          :   --RW    0000_1111B  0000_1111B
    SIO0BUFL        :   RWRW    1111_1111B  1111_1111B
    SIO0BUFH        :   --RW    1111_1111B  1111_1111B
    SIO0CON         :   --RW    0000_0001B  0000_0001B
    SIO0MOD0        :   RWRW    0000_1111B  0000_1111B
    SIO0MOD1        :   --RW    0011_0111B  0011_0111B
    SIO1BUFL        :   RWRW    1111_1111B  1111_1111B
    SIO1BUFH        :   --RW    1111_1111B  1111_1111B
    SIO1CON         :   --RW    0000_0001B  0000_0001B
    SIO1MOD0        :   RWRW    0000_1111B  0000_1111B
    SIO1MOD1        :   --RW    0011_0111B  0011_0111B
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
    DS22C0A         :   --RW    0001_1111B  0001_1111B
    DS23C0A         :   --RW    0001_1111B  0001_1111B
    DS24C0A         :   --RW    0001_1111B  0001_1111B
    DS25C0A         :   --RW    0001_1111B  0001_1111B
    DS26C0A         :   --RW    0001_1111B  0001_1111B
    DS27C0A         :   --RW    0001_1111B  0001_1111B
    DS28C0A         :   --RW    0001_1111B  0001_1111B
    DS29C0A         :   --RW    0001_1111B  0001_1111B
    DS30C0A         :   --RW    0001_1111B  0001_1111B
    DS31C0A         :   --RW    0001_1111B  0001_1111B
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
    DS22C1A         :   --RW    0001_1111B  0001_1111B
    DS23C1A         :   --RW    0001_1111B  0001_1111B
    DS24C1A         :   --RW    0001_1111B  0001_1111B
    DS25C1A         :   --RW    0001_1111B  0001_1111B
    DS26C1A         :   --RW    0001_1111B  0001_1111B
    DS27C1A         :   --RW    0001_1111B  0001_1111B
    DS28C1A         :   --RW    0001_1111B  0001_1111B
    DS29C1A         :   --RW    0001_1111B  0001_1111B
    DS30C1A         :   --RW    0001_1111B  0001_1111B
    DS31C1A         :   --RW    0001_1111B  0001_1111B
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
    DS22C2A         :   --RW    0001_1111B  0001_1111B
    DS23C2A         :   --RW    0001_1111B  0001_1111B
    DS24C2A         :   --RW    0001_1111B  0001_1111B
    DS25C2A         :   --RW    0001_1111B  0001_1111B
    DS26C2A         :   --RW    0001_1111B  0001_1111B
    DS27C2A         :   --RW    0001_1111B  0001_1111B
    DS28C2A         :   --RW    0001_1111B  0001_1111B
    DS29C2A         :   --RW    0001_1111B  0001_1111B
    DS30C2A         :   --RW    0001_1111B  0001_1111B
    DS31C2A         :   --RW    0001_1111B  0001_1111B
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
    DS22C3A         :   --RW    0001_1111B  0001_1111B
    DS23C3A         :   --RW    0001_1111B  0001_1111B
    DS24C3A         :   --RW    0001_1111B  0001_1111B
    DS25C3A         :   --RW    0001_1111B  0001_1111B
    DS26C3A         :   --RW    0001_1111B  0001_1111B
    DS27C3A         :   --RW    0001_1111B  0001_1111B
    DS28C3A         :   --RW    0001_1111B  0001_1111B
    DS29C3A         :   --RW    0001_1111B  0001_1111B
    DS30C3A         :   --RW    0001_1111B  0001_1111B
    DS31C3A         :   --RW    0001_1111B  0001_1111B
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
    DS22C4A         :   --RW    0001_1111B  0001_1111B
    DS23C4A         :   --RW    0001_1111B  0001_1111B
    DS24C4A         :   --RW    0001_1111B  0001_1111B
    DS25C4A         :   --RW    0001_1111B  0001_1111B
    DS26C4A         :   --RW    0001_1111B  0001_1111B
    DS27C4A         :   --RW    0001_1111B  0001_1111B
    DS28C4A         :   --RW    0001_1111B  0001_1111B
    DS29C4A         :   --RW    0001_1111B  0001_1111B
    DS30C4A         :   --RW    0001_1111B  0001_1111B
    DS31C4A         :   --RW    0001_1111B  0001_1111B
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
    DS22C0B         :   --RW    0000_0111B  0000_0111B
    DS23C0B         :   --RW    0000_0111B  0000_0111B
    DS24C0B         :   --RW    0000_0111B  0000_0111B
    DS25C0B         :   --RW    0000_0111B  0000_0111B
    DS26C0B         :   --RW    0000_0111B  0000_0111B
    DS27C0B         :   --RW    0000_0111B  0000_0111B
    DS28C0B         :   --RW    0000_0111B  0000_0111B
    DS29C0B         :   --RW    0000_0111B  0000_0111B
    DS30C0B         :   --RW    0000_0111B  0000_0111B
    DS31C0B         :   --RW    0000_0111B  0000_0111B
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
    DS22C1B         :   --RW    0000_0111B  0000_0111B
    DS23C1B         :   --RW    0000_0111B  0000_0111B
    DS24C1B         :   --RW    0000_0111B  0000_0111B
    DS25C1B         :   --RW    0000_0111B  0000_0111B
    DS26C1B         :   --RW    0000_0111B  0000_0111B
    DS27C1B         :   --RW    0000_0111B  0000_0111B
    DS28C1B         :   --RW    0000_0111B  0000_0111B
    DS29C1B         :   --RW    0000_0111B  0000_0111B
    DS30C1B         :   --RW    0000_0111B  0000_0111B
    DS31C1B         :   --RW    0000_0111B  0000_0111B
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
    DS22C2B         :   --RW    0000_0111B  0000_0111B
    DS23C2B         :   --RW    0000_0111B  0000_0111B
    DS24C2B         :   --RW    0000_0111B  0000_0111B
    DS25C2B         :   --RW    0000_0111B  0000_0111B
    DS26C2B         :   --RW    0000_0111B  0000_0111B
    DS27C2B         :   --RW    0000_0111B  0000_0111B
    DS28C2B         :   --RW    0000_0111B  0000_0111B
    DS29C2B         :   --RW    0000_0111B  0000_0111B
    DS30C2B         :   --RW    0000_0111B  0000_0111B
    DS31C2B         :   --RW    0000_0111B  0000_0111B
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
    DS22C3B         :   --RW    0000_0111B  0000_0111B
    DS23C3B         :   --RW    0000_0111B  0000_0111B
    DS24C3B         :   --RW    0000_0111B  0000_0111B
    DS25C3B         :   --RW    0000_0111B  0000_0111B
    DS26C3B         :   --RW    0000_0111B  0000_0111B
    DS27C3B         :   --RW    0000_0111B  0000_0111B
    DS28C3B         :   --RW    0000_0111B  0000_0111B
    DS29C3B         :   --RW    0000_0111B  0000_0111B
    DS30C3B         :   --RW    0000_0111B  0000_0111B
    DS31C3B         :   --RW    0000_0111B  0000_0111B
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
    DS22C4B         :   --RW    0000_0111B  0000_0111B
    DS23C4B         :   --RW    0000_0111B  0000_0111B
    DS24C4B         :   --RW    0000_0111B  0000_0111B
    DS25C4B         :   --RW    0000_0111B  0000_0111B
    DS26C4B         :   --RW    0000_0111B  0000_0111B
    DS27C4B         :   --RW    0000_0111B  0000_0111B
    DS28C4B         :   --RW    0000_0111B  0000_0111B
    DS29C4B         :   --RW    0000_0111B  0000_0111B
    DS30C4B         :   --RW    0000_0111B  0000_0111B
    DS31C4B         :   --RW    0000_0111B  0000_0111B


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
    P04INT,         EP04,       QP04
    SIO0INT,        ESIO0,      QSIO0
    SIO1INT,        ESIO1,      QSIO1
    P5INT,          EP5,        QP5
    TM0INT,         ETM0,       QTM0
    TM1INT,         ETM1,       QTM1
    UA0INT,         EUA0,       QUA0
    MD0INT,         EMD0,       QMD0
    RADINT,         ERAD,       QRAD
    TM2INT,         ETM2,       QTM2
    TM3INT,         ETM3,       QTM3
    PW0INT,         EPW0,       QPW0
    T128HINT,       E128H,      Q128H
    T32HINT,        E32H,       Q32H
    T16HINT,        E16H,       Q16H
    T2HINT,         E2H,        Q2H

#ENDCASE

;------------- END OF DCL (ML610405) -------------
