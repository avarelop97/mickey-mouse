//ZMMDPVC1 PROC                                                         00010000
//*-------------------------------------------------------------------- 00020000
//* PGM ZM4VMWC8 QUE GENERA EL ARCHIVO DE CONTROL DE OPERACIONES X LIQ  00040001
//*-------------------------------------------------------------------- 00050000
//PMDC1P08 EXEC PGM=IKJEFT01                                            00240001
//*                                                                     00240101
//ZMMWC8A1 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MOPXLIQ,                         00241005
//            DISP=(NEW,CATLG,DELETE),                                  00242001
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE),                         00243001
//            DCB=(RECFM=FB,DSORG=PS,LRECL=240,BLKSIZE=0)               00244001
//SYSTSPRT DD SYSOUT=*                                                  00360000
//SYSPRINT DD SYSOUT=*                                                  00370000
//SYSOUT   DD SYSOUT=*                                                  00380000
//SYSDBOUT DD SYSOUT=*                                                  00390000
//SYSABOUT DD DUMMY                                                     00400000
//SYSUDUMP DD DUMMY                                                     00410000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC1T08),DISP=SHR                   00420001
//*-------------------------------------------------------------------- 00420002
//* PGM ZM4VMWCE QUE GENERA EL ARCHIVO DE CONTROL DE EMISORAS           00420003
//*-------------------------------------------------------------------- 00420004
//PMDC1P07 EXEC PGM=IKJEFT01,COND=(4,LT)                                00420005
//*                                                                     00420006
//ZMMWCEA1 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MEMISOR,                         00420007
//            DISP=(NEW,CATLG,DELETE),                                  00420008
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE),                         00420009
//            DCB=(RECFM=FB,DSORG=PS,LRECL=120,BLKSIZE=0)               00420010
//SYSTSPRT DD SYSOUT=*                                                  00420020
//SYSPRINT DD SYSOUT=*                                                  00420030
//SYSOUT   DD SYSOUT=*                                                  00420040
//SYSDBOUT DD SYSOUT=*                                                  00420050
//SYSABOUT DD DUMMY                                                     00420060
//SYSUDUMP DD DUMMY                                                     00420070
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC1T0E),DISP=SHR                   00420080
//*-------------------------------------------------------------------- 00740000
//* PGM ZM4VMWC6 QUE GENERA EL ARCHIVO DE CONTROL DE PLAZOS             00741101
//*-------------------------------------------------------------------- 00741201
//PMDC1P06 EXEC PGM=IKJEFT01,COND=(4,LT)                                00741302
//*                                                                     00741401
//ZMMWC6A1 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MPLAZOS,                         00741505
//            DISP=(NEW,CATLG,DELETE),                                  00741601
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE),                         00741701
//            DCB=(RECFM=FB,DSORG=PS,LRECL=160,BLKSIZE=0)               00741801
//SYSTSPRT DD SYSOUT=*                                                  00741901
//SYSPRINT DD SYSOUT=*                                                  00742001
//SYSOUT   DD SYSOUT=*                                                  00742101
//SYSDBOUT DD SYSOUT=*                                                  00742201
//SYSABOUT DD DUMMY                                                     00742301
//SYSUDUMP DD DUMMY                                                     00742401
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC1T07),DISP=SHR                   00742501
//*-------------------------------------------------------------------- 00742601
//* PASO 5           PROC LO MANDA EJECUTAR BCMDCVC1                    00742701
//* PGM ZM4VMWC1 QUE GENERA EL ARCHIVO DE CONTROL DE EFECTIVOS          00743001
//*-------------------------------------------------------------------- 00744001
//PMDC1P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00745002
//*                                                                     00746001
//ZMMWC1A1 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MEFECTI,                         00747005
//            DISP=(NEW,CATLG,DELETE),                                  00748001
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE),                        00749001
//            DCB=(RECFM=FB,DSORG=PS,LRECL=53,BLKSIZE=0)                00749101
//SYSTSPRT DD SYSOUT=*                                                  00749201
//SYSPRINT DD SYSOUT=*                                                  00749301
//SYSOUT   DD SYSOUT=*                                                  00749401
//SYSDBOUT DD SYSOUT=*                                                  00749501
//SYSABOUT DD DUMMY                                                     00749601
//SYSUDUMP DD DUMMY                                                     00749701
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC1T01),DISP=SHR                   00749801
//*-------------------------------------------------------------------- 00749901
//* PASO 4                                                              00750000
//* PGM ZM4VMWC2 QUE GENERA EL ARCHIVO DE CONTROL DE LA POSICION        00760000
//*-------------------------------------------------------------------- 00770000
//PMDC1P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780000
//ZMMWC2A1 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MPOSICI,                         00800005
//            DISP=(NEW,CATLG,DELETE),                                  00810000
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE),                        00820000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=107,BLKSIZE=0)               00830000
//SYSTSPRT DD SYSOUT=*                                                  00890000
//SYSPRINT DD SYSOUT=*                                                  00900000
//SYSOUT   DD SYSOUT=*                                                  00910000
//SYSDBOUT DD SYSOUT=*                                                  00920000
//SYSABOUT DD DUMMY                                                     00930000
//SYSUDUMP DD DUMMY                                                     00940000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC1T02),DISP=SHR                   00950000
//*---------------------------------------------------------------------00970000
//*  PASO 3                  PGM   ZM4VMWC3                             00990000
//*  GENERA EL ARCHIVO D CONTROL DE CAPAS                               01000000
//*---------------------------------------------------------------------01020000
//PMDC1P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                01040000
//ZMMWC3A1 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MCAPAST,                         01060005
//            DISP=(NEW,CATLG,DELETE),                                  01070000
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE),                        01080000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=110,BLKSIZE=0)               01090000
//SYSTSPRT DD SYSOUT=*                                                  01180000
//SYSPRINT DD SYSOUT=*                                                  01190000
//SYSOUT   DD SYSOUT=*                                                  01200000
//SYSDBOUT DD SYSOUT=*                                                  01210000
//SYSABOUT DD DUMMY                                                     01220000
//SYSUDUMP DD DUMMY                                                     01230000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC1T03),DISP=SHR                   01231000
//*                                                                     01250000
//*---------------------------------------------------------------------01260000
//*  PASO 2                  PGM   ZM4VMWC4                             01270000
//*  GENERA EL ARCHIVO D CONTROL DEL ISR DE LAS SUCURSALES MIGRADAS     01280000
//*---------------------------------------------------------------------01300000
//PMDC1P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                01310000
//ZMMWC4A1 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MISRANU,                         01320005
//            DISP=(NEW,CATLG,DELETE),                                  01330000
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE),                        01340000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=100,BLKSIZE=0)               01350000
//SYSTSPRT DD SYSOUT=*                                                  01440000
//SYSPRINT DD SYSOUT=*                                                  01450000
//SYSOUT   DD SYSOUT=*                                                  01460000
//SYSDBOUT DD SYSOUT=*                                                  01470000
//SYSABOUT DD DUMMY                                                     01480000
//SYSUDUMP DD DUMMY                                                     01490000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC1T04),DISP=SHR                   01500000
//*                                                                     01510000
//*---------------------------------------------------------------------01520000
//*  PASO 1                  PGM   ZM4VMWC5                             01530000
//*  GENERA COMPARATIVO DE CAPAS CONTRA CARTERA EN TITULOS              01540000
//*---------------------------------------------------------------------01550000
//PMDC1P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                01560000
//*                                                                     01561000
//ZMMWC5A1 DD DSN=MXCP.ZM.FIX.MIG.CNTL.COMDDC1,                         01562005
//            DISP=(NEW,CATLG,DELETE),                                  01563000
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE),                        01564000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=95,BLKSIZE=0)                01565000
//ZMMWC5A2 DD DSN=MXCP.ZM.FIX.MIG.CNTL.COMDCC1,                         01566005
//            DISP=(NEW,CATLG,DELETE),                                  01567000
//            UNIT=3390,SPACE=(CYL,(5,3),RLSE),                         01568000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=76,BLKSIZE=0)                01569000
//*                                                                     01569100
//SYSTSPRT DD SYSOUT=*                                                  01650000
//SYSPRINT DD SYSOUT=*                                                  01660000
//SYSOUT   DD SYSOUT=*                                                  01670000
//SYSDBOUT DD SYSOUT=*                                                  01680000
//SYSABOUT DD DUMMY                                                     01690000
//SYSUDUMP DD DUMMY                                                     01700000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC1T05),DISP=SHR                   01710000
//*                                                                     01720000
//*---------------------------------------------------------------------01730000
//*  PASO 0                  PGM   ZM4VMWC7                             01740000
//*  GENERA ARCHIVO DE CONTROL DE REPORTOS                              01750000
//*---------------------------------------------------------------------01760000
//PMDC1P00 EXEC PGM=IKJEFT01,COND=(4,LT)                                01770000
//*                                                                     01780000
//ZMMWC7A1 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MREPORT,                         01790005
//            DISP=(NEW,CATLG,DELETE),                                  01800000
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE),                        01810000
//            DCB=(RECFM=FB,DSORG=PS,LRECL=142,BLKSIZE=0)               01820000
//*                                                                     01870000
//SYSTSPRT DD SYSOUT=*                                                  01880000
//SYSPRINT DD SYSOUT=*                                                  01890000
//SYSOUT   DD SYSOUT=*                                                  01900000
//SYSDBOUT DD SYSOUT=*                                                  01910000
//SYSABOUT DD DUMMY                                                     01920000
//SYSUDUMP DD DUMMY                                                     01930000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC1T06),DISP=SHR                   01940000
//*                                                                     01950000
