//ZMMDPVA2 PROC                                                         00010000
//*-------------------------------------------------------------------- 00020000
//*                 ***  LO MANDA EJECUTAR EL BCMDCVA2  ***             00030000
//* SORT DEL ARCHIVO RISRSOC POR EL CAMPO CUENTA BPIGO                  00040000
//*-------------------------------------------------------------------- 00050000
//PMDA2P06 EXEC PGM=ICEMAN                                              00060000
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.RISRSOC,DISP=SHR                   00120001
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.RISRSOC.SORT,                        00130001
//            DISP=(NEW,CATLG,DELETE),                                  00140000
//            SPACE=(CYL,(10,05),RLSE),                                 00150000
//            DCB=(DSORG=PS,LRECL=150,RECFM=FB,BLKSIZE=0),              00160000
//            UNIT=3390                                                 00170000
//SYSOUT   DD SYSOUT=*                                                  00180000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDA2T06),DISP=SHR                   00190001
//*                                                                     00200000
//*-------------------------------------------------------------------- 00210000
//* CORRE PGM: ZM4VMW1A (RISRSOC) PARA ENCONTRAR LA CUENTA MUV          00220000
//*-------------------------------------------------------------------- 00230000
//PMDA2P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00240000
//ZMMW1AA1 DD DSN=MXCP.ZM.WKF.MIG1.RISRSOC.SORT,DISP=SHR                00250001
//ZMMW1AA2 DD DSN=MXCP.ZM.FIX.MIG1.RISRSOC.XESC150,                     00260001
//            DISP=(NEW,CATLG,DELETE),                                  00270000
//            SPACE=(CYL,(10,05),RLSE),                                 00280000
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS),              00290000
//            UNIT=3390                                                 00300000
//SYSTSPRT DD SYSOUT=*                                                  00360000
//SYSPRINT DD SYSOUT=*                                                  00370000
//SYSOUT   DD SYSOUT=*                                                  00380000
//SYSDBOUT DD SYSOUT=*                                                  00390000
//SYSABOUT DD DUMMY                                                     00400000
//SYSUDUMP DD DUMMY                                                     00410000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA2T05),DISP=SHR                   00420001
//*                                                                     00430000
//*====================================================================*00440000
//* SORT DEL ARCHIVO RISRSOC POR EL CAMPO EMISORA BPIGO                 00450000
//*====================================================================*00460000
//PMDA2P04 EXEC PGM=ICEMAN,COND=(4,LT)                                  00470000
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG1.RISRSOC.XESC150,DISP=SHR             00530001
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.RISRSOC2.SORT2,                      00540001
//            DISP=(NEW,CATLG,DELETE),                                  00550000
//            SPACE=(CYL,(10,05),RLSE),                                 00560000
//            DCB=(DSORG=PS,LRECL=150,RECFM=FB,BLKSIZE=0),              00570000
//            UNIT=3390                                                 00580000
//SYSOUT   DD SYSOUT=*                                                  00590000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDA2T04),DISP=SHR                   00600001
//*                                                                     00610000
//*-------------------------------------------------------------------- 00620000
//* CORRE PGM: ZM4VMW10 (RISRSOC) PARA ENCONTRAR E-S-C DE MUV           00630000
//*-------------------------------------------------------------------- 00640000
//PMDA2P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00650000
//ZMMW10A1 DD DSN=MXCP.ZM.WKF.MIG1.RISRSOC2.SORT2,DISP=SHR              00660001
//ZMMW10A2 DD DSN=MXCP.ZM.FIX.MIG1.RISRSOC.CESC150,                     00670001
//            DISP=(NEW,CATLG,DELETE),                                  00680000
//            SPACE=(CYL,(10,05),RLSE),                                 00690000
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS),              00700000
//            UNIT=3390                                                 00710000
//SYSTSPRT DD SYSOUT=*                                                  00770000
//SYSPRINT DD SYSOUT=*                                                  00780000
//SYSOUT   DD SYSOUT=*                                                  00790000
//SYSDBOUT DD SYSOUT=*                                                  00800000
//SYSABOUT DD DUMMY                                                     00810000
//SYSUDUMP DD DUMMY                                                     00820000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA2T03),DISP=SHR                   00830001
//*                                                                     00840000
//*---------------------------------------------------------------------00850000
//*  PROGRAMA ZM4VMW19  CARGA RISRSOC EN TABLA ZMDTMG5 (RISRSOC)        00860000
//*---------------------------------------------------------------------00870000
//PMDA2P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00880000
//ZMMW19A1 DD DSN=MXCP.ZM.FIX.MIG1.RISRSOC.CESC150,DISP=SHR             00890001
//SYSTSPRT DD SYSOUT=*                                                  00900000
//SYSPRINT DD SYSOUT=*                                                  00910000
//SYSOUT   DD SYSOUT=*                                                  00920000
//SYSDBOUT DD SYSOUT=*                                                  00930000
//SYSABOUT DD DUMMY                                                     00940000
//SYSUDUMP DD DUMMY                                                     00950000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA2T02),DISP=SHR                   00960001
//*                                                                     00970000
//*---------------------------------------------------------------------00980000
//*  PROGRAMA ZM4VMW00  CARGA EDIMPUE    EN  TABLA ZMDTMG6              00990000
//*---------------------------------------------------------------------01000000
//PMDA2P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                01010000
//SYSTSPRT DD SYSOUT=*                                                  01020000
//SYSPRINT DD SYSOUT=*                                                  01030000
//SYSOUT   DD SYSOUT=*                                                  01040000
//SYSDBOUT DD SYSOUT=*                                                  01050000
//SYSABOUT DD DUMMY                                                     01060000
//SYSUDUMP DD DUMMY                                                     01070000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA2T01),DISP=SHR                   01080001
//*---------------------------------------------------------------------01090000
