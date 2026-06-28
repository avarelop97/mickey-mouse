//ZMMDPVA3 PROC                                                         00010000
//*-------------------------------------------------------------------- 00020000
//*                 ***  LO MANDA EJECUTAR EL BCMDCVA3  ***             00030000
//* SORT DEL ARCHIVO MOVHIS POR EL CAMPO CUENTA BPIGO                   00190000
//*-------------------------------------------------------------------- 00200000
//PMDA3P04 EXEC PGM=ICEMAN                                              00210000
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.MOVHIS,DISP=SHR                    00270001
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.MOVHIS.SORT,                         00280001
//            DISP=(NEW,CATLG,DELETE),                                  00290000
//            SPACE=(CYL,(10,05),RLSE),                                 00300001
//            DCB=(DSORG=PS,LRECL=550,RECFM=FB,BLKSIZE=0),              00310000
//            UNIT=3390                                                 00320000
//SYSOUT   DD SYSOUT=*                                                  00330000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDA3T04),DISP=SHR                   00340001
//*                                                                     00350000
//*-------------------------------------------------------------------- 00360000
//* CORRE PGM:ZM4VMW09 (MOVHIS) PARA ENCONTRAR ICONCEPT (ESC Y CTA) MUV 00370000
//*-------------------------------------------------------------------- 00380000
//PMDA3P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00390000
//ZMMW09A1 DD DSN=MXCP.ZM.WKF.MIG1.MOVHIS.SORT,DISP=SHR                 00400001
//ZMMW09A2 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.CESC550,                      00410001
//            DISP=(NEW,CATLG,DELETE),                                  00420000
//            SPACE=(CYL,(10,05),RLSE),                                 00430001
//            DCB=(RECFM=FB,LRECL=550,BLKSIZE=0,DSORG=PS),              00440000
//            UNIT=3390                                                 00450000
//ZMMW09A3 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.ESC0100,                      00460001
//            DISP=(NEW,CATLG,DELETE),                                  00470000
//            SPACE=(CYL,(10,05),RLSE),                                 00480001
//            DCB=(RECFM=FB,LRECL=100,BLKSIZE=0,DSORG=PS),              00490000
//            UNIT=3390                                                 00500000
//SYSTSPRT DD SYSOUT=*                                                  00510000
//SYSPRINT DD SYSOUT=*                                                  00520000
//SYSOUT   DD SYSOUT=*                                                  00530000
//SYSDBOUT DD SYSOUT=*                                                  00540000
//SYSABOUT DD DUMMY                                                     00550000
//SYSUDUMP DD DUMMY                                                     00560000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA3T03),DISP=SHR                   00570001
//*                                                                     00580000
//*-------------------------------------------------------------------- 00590000
//* CORRE PGM:ZM4VMW28 (MOVHIS) LLENA CAMPOS PARA EL ZM4VMW27           00600000
//*-------------------------------------------------------------------- 00610000
//PMDA2P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00620000
//ZMMW28A1 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.CESC550,DISP=SHR              00630001
//ZMMW28A2 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.L500PG28,                     00640001
//            DISP=(NEW,CATLG,DELETE),                                  00650000
//            SPACE=(CYL,(10,05),RLSE),                                 00660001
//            DCB=(RECFM=FB,LRECL=500,BLKSIZE=0,DSORG=PS),              00670000
//            UNIT=3390                                                 00680000
//ZMMW28A3 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.L500ER28,                     00690001
//            DISP=(NEW,CATLG,DELETE),                                  00700000
//            SPACE=(CYL,(10,05),RLSE),                                 00710001
//            DCB=(RECFM=FB,LRECL=500,BLKSIZE=0,DSORG=PS),              00720000
//            UNIT=3390                                                 00730000
//ZMMW28A4 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.L150ER28,                     00740001
//            DISP=(NEW,CATLG,DELETE),                                  00750000
//            SPACE=(CYL,(10,05),RLSE),                                 00760001
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS),              00770000
//            UNIT=3390                                                 00780000
//SYSTSPRT DD SYSOUT=*                                                  00790000
//SYSPRINT DD SYSOUT=*                                                  00800000
//SYSOUT   DD SYSOUT=*                                                  00810000
//SYSDBOUT DD SYSOUT=*                                                  00820000
//SYSABOUT DD DUMMY                                                     00830000
//SYSUDUMP DD DUMMY                                                     00840000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA3T02),DISP=SHR                   00850001
//*                                                                     00860000
//*-------------------------------------------------------------------- 00870000
//* CORRE PGM:ZM4VMW27 (MOVHIS) CARGA OPERA                             00880000
//*-------------------------------------------------------------------- 00890000
//PMDA1P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00900000
//ZMMW27A1 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.L500PG28,DISP=SHR             00910001
//ZMMW27A2 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.L500PG27,                     00920001
//            DISP=(NEW,CATLG,DELETE),                                  00930000
//            SPACE=(CYL,(10,05),RLSE),                                 00940001
//            DCB=(RECFM=FB,LRECL=500,BLKSIZE=0,DSORG=PS),              00950000
//            UNIT=3390                                                 00960000
//ZMMW27A3 DD DSN=MXCP.ZM.FIX.MIG1.MOVHIS.L150ER27,                     00970001
//            DISP=(NEW,CATLG,DELETE),                                  00980000
//            SPACE=(CYL,(10,05),RLSE),                                 00990001
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS),              01000000
//            UNIT=3390                                                 01010000
//SYSTSPRT DD SYSOUT=*                                                  01020000
//SYSPRINT DD SYSOUT=*                                                  01030000
//SYSOUT   DD SYSOUT=*                                                  01040000
//SYSDBOUT DD SYSOUT=*                                                  01050000
//SYSABOUT DD DUMMY                                                     01060000
//SYSUDUMP DD DUMMY                                                     01070000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA3T01),DISP=SHR                   01080001
//*-------------------------------------------------------------------- 01090000
