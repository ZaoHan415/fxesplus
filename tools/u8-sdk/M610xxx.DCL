;;*********************************************************
;;   DCL FILE for ML610xxx, Ver.1.60
;;   Copyright (C) 2010-2011 Fairlegend Electronics Ltd
;;
;;   This file is modified from M610432.DCL file
;;*********************************************************

#CORE           "nX-U8/100"
#REVISION       "A3"
#TARGET         "STANDARD"
#VERSION        "1.60"

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
        DATA        0E000H  , 0E7FFH
        DATA        0F000H  , 0FFFFH
        SFR         0F000H  , 0FFFFH

;;                  start_adr end_adr   WINVAL
        ROMWINDOW   00000H  , 0DFFFH    , 0FFH ; WINVAL is dummy

;;definition of physical segment #1 and over memory space

;; #EXTEND  cs_max, ds_max
;;      cs_max : number of physical segment for Program memory
;;      ds_max : number of physical segment for Data memory

#EXTEND  1, 9
        ROM       8:0000H,   8:0FDFFH   ; CODE and TABLE type segments can be allocated

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
        WDTINT	        0008H
        NMINT	        000AH
        P00INT	        0010H
        P01INT	        0012H
        P02INT	        0014H
        P03INT	        0016H
        SIO0INT	        0020H
        SADINT	        0024H
        I2C0INT	        002EH
        TM0INT	        0030H
        TM1INT	        0032H
        UA0INT	        0040H
        MD0INT	        0044H
        RADINT	        004AH
        TM2INT	        0058H
        TM3INT	        005AH
        PW0INT	        0060H
        T1KINT	        0068H
        T128HINT	    006AH
        T32HINT	        006EH
        T16HINT	        0070H
        T2HINT	        0076H
        RTCINT	        007AH
        AL0INT	        007CH
        AL1INT	        007EH

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
        T1KCR           0F080H
          T1KCRL          0F080H
          T1KCRH          0F081H
          T1KCON          0F082H
          CAPCON          0F090H
          CAPSTAT         0F091H
          CAPR0           0F092H
          CAPR1           0F093H
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
          RTCSEC          0F0C0H
          RTCMIN          0F0C1H
          RTCHOUR         0F0C2H
          RTCWEEK         0F0C3H
          RTCDAY          0F0C4H
          RTCMON          0F0C5H
          RTCYEAR         0F0C6H
          RTCCON          0F0C7H
          AL0MIN          0F0C8H
          AL0HOUR         0F0C9H
          AL0WEEK         0F0CAH
          AL1MIN          0F0CBH
          AL1HOUR         0F0CCH
          AL1DAY          0F0CDH
          AL1MON          0F0CEH
        BLDCON          0F0D0H
          BLDCON0         0F0D0H
          BLDCON1         0F0D1H
          BIASCON         0F0F0H
          DSPCNT          0F0F1H
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
          DSPR20          0F120H
          DSPR21          0F121H
          DSPR22          0F122H
          DSPR23          0F123H
          DSPR24          0F124H
          DSPR25          0F125H
          DSPR26          0F126H
          DSPR27          0F127H
          DSPR28          0F128H
          DSPR29          0F129H
          DSPR2A          0F12AH
          DSPR2B          0F12BH
          DSPR2C          0F12CH
          DSPR2D          0F12DH
          DSPR2E          0F12EH
          DSPR2F          0F12FH
          DSPR30          0F130H
          DSPR31          0F131H
          DSPR32          0F132H
          DSPR33          0F133H
          DSPR34          0F134H
          DSPR35          0F135H
          DSPR36          0F136H
          DSPR37          0F137H
          DSPR38          0F138H
          DSPR39          0F139H
          DSPR3A          0F13AH
          DSPR3B          0F13BH
          DSPR3C          0F13CH
          DSPR3D          0F13DH
          DSPR3E          0F13EH
          DSPR3F          0F13FH
          DSPR40          0F140H
          DSPR41          0F141H
          DSPR42          0F142H
          DSPR43          0F143H
          DSPR44          0F144H
          DSPR45          0F145H
          DSPR46          0F146H
          DSPR47          0F147H
          DSPR48          0F148H
          DSPR49          0F149H
          DSPR4A          0F14AH
          DSPR4B          0F14BH
          DSPR4C          0F14CH
          DSPR4D          0F14DH
          DSPR4E          0F14EH
          DSPR4F          0F14FH
          DSPR50          0F150H
          DSPR51          0F151H
          DSPR52          0F152H
          DSPR53          0F153H
          DSPR54          0F154H
          DSPR55          0F155H
          DSPR56          0F156H
          DSPR57          0F157H
          DSPR58          0F158H
          DSPR59          0F159H
          DSPR5A          0F15AH
          DSPR5B          0F15BH
          DSPR5C          0F15CH
          DSPR5D          0F15DH
          DSPR5E          0F15EH
          DSPR5F          0F15FH
          DSPR60          0F160H
          DSPR61          0F161H
          DSPR62          0F162H
          DSPR63          0F163H
          DSPR64          0F164H
          DSPR65          0F165H
          DSPR66          0F166H
          DSPR67          0F167H
          DSPR68          0F168H
          DSPR69          0F169H
          DSPR6A          0F16AH
          DSPR6B          0F16BH
          DSPR6C          0F16CH
          DSPR6D          0F16DH
          DSPR6E          0F16EH
          DSPR6F          0F16FH
          DSPR70          0F170H
          DSPR71          0F171H
          DSPR72          0F172H
          DSPR73          0F173H
          DSPR74          0F174H
          DSPR75          0F175H
          DSPR76          0F176H
          DSPR77          0F177H
          DSPR78          0F178H
          DSPR79          0F179H
          DSPR7A          0F17AH
          DSPR7B          0F17BH
          DSPR7C          0F17CH
          DSPR7D          0F17DH
          DSPR7E          0F17EH
          DSPR7F          0F17FH
          DSPR80          0F180H
          DSPR81          0F181H
          DSPR82          0F182H
          DSPR83          0F183H
          DSPR84          0F184H
          DSPR85          0F185H
          DSPR86          0F186H
          DSPR87          0F187H
          DSPR88          0F188H
          DSPR89          0F189H
          DSPR8A          0F18AH
          DSPR8B          0F18BH
          DSPR8C          0F18CH
          DSPR8D          0F18DH
          DSPR8E          0F18EH
          DSPR8F          0F18FH
          DSPR90          0F190H
          DSPR91          0F191H
          DSPR92          0F192H
          DSPR93          0F193H
          DSPR94          0F194H
          DSPR95          0F195H
          DSPR96          0F196H
          DSPR97          0F197H
          DSPR98          0F198H
          DSPR99          0F199H
          DSPR9A          0F19AH
          DSPR9B          0F19BH
          DSPR9C          0F19CH
          DSPR9D          0F19DH
          DSPR9E          0F19EH
          DSPR9F          0F19FH
          DSPRA0          0F1A0H
          DSPRA1          0F1A1H
          DSPRA2          0F1A2H
          DSPRA3          0F1A3H
          DSPRA4          0F1A4H
          DSPRA5          0F1A5H
          DSPRA6          0F1A6H
          DSPRA7          0F1A7H
          DSPRA8          0F1A8H
          DSPRA9          0F1A9H
          DSPRAA          0F1AAH
          DSPRAB          0F1ABH
          DSPRAC          0F1ACH
          DSPRAD          0F1ADH
          DSPRAE          0F1AEH
          DSPRAF          0F1AFH
          DSPRB0          0F1B0H
          DSPRB1          0F1B1H
          DSPRB2          0F1B2H
          DSPRB3          0F1B3H
          DSPRB4          0F1B4H
          DSPRB5          0F1B5H
          DSPRB6          0F1B6H
          DSPRB7          0F1B7H
          DSPRB8          0F1B8H
          DSPRB9          0F1B9H
          DSPRBA          0F1BAH
          DSPRBB          0F1BBH
          DSPRBC          0F1BCH
          DSPRBD          0F1BDH
          DSPRBE          0F1BEH
          DSPRBF          0F1BFH
          DSPRC0          0F1C0H
          DSPRC1          0F1C1H
          DSPRC2          0F1C2H
          DSPRC3          0F1C3H
          DSPRC4          0F1C4H
          DSPRC5          0F1C5H
          DSPRC6          0F1C6H
          DSPRC7          0F1C7H
          DSPRC8          0F1C8H
          DSPRC9          0F1C9H
          DSPRCA          0F1CAH
          DSPRCB          0F1CBH
          DSPRCC          0F1CCH
          DSPRCD          0F1CDH
          DSPRCE          0F1CEH
          DSPRCF          0F1CFH
          DSPRD0          0F1D0H
          DSPRD1          0F1D1H
          DSPRD2          0F1D2H
          DSPRD3          0F1D3H
          DSPRD4          0F1D4H
          DSPRD5          0F1D5H
          DSPRD6          0F1D6H
          DSPRD7          0F1D7H
          DSPRD8          0F1D8H
          DSPRD9          0F1D9H
          DSPRDA          0F1DAH
          DSPRDB          0F1DBH
          DSPRDC          0F1DCH
          DSPRDD          0F1DDH
          DSPRDE          0F1DEH
          DSPRDF          0F1DFH
          DSPRE0          0F1E0H
          DSPRE1          0F1E1H
          DSPRE2          0F1E2H
          DSPRE3          0F1E3H
          DSPRE4          0F1E4H
          DSPRE5          0F1E5H
          DSPRE6          0F1E6H
          DSPRE7          0F1E7H
          DSPRE8          0F1E8H
          DSPRE9          0F1E9H
          DSPREA          0F1EAH
          DSPREB          0F1EBH
          DSPREC          0F1ECH
          DSPRED          0F1EDH
          DSPREE          0F1EEH
          DSPREF          0F1EFH
          DSPRF0          0F1F0H
          DSPRF1          0F1F1H
          DSPRF2          0F1F2H
          DSPRF3          0F1F3H
          DSPRF4          0F1F4H
          DSPRF5          0F1F5H
          DSPRF6          0F1F6H
          DSPRF7          0F1F7H
          DSPRF8          0F1F8H
          DSPRF9          0F1F9H
          DSPRFA          0F1FAH
          DSPRFB          0F1FBH
          DSPRFC          0F1FCH
          DSPRFD          0F1FDH
          DSPRFE          0F1FEH
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
          I2C0RD          0F2A0H
          I2C0SA          0F2A1H
          I2C0TD          0F2A2H
          I2C0CON         0F2A3H
          I2C0MOD         0F2A4H
          I2C0STAT        0F2A5H
          MD0CON          0F2C0H
          MD0TMP          0F2C1H
        MD0TL           0F2C2H
          MD0TON          0F2C2H
          MD0LEN          0F2C3H
        SADR0           0F2D0H
          SADR0L          0F2D0H
          SADR0H          0F2D1H
        SADR1           0F2D2H
          SADR1L          0F2D2H
          SADR1H          0F2D3H
        SADCON          0F2F0H
          SADCON0         0F2F0H
          SADCON1         0F2F1H
          SADMOD0         0F2F2H
          AMPOFFS         0F2F4H
          AMPGAIN         0F2F5H
          AMPCON0         0F2F6H
          RADCA0          0F300H
          RADCA1          0F301H
          RADCA2          0F302H
          RADCB0          0F304H
          RADCB1          0F305H
          RADCB2          0F306H
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
          DS32C0A         0F420H
          DS33C0A         0F421H
          DS34C0A         0F422H
          DS35C0A         0F423H
          DS36C0A         0F424H
          DS37C0A         0F425H
          DS38C0A         0F426H
          DS39C0A         0F427H
          DS40C0A         0F428H
          DS41C0A         0F429H
          DS42C0A         0F42AH
          DS43C0A         0F42BH
          DS44C0A         0F42CH
          DS45C0A         0F42DH
          DS46C0A         0F42EH
          DS47C0A         0F42FH
          DS48C0A         0F430H
          DS49C0A         0F431H
          DS50C0A         0F432H
          DS51C0A         0F433H
          DS52C0A         0F434H
          DS53C0A         0F435H
          DS54C0A         0F436H
          DS55C0A         0F437H
          DS56C0A         0F438H
          DS57C0A         0F439H
          DS58C0A         0F43AH
          DS59C0A         0F43BH
          DS60C0A         0F43CH
          DS61C0A         0F43DH
          DS62C0A         0F43EH
          DS63C0A         0F43FH
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
          DS32C1A         0F460H
          DS33C1A         0F461H
          DS34C1A         0F462H
          DS35C1A         0F463H
          DS36C1A         0F464H
          DS37C1A         0F465H
          DS38C1A         0F466H
          DS39C1A         0F467H
          DS40C1A         0F468H
          DS41C1A         0F469H
          DS42C1A         0F46AH
          DS43C1A         0F46BH
          DS44C1A         0F46CH
          DS45C1A         0F46DH
          DS46C1A         0F46EH
          DS47C1A         0F46FH
          DS48C1A         0F470H
          DS49C1A         0F471H
          DS50C1A         0F472H
          DS51C1A         0F473H
          DS52C1A         0F474H
          DS53C1A         0F475H
          DS54C1A         0F476H
          DS55C1A         0F477H
          DS56C1A         0F478H
          DS57C1A         0F479H
          DS58C1A         0F47AH
          DS59C1A         0F47BH
          DS60C1A         0F47CH
          DS61C1A         0F47DH
          DS62C1A         0F47EH
          DS63C1A         0F47FH
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
          DS32C2A         0F4A0H
          DS33C2A         0F4A1H
          DS34C2A         0F4A2H
          DS35C2A         0F4A3H
          DS36C2A         0F4A4H
          DS37C2A         0F4A5H
          DS38C2A         0F4A6H
          DS39C2A         0F4A7H
          DS40C2A         0F4A8H
          DS41C2A         0F4A9H
          DS42C2A         0F4AAH
          DS43C2A         0F4ABH
          DS44C2A         0F4ACH
          DS45C2A         0F4ADH
          DS46C2A         0F4AEH
          DS47C2A         0F4AFH
          DS48C2A         0F4B0H
          DS49C2A         0F4B1H
          DS50C2A         0F4B2H
          DS51C2A         0F4B3H
          DS52C2A         0F4B4H
          DS53C2A         0F4B5H
          DS54C2A         0F4B6H
          DS55C2A         0F4B7H
          DS56C2A         0F4B8H
          DS57C2A         0F4B9H
          DS58C2A         0F4BAH
          DS59C2A         0F4BBH
          DS60C2A         0F4BCH
          DS61C2A         0F4BDH
          DS62C2A         0F4BEH
          DS63C2A         0F4BFH
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
          DS32C3A         0F4E0H
          DS33C3A         0F4E1H
          DS34C3A         0F4E2H
          DS35C3A         0F4E3H
          DS36C3A         0F4E4H
          DS37C3A         0F4E5H
          DS38C3A         0F4E6H
          DS39C3A         0F4E7H
          DS40C3A         0F4E8H
          DS41C3A         0F4E9H
          DS42C3A         0F4EAH
          DS43C3A         0F4EBH
          DS44C3A         0F4ECH
          DS45C3A         0F4EDH
          DS46C3A         0F4EEH
          DS47C3A         0F4EFH
          DS48C3A         0F4F0H
          DS49C3A         0F4F1H
          DS50C3A         0F4F2H
          DS51C3A         0F4F3H
          DS52C3A         0F4F4H
          DS53C3A         0F4F5H
          DS54C3A         0F4F6H
          DS55C3A         0F4F7H
          DS56C3A         0F4F8H
          DS57C3A         0F4F9H
          DS58C3A         0F4FAH
          DS59C3A         0F4FBH
          DS60C3A         0F4FCH
          DS61C3A         0F4FDH
          DS62C3A         0F4FEH
          DS63C3A         0F4FFH
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
          DS32C4A         0F520H
          DS33C4A         0F521H
          DS34C4A         0F522H
          DS35C4A         0F523H
          DS36C4A         0F524H
          DS37C4A         0F525H
          DS38C4A         0F526H
          DS39C4A         0F527H
          DS40C4A         0F528H
          DS41C4A         0F529H
          DS42C4A         0F52AH
          DS43C4A         0F52BH
          DS44C4A         0F52CH
          DS45C4A         0F52DH
          DS46C4A         0F52EH
          DS47C4A         0F52FH
          DS48C4A         0F530H
          DS49C4A         0F531H
          DS50C4A         0F532H
          DS51C4A         0F533H
          DS52C4A         0F534H
          DS53C4A         0F535H
          DS54C4A         0F536H
          DS55C4A         0F537H
          DS56C4A         0F538H
          DS57C4A         0F539H
          DS58C4A         0F53AH
          DS59C4A         0F53BH
          DS60C4A         0F53CH
          DS61C4A         0F53DH
          DS62C4A         0F53EH
          DS63C4A         0F53FH
          DS0C5A          0F540H
          DS1C5A          0F541H
          DS2C5A          0F542H
          DS3C5A          0F543H
          DS4C5A          0F544H
          DS5C5A          0F545H
          DS6C5A          0F546H
          DS7C5A          0F547H
          DS8C5A          0F548H
          DS9C5A          0F549H
          DS10C5A         0F54AH
          DS11C5A         0F54BH
          DS12C5A         0F54CH
          DS13C5A         0F54DH
          DS14C5A         0F54EH
          DS15C5A         0F54FH
          DS16C5A         0F550H
          DS17C5A         0F551H
          DS18C5A         0F552H
          DS19C5A         0F553H
          DS20C5A         0F554H
          DS21C5A         0F555H
          DS22C5A         0F556H
          DS23C5A         0F557H
          DS24C5A         0F558H
          DS25C5A         0F559H
          DS26C5A         0F55AH
          DS27C5A         0F55BH
          DS28C5A         0F55CH
          DS29C5A         0F55DH
          DS30C5A         0F55EH
          DS31C5A         0F55FH
          DS32C5A         0F560H
          DS33C5A         0F561H
          DS34C5A         0F562H
          DS35C5A         0F563H
          DS36C5A         0F564H
          DS37C5A         0F565H
          DS38C5A         0F566H
          DS39C5A         0F567H
          DS40C5A         0F568H
          DS41C5A         0F569H
          DS42C5A         0F56AH
          DS43C5A         0F56BH
          DS44C5A         0F56CH
          DS45C5A         0F56DH
          DS46C5A         0F56EH
          DS47C5A         0F56FH
          DS48C5A         0F570H
          DS49C5A         0F571H
          DS50C5A         0F572H
          DS51C5A         0F573H
          DS52C5A         0F574H
          DS53C5A         0F575H
          DS54C5A         0F576H
          DS55C5A         0F577H
          DS56C5A         0F578H
          DS57C5A         0F579H
          DS58C5A         0F57AH
          DS59C5A         0F57BH
          DS60C5A         0F57CH
          DS61C5A         0F57DH
          DS62C5A         0F57EH
          DS63C5A         0F57FH
          DS0C6A          0F580H
          DS1C6A          0F581H
          DS2C6A          0F582H
          DS3C6A          0F583H
          DS4C6A          0F584H
          DS5C6A          0F585H
          DS6C6A          0F586H
          DS7C6A          0F587H
          DS8C6A          0F588H
          DS9C6A          0F589H
          DS10C6A         0F58AH
          DS11C6A         0F58BH
          DS12C6A         0F58CH
          DS13C6A         0F58DH
          DS14C6A         0F58EH
          DS15C6A         0F58FH
          DS16C6A         0F590H
          DS17C6A         0F591H
          DS18C6A         0F592H
          DS19C6A         0F593H
          DS20C6A         0F594H
          DS21C6A         0F595H
          DS22C6A         0F596H
          DS23C6A         0F597H
          DS24C6A         0F598H
          DS25C6A         0F599H
          DS26C6A         0F59AH
          DS27C6A         0F59BH
          DS28C6A         0F59CH
          DS29C6A         0F59DH
          DS30C6A         0F59EH
          DS31C6A         0F59FH
          DS32C6A         0F5A0H
          DS33C6A         0F5A1H
          DS34C6A         0F5A2H
          DS35C6A         0F5A3H
          DS36C6A         0F5A4H
          DS37C6A         0F5A5H
          DS38C6A         0F5A6H
          DS39C6A         0F5A7H
          DS40C6A         0F5A8H
          DS41C6A         0F5A9H
          DS42C6A         0F5AAH
          DS43C6A         0F5ABH
          DS44C6A         0F5ACH
          DS45C6A         0F5ADH
          DS46C6A         0F5AEH
          DS47C6A         0F5AFH
          DS48C6A         0F5B0H
          DS49C6A         0F5B1H
          DS50C6A         0F5B2H
          DS51C6A         0F5B3H
          DS52C6A         0F5B4H
          DS53C6A         0F5B5H
          DS54C6A         0F5B6H
          DS55C6A         0F5B7H
          DS56C6A         0F5B8H
          DS57C6A         0F5B9H
          DS58C6A         0F5BAH
          DS59C6A         0F5BBH
          DS60C6A         0F5BCH
          DS61C6A         0F5BDH
          DS62C6A         0F5BEH
          DS63C6A         0F5BFH
          DS0C7A          0F5C0H
          DS1C7A          0F5C1H
          DS2C7A          0F5C2H
          DS3C7A          0F5C3H
          DS4C7A          0F5C4H
          DS5C7A          0F5C5H
          DS6C7A          0F5C6H
          DS7C7A          0F5C7H
          DS8C7A          0F5C8H
          DS9C7A          0F5C9H
          DS10C7A         0F5CAH
          DS11C7A         0F5CBH
          DS12C7A         0F5CCH
          DS13C7A         0F5CDH
          DS14C7A         0F5CEH
          DS15C7A         0F5CFH
          DS16C7A         0F5D0H
          DS17C7A         0F5D1H
          DS18C7A         0F5D2H
          DS19C7A         0F5D3H
          DS20C7A         0F5D4H
          DS21C7A         0F5D5H
          DS22C7A         0F5D6H
          DS23C7A         0F5D7H
          DS24C7A         0F5D8H
          DS25C7A         0F5D9H
          DS26C7A         0F5DAH
          DS27C7A         0F5DBH
          DS28C7A         0F5DCH
          DS29C7A         0F5DDH
          DS30C7A         0F5DEH
          DS31C7A         0F5DFH
          DS32C7A         0F5E0H
          DS33C7A         0F5E1H
          DS34C7A         0F5E2H
          DS35C7A         0F5E3H
          DS36C7A         0F5E4H
          DS37C7A         0F5E5H
          DS38C7A         0F5E6H
          DS39C7A         0F5E7H
          DS40C7A         0F5E8H
          DS41C7A         0F5E9H
          DS42C7A         0F5EAH
          DS43C7A         0F5EBH
          DS44C7A         0F5ECH
          DS45C7A         0F5EDH
          DS46C7A         0F5EEH
          DS47C7A         0F5EFH
          DS48C7A         0F5F0H
          DS49C7A         0F5F1H
          DS50C7A         0F5F2H
          DS51C7A         0F5F3H
          DS52C7A         0F5F4H
          DS53C7A         0F5F5H
          DS54C7A         0F5F6H
          DS55C7A         0F5F7H
          DS56C7A         0F5F8H
          DS57C7A         0F5F9H
          DS58C7A         0F5FAH
          DS59C7A         0F5FBH
          DS60C7A         0F5FCH
          DS61C7A         0F5FDH
          DS62C7A         0F5FEH
          DS63C7A         0F5FFH
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
          DS32C0B         0F620H
          DS33C0B         0F621H
          DS34C0B         0F622H
          DS35C0B         0F623H
          DS36C0B         0F624H
          DS37C0B         0F625H
          DS38C0B         0F626H
          DS39C0B         0F627H
          DS40C0B         0F628H
          DS41C0B         0F629H
          DS42C0B         0F62AH
          DS43C0B         0F62BH
          DS44C0B         0F62CH
          DS45C0B         0F62DH
          DS46C0B         0F62EH
          DS47C0B         0F62FH
          DS48C0B         0F630H
          DS49C0B         0F631H
          DS50C0B         0F632H
          DS51C0B         0F633H
          DS52C0B         0F634H
          DS53C0B         0F635H
          DS54C0B         0F636H
          DS55C0B         0F637H
          DS56C0B         0F638H
          DS57C0B         0F639H
          DS58C0B         0F63AH
          DS59C0B         0F63BH
          DS60C0B         0F63CH
          DS61C0B         0F63DH
          DS62C0B         0F63EH
          DS63C0B         0F63FH
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
          DS32C1B         0F660H
          DS33C1B         0F661H
          DS34C1B         0F662H
          DS35C1B         0F663H
          DS36C1B         0F664H
          DS37C1B         0F665H
          DS38C1B         0F666H
          DS39C1B         0F667H
          DS40C1B         0F668H
          DS41C1B         0F669H
          DS42C1B         0F66AH
          DS43C1B         0F66BH
          DS44C1B         0F66CH
          DS45C1B         0F66DH
          DS46C1B         0F66EH
          DS47C1B         0F66FH
          DS48C1B         0F670H
          DS49C1B         0F671H
          DS50C1B         0F672H
          DS51C1B         0F673H
          DS52C1B         0F674H
          DS53C1B         0F675H
          DS54C1B         0F676H
          DS55C1B         0F677H
          DS56C1B         0F678H
          DS57C1B         0F679H
          DS58C1B         0F67AH
          DS59C1B         0F67BH
          DS60C1B         0F67CH
          DS61C1B         0F67DH
          DS62C1B         0F67EH
          DS63C1B         0F67FH
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
          DS32C2B         0F6A0H
          DS33C2B         0F6A1H
          DS34C2B         0F6A2H
          DS35C2B         0F6A3H
          DS36C2B         0F6A4H
          DS37C2B         0F6A5H
          DS38C2B         0F6A6H
          DS39C2B         0F6A7H
          DS40C2B         0F6A8H
          DS41C2B         0F6A9H
          DS42C2B         0F6AAH
          DS43C2B         0F6ABH
          DS44C2B         0F6ACH
          DS45C2B         0F6ADH
          DS46C2B         0F6AEH
          DS47C2B         0F6AFH
          DS48C2B         0F6B0H
          DS49C2B         0F6B1H
          DS50C2B         0F6B2H
          DS51C2B         0F6B3H
          DS52C2B         0F6B4H
          DS53C2B         0F6B5H
          DS54C2B         0F6B6H
          DS55C2B         0F6B7H
          DS56C2B         0F6B8H
          DS57C2B         0F6B9H
          DS58C2B         0F6BAH
          DS59C2B         0F6BBH
          DS60C2B         0F6BCH
          DS61C2B         0F6BDH
          DS62C2B         0F6BEH
          DS63C2B         0F6BFH
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
          DS32C3B         0F6E0H
          DS33C3B         0F6E1H
          DS34C3B         0F6E2H
          DS35C3B         0F6E3H
          DS36C3B         0F6E4H
          DS37C3B         0F6E5H
          DS38C3B         0F6E6H
          DS39C3B         0F6E7H
          DS40C3B         0F6E8H
          DS41C3B         0F6E9H
          DS42C3B         0F6EAH
          DS43C3B         0F6EBH
          DS44C3B         0F6ECH
          DS45C3B         0F6EDH
          DS46C3B         0F6EEH
          DS47C3B         0F6EFH
          DS48C3B         0F6F0H
          DS49C3B         0F6F1H
          DS50C3B         0F6F2H
          DS51C3B         0F6F3H
          DS52C3B         0F6F4H
          DS53C3B         0F6F5H
          DS54C3B         0F6F6H
          DS55C3B         0F6F7H
          DS56C3B         0F6F8H
          DS57C3B         0F6F9H
          DS58C3B         0F6FAH
          DS59C3B         0F6FBH
          DS60C3B         0F6FCH
          DS61C3B         0F6FDH
          DS62C3B         0F6FEH
          DS63C3B         0F6FFH
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
          DS32C4B         0F720H
          DS33C4B         0F721H
          DS34C4B         0F722H
          DS35C4B         0F723H
          DS36C4B         0F724H
          DS37C4B         0F725H
          DS38C4B         0F726H
          DS39C4B         0F727H
          DS40C4B         0F728H
          DS41C4B         0F729H
          DS42C4B         0F72AH
          DS43C4B         0F72BH
          DS44C4B         0F72CH
          DS45C4B         0F72DH
          DS46C4B         0F72EH
          DS47C4B         0F72FH
          DS48C4B         0F730H
          DS49C4B         0F731H
          DS50C4B         0F732H
          DS51C4B         0F733H
          DS52C4B         0F734H
          DS53C4B         0F735H
          DS54C4B         0F736H
          DS55C4B         0F737H
          DS56C4B         0F738H
          DS57C4B         0F739H
          DS58C4B         0F73AH
          DS59C4B         0F73BH
          DS60C4B         0F73CH
          DS61C4B         0F73DH
          DS62C4B         0F73EH
          DS63C4B         0F73FH
          DS0C5B          0F740H
          DS1C5B          0F741H
          DS2C5B          0F742H
          DS3C5B          0F743H
          DS4C5B          0F744H
          DS5C5B          0F745H
          DS6C5B          0F746H
          DS7C5B          0F747H
          DS8C5B          0F748H
          DS9C5B          0F749H
          DS10C5B         0F74AH
          DS11C5B         0F74BH
          DS12C5B         0F74CH
          DS13C5B         0F74DH
          DS14C5B         0F74EH
          DS15C5B         0F74FH
          DS16C5B         0F750H
          DS17C5B         0F751H
          DS18C5B         0F752H
          DS19C5B         0F753H
          DS20C5B         0F754H
          DS21C5B         0F755H
          DS22C5B         0F756H
          DS23C5B         0F757H
          DS24C5B         0F758H
          DS25C5B         0F759H
          DS26C5B         0F75AH
          DS27C5B         0F75BH
          DS28C5B         0F75CH
          DS29C5B         0F75DH
          DS30C5B         0F75EH
          DS31C5B         0F75FH
          DS32C5B         0F760H
          DS33C5B         0F761H
          DS34C5B         0F762H
          DS35C5B         0F763H
          DS36C5B         0F764H
          DS37C5B         0F765H
          DS38C5B         0F766H
          DS39C5B         0F767H
          DS40C5B         0F768H
          DS41C5B         0F769H
          DS42C5B         0F76AH
          DS43C5B         0F76BH
          DS44C5B         0F76CH
          DS45C5B         0F76DH
          DS46C5B         0F76EH
          DS47C5B         0F76FH
          DS48C5B         0F770H
          DS49C5B         0F771H
          DS50C5B         0F772H
          DS51C5B         0F773H
          DS52C5B         0F774H
          DS53C5B         0F775H
          DS54C5B         0F776H
          DS55C5B         0F777H
          DS56C5B         0F778H
          DS57C5B         0F779H
          DS58C5B         0F77AH
          DS59C5B         0F77BH
          DS60C5B         0F77CH
          DS61C5B         0F77DH
          DS62C5B         0F77EH
          DS63C5B         0F77FH
          DS0C6B          0F780H
          DS1C6B          0F781H
          DS2C6B          0F782H
          DS3C6B          0F783H
          DS4C6B          0F784H
          DS5C6B          0F785H
          DS6C6B          0F786H
          DS7C6B          0F787H
          DS8C6B          0F788H
          DS9C6B          0F789H
          DS10C6B         0F78AH
          DS11C6B         0F78BH
          DS12C6B         0F78CH
          DS13C6B         0F78DH
          DS14C6B         0F78EH
          DS15C6B         0F78FH
          DS16C6B         0F790H
          DS17C6B         0F791H
          DS18C6B         0F792H
          DS19C6B         0F793H
          DS20C6B         0F794H
          DS21C6B         0F795H
          DS22C6B         0F796H
          DS23C6B         0F797H
          DS24C6B         0F798H
          DS25C6B         0F799H
          DS26C6B         0F79AH
          DS27C6B         0F79BH
          DS28C6B         0F79CH
          DS29C6B         0F79DH
          DS30C6B         0F79EH
          DS31C6B         0F79FH
          DS32C6B         0F7A0H
          DS33C6B         0F7A1H
          DS34C6B         0F7A2H
          DS35C6B         0F7A3H
          DS36C6B         0F7A4H
          DS37C6B         0F7A5H
          DS38C6B         0F7A6H
          DS39C6B         0F7A7H
          DS40C6B         0F7A8H
          DS41C6B         0F7A9H
          DS42C6B         0F7AAH
          DS43C6B         0F7ABH
          DS44C6B         0F7ACH
          DS45C6B         0F7ADH
          DS46C6B         0F7AEH
          DS47C6B         0F7AFH
          DS48C6B         0F7B0H
          DS49C6B         0F7B1H
          DS50C6B         0F7B2H
          DS51C6B         0F7B3H
          DS52C6B         0F7B4H
          DS53C6B         0F7B5H
          DS54C6B         0F7B6H
          DS55C6B         0F7B7H
          DS56C6B         0F7B8H
          DS57C6B         0F7B9H
          DS58C6B         0F7BAH
          DS59C6B         0F7BBH
          DS60C6B         0F7BCH
          DS61C6B         0F7BDH
          DS62C6B         0F7BEH
          DS63C6B         0F7BFH
          DS0C7B          0F7C0H
          DS1C7B          0F7C1H
          DS2C7B          0F7C2H
          DS3C7B          0F7C3H
          DS4C7B          0F7C4H
          DS5C7B          0F7C5H
          DS6C7B          0F7C6H
          DS7C7B          0F7C7H
          DS8C7B          0F7C8H
          DS9C7B          0F7C9H
          DS10C7B         0F7CAH
          DS11C7B         0F7CBH
          DS12C7B         0F7CCH
          DS13C7B         0F7CDH
          DS14C7B         0F7CEH
          DS15C7B         0F7CFH
          DS16C7B         0F7D0H
          DS17C7B         0F7D1H
          DS18C7B         0F7D2H
          DS19C7B         0F7D3H
          DS20C7B         0F7D4H
          DS21C7B         0F7D5H
          DS22C7B         0F7D6H
          DS23C7B         0F7D7H
          DS24C7B         0F7D8H
          DS25C7B         0F7D9H
          DS26C7B         0F7DAH
          DS27C7B         0F7DBH
          DS28C7B         0F7DCH
          DS29C7B         0F7DDH
          DS30C7B         0F7DEH
          DS31C7B         0F7DFH
          DS32C7B         0F7E0H
          DS33C7B         0F7E1H
          DS34C7B         0F7E2H
          DS35C7B         0F7E3H
          DS36C7B         0F7E4H
          DS37C7B         0F7E5H
          DS38C7B         0F7E6H
          DS39C7B         0F7E7H
          DS40C7B         0F7E8H
          DS41C7B         0F7E9H
          DS42C7B         0F7EAH
          DS43C7B         0F7EBH
          DS44C7B         0F7ECH
          DS45C7B         0F7EDH
          DS46C7B         0F7EEH
          DS47C7B         0F7EFH
          DS48C7B         0F7F0H
          DS49C7B         0F7F1H
          DS50C7B         0F7F2H
          DS51C7B         0F7F3H
          DS52C7B         0F7F4H
          DS53C7B         0F7F5H
          DS54C7B         0F7F6H
          DS55C7B         0F7F7H
          DS56C7B         0F7F8H
          DS57C7B         0F7F9H
          DS58C7B         0F7FAH
          DS59C7B         0F7FBH
          DS60C7B         0F7FCH
          DS61C7B         0F7FDH
          DS62C7B         0F7FEH
          DS63C7B         0F7FFH

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
        OSCM0           FCON0.2
        OSCM1           FCON0.3
        OUTC0           FCON0.4
        OUTC1           FCON0.5

        SYSCLK          FCON1.0
        ENOSC           FCON1.1
        ENMLT           FCON1.2
        LPLL            FCON1.7

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

        ESIO0           IE2.0
        ESAD            IE2.2
        EI2C0           IE2.7

        ETM0            IE3.0
        ETM1            IE3.1

        EUA0            IE4.0
        EMD0            IE4.2
        ERAD            IE4.5

        ETM2            IE5.4
        ETM3            IE5.5

        EPW0            IE6.0
        ET1K            IE6.4
        E128H           IE6.5
        E32H            IE6.7

        E16H            IE7.0
        E2H             IE7.3
        ERTC            IE7.5
        EAL0            IE7.6
        EAL1            IE7.7

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
        QMD0            IRQ4.2
        QRAD            IRQ4.5

        QTM2            IRQ5.4
        QTM3            IRQ5.5

        QPW0            IRQ6.0
        QT1K            IRQ6.4
        Q128H           IRQ6.5
        Q32H            IRQ6.7

        Q16H            IRQ7.0
        Q2H             IRQ7.3
        QRTC            IRQ7.5
        QAL0            IRQ7.6
        QAL1            IRQ7.7

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
        DT1K            BLKCON1.4
        DCAPR           BLKCON1.6

        DSIO0           BLKCON2.0
        DUA0            BLKCON2.2
        DI2C0           BLKCON2.7

        DMD0            BLKCON3.0

        DSAD            BLKCON4.0
        DRAD            BLKCON4.1
        DXTSP           BLKCON4.4
        DBLD            BLKCON4.5
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

        T1KC0           T1KCRL.4
        T1KC1           T1KCRL.5
        T1KC2           T1KCRL.6
        T1KC3           T1KCRL.7

        T1KC4           T1KCRH.0
        T1KC5           T1KCRH.1
        T1KC6           T1KCRH.2
        T1KC7           T1KCRH.3
        T1KC8           T1KCRH.4
        T1KC9           T1KCRH.5
        T1KC10          T1KCRH.6
        T1KC11          T1KCRH.7

        T1KRUN          T1KCON.0
        T1KSEL          T1KCON.1

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

        RS0             RTCSEC.0
        RS1             RTCSEC.1
        RS2             RTCSEC.2
        RS3             RTCSEC.3
        RS4             RTCSEC.4
        RS5             RTCSEC.5
        RS6             RTCSEC.6

        RM0             RTCMIN.0
        RM1             RTCMIN.1
        RM2             RTCMIN.2
        RM3             RTCMIN.3
        RM4             RTCMIN.4
        RM5             RTCMIN.5
        RM6             RTCMIN.6

        RH0             RTCHOUR.0
        RH1             RTCHOUR.1
        RH2             RTCHOUR.2
        RH3             RTCHOUR.3
        RH4             RTCHOUR.4
        RH5             RTCHOUR.5

        RW0             RTCWEEK.0
        RW1             RTCWEEK.1
        RW2             RTCWEEK.2

        RD0             RTCDAY.0
        RD1             RTCDAY.1
        RD2             RTCDAY.2
        RD3             RTCDAY.3
        RD4             RTCDAY.4
        RD5             RTCDAY.5

        RMO0            RTCMON.0
        RMO1            RTCMON.1
        RMO2            RTCMON.2
        RMO3            RTCMON.3
        RMO4            RTCMON.4

        RY0             RTCYEAR.0
        RY1             RTCYEAR.1
        RY2             RTCYEAR.2
        RY3             RTCYEAR.3
        RY4             RTCYEAR.4
        RY5             RTCYEAR.5
        RY6             RTCYEAR.6
        RY7             RTCYEAR.7

        RTCEN           RTCCON.0
        RIN0            RTCCON.1
        RIN1            RTCCON.2

        AL0M0           AL0MIN.0
        AL0M1           AL0MIN.1
        AL0M2           AL0MIN.2
        AL0M3           AL0MIN.3
        AL0M4           AL0MIN.4
        AL0M5           AL0MIN.5
        AL0M6           AL0MIN.6

        AL0H0           AL0HOUR.0
        AL0H1           AL0HOUR.1
        AL0H2           AL0HOUR.2
        AL0H3           AL0HOUR.3
        AL0H4           AL0HOUR.4
        AL0H5           AL0HOUR.5

        AL0W0           AL0WEEK.0
        AL0W1           AL0WEEK.1
        AL0W2           AL0WEEK.2

        AL1M0           AL1MIN.0
        AL1M1           AL1MIN.1
        AL1M2           AL1MIN.2
        AL1M3           AL1MIN.3
        AL1M4           AL1MIN.4
        AL1M5           AL1MIN.5
        AL1M6           AL1MIN.6

        AL1H0           AL1HOUR.0
        AL1H1           AL1HOUR.1
        AL1H2           AL1HOUR.2
        AL1H3           AL1HOUR.3
        AL1H4           AL1HOUR.4
        AL1H5           AL1HOUR.5

        AL1D0           AL1DAY.0
        AL1D1           AL1DAY.1
        AL1D2           AL1DAY.2
        AL1D3           AL1DAY.3
        AL1D4           AL1DAY.4
        AL1D5           AL1DAY.5

        AL1MO0          AL1MON.0
        AL1MO1          AL1MON.1
        AL1MO2          AL1MON.2
        AL1MO3          AL1MON.3
        AL1MO4          AL1MON.4

        LD0             BLDCON0.0
        LD1             BLDCON0.1
        LD2             BLDCON0.2
        LD3             BLDCON0.3

        ENBL            BLDCON1.0
        BLDF            BLDCON1.1

        BSON            BIASCON.0
        BSN0            BIASCON.1
        BSN1            BIASCON.2
        BSN2            BIASCON.3
        BSEL            BIASCON.4

        LCN0            DSPCNT.0
        LCN1            DSPCNT.1
        LCN2            DSPCNT.2
        LCN3            DSPCNT.3
        LCN4            DSPCNT.4

        DUTY0           DSPMOD0.0
        DUTY1           DSPMOD0.1
        DUTY2           DSPMOD0.2
        DUTY3           DSPMOD0.3
        DUTY4           DSPMOD0.4
        FRM0            DSPMOD0.5
        FRM1            DSPMOD0.6

        DADM0           DSPMOD1.0
        DADM1           DSPMOD1.1
        DASN            DSPMOD1.2

        LMD0            DSPCON.0
        LMD1            DSPCON.1

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

        P10C0           P1CON0.0
        P11C0           P1CON0.1

        P10C1           P1CON1.0
        P11C1           P1CON1.1

        P20D            P2D.0
        P21D            P2D.1
        P22D            P2D.2

        P20C0           P2CON0.0
        P21C0           P2CON0.1
        P22C0           P2CON0.2

        P20C1           P2CON1.0
        P21C1           P2CON1.1
        P22C1           P2CON1.2

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

        P30MD1          P3MOD1.0
        P31MD1          P3MOD1.1
        P32MD1          P3MOD1.2
        P33MD1          P3MOD1.3
        P34MD1          P3MOD1.4
        P35MD1          P3MOD1.5

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

        I20BB           I2C0STAT.0
        I20ACR          I2C0STAT.1
        I20ER           I2C0STAT.2

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

        SALP            SADCON0.0
        SACK            SADCON0.1

        SARUN           SADCON1.0

        SACH0           SADMOD0.0
        SACH1           SADMOD0.1

        AMPO0           AMPOFFS.0
        AMPO1           AMPOFFS.1
        AMPO2           AMPOFFS.2
        AMPO3           AMPOFFS.3
        AMPO4           AMPOFFS.4

        AMPG0           AMPGAIN.0
        AMPG1           AMPGAIN.1
        AMPG2           AMPGAIN.2
        AMPG3           AMPGAIN.3

        AMPEN0          AMPCON0.0
        AMPEN1          AMPCON0.1
        AMPADJ          AMPCON0.2

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

        RAA16           RADCA2.0
        RAA17           RADCA2.1
        RAA18           RADCA2.2
        RAA19           RADCA2.3
        RAA20           RADCA2.4
        RAA21           RADCA2.5
        RAA22           RADCA2.6
        RAA23           RADCA2.7

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

        RAB16           RADCB2.0
        RAB17           RADCB2.1
        RAB18           RADCB2.2
        RAB19           RADCB2.3
        RAB20           RADCB2.4
        RAB21           RADCB2.5
        RAB22           RADCB2.6
        RAB23           RADCB2.7

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
    FCON0           :   RWRW    0011_1111B  0011_1111B
    FCON1           :   --RW    1000_0111B  1000_0111B
    STPACP          :   ---W    -           -         
    SBYCON          :   ---W    0000_0011B  0000_0011B
    LTBR            :   --RW    1111_1111B  1111_1111B
    HTBDR           :   --RW    0000_1111B  0000_1111B
    LTBADJL         :   RWRW    1111_1111B  1111_1111B
    LTBADJH         :   --RW    0000_0111B  0000_0111B
    WDTCON          :   --RW    1111_1111B  1111_1111B
    WDTMOD          :   --RW    0000_0011B  0000_0011B
    IE1             :   --RW    0000_1111B  0000_1111B
    IE2             :   --RW    1000_0101B  1000_0101B
    IE3             :   --RW    0000_0011B  0000_0011B
    IE4             :   --RW    0010_0101B  0010_0101B
    IE5             :   --RW    0011_0000B  0011_0000B
    IE6             :   --RW    1011_0001B  1011_0001B
    IE7             :   --RW    1110_1001B  1110_1001B
    IRQ0            :   --RW    0000_0011B  0000_0011B
    IRQ1            :   --RW    0000_1111B  0000_1111B
    IRQ2            :   --RW    1000_0101B  1000_0101B
    IRQ3            :   --RW    0000_0011B  0000_0011B
    IRQ4            :   --RW    0010_0101B  0010_0101B
    IRQ5            :   --RW    0011_0000B  0011_0000B
    IRQ6            :   --RW    1011_0001B  1011_0001B
    IRQ7            :   --RW    1110_1001B  1110_1001B
    EXICON0         :   --RW    0000_1111B  0000_1111B
    EXICON1         :   --RW    0000_1111B  0000_1111B
    EXICON2         :   --RW    0000_1111B  0000_1111B
    BLKCON0         :   --RW    0000_1111B  0000_1111B
    BLKCON1         :   --RW    0101_0001B  0101_0001B
    BLKCON2         :   --RW    1000_0101B  1000_0101B
    BLKCON3         :   --RW    0000_0001B  0000_0001B
    BLKCON4         :   --RW    0111_0011B  0111_0011B
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
    TM2CON0         :   RWRW    0000_0111B  0000_0111B
    TM2CON1         :   --RW    1000_0001B  1000_0001B
    TM3D            :   RWRW    1111_1111B  1111_1111B
    TM3C            :   --RW    1111_1111B  1111_1111B
    TM3CON0         :   RWRW    0000_0011B  0000_0011B
    TM3CON1         :   --RW    1000_0001B  1000_0001B
    T1KCRL          :   RWRW    1111_0000B  1111_0000B
    T1KCRH          :   --RW    1111_1111B  1111_1111B
    T1KCON          :   --RW    0000_0011B  0000_0011B
    CAPCON          :   --RW    0000_0011B  0000_0011B
    CAPSTAT         :   --RW    0000_0011B  0000_0011B
    CAPR0           :   --RW    1111_1111B  1111_1111B
    CAPR1           :   --RW    1111_1111B  1111_1111B
    PW0PL           :   RWRW    1111_1111B  1111_1111B
    PW0PH           :   --RW    1111_1111B  1111_1111B
    PW0DL           :   RWRW    1111_1111B  1111_1111B
    PW0DH           :   --RW    1111_1111B  1111_1111B
    PW0CL           :   RWRW    1111_1111B  1111_1111B
    PW0CH           :   --RW    1111_1111B  1111_1111B
    PW0CON0         :   RWRW    0001_1111B  0001_1111B
    PW0CON1         :   --RW    1100_0001B  1100_0001B
    RTCSEC          :   --RW    0111_1111B  0111_1111B
    RTCMIN          :   --RW    0111_1111B  0111_1111B
    RTCHOUR         :   --RW    0011_1111B  0011_1111B
    RTCWEEK         :   --RW    0000_0111B  0000_0111B
    RTCDAY          :   --RW    0011_1111B  0011_1111B
    RTCMON          :   --RW    0001_1111B  0001_1111B
    RTCYEAR         :   --RW    1111_1111B  1111_1111B
    RTCCON          :   --RW    0000_0111B  0000_0111B
    AL0MIN          :   --RW    0111_1111B  0111_1111B
    AL0HOUR         :   --RW    0011_1111B  0011_1111B
    AL0WEEK         :   --RW    0000_0111B  0000_0111B
    AL1MIN          :   --RW    0111_1111B  0111_1111B
    AL1HOUR         :   --RW    0011_1111B  0011_1111B
    AL1DAY          :   --RW    0011_1111B  0011_1111B
    AL1MON          :   --RW    0001_1111B  0001_1111B
    BLDCON0         :   RWRW    0000_1111B  0000_1111B
    BLDCON1         :   --RW    0000_0011B  0000_0011B
    BIASCON         :   --RW    0001_1111B  0001_1111B
    DSPCNT          :   --RW    0001_1111B  0001_1111B
    DSPMOD0         :   RWRW    0111_1111B  0111_1111B
    DSPMOD1         :   --RW    0000_0111B  0000_0111B
    DSPCON          :   --RW    0000_0011B  0000_0011B
    DSPR00          :   --RW    1111_1111B  1111_1111B
    DSPR01          :   --RW    1111_1111B  1111_1111B
    DSPR02          :   --RW    1111_1111B  1111_1111B
    DSPR03          :   --RW    1111_1111B  1111_1111B
    DSPR04          :   --RW    1111_1111B  1111_1111B
    DSPR05          :   --RW    1111_1111B  1111_1111B
    DSPR06          :   --RW    1111_1111B  1111_1111B
    DSPR07          :   --RW    1111_1111B  1111_1111B
    DSPR08          :   --RW    1111_1111B  1111_1111B
    DSPR09          :   --RW    1111_1111B  1111_1111B
    DSPR0A          :   --RW    1111_1111B  1111_1111B
    DSPR0B          :   --RW    1111_1111B  1111_1111B
    DSPR0C          :   --RW    1111_1111B  1111_1111B
    DSPR0D          :   --RW    1111_1111B  1111_1111B
    DSPR0E          :   --RW    1111_1111B  1111_1111B
    DSPR0F          :   --RW    1111_1111B  1111_1111B
    DSPR10          :   --RW    1111_1111B  1111_1111B
    DSPR11          :   --RW    1111_1111B  1111_1111B
    DSPR12          :   --RW    1111_1111B  1111_1111B
    DSPR13          :   --RW    1111_1111B  1111_1111B
    DSPR14          :   --RW    1111_1111B  1111_1111B
    DSPR15          :   --RW    1111_1111B  1111_1111B
    DSPR16          :   --RW    1111_1111B  1111_1111B
    DSPR17          :   --RW    1111_1111B  1111_1111B
    DSPR18          :   --RW    1111_1111B  1111_1111B
    DSPR19          :   --RW    1111_1111B  1111_1111B
    DSPR1A          :   --RW    1111_1111B  1111_1111B
    DSPR1B          :   --RW    1111_1111B  1111_1111B
    DSPR1C          :   --RW    1111_1111B  1111_1111B
    DSPR1D          :   --RW    1111_1111B  1111_1111B
    DSPR1E          :   --RW    1111_1111B  1111_1111B
    DSPR1F          :   --RW    1111_1111B  1111_1111B
    DSPR20          :   --RW    1111_1111B  1111_1111B
    DSPR21          :   --RW    1111_1111B  1111_1111B
    DSPR22          :   --RW    1111_1111B  1111_1111B
    DSPR23          :   --RW    1111_1111B  1111_1111B
    DSPR24          :   --RW    1111_1111B  1111_1111B
    DSPR25          :   --RW    1111_1111B  1111_1111B
    DSPR26          :   --RW    1111_1111B  1111_1111B
    DSPR27          :   --RW    1111_1111B  1111_1111B
    DSPR28          :   --RW    1111_1111B  1111_1111B
    DSPR29          :   --RW    1111_1111B  1111_1111B
    DSPR2A          :   --RW    1111_1111B  1111_1111B
    DSPR2B          :   --RW    1111_1111B  1111_1111B
    DSPR2C          :   --RW    1111_1111B  1111_1111B
    DSPR2D          :   --RW    1111_1111B  1111_1111B
    DSPR2E          :   --RW    1111_1111B  1111_1111B
    DSPR2F          :   --RW    1111_1111B  1111_1111B
    DSPR30          :   --RW    1111_1111B  1111_1111B
    DSPR31          :   --RW    1111_1111B  1111_1111B
    DSPR32          :   --RW    1111_1111B  1111_1111B
    DSPR33          :   --RW    1111_1111B  1111_1111B
    DSPR34          :   --RW    1111_1111B  1111_1111B
    DSPR35          :   --RW    1111_1111B  1111_1111B
    DSPR36          :   --RW    1111_1111B  1111_1111B
    DSPR37          :   --RW    1111_1111B  1111_1111B
    DSPR38          :   --RW    1111_1111B  1111_1111B
    DSPR39          :   --RW    1111_1111B  1111_1111B
    DSPR3A          :   --RW    1111_1111B  1111_1111B
    DSPR3B          :   --RW    1111_1111B  1111_1111B
    DSPR3C          :   --RW    1111_1111B  1111_1111B
    DSPR3D          :   --RW    1111_1111B  1111_1111B
    DSPR3E          :   --RW    1111_1111B  1111_1111B
    DSPR3F          :   --RW    1111_1111B  1111_1111B
    DSPR40          :   --RW    1111_1111B  1111_1111B
    DSPR41          :   --RW    1111_1111B  1111_1111B
    DSPR42          :   --RW    1111_1111B  1111_1111B
    DSPR43          :   --RW    1111_1111B  1111_1111B
    DSPR44          :   --RW    1111_1111B  1111_1111B
    DSPR45          :   --RW    1111_1111B  1111_1111B
    DSPR46          :   --RW    1111_1111B  1111_1111B
    DSPR47          :   --RW    1111_1111B  1111_1111B
    DSPR48          :   --RW    1111_1111B  1111_1111B
    DSPR49          :   --RW    1111_1111B  1111_1111B
    DSPR4A          :   --RW    1111_1111B  1111_1111B
    DSPR4B          :   --RW    1111_1111B  1111_1111B
    DSPR4C          :   --RW    1111_1111B  1111_1111B
    DSPR4D          :   --RW    1111_1111B  1111_1111B
    DSPR4E          :   --RW    1111_1111B  1111_1111B
    DSPR4F          :   --RW    1111_1111B  1111_1111B
    DSPR50          :   --RW    1111_1111B  1111_1111B
    DSPR51          :   --RW    1111_1111B  1111_1111B
    DSPR52          :   --RW    1111_1111B  1111_1111B
    DSPR53          :   --RW    1111_1111B  1111_1111B
    DSPR54          :   --RW    1111_1111B  1111_1111B
    DSPR55          :   --RW    1111_1111B  1111_1111B
    DSPR56          :   --RW    1111_1111B  1111_1111B
    DSPR57          :   --RW    1111_1111B  1111_1111B
    DSPR58          :   --RW    1111_1111B  1111_1111B
    DSPR59          :   --RW    1111_1111B  1111_1111B
    DSPR5A          :   --RW    1111_1111B  1111_1111B
    DSPR5B          :   --RW    1111_1111B  1111_1111B
    DSPR5C          :   --RW    1111_1111B  1111_1111B
    DSPR5D          :   --RW    1111_1111B  1111_1111B
    DSPR5E          :   --RW    1111_1111B  1111_1111B
    DSPR5F          :   --RW    1111_1111B  1111_1111B
    DSPR60          :   --RW    1111_1111B  1111_1111B
    DSPR61          :   --RW    1111_1111B  1111_1111B
    DSPR62          :   --RW    1111_1111B  1111_1111B
    DSPR63          :   --RW    1111_1111B  1111_1111B
    DSPR64          :   --RW    1111_1111B  1111_1111B
    DSPR65          :   --RW    1111_1111B  1111_1111B
    DSPR66          :   --RW    1111_1111B  1111_1111B
    DSPR67          :   --RW    1111_1111B  1111_1111B
    DSPR68          :   --RW    1111_1111B  1111_1111B
    DSPR69          :   --RW    1111_1111B  1111_1111B
    DSPR6A          :   --RW    1111_1111B  1111_1111B
    DSPR6B          :   --RW    1111_1111B  1111_1111B
    DSPR6C          :   --RW    1111_1111B  1111_1111B
    DSPR6D          :   --RW    1111_1111B  1111_1111B
    DSPR6E          :   --RW    1111_1111B  1111_1111B
    DSPR6F          :   --RW    1111_1111B  1111_1111B
    DSPR70          :   --RW    1111_1111B  1111_1111B
    DSPR71          :   --RW    1111_1111B  1111_1111B
    DSPR72          :   --RW    1111_1111B  1111_1111B
    DSPR73          :   --RW    1111_1111B  1111_1111B
    DSPR74          :   --RW    1111_1111B  1111_1111B
    DSPR75          :   --RW    1111_1111B  1111_1111B
    DSPR76          :   --RW    1111_1111B  1111_1111B
    DSPR77          :   --RW    1111_1111B  1111_1111B
    DSPR78          :   --RW    1111_1111B  1111_1111B
    DSPR79          :   --RW    1111_1111B  1111_1111B
    DSPR7A          :   --RW    1111_1111B  1111_1111B
    DSPR7B          :   --RW    1111_1111B  1111_1111B
    DSPR7C          :   --RW    1111_1111B  1111_1111B
    DSPR7D          :   --RW    1111_1111B  1111_1111B
    DSPR7E          :   --RW    1111_1111B  1111_1111B
    DSPR7F          :   --RW    1111_1111B  1111_1111B
    DSPR80          :   --RW    1111_1111B  1111_1111B
    DSPR81          :   --RW    1111_1111B  1111_1111B
    DSPR82          :   --RW    1111_1111B  1111_1111B
    DSPR83          :   --RW    1111_1111B  1111_1111B
    DSPR84          :   --RW    1111_1111B  1111_1111B
    DSPR85          :   --RW    1111_1111B  1111_1111B
    DSPR86          :   --RW    1111_1111B  1111_1111B
    DSPR87          :   --RW    1111_1111B  1111_1111B
    DSPR88          :   --RW    1111_1111B  1111_1111B
    DSPR89          :   --RW    1111_1111B  1111_1111B
    DSPR8A          :   --RW    1111_1111B  1111_1111B
    DSPR8B          :   --RW    1111_1111B  1111_1111B
    DSPR8C          :   --RW    1111_1111B  1111_1111B
    DSPR8D          :   --RW    1111_1111B  1111_1111B
    DSPR8E          :   --RW    1111_1111B  1111_1111B
    DSPR8F          :   --RW    1111_1111B  1111_1111B
    DSPR90          :   --RW    1111_1111B  1111_1111B
    DSPR91          :   --RW    1111_1111B  1111_1111B
    DSPR92          :   --RW    1111_1111B  1111_1111B
    DSPR93          :   --RW    1111_1111B  1111_1111B
    DSPR94          :   --RW    1111_1111B  1111_1111B
    DSPR95          :   --RW    1111_1111B  1111_1111B
    DSPR96          :   --RW    1111_1111B  1111_1111B
    DSPR97          :   --RW    1111_1111B  1111_1111B
    DSPR98          :   --RW    1111_1111B  1111_1111B
    DSPR99          :   --RW    1111_1111B  1111_1111B
    DSPR9A          :   --RW    1111_1111B  1111_1111B
    DSPR9B          :   --RW    1111_1111B  1111_1111B
    DSPR9C          :   --RW    1111_1111B  1111_1111B
    DSPR9D          :   --RW    1111_1111B  1111_1111B
    DSPR9E          :   --RW    1111_1111B  1111_1111B
    DSPR9F          :   --RW    1111_1111B  1111_1111B
    DSPRA0          :   --RW    1111_1111B  1111_1111B
    DSPRA1          :   --RW    1111_1111B  1111_1111B
    DSPRA2          :   --RW    1111_1111B  1111_1111B
    DSPRA3          :   --RW    1111_1111B  1111_1111B
    DSPRA4          :   --RW    1111_1111B  1111_1111B
    DSPRA5          :   --RW    1111_1111B  1111_1111B
    DSPRA6          :   --RW    1111_1111B  1111_1111B
    DSPRA7          :   --RW    1111_1111B  1111_1111B
    DSPRA8          :   --RW    1111_1111B  1111_1111B
    DSPRA9          :   --RW    1111_1111B  1111_1111B
    DSPRAA          :   --RW    1111_1111B  1111_1111B
    DSPRAB          :   --RW    1111_1111B  1111_1111B
    DSPRAC          :   --RW    1111_1111B  1111_1111B
    DSPRAD          :   --RW    1111_1111B  1111_1111B
    DSPRAE          :   --RW    1111_1111B  1111_1111B
    DSPRAF          :   --RW    1111_1111B  1111_1111B
    DSPRB0          :   --RW    1111_1111B  1111_1111B
    DSPRB1          :   --RW    1111_1111B  1111_1111B
    DSPRB2          :   --RW    1111_1111B  1111_1111B
    DSPRB3          :   --RW    1111_1111B  1111_1111B
    DSPRB4          :   --RW    1111_1111B  1111_1111B
    DSPRB5          :   --RW    1111_1111B  1111_1111B
    DSPRB6          :   --RW    1111_1111B  1111_1111B
    DSPRB7          :   --RW    1111_1111B  1111_1111B
    DSPRB8          :   --RW    1111_1111B  1111_1111B
    DSPRB9          :   --RW    1111_1111B  1111_1111B
    DSPRBA          :   --RW    1111_1111B  1111_1111B
    DSPRBB          :   --RW    1111_1111B  1111_1111B
    DSPRBC          :   --RW    1111_1111B  1111_1111B
    DSPRBD          :   --RW    1111_1111B  1111_1111B
    DSPRBE          :   --RW    1111_1111B  1111_1111B
    DSPRBF          :   --RW    1111_1111B  1111_1111B
    DSPRC0          :   --RW    1111_1111B  1111_1111B
    DSPRC1          :   --RW    1111_1111B  1111_1111B
    DSPRC2          :   --RW    1111_1111B  1111_1111B
    DSPRC3          :   --RW    1111_1111B  1111_1111B
    DSPRC4          :   --RW    1111_1111B  1111_1111B
    DSPRC5          :   --RW    1111_1111B  1111_1111B
    DSPRC6          :   --RW    1111_1111B  1111_1111B
    DSPRC7          :   --RW    1111_1111B  1111_1111B
    DSPRC8          :   --RW    1111_1111B  1111_1111B
    DSPRC9          :   --RW    1111_1111B  1111_1111B
    DSPRCA          :   --RW    1111_1111B  1111_1111B
    DSPRCB          :   --RW    1111_1111B  1111_1111B
    DSPRCC          :   --RW    1111_1111B  1111_1111B
    DSPRCD          :   --RW    1111_1111B  1111_1111B
    DSPRCE          :   --RW    1111_1111B  1111_1111B
    DSPRCF          :   --RW    1111_1111B  1111_1111B
    DSPRD0          :   --RW    1111_1111B  1111_1111B
    DSPRD1          :   --RW    1111_1111B  1111_1111B
    DSPRD2          :   --RW    1111_1111B  1111_1111B
    DSPRD3          :   --RW    1111_1111B  1111_1111B
    DSPRD4          :   --RW    1111_1111B  1111_1111B
    DSPRD5          :   --RW    1111_1111B  1111_1111B
    DSPRD6          :   --RW    1111_1111B  1111_1111B
    DSPRD7          :   --RW    1111_1111B  1111_1111B
    DSPRD8          :   --RW    1111_1111B  1111_1111B
    DSPRD9          :   --RW    1111_1111B  1111_1111B
    DSPRDA          :   --RW    1111_1111B  1111_1111B
    DSPRDB          :   --RW    1111_1111B  1111_1111B
    DSPRDC          :   --RW    1111_1111B  1111_1111B
    DSPRDD          :   --RW    1111_1111B  1111_1111B
    DSPRDE          :   --RW    1111_1111B  1111_1111B
    DSPRDF          :   --RW    1111_1111B  1111_1111B
    DSPRE0          :   --RW    1111_1111B  1111_1111B
    DSPRE1          :   --RW    1111_1111B  1111_1111B
    DSPRE2          :   --RW    1111_1111B  1111_1111B
    DSPRE3          :   --RW    1111_1111B  1111_1111B
    DSPRE4          :   --RW    1111_1111B  1111_1111B
    DSPRE5          :   --RW    1111_1111B  1111_1111B
    DSPRE6          :   --RW    1111_1111B  1111_1111B
    DSPRE7          :   --RW    1111_1111B  1111_1111B
    DSPRE8          :   --RW    1111_1111B  1111_1111B
    DSPRE9          :   --RW    1111_1111B  1111_1111B
    DSPREA          :   --RW    1111_1111B  1111_1111B
    DSPREB          :   --RW    1111_1111B  1111_1111B
    DSPREC          :   --RW    1111_1111B  1111_1111B
    DSPRED          :   --RW    1111_1111B  1111_1111B
    DSPREE          :   --RW    1111_1111B  1111_1111B
    DSPREF          :   --RW    1111_1111B  1111_1111B
    DSPRF0          :   --RW    1111_1111B  1111_1111B
    DSPRF1          :   --RW    1111_1111B  1111_1111B
    DSPRF2          :   --RW    1111_1111B  1111_1111B
    DSPRF3          :   --RW    1111_1111B  1111_1111B
    DSPRF4          :   --RW    1111_1111B  1111_1111B
    DSPRF5          :   --RW    1111_1111B  1111_1111B
    DSPRF6          :   --RW    1111_1111B  1111_1111B
    DSPRF7          :   --RW    1111_1111B  1111_1111B
    DSPRF8          :   --RW    1111_1111B  1111_1111B
    DSPRF9          :   --RW    1111_1111B  1111_1111B
    DSPRFA          :   --RW    1111_1111B  1111_1111B
    DSPRFB          :   --RW    1111_1111B  1111_1111B
    DSPRFC          :   --RW    1111_1111B  1111_1111B
    DSPRFD          :   --RW    1111_1111B  1111_1111B
    DSPRFE          :   --RW    1111_1111B  1111_1111B
    NMID            :   --R-    0000_0001B  -         
    NMICON          :   --RW    0000_0001B  0000_0001B
    P0D             :   --R-    0000_1111B  -         
    P0CON0          :   RWRW    0000_1111B  0000_1111B
    P0CON1          :   --RW    0000_1111B  0000_1111B
    P1D             :   --R-    0000_0011B  -         
    P1CON0          :   RWRW    0000_0011B  0000_0011B
    P1CON1          :   --RW    0000_0011B  0000_0011B
    P2D             :   --RW    0000_0111B  0000_0111B
    P2CON0          :   RWRW    0000_0111B  0000_0111B
    P2CON1          :   --RW    0000_0111B  0000_0111B
    P2MOD           :   --RW    0000_0111B  0000_0111B
    P3D             :   --RW    0011_1111B  0011_1111B
    P3DIR           :   --RW    0011_1111B  0011_1111B
    P3CON0          :   RWRW    0011_1111B  0011_1111B
    P3CON1          :   --RW    0011_1111B  0011_1111B
    P3MOD0          :   RWRW    0011_1111B  0011_1111B
    P3MOD1          :   --RW    0011_1111B  0011_1111B
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
    I2C0MOD         :   --RW    0001_1111B  0001_1111B
    I2C0STAT        :   --R-    0000_0111B  -         
    MD0CON          :   --RW    0000_0011B  0000_0011B
    MD0TMP          :   --RW    0000_1111B  0000_1111B
    MD0TON          :   RWRW    0111_1111B  0111_1111B
    MD0LEN          :   --RW    0011_1111B  0011_1111B
    SADR0L          :   R-R-    1111_0000B  -         
    SADR0H          :   --R-    1111_1111B  -         
    SADR1L          :   R-R-    1111_0000B  -         
    SADR1H          :   --R-    1111_1111B  -         
    SADCON0         :   RWRW    0000_0011B  0000_0011B
    SADCON1         :   --RW    0000_0001B  0000_0001B
    SADMOD0         :   --RW    0000_0011B  0000_0011B
    AMPOFFS         :   --RW    0001_1111B  0001_1111B
    AMPGAIN         :   --RW    0000_1111B  0000_1111B
    AMPCON0         :   --RW    0000_0111B  0000_0111B
    RADCA0          :   --RW    1111_1111B  1111_1111B
    RADCA1          :   --RW    1111_1111B  1111_1111B
    RADCA2          :   --RW    1111_1111B  1111_1111B
    RADCB0          :   --RW    1111_1111B  1111_1111B
    RADCB1          :   --RW    1111_1111B  1111_1111B
    RADCB2          :   --RW    1111_1111B  1111_1111B
    RADMOD          :   --RW    1111_1111B  1111_1111B
    RADCON          :   --RW    0000_0001B  0000_0001B
    DS0C0A          :   RWRW    1111_1111B  1111_1111B
    DS1C0A          :   --RW    1111_1111B  1111_1111B
    DS2C0A          :   RWRW    1111_1111B  1111_1111B
    DS3C0A          :   --RW    1111_1111B  1111_1111B
    DS4C0A          :   RWRW    1111_1111B  1111_1111B
    DS5C0A          :   --RW    1111_1111B  1111_1111B
    DS6C0A          :   RWRW    1111_1111B  1111_1111B
    DS7C0A          :   --RW    1111_1111B  1111_1111B
    DS8C0A          :   RWRW    1111_1111B  1111_1111B
    DS9C0A          :   --RW    1111_1111B  1111_1111B
    DS10C0A         :   RWRW    1111_1111B  1111_1111B
    DS11C0A         :   --RW    1111_1111B  1111_1111B
    DS12C0A         :   RWRW    1111_1111B  1111_1111B
    DS13C0A         :   --RW    1111_1111B  1111_1111B
    DS14C0A         :   RWRW    1111_1111B  1111_1111B
    DS15C0A         :   --RW    1111_1111B  1111_1111B
    DS16C0A         :   RWRW    1111_1111B  1111_1111B
    DS17C0A         :   --RW    1111_1111B  1111_1111B
    DS18C0A         :   RWRW    1111_1111B  1111_1111B
    DS19C0A         :   --RW    1111_1111B  1111_1111B
    DS20C0A         :   RWRW    1111_1111B  1111_1111B
    DS21C0A         :   --RW    1111_1111B  1111_1111B
    DS22C0A         :   RWRW    1111_1111B  1111_1111B
    DS23C0A         :   --RW    1111_1111B  1111_1111B
    DS24C0A         :   RWRW    1111_1111B  1111_1111B
    DS25C0A         :   --RW    1111_1111B  1111_1111B
    DS26C0A         :   RWRW    1111_1111B  1111_1111B
    DS27C0A         :   --RW    1111_1111B  1111_1111B
    DS28C0A         :   RWRW    1111_1111B  1111_1111B
    DS29C0A         :   --RW    1111_1111B  1111_1111B
    DS30C0A         :   RWRW    1111_1111B  1111_1111B
    DS31C0A         :   --RW    1111_1111B  1111_1111B
    DS32C0A         :   RWRW    1111_1111B  1111_1111B
    DS33C0A         :   --RW    1111_1111B  1111_1111B
    DS34C0A         :   RWRW    1111_1111B  1111_1111B
    DS35C0A         :   --RW    1111_1111B  1111_1111B
    DS36C0A         :   RWRW    1111_1111B  1111_1111B
    DS37C0A         :   --RW    1111_1111B  1111_1111B
    DS38C0A         :   RWRW    1111_1111B  1111_1111B
    DS39C0A         :   --RW    1111_1111B  1111_1111B
    DS40C0A         :   RWRW    1111_1111B  1111_1111B
    DS41C0A         :   --RW    1111_1111B  1111_1111B
    DS42C0A         :   RWRW    1111_1111B  1111_1111B
    DS43C0A         :   --RW    1111_1111B  1111_1111B
    DS44C0A         :   RWRW    1111_1111B  1111_1111B
    DS45C0A         :   --RW    1111_1111B  1111_1111B
    DS46C0A         :   RWRW    1111_1111B  1111_1111B
    DS47C0A         :   --RW    1111_1111B  1111_1111B
    DS48C0A         :   RWRW    1111_1111B  1111_1111B
    DS49C0A         :   --RW    1111_1111B  1111_1111B
    DS50C0A         :   RWRW    1111_1111B  1111_1111B
    DS51C0A         :   --RW    1111_1111B  1111_1111B
    DS52C0A         :   RWRW    1111_1111B  1111_1111B
    DS53C0A         :   --RW    1111_1111B  1111_1111B
    DS54C0A         :   RWRW    1111_1111B  1111_1111B
    DS55C0A         :   --RW    1111_1111B  1111_1111B
    DS56C0A         :   RWRW    1111_1111B  1111_1111B
    DS57C0A         :   --RW    1111_1111B  1111_1111B
    DS58C0A         :   RWRW    1111_1111B  1111_1111B
    DS59C0A         :   --RW    1111_1111B  1111_1111B
    DS60C0A         :   RWRW    1111_1111B  1111_1111B
    DS61C0A         :   --RW    1111_1111B  1111_1111B
    DS62C0A         :   RWRW    1111_1111B  1111_1111B
    DS63C0A         :   --RW    1111_1111B  1111_1111B
    DS0C1A          :   RWRW    1111_1111B  1111_1111B
    DS1C1A          :   --RW    1111_1111B  1111_1111B
    DS2C1A          :   RWRW    1111_1111B  1111_1111B
    DS3C1A          :   --RW    1111_1111B  1111_1111B
    DS4C1A          :   RWRW    1111_1111B  1111_1111B
    DS5C1A          :   --RW    1111_1111B  1111_1111B
    DS6C1A          :   RWRW    1111_1111B  1111_1111B
    DS7C1A          :   --RW    1111_1111B  1111_1111B
    DS8C1A          :   RWRW    1111_1111B  1111_1111B
    DS9C1A          :   --RW    1111_1111B  1111_1111B
    DS10C1A         :   RWRW    1111_1111B  1111_1111B
    DS11C1A         :   --RW    1111_1111B  1111_1111B
    DS12C1A         :   RWRW    1111_1111B  1111_1111B
    DS13C1A         :   --RW    1111_1111B  1111_1111B
    DS14C1A         :   RWRW    1111_1111B  1111_1111B
    DS15C1A         :   --RW    1111_1111B  1111_1111B
    DS16C1A         :   RWRW    1111_1111B  1111_1111B
    DS17C1A         :   --RW    1111_1111B  1111_1111B
    DS18C1A         :   RWRW    1111_1111B  1111_1111B
    DS19C1A         :   --RW    1111_1111B  1111_1111B
    DS20C1A         :   RWRW    1111_1111B  1111_1111B
    DS21C1A         :   --RW    1111_1111B  1111_1111B
    DS22C1A         :   RWRW    1111_1111B  1111_1111B
    DS23C1A         :   --RW    1111_1111B  1111_1111B
    DS24C1A         :   RWRW    1111_1111B  1111_1111B
    DS25C1A         :   --RW    1111_1111B  1111_1111B
    DS26C1A         :   RWRW    1111_1111B  1111_1111B
    DS27C1A         :   --RW    1111_1111B  1111_1111B
    DS28C1A         :   RWRW    1111_1111B  1111_1111B
    DS29C1A         :   --RW    1111_1111B  1111_1111B
    DS30C1A         :   RWRW    1111_1111B  1111_1111B
    DS31C1A         :   --RW    1111_1111B  1111_1111B
    DS32C1A         :   RWRW    1111_1111B  1111_1111B
    DS33C1A         :   --RW    1111_1111B  1111_1111B
    DS34C1A         :   RWRW    1111_1111B  1111_1111B
    DS35C1A         :   --RW    1111_1111B  1111_1111B
    DS36C1A         :   RWRW    1111_1111B  1111_1111B
    DS37C1A         :   --RW    1111_1111B  1111_1111B
    DS38C1A         :   RWRW    1111_1111B  1111_1111B
    DS39C1A         :   --RW    1111_1111B  1111_1111B
    DS40C1A         :   RWRW    1111_1111B  1111_1111B
    DS41C1A         :   --RW    1111_1111B  1111_1111B
    DS42C1A         :   RWRW    1111_1111B  1111_1111B
    DS43C1A         :   --RW    1111_1111B  1111_1111B
    DS44C1A         :   RWRW    1111_1111B  1111_1111B
    DS45C1A         :   --RW    1111_1111B  1111_1111B
    DS46C1A         :   RWRW    1111_1111B  1111_1111B
    DS47C1A         :   --RW    1111_1111B  1111_1111B
    DS48C1A         :   RWRW    1111_1111B  1111_1111B
    DS49C1A         :   --RW    1111_1111B  1111_1111B
    DS50C1A         :   RWRW    1111_1111B  1111_1111B
    DS51C1A         :   --RW    1111_1111B  1111_1111B
    DS52C1A         :   RWRW    1111_1111B  1111_1111B
    DS53C1A         :   --RW    1111_1111B  1111_1111B
    DS54C1A         :   RWRW    1111_1111B  1111_1111B
    DS55C1A         :   --RW    1111_1111B  1111_1111B
    DS56C1A         :   RWRW    1111_1111B  1111_1111B
    DS57C1A         :   --RW    1111_1111B  1111_1111B
    DS58C1A         :   RWRW    1111_1111B  1111_1111B
    DS59C1A         :   --RW    1111_1111B  1111_1111B
    DS60C1A         :   RWRW    1111_1111B  1111_1111B
    DS61C1A         :   --RW    1111_1111B  1111_1111B
    DS62C1A         :   RWRW    1111_1111B  1111_1111B
    DS63C1A         :   --RW    1111_1111B  1111_1111B
    DS0C2A          :   RWRW    1111_1111B  1111_1111B
    DS1C2A          :   --RW    1111_1111B  1111_1111B
    DS2C2A          :   RWRW    1111_1111B  1111_1111B
    DS3C2A          :   --RW    1111_1111B  1111_1111B
    DS4C2A          :   RWRW    1111_1111B  1111_1111B
    DS5C2A          :   --RW    1111_1111B  1111_1111B
    DS6C2A          :   RWRW    1111_1111B  1111_1111B
    DS7C2A          :   --RW    1111_1111B  1111_1111B
    DS8C2A          :   RWRW    1111_1111B  1111_1111B
    DS9C2A          :   --RW    1111_1111B  1111_1111B
    DS10C2A         :   RWRW    1111_1111B  1111_1111B
    DS11C2A         :   --RW    1111_1111B  1111_1111B
    DS12C2A         :   RWRW    1111_1111B  1111_1111B
    DS13C2A         :   --RW    1111_1111B  1111_1111B
    DS14C2A         :   RWRW    1111_1111B  1111_1111B
    DS15C2A         :   --RW    1111_1111B  1111_1111B
    DS16C2A         :   RWRW    1111_1111B  1111_1111B
    DS17C2A         :   --RW    1111_1111B  1111_1111B
    DS18C2A         :   RWRW    1111_1111B  1111_1111B
    DS19C2A         :   --RW    1111_1111B  1111_1111B
    DS20C2A         :   RWRW    1111_1111B  1111_1111B
    DS21C2A         :   --RW    1111_1111B  1111_1111B
    DS22C2A         :   RWRW    1111_1111B  1111_1111B
    DS23C2A         :   --RW    1111_1111B  1111_1111B
    DS24C2A         :   RWRW    1111_1111B  1111_1111B
    DS25C2A         :   --RW    1111_1111B  1111_1111B
    DS26C2A         :   RWRW    1111_1111B  1111_1111B
    DS27C2A         :   --RW    1111_1111B  1111_1111B
    DS28C2A         :   RWRW    1111_1111B  1111_1111B
    DS29C2A         :   --RW    1111_1111B  1111_1111B
    DS30C2A         :   RWRW    1111_1111B  1111_1111B
    DS31C2A         :   --RW    1111_1111B  1111_1111B
    DS32C2A         :   RWRW    1111_1111B  1111_1111B
    DS33C2A         :   --RW    1111_1111B  1111_1111B
    DS34C2A         :   RWRW    1111_1111B  1111_1111B
    DS35C2A         :   --RW    1111_1111B  1111_1111B
    DS36C2A         :   RWRW    1111_1111B  1111_1111B
    DS37C2A         :   --RW    1111_1111B  1111_1111B
    DS38C2A         :   RWRW    1111_1111B  1111_1111B
    DS39C2A         :   --RW    1111_1111B  1111_1111B
    DS40C2A         :   RWRW    1111_1111B  1111_1111B
    DS41C2A         :   --RW    1111_1111B  1111_1111B
    DS42C2A         :   RWRW    1111_1111B  1111_1111B
    DS43C2A         :   --RW    1111_1111B  1111_1111B
    DS44C2A         :   RWRW    1111_1111B  1111_1111B
    DS45C2A         :   --RW    1111_1111B  1111_1111B
    DS46C2A         :   RWRW    1111_1111B  1111_1111B
    DS47C2A         :   --RW    1111_1111B  1111_1111B
    DS48C2A         :   RWRW    1111_1111B  1111_1111B
    DS49C2A         :   --RW    1111_1111B  1111_1111B
    DS50C2A         :   RWRW    1111_1111B  1111_1111B
    DS51C2A         :   --RW    1111_1111B  1111_1111B
    DS52C2A         :   RWRW    1111_1111B  1111_1111B
    DS53C2A         :   --RW    1111_1111B  1111_1111B
    DS54C2A         :   RWRW    1111_1111B  1111_1111B
    DS55C2A         :   --RW    1111_1111B  1111_1111B
    DS56C2A         :   RWRW    1111_1111B  1111_1111B
    DS57C2A         :   --RW    1111_1111B  1111_1111B
    DS58C2A         :   RWRW    1111_1111B  1111_1111B
    DS59C2A         :   --RW    1111_1111B  1111_1111B
    DS60C2A         :   RWRW    1111_1111B  1111_1111B
    DS61C2A         :   --RW    1111_1111B  1111_1111B
    DS62C2A         :   RWRW    1111_1111B  1111_1111B
    DS63C2A         :   --RW    1111_1111B  1111_1111B
    DS0C3A          :   RWRW    1111_1111B  1111_1111B
    DS1C3A          :   --RW    1111_1111B  1111_1111B
    DS2C3A          :   RWRW    1111_1111B  1111_1111B
    DS3C3A          :   --RW    1111_1111B  1111_1111B
    DS4C3A          :   RWRW    1111_1111B  1111_1111B
    DS5C3A          :   --RW    1111_1111B  1111_1111B
    DS6C3A          :   RWRW    1111_1111B  1111_1111B
    DS7C3A          :   --RW    1111_1111B  1111_1111B
    DS8C3A          :   RWRW    1111_1111B  1111_1111B
    DS9C3A          :   --RW    1111_1111B  1111_1111B
    DS10C3A         :   RWRW    1111_1111B  1111_1111B
    DS11C3A         :   --RW    1111_1111B  1111_1111B
    DS12C3A         :   RWRW    1111_1111B  1111_1111B
    DS13C3A         :   --RW    1111_1111B  1111_1111B
    DS14C3A         :   RWRW    1111_1111B  1111_1111B
    DS15C3A         :   --RW    1111_1111B  1111_1111B
    DS16C3A         :   RWRW    1111_1111B  1111_1111B
    DS17C3A         :   --RW    1111_1111B  1111_1111B
    DS18C3A         :   RWRW    1111_1111B  1111_1111B
    DS19C3A         :   --RW    1111_1111B  1111_1111B
    DS20C3A         :   RWRW    1111_1111B  1111_1111B
    DS21C3A         :   --RW    1111_1111B  1111_1111B
    DS22C3A         :   RWRW    1111_1111B  1111_1111B
    DS23C3A         :   --RW    1111_1111B  1111_1111B
    DS24C3A         :   RWRW    1111_1111B  1111_1111B
    DS25C3A         :   --RW    1111_1111B  1111_1111B
    DS26C3A         :   RWRW    1111_1111B  1111_1111B
    DS27C3A         :   --RW    1111_1111B  1111_1111B
    DS28C3A         :   RWRW    1111_1111B  1111_1111B
    DS29C3A         :   --RW    1111_1111B  1111_1111B
    DS30C3A         :   RWRW    1111_1111B  1111_1111B
    DS31C3A         :   --RW    1111_1111B  1111_1111B
    DS32C3A         :   RWRW    1111_1111B  1111_1111B
    DS33C3A         :   --RW    1111_1111B  1111_1111B
    DS34C3A         :   RWRW    1111_1111B  1111_1111B
    DS35C3A         :   --RW    1111_1111B  1111_1111B
    DS36C3A         :   RWRW    1111_1111B  1111_1111B
    DS37C3A         :   --RW    1111_1111B  1111_1111B
    DS38C3A         :   RWRW    1111_1111B  1111_1111B
    DS39C3A         :   --RW    1111_1111B  1111_1111B
    DS40C3A         :   RWRW    1111_1111B  1111_1111B
    DS41C3A         :   --RW    1111_1111B  1111_1111B
    DS42C3A         :   RWRW    1111_1111B  1111_1111B
    DS43C3A         :   --RW    1111_1111B  1111_1111B
    DS44C3A         :   RWRW    1111_1111B  1111_1111B
    DS45C3A         :   --RW    1111_1111B  1111_1111B
    DS46C3A         :   RWRW    1111_1111B  1111_1111B
    DS47C3A         :   --RW    1111_1111B  1111_1111B
    DS48C3A         :   RWRW    1111_1111B  1111_1111B
    DS49C3A         :   --RW    1111_1111B  1111_1111B
    DS50C3A         :   RWRW    1111_1111B  1111_1111B
    DS51C3A         :   --RW    1111_1111B  1111_1111B
    DS52C3A         :   RWRW    1111_1111B  1111_1111B
    DS53C3A         :   --RW    1111_1111B  1111_1111B
    DS54C3A         :   RWRW    1111_1111B  1111_1111B
    DS55C3A         :   --RW    1111_1111B  1111_1111B
    DS56C3A         :   RWRW    1111_1111B  1111_1111B
    DS57C3A         :   --RW    1111_1111B  1111_1111B
    DS58C3A         :   RWRW    1111_1111B  1111_1111B
    DS59C3A         :   --RW    1111_1111B  1111_1111B
    DS60C3A         :   RWRW    1111_1111B  1111_1111B
    DS61C3A         :   --RW    1111_1111B  1111_1111B
    DS62C3A         :   RWRW    1111_1111B  1111_1111B
    DS63C3A         :   --RW    1111_1111B  1111_1111B
    DS0C4A          :   RWRW    1111_1111B  1111_1111B
    DS1C4A          :   --RW    1111_1111B  1111_1111B
    DS2C4A          :   RWRW    1111_1111B  1111_1111B
    DS3C4A          :   --RW    1111_1111B  1111_1111B
    DS4C4A          :   RWRW    1111_1111B  1111_1111B
    DS5C4A          :   --RW    1111_1111B  1111_1111B
    DS6C4A          :   RWRW    1111_1111B  1111_1111B
    DS7C4A          :   --RW    1111_1111B  1111_1111B
    DS8C4A          :   RWRW    1111_1111B  1111_1111B
    DS9C4A          :   --RW    1111_1111B  1111_1111B
    DS10C4A         :   RWRW    1111_1111B  1111_1111B
    DS11C4A         :   --RW    1111_1111B  1111_1111B
    DS12C4A         :   RWRW    1111_1111B  1111_1111B
    DS13C4A         :   --RW    1111_1111B  1111_1111B
    DS14C4A         :   RWRW    1111_1111B  1111_1111B
    DS15C4A         :   --RW    1111_1111B  1111_1111B
    DS16C4A         :   RWRW    1111_1111B  1111_1111B
    DS17C4A         :   --RW    1111_1111B  1111_1111B
    DS18C4A         :   RWRW    1111_1111B  1111_1111B
    DS19C4A         :   --RW    1111_1111B  1111_1111B
    DS20C4A         :   RWRW    1111_1111B  1111_1111B
    DS21C4A         :   --RW    1111_1111B  1111_1111B
    DS22C4A         :   RWRW    1111_1111B  1111_1111B
    DS23C4A         :   --RW    1111_1111B  1111_1111B
    DS24C4A         :   RWRW    1111_1111B  1111_1111B
    DS25C4A         :   --RW    1111_1111B  1111_1111B
    DS26C4A         :   RWRW    1111_1111B  1111_1111B
    DS27C4A         :   --RW    1111_1111B  1111_1111B
    DS28C4A         :   RWRW    1111_1111B  1111_1111B
    DS29C4A         :   --RW    1111_1111B  1111_1111B
    DS30C4A         :   RWRW    1111_1111B  1111_1111B
    DS31C4A         :   --RW    1111_1111B  1111_1111B
    DS32C4A         :   RWRW    1111_1111B  1111_1111B
    DS33C4A         :   --RW    1111_1111B  1111_1111B
    DS34C4A         :   RWRW    1111_1111B  1111_1111B
    DS35C4A         :   --RW    1111_1111B  1111_1111B
    DS36C4A         :   RWRW    1111_1111B  1111_1111B
    DS37C4A         :   --RW    1111_1111B  1111_1111B
    DS38C4A         :   RWRW    1111_1111B  1111_1111B
    DS39C4A         :   --RW    1111_1111B  1111_1111B
    DS40C4A         :   RWRW    1111_1111B  1111_1111B
    DS41C4A         :   --RW    1111_1111B  1111_1111B
    DS42C4A         :   RWRW    1111_1111B  1111_1111B
    DS43C4A         :   --RW    1111_1111B  1111_1111B
    DS44C4A         :   RWRW    1111_1111B  1111_1111B
    DS45C4A         :   --RW    1111_1111B  1111_1111B
    DS46C4A         :   RWRW    1111_1111B  1111_1111B
    DS47C4A         :   --RW    1111_1111B  1111_1111B
    DS48C4A         :   RWRW    1111_1111B  1111_1111B
    DS49C4A         :   --RW    1111_1111B  1111_1111B
    DS50C4A         :   RWRW    1111_1111B  1111_1111B
    DS51C4A         :   --RW    1111_1111B  1111_1111B
    DS52C4A         :   RWRW    1111_1111B  1111_1111B
    DS53C4A         :   --RW    1111_1111B  1111_1111B
    DS54C4A         :   RWRW    1111_1111B  1111_1111B
    DS55C4A         :   --RW    1111_1111B  1111_1111B
    DS56C4A         :   RWRW    1111_1111B  1111_1111B
    DS57C4A         :   --RW    1111_1111B  1111_1111B
    DS58C4A         :   RWRW    1111_1111B  1111_1111B
    DS59C4A         :   --RW    1111_1111B  1111_1111B
    DS60C4A         :   RWRW    1111_1111B  1111_1111B
    DS61C4A         :   --RW    1111_1111B  1111_1111B
    DS62C4A         :   RWRW    1111_1111B  1111_1111B
    DS63C4A         :   --RW    1111_1111B  1111_1111B
    DS0C5A          :   RWRW    1111_1111B  1111_1111B
    DS1C5A          :   --RW    1111_1111B  1111_1111B
    DS2C5A          :   RWRW    1111_1111B  1111_1111B
    DS3C5A          :   --RW    1111_1111B  1111_1111B
    DS4C5A          :   RWRW    1111_1111B  1111_1111B
    DS5C5A          :   --RW    1111_1111B  1111_1111B
    DS6C5A          :   RWRW    1111_1111B  1111_1111B
    DS7C5A          :   --RW    1111_1111B  1111_1111B
    DS8C5A          :   RWRW    1111_1111B  1111_1111B
    DS9C5A          :   --RW    1111_1111B  1111_1111B
    DS10C5A         :   RWRW    1111_1111B  1111_1111B
    DS11C5A         :   --RW    1111_1111B  1111_1111B
    DS12C5A         :   RWRW    1111_1111B  1111_1111B
    DS13C5A         :   --RW    1111_1111B  1111_1111B
    DS14C5A         :   RWRW    1111_1111B  1111_1111B
    DS15C5A         :   --RW    1111_1111B  1111_1111B
    DS16C5A         :   RWRW    1111_1111B  1111_1111B
    DS17C5A         :   --RW    1111_1111B  1111_1111B
    DS18C5A         :   RWRW    1111_1111B  1111_1111B
    DS19C5A         :   --RW    1111_1111B  1111_1111B
    DS20C5A         :   RWRW    1111_1111B  1111_1111B
    DS21C5A         :   --RW    1111_1111B  1111_1111B
    DS22C5A         :   RWRW    1111_1111B  1111_1111B
    DS23C5A         :   --RW    1111_1111B  1111_1111B
    DS24C5A         :   RWRW    1111_1111B  1111_1111B
    DS25C5A         :   --RW    1111_1111B  1111_1111B
    DS26C5A         :   RWRW    1111_1111B  1111_1111B
    DS27C5A         :   --RW    1111_1111B  1111_1111B
    DS28C5A         :   RWRW    1111_1111B  1111_1111B
    DS29C5A         :   --RW    1111_1111B  1111_1111B
    DS30C5A         :   RWRW    1111_1111B  1111_1111B
    DS31C5A         :   --RW    1111_1111B  1111_1111B
    DS32C5A         :   RWRW    1111_1111B  1111_1111B
    DS33C5A         :   --RW    1111_1111B  1111_1111B
    DS34C5A         :   RWRW    1111_1111B  1111_1111B
    DS35C5A         :   --RW    1111_1111B  1111_1111B
    DS36C5A         :   RWRW    1111_1111B  1111_1111B
    DS37C5A         :   --RW    1111_1111B  1111_1111B
    DS38C5A         :   RWRW    1111_1111B  1111_1111B
    DS39C5A         :   --RW    1111_1111B  1111_1111B
    DS40C5A         :   RWRW    1111_1111B  1111_1111B
    DS41C5A         :   --RW    1111_1111B  1111_1111B
    DS42C5A         :   RWRW    1111_1111B  1111_1111B
    DS43C5A         :   --RW    1111_1111B  1111_1111B
    DS44C5A         :   RWRW    1111_1111B  1111_1111B
    DS45C5A         :   --RW    1111_1111B  1111_1111B
    DS46C5A         :   RWRW    1111_1111B  1111_1111B
    DS47C5A         :   --RW    1111_1111B  1111_1111B
    DS48C5A         :   RWRW    1111_1111B  1111_1111B
    DS49C5A         :   --RW    1111_1111B  1111_1111B
    DS50C5A         :   RWRW    1111_1111B  1111_1111B
    DS51C5A         :   --RW    1111_1111B  1111_1111B
    DS52C5A         :   RWRW    1111_1111B  1111_1111B
    DS53C5A         :   --RW    1111_1111B  1111_1111B
    DS54C5A         :   RWRW    1111_1111B  1111_1111B
    DS55C5A         :   --RW    1111_1111B  1111_1111B
    DS56C5A         :   RWRW    1111_1111B  1111_1111B
    DS57C5A         :   --RW    1111_1111B  1111_1111B
    DS58C5A         :   RWRW    1111_1111B  1111_1111B
    DS59C5A         :   --RW    1111_1111B  1111_1111B
    DS60C5A         :   RWRW    1111_1111B  1111_1111B
    DS61C5A         :   --RW    1111_1111B  1111_1111B
    DS62C5A         :   RWRW    1111_1111B  1111_1111B
    DS63C5A         :   --RW    1111_1111B  1111_1111B
    DS0C6A          :   RWRW    1111_1111B  1111_1111B
    DS1C6A          :   --RW    1111_1111B  1111_1111B
    DS2C6A          :   RWRW    1111_1111B  1111_1111B
    DS3C6A          :   --RW    1111_1111B  1111_1111B
    DS4C6A          :   RWRW    1111_1111B  1111_1111B
    DS5C6A          :   --RW    1111_1111B  1111_1111B
    DS6C6A          :   RWRW    1111_1111B  1111_1111B
    DS7C6A          :   --RW    1111_1111B  1111_1111B
    DS8C6A          :   RWRW    1111_1111B  1111_1111B
    DS9C6A          :   --RW    1111_1111B  1111_1111B
    DS10C6A         :   RWRW    1111_1111B  1111_1111B
    DS11C6A         :   --RW    1111_1111B  1111_1111B
    DS12C6A         :   RWRW    1111_1111B  1111_1111B
    DS13C6A         :   --RW    1111_1111B  1111_1111B
    DS14C6A         :   RWRW    1111_1111B  1111_1111B
    DS15C6A         :   --RW    1111_1111B  1111_1111B
    DS16C6A         :   RWRW    1111_1111B  1111_1111B
    DS17C6A         :   --RW    1111_1111B  1111_1111B
    DS18C6A         :   RWRW    1111_1111B  1111_1111B
    DS19C6A         :   --RW    1111_1111B  1111_1111B
    DS20C6A         :   RWRW    1111_1111B  1111_1111B
    DS21C6A         :   --RW    1111_1111B  1111_1111B
    DS22C6A         :   RWRW    1111_1111B  1111_1111B
    DS23C6A         :   --RW    1111_1111B  1111_1111B
    DS24C6A         :   RWRW    1111_1111B  1111_1111B
    DS25C6A         :   --RW    1111_1111B  1111_1111B
    DS26C6A         :   RWRW    1111_1111B  1111_1111B
    DS27C6A         :   --RW    1111_1111B  1111_1111B
    DS28C6A         :   RWRW    1111_1111B  1111_1111B
    DS29C6A         :   --RW    1111_1111B  1111_1111B
    DS30C6A         :   RWRW    1111_1111B  1111_1111B
    DS31C6A         :   --RW    1111_1111B  1111_1111B
    DS32C6A         :   RWRW    1111_1111B  1111_1111B
    DS33C6A         :   --RW    1111_1111B  1111_1111B
    DS34C6A         :   RWRW    1111_1111B  1111_1111B
    DS35C6A         :   --RW    1111_1111B  1111_1111B
    DS36C6A         :   RWRW    1111_1111B  1111_1111B
    DS37C6A         :   --RW    1111_1111B  1111_1111B
    DS38C6A         :   RWRW    1111_1111B  1111_1111B
    DS39C6A         :   --RW    1111_1111B  1111_1111B
    DS40C6A         :   RWRW    1111_1111B  1111_1111B
    DS41C6A         :   --RW    1111_1111B  1111_1111B
    DS42C6A         :   RWRW    1111_1111B  1111_1111B
    DS43C6A         :   --RW    1111_1111B  1111_1111B
    DS44C6A         :   RWRW    1111_1111B  1111_1111B
    DS45C6A         :   --RW    1111_1111B  1111_1111B
    DS46C6A         :   RWRW    1111_1111B  1111_1111B
    DS47C6A         :   --RW    1111_1111B  1111_1111B
    DS48C6A         :   RWRW    1111_1111B  1111_1111B
    DS49C6A         :   --RW    1111_1111B  1111_1111B
    DS50C6A         :   RWRW    1111_1111B  1111_1111B
    DS51C6A         :   --RW    1111_1111B  1111_1111B
    DS52C6A         :   RWRW    1111_1111B  1111_1111B
    DS53C6A         :   --RW    1111_1111B  1111_1111B
    DS54C6A         :   RWRW    1111_1111B  1111_1111B
    DS55C6A         :   --RW    1111_1111B  1111_1111B
    DS56C6A         :   RWRW    1111_1111B  1111_1111B
    DS57C6A         :   --RW    1111_1111B  1111_1111B
    DS58C6A         :   RWRW    1111_1111B  1111_1111B
    DS59C6A         :   --RW    1111_1111B  1111_1111B
    DS60C6A         :   RWRW    1111_1111B  1111_1111B
    DS61C6A         :   --RW    1111_1111B  1111_1111B
    DS62C6A         :   RWRW    1111_1111B  1111_1111B
    DS63C6A         :   --RW    1111_1111B  1111_1111B
    DS0C7A          :   RWRW    1111_1111B  1111_1111B
    DS1C7A          :   --RW    1111_1111B  1111_1111B
    DS2C7A          :   RWRW    1111_1111B  1111_1111B
    DS3C7A          :   --RW    1111_1111B  1111_1111B
    DS4C7A          :   RWRW    1111_1111B  1111_1111B
    DS5C7A          :   --RW    1111_1111B  1111_1111B
    DS6C7A          :   RWRW    1111_1111B  1111_1111B
    DS7C7A          :   --RW    1111_1111B  1111_1111B
    DS8C7A          :   RWRW    1111_1111B  1111_1111B
    DS9C7A          :   --RW    1111_1111B  1111_1111B
    DS10C7A         :   RWRW    1111_1111B  1111_1111B
    DS11C7A         :   --RW    1111_1111B  1111_1111B
    DS12C7A         :   RWRW    1111_1111B  1111_1111B
    DS13C7A         :   --RW    1111_1111B  1111_1111B
    DS14C7A         :   RWRW    1111_1111B  1111_1111B
    DS15C7A         :   --RW    1111_1111B  1111_1111B
    DS16C7A         :   RWRW    1111_1111B  1111_1111B
    DS17C7A         :   --RW    1111_1111B  1111_1111B
    DS18C7A         :   RWRW    1111_1111B  1111_1111B
    DS19C7A         :   --RW    1111_1111B  1111_1111B
    DS20C7A         :   RWRW    1111_1111B  1111_1111B
    DS21C7A         :   --RW    1111_1111B  1111_1111B
    DS22C7A         :   RWRW    1111_1111B  1111_1111B
    DS23C7A         :   --RW    1111_1111B  1111_1111B
    DS24C7A         :   RWRW    1111_1111B  1111_1111B
    DS25C7A         :   --RW    1111_1111B  1111_1111B
    DS26C7A         :   RWRW    1111_1111B  1111_1111B
    DS27C7A         :   --RW    1111_1111B  1111_1111B
    DS28C7A         :   RWRW    1111_1111B  1111_1111B
    DS29C7A         :   --RW    1111_1111B  1111_1111B
    DS30C7A         :   RWRW    1111_1111B  1111_1111B
    DS31C7A         :   --RW    1111_1111B  1111_1111B
    DS32C7A         :   RWRW    1111_1111B  1111_1111B
    DS33C7A         :   --RW    1111_1111B  1111_1111B
    DS34C7A         :   RWRW    1111_1111B  1111_1111B
    DS35C7A         :   --RW    1111_1111B  1111_1111B
    DS36C7A         :   RWRW    1111_1111B  1111_1111B
    DS37C7A         :   --RW    1111_1111B  1111_1111B
    DS38C7A         :   RWRW    1111_1111B  1111_1111B
    DS39C7A         :   --RW    1111_1111B  1111_1111B
    DS40C7A         :   RWRW    1111_1111B  1111_1111B
    DS41C7A         :   --RW    1111_1111B  1111_1111B
    DS42C7A         :   RWRW    1111_1111B  1111_1111B
    DS43C7A         :   --RW    1111_1111B  1111_1111B
    DS44C7A         :   RWRW    1111_1111B  1111_1111B
    DS45C7A         :   --RW    1111_1111B  1111_1111B
    DS46C7A         :   RWRW    1111_1111B  1111_1111B
    DS47C7A         :   --RW    1111_1111B  1111_1111B
    DS48C7A         :   RWRW    1111_1111B  1111_1111B
    DS49C7A         :   --RW    1111_1111B  1111_1111B
    DS50C7A         :   RWRW    1111_1111B  1111_1111B
    DS51C7A         :   --RW    1111_1111B  1111_1111B
    DS52C7A         :   RWRW    1111_1111B  1111_1111B
    DS53C7A         :   --RW    1111_1111B  1111_1111B
    DS54C7A         :   RWRW    1111_1111B  1111_1111B
    DS55C7A         :   --RW    1111_1111B  1111_1111B
    DS56C7A         :   RWRW    1111_1111B  1111_1111B
    DS57C7A         :   --RW    1111_1111B  1111_1111B
    DS58C7A         :   RWRW    1111_1111B  1111_1111B
    DS59C7A         :   --RW    1111_1111B  1111_1111B
    DS60C7A         :   RWRW    1111_1111B  1111_1111B
    DS61C7A         :   --RW    1111_1111B  1111_1111B
    DS62C7A         :   RWRW    1111_1111B  1111_1111B
    DS63C7A         :   --RW    1111_1111B  1111_1111B
    DS0C0B          :   RWRW    1111_1111B  1111_1111B
    DS1C0B          :   --RW    1111_1111B  1111_1111B
    DS2C0B          :   RWRW    1111_1111B  1111_1111B
    DS3C0B          :   --RW    1111_1111B  1111_1111B
    DS4C0B          :   RWRW    1111_1111B  1111_1111B
    DS5C0B          :   --RW    1111_1111B  1111_1111B
    DS6C0B          :   RWRW    1111_1111B  1111_1111B
    DS7C0B          :   --RW    1111_1111B  1111_1111B
    DS8C0B          :   RWRW    1111_1111B  1111_1111B
    DS9C0B          :   --RW    1111_1111B  1111_1111B
    DS10C0B         :   RWRW    1111_1111B  1111_1111B
    DS11C0B         :   --RW    1111_1111B  1111_1111B
    DS12C0B         :   RWRW    1111_1111B  1111_1111B
    DS13C0B         :   --RW    1111_1111B  1111_1111B
    DS14C0B         :   RWRW    1111_1111B  1111_1111B
    DS15C0B         :   --RW    1111_1111B  1111_1111B
    DS16C0B         :   RWRW    1111_1111B  1111_1111B
    DS17C0B         :   --RW    1111_1111B  1111_1111B
    DS18C0B         :   RWRW    1111_1111B  1111_1111B
    DS19C0B         :   --RW    1111_1111B  1111_1111B
    DS20C0B         :   RWRW    1111_1111B  1111_1111B
    DS21C0B         :   --RW    1111_1111B  1111_1111B
    DS22C0B         :   RWRW    1111_1111B  1111_1111B
    DS23C0B         :   --RW    1111_1111B  1111_1111B
    DS24C0B         :   RWRW    1111_1111B  1111_1111B
    DS25C0B         :   --RW    1111_1111B  1111_1111B
    DS26C0B         :   RWRW    1111_1111B  1111_1111B
    DS27C0B         :   --RW    1111_1111B  1111_1111B
    DS28C0B         :   RWRW    1111_1111B  1111_1111B
    DS29C0B         :   --RW    1111_1111B  1111_1111B
    DS30C0B         :   RWRW    1111_1111B  1111_1111B
    DS31C0B         :   --RW    1111_1111B  1111_1111B
    DS32C0B         :   RWRW    1111_1111B  1111_1111B
    DS33C0B         :   --RW    1111_1111B  1111_1111B
    DS34C0B         :   RWRW    1111_1111B  1111_1111B
    DS35C0B         :   --RW    1111_1111B  1111_1111B
    DS36C0B         :   RWRW    1111_1111B  1111_1111B
    DS37C0B         :   --RW    1111_1111B  1111_1111B
    DS38C0B         :   RWRW    1111_1111B  1111_1111B
    DS39C0B         :   --RW    1111_1111B  1111_1111B
    DS40C0B         :   RWRW    1111_1111B  1111_1111B
    DS41C0B         :   --RW    1111_1111B  1111_1111B
    DS42C0B         :   RWRW    1111_1111B  1111_1111B
    DS43C0B         :   --RW    1111_1111B  1111_1111B
    DS44C0B         :   RWRW    1111_1111B  1111_1111B
    DS45C0B         :   --RW    1111_1111B  1111_1111B
    DS46C0B         :   RWRW    1111_1111B  1111_1111B
    DS47C0B         :   --RW    1111_1111B  1111_1111B
    DS48C0B         :   RWRW    1111_1111B  1111_1111B
    DS49C0B         :   --RW    1111_1111B  1111_1111B
    DS50C0B         :   RWRW    1111_1111B  1111_1111B
    DS51C0B         :   --RW    1111_1111B  1111_1111B
    DS52C0B         :   RWRW    1111_1111B  1111_1111B
    DS53C0B         :   --RW    1111_1111B  1111_1111B
    DS54C0B         :   RWRW    1111_1111B  1111_1111B
    DS55C0B         :   --RW    1111_1111B  1111_1111B
    DS56C0B         :   RWRW    1111_1111B  1111_1111B
    DS57C0B         :   --RW    1111_1111B  1111_1111B
    DS58C0B         :   RWRW    1111_1111B  1111_1111B
    DS59C0B         :   --RW    1111_1111B  1111_1111B
    DS60C0B         :   RWRW    1111_1111B  1111_1111B
    DS61C0B         :   --RW    1111_1111B  1111_1111B
    DS62C0B         :   RWRW    1111_1111B  1111_1111B
    DS63C0B         :   --RW    1111_1111B  1111_1111B
    DS0C1B          :   RWRW    1111_1111B  1111_1111B
    DS1C1B          :   --RW    1111_1111B  1111_1111B
    DS2C1B          :   RWRW    1111_1111B  1111_1111B
    DS3C1B          :   --RW    1111_1111B  1111_1111B
    DS4C1B          :   RWRW    1111_1111B  1111_1111B
    DS5C1B          :   --RW    1111_1111B  1111_1111B
    DS6C1B          :   RWRW    1111_1111B  1111_1111B
    DS7C1B          :   --RW    1111_1111B  1111_1111B
    DS8C1B          :   RWRW    1111_1111B  1111_1111B
    DS9C1B          :   --RW    1111_1111B  1111_1111B
    DS10C1B         :   RWRW    1111_1111B  1111_1111B
    DS11C1B         :   --RW    1111_1111B  1111_1111B
    DS12C1B         :   RWRW    1111_1111B  1111_1111B
    DS13C1B         :   --RW    1111_1111B  1111_1111B
    DS14C1B         :   RWRW    1111_1111B  1111_1111B
    DS15C1B         :   --RW    1111_1111B  1111_1111B
    DS16C1B         :   RWRW    1111_1111B  1111_1111B
    DS17C1B         :   --RW    1111_1111B  1111_1111B
    DS18C1B         :   RWRW    1111_1111B  1111_1111B
    DS19C1B         :   --RW    1111_1111B  1111_1111B
    DS20C1B         :   RWRW    1111_1111B  1111_1111B
    DS21C1B         :   --RW    1111_1111B  1111_1111B
    DS22C1B         :   RWRW    1111_1111B  1111_1111B
    DS23C1B         :   --RW    1111_1111B  1111_1111B
    DS24C1B         :   RWRW    1111_1111B  1111_1111B
    DS25C1B         :   --RW    1111_1111B  1111_1111B
    DS26C1B         :   RWRW    1111_1111B  1111_1111B
    DS27C1B         :   --RW    1111_1111B  1111_1111B
    DS28C1B         :   RWRW    1111_1111B  1111_1111B
    DS29C1B         :   --RW    1111_1111B  1111_1111B
    DS30C1B         :   RWRW    1111_1111B  1111_1111B
    DS31C1B         :   --RW    1111_1111B  1111_1111B
    DS32C1B         :   RWRW    1111_1111B  1111_1111B
    DS33C1B         :   --RW    1111_1111B  1111_1111B
    DS34C1B         :   RWRW    1111_1111B  1111_1111B
    DS35C1B         :   --RW    1111_1111B  1111_1111B
    DS36C1B         :   RWRW    1111_1111B  1111_1111B
    DS37C1B         :   --RW    1111_1111B  1111_1111B
    DS38C1B         :   RWRW    1111_1111B  1111_1111B
    DS39C1B         :   --RW    1111_1111B  1111_1111B
    DS40C1B         :   RWRW    1111_1111B  1111_1111B
    DS41C1B         :   --RW    1111_1111B  1111_1111B
    DS42C1B         :   RWRW    1111_1111B  1111_1111B
    DS43C1B         :   --RW    1111_1111B  1111_1111B
    DS44C1B         :   RWRW    1111_1111B  1111_1111B
    DS45C1B         :   --RW    1111_1111B  1111_1111B
    DS46C1B         :   RWRW    1111_1111B  1111_1111B
    DS47C1B         :   --RW    1111_1111B  1111_1111B
    DS48C1B         :   RWRW    1111_1111B  1111_1111B
    DS49C1B         :   --RW    1111_1111B  1111_1111B
    DS50C1B         :   RWRW    1111_1111B  1111_1111B
    DS51C1B         :   --RW    1111_1111B  1111_1111B
    DS52C1B         :   RWRW    1111_1111B  1111_1111B
    DS53C1B         :   --RW    1111_1111B  1111_1111B
    DS54C1B         :   RWRW    1111_1111B  1111_1111B
    DS55C1B         :   --RW    1111_1111B  1111_1111B
    DS56C1B         :   RWRW    1111_1111B  1111_1111B
    DS57C1B         :   --RW    1111_1111B  1111_1111B
    DS58C1B         :   RWRW    1111_1111B  1111_1111B
    DS59C1B         :   --RW    1111_1111B  1111_1111B
    DS60C1B         :   RWRW    1111_1111B  1111_1111B
    DS61C1B         :   --RW    1111_1111B  1111_1111B
    DS62C1B         :   RWRW    1111_1111B  1111_1111B
    DS63C1B         :   --RW    1111_1111B  1111_1111B
    DS0C2B          :   RWRW    1111_1111B  1111_1111B
    DS1C2B          :   --RW    1111_1111B  1111_1111B
    DS2C2B          :   RWRW    1111_1111B  1111_1111B
    DS3C2B          :   --RW    1111_1111B  1111_1111B
    DS4C2B          :   RWRW    1111_1111B  1111_1111B
    DS5C2B          :   --RW    1111_1111B  1111_1111B
    DS6C2B          :   RWRW    1111_1111B  1111_1111B
    DS7C2B          :   --RW    1111_1111B  1111_1111B
    DS8C2B          :   RWRW    1111_1111B  1111_1111B
    DS9C2B          :   --RW    1111_1111B  1111_1111B
    DS10C2B         :   RWRW    1111_1111B  1111_1111B
    DS11C2B         :   --RW    1111_1111B  1111_1111B
    DS12C2B         :   RWRW    1111_1111B  1111_1111B
    DS13C2B         :   --RW    1111_1111B  1111_1111B
    DS14C2B         :   RWRW    1111_1111B  1111_1111B
    DS15C2B         :   --RW    1111_1111B  1111_1111B
    DS16C2B         :   RWRW    1111_1111B  1111_1111B
    DS17C2B         :   --RW    1111_1111B  1111_1111B
    DS18C2B         :   RWRW    1111_1111B  1111_1111B
    DS19C2B         :   --RW    1111_1111B  1111_1111B
    DS20C2B         :   RWRW    1111_1111B  1111_1111B
    DS21C2B         :   --RW    1111_1111B  1111_1111B
    DS22C2B         :   RWRW    1111_1111B  1111_1111B
    DS23C2B         :   --RW    1111_1111B  1111_1111B
    DS24C2B         :   RWRW    1111_1111B  1111_1111B
    DS25C2B         :   --RW    1111_1111B  1111_1111B
    DS26C2B         :   RWRW    1111_1111B  1111_1111B
    DS27C2B         :   --RW    1111_1111B  1111_1111B
    DS28C2B         :   RWRW    1111_1111B  1111_1111B
    DS29C2B         :   --RW    1111_1111B  1111_1111B
    DS30C2B         :   RWRW    1111_1111B  1111_1111B
    DS31C2B         :   --RW    1111_1111B  1111_1111B
    DS32C2B         :   RWRW    1111_1111B  1111_1111B
    DS33C2B         :   --RW    1111_1111B  1111_1111B
    DS34C2B         :   RWRW    1111_1111B  1111_1111B
    DS35C2B         :   --RW    1111_1111B  1111_1111B
    DS36C2B         :   RWRW    1111_1111B  1111_1111B
    DS37C2B         :   --RW    1111_1111B  1111_1111B
    DS38C2B         :   RWRW    1111_1111B  1111_1111B
    DS39C2B         :   --RW    1111_1111B  1111_1111B
    DS40C2B         :   RWRW    1111_1111B  1111_1111B
    DS41C2B         :   --RW    1111_1111B  1111_1111B
    DS42C2B         :   RWRW    1111_1111B  1111_1111B
    DS43C2B         :   --RW    1111_1111B  1111_1111B
    DS44C2B         :   RWRW    1111_1111B  1111_1111B
    DS45C2B         :   --RW    1111_1111B  1111_1111B
    DS46C2B         :   RWRW    1111_1111B  1111_1111B
    DS47C2B         :   --RW    1111_1111B  1111_1111B
    DS48C2B         :   RWRW    1111_1111B  1111_1111B
    DS49C2B         :   --RW    1111_1111B  1111_1111B
    DS50C2B         :   RWRW    1111_1111B  1111_1111B
    DS51C2B         :   --RW    1111_1111B  1111_1111B
    DS52C2B         :   RWRW    1111_1111B  1111_1111B
    DS53C2B         :   --RW    1111_1111B  1111_1111B
    DS54C2B         :   RWRW    1111_1111B  1111_1111B
    DS55C2B         :   --RW    1111_1111B  1111_1111B
    DS56C2B         :   RWRW    1111_1111B  1111_1111B
    DS57C2B         :   --RW    1111_1111B  1111_1111B
    DS58C2B         :   RWRW    1111_1111B  1111_1111B
    DS59C2B         :   --RW    1111_1111B  1111_1111B
    DS60C2B         :   RWRW    1111_1111B  1111_1111B
    DS61C2B         :   --RW    1111_1111B  1111_1111B
    DS62C2B         :   RWRW    1111_1111B  1111_1111B
    DS63C2B         :   --RW    1111_1111B  1111_1111B
    DS0C3B          :   RWRW    1111_1111B  1111_1111B
    DS1C3B          :   --RW    1111_1111B  1111_1111B
    DS2C3B          :   RWRW    1111_1111B  1111_1111B
    DS3C3B          :   --RW    1111_1111B  1111_1111B
    DS4C3B          :   RWRW    1111_1111B  1111_1111B
    DS5C3B          :   --RW    1111_1111B  1111_1111B
    DS6C3B          :   RWRW    1111_1111B  1111_1111B
    DS7C3B          :   --RW    1111_1111B  1111_1111B
    DS8C3B          :   RWRW    1111_1111B  1111_1111B
    DS9C3B          :   --RW    1111_1111B  1111_1111B
    DS10C3B         :   RWRW    1111_1111B  1111_1111B
    DS11C3B         :   --RW    1111_1111B  1111_1111B
    DS12C3B         :   RWRW    1111_1111B  1111_1111B
    DS13C3B         :   --RW    1111_1111B  1111_1111B
    DS14C3B         :   RWRW    1111_1111B  1111_1111B
    DS15C3B         :   --RW    1111_1111B  1111_1111B
    DS16C3B         :   RWRW    1111_1111B  1111_1111B
    DS17C3B         :   --RW    1111_1111B  1111_1111B
    DS18C3B         :   RWRW    1111_1111B  1111_1111B
    DS19C3B         :   --RW    1111_1111B  1111_1111B
    DS20C3B         :   RWRW    1111_1111B  1111_1111B
    DS21C3B         :   --RW    1111_1111B  1111_1111B
    DS22C3B         :   RWRW    1111_1111B  1111_1111B
    DS23C3B         :   --RW    1111_1111B  1111_1111B
    DS24C3B         :   RWRW    1111_1111B  1111_1111B
    DS25C3B         :   --RW    1111_1111B  1111_1111B
    DS26C3B         :   RWRW    1111_1111B  1111_1111B
    DS27C3B         :   --RW    1111_1111B  1111_1111B
    DS28C3B         :   RWRW    1111_1111B  1111_1111B
    DS29C3B         :   --RW    1111_1111B  1111_1111B
    DS30C3B         :   RWRW    1111_1111B  1111_1111B
    DS31C3B         :   --RW    1111_1111B  1111_1111B
    DS32C3B         :   RWRW    1111_1111B  1111_1111B
    DS33C3B         :   --RW    1111_1111B  1111_1111B
    DS34C3B         :   RWRW    1111_1111B  1111_1111B
    DS35C3B         :   --RW    1111_1111B  1111_1111B
    DS36C3B         :   RWRW    1111_1111B  1111_1111B
    DS37C3B         :   --RW    1111_1111B  1111_1111B
    DS38C3B         :   RWRW    1111_1111B  1111_1111B
    DS39C3B         :   --RW    1111_1111B  1111_1111B
    DS40C3B         :   RWRW    1111_1111B  1111_1111B
    DS41C3B         :   --RW    1111_1111B  1111_1111B
    DS42C3B         :   RWRW    1111_1111B  1111_1111B
    DS43C3B         :   --RW    1111_1111B  1111_1111B
    DS44C3B         :   RWRW    1111_1111B  1111_1111B
    DS45C3B         :   --RW    1111_1111B  1111_1111B
    DS46C3B         :   RWRW    1111_1111B  1111_1111B
    DS47C3B         :   --RW    1111_1111B  1111_1111B
    DS48C3B         :   RWRW    1111_1111B  1111_1111B
    DS49C3B         :   --RW    1111_1111B  1111_1111B
    DS50C3B         :   RWRW    1111_1111B  1111_1111B
    DS51C3B         :   --RW    1111_1111B  1111_1111B
    DS52C3B         :   RWRW    1111_1111B  1111_1111B
    DS53C3B         :   --RW    1111_1111B  1111_1111B
    DS54C3B         :   RWRW    1111_1111B  1111_1111B
    DS55C3B         :   --RW    1111_1111B  1111_1111B
    DS56C3B         :   RWRW    1111_1111B  1111_1111B
    DS57C3B         :   --RW    1111_1111B  1111_1111B
    DS58C3B         :   RWRW    1111_1111B  1111_1111B
    DS59C3B         :   --RW    1111_1111B  1111_1111B
    DS60C3B         :   RWRW    1111_1111B  1111_1111B
    DS61C3B         :   --RW    1111_1111B  1111_1111B
    DS62C3B         :   RWRW    1111_1111B  1111_1111B
    DS63C3B         :   --RW    1111_1111B  1111_1111B
    DS0C4B          :   RWRW    1111_1111B  1111_1111B
    DS1C4B          :   --RW    1111_1111B  1111_1111B
    DS2C4B          :   RWRW    1111_1111B  1111_1111B
    DS3C4B          :   --RW    1111_1111B  1111_1111B
    DS4C4B          :   RWRW    1111_1111B  1111_1111B
    DS5C4B          :   --RW    1111_1111B  1111_1111B
    DS6C4B          :   RWRW    1111_1111B  1111_1111B
    DS7C4B          :   --RW    1111_1111B  1111_1111B
    DS8C4B          :   RWRW    1111_1111B  1111_1111B
    DS9C4B          :   --RW    1111_1111B  1111_1111B
    DS10C4B         :   RWRW    1111_1111B  1111_1111B
    DS11C4B         :   --RW    1111_1111B  1111_1111B
    DS12C4B         :   RWRW    1111_1111B  1111_1111B
    DS13C4B         :   --RW    1111_1111B  1111_1111B
    DS14C4B         :   RWRW    1111_1111B  1111_1111B
    DS15C4B         :   --RW    1111_1111B  1111_1111B
    DS16C4B         :   RWRW    1111_1111B  1111_1111B
    DS17C4B         :   --RW    1111_1111B  1111_1111B
    DS18C4B         :   RWRW    1111_1111B  1111_1111B
    DS19C4B         :   --RW    1111_1111B  1111_1111B
    DS20C4B         :   RWRW    1111_1111B  1111_1111B
    DS21C4B         :   --RW    1111_1111B  1111_1111B
    DS22C4B         :   RWRW    1111_1111B  1111_1111B
    DS23C4B         :   --RW    1111_1111B  1111_1111B
    DS24C4B         :   RWRW    1111_1111B  1111_1111B
    DS25C4B         :   --RW    1111_1111B  1111_1111B
    DS26C4B         :   RWRW    1111_1111B  1111_1111B
    DS27C4B         :   --RW    1111_1111B  1111_1111B
    DS28C4B         :   RWRW    1111_1111B  1111_1111B
    DS29C4B         :   --RW    1111_1111B  1111_1111B
    DS30C4B         :   RWRW    1111_1111B  1111_1111B
    DS31C4B         :   --RW    1111_1111B  1111_1111B
    DS32C4B         :   RWRW    1111_1111B  1111_1111B
    DS33C4B         :   --RW    1111_1111B  1111_1111B
    DS34C4B         :   RWRW    1111_1111B  1111_1111B
    DS35C4B         :   --RW    1111_1111B  1111_1111B
    DS36C4B         :   RWRW    1111_1111B  1111_1111B
    DS37C4B         :   --RW    1111_1111B  1111_1111B
    DS38C4B         :   RWRW    1111_1111B  1111_1111B
    DS39C4B         :   --RW    1111_1111B  1111_1111B
    DS40C4B         :   RWRW    1111_1111B  1111_1111B
    DS41C4B         :   --RW    1111_1111B  1111_1111B
    DS42C4B         :   RWRW    1111_1111B  1111_1111B
    DS43C4B         :   --RW    1111_1111B  1111_1111B
    DS44C4B         :   RWRW    1111_1111B  1111_1111B
    DS45C4B         :   --RW    1111_1111B  1111_1111B
    DS46C4B         :   RWRW    1111_1111B  1111_1111B
    DS47C4B         :   --RW    1111_1111B  1111_1111B
    DS48C4B         :   RWRW    1111_1111B  1111_1111B
    DS49C4B         :   --RW    1111_1111B  1111_1111B
    DS50C4B         :   RWRW    1111_1111B  1111_1111B
    DS51C4B         :   --RW    1111_1111B  1111_1111B
    DS52C4B         :   RWRW    1111_1111B  1111_1111B
    DS53C4B         :   --RW    1111_1111B  1111_1111B
    DS54C4B         :   RWRW    1111_1111B  1111_1111B
    DS55C4B         :   --RW    1111_1111B  1111_1111B
    DS56C4B         :   RWRW    1111_1111B  1111_1111B
    DS57C4B         :   --RW    1111_1111B  1111_1111B
    DS58C4B         :   RWRW    1111_1111B  1111_1111B
    DS59C4B         :   --RW    1111_1111B  1111_1111B
    DS60C4B         :   RWRW    1111_1111B  1111_1111B
    DS61C4B         :   --RW    1111_1111B  1111_1111B
    DS62C4B         :   RWRW    1111_1111B  1111_1111B
    DS63C4B         :   --RW    1111_1111B  1111_1111B
    DS0C5B          :   RWRW    1111_1111B  1111_1111B
    DS1C5B          :   --RW    1111_1111B  1111_1111B
    DS2C5B          :   RWRW    1111_1111B  1111_1111B
    DS3C5B          :   --RW    1111_1111B  1111_1111B
    DS4C5B          :   RWRW    1111_1111B  1111_1111B
    DS5C5B          :   --RW    1111_1111B  1111_1111B
    DS6C5B          :   RWRW    1111_1111B  1111_1111B
    DS7C5B          :   --RW    1111_1111B  1111_1111B
    DS8C5B          :   RWRW    1111_1111B  1111_1111B
    DS9C5B          :   --RW    1111_1111B  1111_1111B
    DS10C5B         :   RWRW    1111_1111B  1111_1111B
    DS11C5B         :   --RW    1111_1111B  1111_1111B
    DS12C5B         :   RWRW    1111_1111B  1111_1111B
    DS13C5B         :   --RW    1111_1111B  1111_1111B
    DS14C5B         :   RWRW    1111_1111B  1111_1111B
    DS15C5B         :   --RW    1111_1111B  1111_1111B
    DS16C5B         :   RWRW    1111_1111B  1111_1111B
    DS17C5B         :   --RW    1111_1111B  1111_1111B
    DS18C5B         :   RWRW    1111_1111B  1111_1111B
    DS19C5B         :   --RW    1111_1111B  1111_1111B
    DS20C5B         :   RWRW    1111_1111B  1111_1111B
    DS21C5B         :   --RW    1111_1111B  1111_1111B
    DS22C5B         :   RWRW    1111_1111B  1111_1111B
    DS23C5B         :   --RW    1111_1111B  1111_1111B
    DS24C5B         :   RWRW    1111_1111B  1111_1111B
    DS25C5B         :   --RW    1111_1111B  1111_1111B
    DS26C5B         :   RWRW    1111_1111B  1111_1111B
    DS27C5B         :   --RW    1111_1111B  1111_1111B
    DS28C5B         :   RWRW    1111_1111B  1111_1111B
    DS29C5B         :   --RW    1111_1111B  1111_1111B
    DS30C5B         :   RWRW    1111_1111B  1111_1111B
    DS31C5B         :   --RW    1111_1111B  1111_1111B
    DS32C5B         :   RWRW    1111_1111B  1111_1111B
    DS33C5B         :   --RW    1111_1111B  1111_1111B
    DS34C5B         :   RWRW    1111_1111B  1111_1111B
    DS35C5B         :   --RW    1111_1111B  1111_1111B
    DS36C5B         :   RWRW    1111_1111B  1111_1111B
    DS37C5B         :   --RW    1111_1111B  1111_1111B
    DS38C5B         :   RWRW    1111_1111B  1111_1111B
    DS39C5B         :   --RW    1111_1111B  1111_1111B
    DS40C5B         :   RWRW    1111_1111B  1111_1111B
    DS41C5B         :   --RW    1111_1111B  1111_1111B
    DS42C5B         :   RWRW    1111_1111B  1111_1111B
    DS43C5B         :   --RW    1111_1111B  1111_1111B
    DS44C5B         :   RWRW    1111_1111B  1111_1111B
    DS45C5B         :   --RW    1111_1111B  1111_1111B
    DS46C5B         :   RWRW    1111_1111B  1111_1111B
    DS47C5B         :   --RW    1111_1111B  1111_1111B
    DS48C5B         :   RWRW    1111_1111B  1111_1111B
    DS49C5B         :   --RW    1111_1111B  1111_1111B
    DS50C5B         :   RWRW    1111_1111B  1111_1111B
    DS51C5B         :   --RW    1111_1111B  1111_1111B
    DS52C5B         :   RWRW    1111_1111B  1111_1111B
    DS53C5B         :   --RW    1111_1111B  1111_1111B
    DS54C5B         :   RWRW    1111_1111B  1111_1111B
    DS55C5B         :   --RW    1111_1111B  1111_1111B
    DS56C5B         :   RWRW    1111_1111B  1111_1111B
    DS57C5B         :   --RW    1111_1111B  1111_1111B
    DS58C5B         :   RWRW    1111_1111B  1111_1111B
    DS59C5B         :   --RW    1111_1111B  1111_1111B
    DS60C5B         :   RWRW    1111_1111B  1111_1111B
    DS61C5B         :   --RW    1111_1111B  1111_1111B
    DS62C5B         :   RWRW    1111_1111B  1111_1111B
    DS63C5B         :   --RW    1111_1111B  1111_1111B
    DS0C6B          :   RWRW    1111_1111B  1111_1111B
    DS1C6B          :   --RW    1111_1111B  1111_1111B
    DS2C6B          :   RWRW    1111_1111B  1111_1111B
    DS3C6B          :   --RW    1111_1111B  1111_1111B
    DS4C6B          :   RWRW    1111_1111B  1111_1111B
    DS5C6B          :   --RW    1111_1111B  1111_1111B
    DS6C6B          :   RWRW    1111_1111B  1111_1111B
    DS7C6B          :   --RW    1111_1111B  1111_1111B
    DS8C6B          :   RWRW    1111_1111B  1111_1111B
    DS9C6B          :   --RW    1111_1111B  1111_1111B
    DS10C6B         :   RWRW    1111_1111B  1111_1111B
    DS11C6B         :   --RW    1111_1111B  1111_1111B
    DS12C6B         :   RWRW    1111_1111B  1111_1111B
    DS13C6B         :   --RW    1111_1111B  1111_1111B
    DS14C6B         :   RWRW    1111_1111B  1111_1111B
    DS15C6B         :   --RW    1111_1111B  1111_1111B
    DS16C6B         :   RWRW    1111_1111B  1111_1111B
    DS17C6B         :   --RW    1111_1111B  1111_1111B
    DS18C6B         :   RWRW    1111_1111B  1111_1111B
    DS19C6B         :   --RW    1111_1111B  1111_1111B
    DS20C6B         :   RWRW    1111_1111B  1111_1111B
    DS21C6B         :   --RW    1111_1111B  1111_1111B
    DS22C6B         :   RWRW    1111_1111B  1111_1111B
    DS23C6B         :   --RW    1111_1111B  1111_1111B
    DS24C6B         :   RWRW    1111_1111B  1111_1111B
    DS25C6B         :   --RW    1111_1111B  1111_1111B
    DS26C6B         :   RWRW    1111_1111B  1111_1111B
    DS27C6B         :   --RW    1111_1111B  1111_1111B
    DS28C6B         :   RWRW    1111_1111B  1111_1111B
    DS29C6B         :   --RW    1111_1111B  1111_1111B
    DS30C6B         :   RWRW    1111_1111B  1111_1111B
    DS31C6B         :   --RW    1111_1111B  1111_1111B
    DS32C6B         :   RWRW    1111_1111B  1111_1111B
    DS33C6B         :   --RW    1111_1111B  1111_1111B
    DS34C6B         :   RWRW    1111_1111B  1111_1111B
    DS35C6B         :   --RW    1111_1111B  1111_1111B
    DS36C6B         :   RWRW    1111_1111B  1111_1111B
    DS37C6B         :   --RW    1111_1111B  1111_1111B
    DS38C6B         :   RWRW    1111_1111B  1111_1111B
    DS39C6B         :   --RW    1111_1111B  1111_1111B
    DS40C6B         :   RWRW    1111_1111B  1111_1111B
    DS41C6B         :   --RW    1111_1111B  1111_1111B
    DS42C6B         :   RWRW    1111_1111B  1111_1111B
    DS43C6B         :   --RW    1111_1111B  1111_1111B
    DS44C6B         :   RWRW    1111_1111B  1111_1111B
    DS45C6B         :   --RW    1111_1111B  1111_1111B
    DS46C6B         :   RWRW    1111_1111B  1111_1111B
    DS47C6B         :   --RW    1111_1111B  1111_1111B
    DS48C6B         :   RWRW    1111_1111B  1111_1111B
    DS49C6B         :   --RW    1111_1111B  1111_1111B
    DS50C6B         :   RWRW    1111_1111B  1111_1111B
    DS51C6B         :   --RW    1111_1111B  1111_1111B
    DS52C6B         :   RWRW    1111_1111B  1111_1111B
    DS53C6B         :   --RW    1111_1111B  1111_1111B
    DS54C6B         :   RWRW    1111_1111B  1111_1111B
    DS55C6B         :   --RW    1111_1111B  1111_1111B
    DS56C6B         :   RWRW    1111_1111B  1111_1111B
    DS57C6B         :   --RW    1111_1111B  1111_1111B
    DS58C6B         :   RWRW    1111_1111B  1111_1111B
    DS59C6B         :   --RW    1111_1111B  1111_1111B
    DS60C6B         :   RWRW    1111_1111B  1111_1111B
    DS61C6B         :   --RW    1111_1111B  1111_1111B
    DS62C6B         :   RWRW    1111_1111B  1111_1111B
    DS63C6B         :   --RW    1111_1111B  1111_1111B
    DS0C7B          :   RWRW    1111_1111B  1111_1111B
    DS1C7B          :   --RW    1111_1111B  1111_1111B
    DS2C7B          :   RWRW    1111_1111B  1111_1111B
    DS3C7B          :   --RW    1111_1111B  1111_1111B
    DS4C7B          :   RWRW    1111_1111B  1111_1111B
    DS5C7B          :   --RW    1111_1111B  1111_1111B
    DS6C7B          :   RWRW    1111_1111B  1111_1111B
    DS7C7B          :   --RW    1111_1111B  1111_1111B
    DS8C7B          :   RWRW    1111_1111B  1111_1111B
    DS9C7B          :   --RW    1111_1111B  1111_1111B
    DS10C7B         :   RWRW    1111_1111B  1111_1111B
    DS11C7B         :   --RW    1111_1111B  1111_1111B
    DS12C7B         :   RWRW    1111_1111B  1111_1111B
    DS13C7B         :   --RW    1111_1111B  1111_1111B
    DS14C7B         :   RWRW    1111_1111B  1111_1111B
    DS15C7B         :   --RW    1111_1111B  1111_1111B
    DS16C7B         :   RWRW    1111_1111B  1111_1111B
    DS17C7B         :   --RW    1111_1111B  1111_1111B
    DS18C7B         :   RWRW    1111_1111B  1111_1111B
    DS19C7B         :   --RW    1111_1111B  1111_1111B
    DS20C7B         :   RWRW    1111_1111B  1111_1111B
    DS21C7B         :   --RW    1111_1111B  1111_1111B
    DS22C7B         :   RWRW    1111_1111B  1111_1111B
    DS23C7B         :   --RW    1111_1111B  1111_1111B
    DS24C7B         :   RWRW    1111_1111B  1111_1111B
    DS25C7B         :   --RW    1111_1111B  1111_1111B
    DS26C7B         :   RWRW    1111_1111B  1111_1111B
    DS27C7B         :   --RW    1111_1111B  1111_1111B
    DS28C7B         :   RWRW    1111_1111B  1111_1111B
    DS29C7B         :   --RW    1111_1111B  1111_1111B
    DS30C7B         :   RWRW    1111_1111B  1111_1111B
    DS31C7B         :   --RW    1111_1111B  1111_1111B
    DS32C7B         :   RWRW    1111_1111B  1111_1111B
    DS33C7B         :   --RW    1111_1111B  1111_1111B
    DS34C7B         :   RWRW    1111_1111B  1111_1111B
    DS35C7B         :   --RW    1111_1111B  1111_1111B
    DS36C7B         :   RWRW    1111_1111B  1111_1111B
    DS37C7B         :   --RW    1111_1111B  1111_1111B
    DS38C7B         :   RWRW    1111_1111B  1111_1111B
    DS39C7B         :   --RW    1111_1111B  1111_1111B
    DS40C7B         :   RWRW    1111_1111B  1111_1111B
    DS41C7B         :   --RW    1111_1111B  1111_1111B
    DS42C7B         :   RWRW    1111_1111B  1111_1111B
    DS43C7B         :   --RW    1111_1111B  1111_1111B
    DS44C7B         :   RWRW    1111_1111B  1111_1111B
    DS45C7B         :   --RW    1111_1111B  1111_1111B
    DS46C7B         :   RWRW    1111_1111B  1111_1111B
    DS47C7B         :   --RW    1111_1111B  1111_1111B
    DS48C7B         :   RWRW    1111_1111B  1111_1111B
    DS49C7B         :   --RW    1111_1111B  1111_1111B
    DS50C7B         :   RWRW    1111_1111B  1111_1111B
    DS51C7B         :   --RW    1111_1111B  1111_1111B
    DS52C7B         :   RWRW    1111_1111B  1111_1111B
    DS53C7B         :   --RW    1111_1111B  1111_1111B
    DS54C7B         :   RWRW    1111_1111B  1111_1111B
    DS55C7B         :   --RW    1111_1111B  1111_1111B
    DS56C7B         :   RWRW    1111_1111B  1111_1111B
    DS57C7B         :   --RW    1111_1111B  1111_1111B
    DS58C7B         :   RWRW    1111_1111B  1111_1111B
    DS59C7B         :   --RW    1111_1111B  1111_1111B
    DS60C7B         :   RWRW    1111_1111B  1111_1111B
    DS61C7B         :   --RW    1111_1111B  1111_1111B
    DS62C7B         :   RWRW    1111_1111B  1111_1111B
    DS63C7B         :   --RW    1111_1111B  1111_1111B

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
    MD0INT,         EMD0,       QMD0
    RADINT,         ERAD,       QRAD
    TM2INT,         ETM2,       QTM2
    TM3INT,         ETM3,       QTM3
    PW0INT,         EPW0,       QPW0
    T1KINT,         ET1K,       QT1K
    T128HINT,       E128H,      Q128H
    T32HINT,        E32H,       Q32H
    T16HINT,        E16H,       Q16H
    T2HINT,         E2H,        Q2H
    RTCINT,         ERTC,       QRTC
    AL0INT,         EAL0,       QAL0
    AL1INT,         EAL1,       QAL1


#ENDCASE

;------------- END OF DCL (ML610432) -------------
