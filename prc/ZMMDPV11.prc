//ZMMDPV11 PROC                                                         00020301
//*====================================================================*00021000
//*                 ***  LO MANDA EJECUTAR EL BCMDCV11  ***             00021101
//* SORT DEL ARCHIVO RISRSOC POR EL CAMPO CUENTA BPIGO                  00022001
//*====================================================================*00023000
//PMD11P03 EXEC PGM=ICEMAN                                              00024701
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.RISRSOC,DISP=SHR                   00030003
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG.RISRSOC.SORT,                         00030201
//            DISP=(NEW,CATLG,DELETE),                                  00030300
//            UNIT=3390,                                                00030400
//            SPACE=(CYL,(10,05),RLSE),                                 00030501
//            DCB=(DSORG=PS,LRECL=150,RECFM=FB,BLKSIZE=0)               00030601
//SYSOUT   DD SYSOUT=*                                                  00030800
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMD11T03),DISP=SHR                   00031401
//*                                                                     00032000
//*-------------------------------------------------------------------- 00040000
//* CORRE PGM: ZM4VMW1A (RISRSOC) PARA ENCONTRAR LA CUENTA MUV          00041001
//*-------------------------------------------------------------------- 00060000
//*                                                                     00061000
//PMD11P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070001
//*                                                                     00080000
//ZMMW1AA1 DD DSN=MXCP.ZM.WKF.MIG.RISRSOC.SORT,DISP=SHR                 00120001
//ZMMW1AA2 DD DSN=MXCP.ZM.FIX.MIG.RISRSOC.CTA150,                       00130002
//            DISP=(NEW,CATLG,DELETE),                                  00140000
//            UNIT=3390,                                                00150000
//            SPACE=(CYL,(10,05),RLSE),                                 00160001
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)               00170001
//ZMMW1AA3 DD DSN=MXCP.ZM.FIX.MIG.RISRSOC.CTA100,                       00180001
//            DISP=(NEW,CATLG,DELETE),                                  00190000
//            UNIT=3390,                                                00200000
//            SPACE=(CYL,(10,05),RLSE),                                 00210001
//            DCB=(RECFM=FB,LRECL=100,BLKSIZE=0,DSORG=PS)               00220000
//*                                                                     00230000
//SYSTSPRT DD SYSOUT=*                                                  00240000
//SYSPRINT DD SYSOUT=*                                                  00250000
//SYSOUT   DD SYSOUT=*                                                  00260000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD11T02),DISP=SHR                   00291001
//*                                                                     00340000
//*====================================================================*00340100
//* SORT DEL ARCHIVO RISRSOC POR EL CAMPO EMISORA BPIGO                 00340300
//*====================================================================*00340400
//PMD11P1A EXEC PGM=ICEMAN                                              00340500
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG.RISRSOC.CTA150,DISP=SHR               00341100
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG.RISRSOC2.SORT2,                       00341200
//            DISP=(NEW,CATLG,DELETE),                                  00341300
//            UNIT=3390,                                                00341400
//            SPACE=(CYL,(10,05),RLSE),                                 00341500
//            DCB=(DSORG=PS,LRECL=150,RECFM=FB,BLKSIZE=0)               00341600
//SYSOUT   DD SYSOUT=*                                                  00341700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMD11T1A),DISP=SHR                   00341800
//*                                                                     00341900
//*-------------------------------------------------------------------- 00360001
//* CORRE PGM: ZM4VMW10 (RISRSOC) PARA ENCONTRAR E-S-C DE MUV           00370001
//*-------------------------------------------------------------------- 00380001
//*                                                                     00390001
//PMD11P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400001
//*                                                                     00410001
//ZMMW10A1 DD DSN=MXCP.ZM.WKF.MIG.RISRSOC2.SORT2,DISP=SHR               00420002
//ZMMW10A2 DD DSN=MXCP.ZM.FIX.MIG.RISRSOC.CESC150,                      00430001
//            DISP=(NEW,CATLG,DELETE),                                  00440001
//            UNIT=3390,                                                00450001
//            SPACE=(CYL,(10,05),RLSE),                                 00460001
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)               00470001
//ZMMW10A3 DD DSN=MXCP.ZM.FIX.MIG.RISRSOC.ESC0100,                      00480001
//            DISP=(NEW,CATLG,DELETE),                                  00490001
//            UNIT=3390,                                                00500001
//            SPACE=(CYL,(10,05),RLSE),                                 00510001
//            DCB=(RECFM=FB,LRECL=100,BLKSIZE=0,DSORG=PS)               00520001
//*                                                                     00530001
//SYSTSPRT DD SYSOUT=*                                                  00540001
//SYSPRINT DD SYSOUT=*                                                  00550001
//SYSOUT   DD SYSOUT=*                                                  00560001
//SYSDBOUT DD SYSOUT=*                                                  00570001
//SYSABOUT DD DUMMY                                                     00580001
//SYSUDUMP DD DUMMY                                                     00590001
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD11T01),DISP=SHR                   00600001
//*                                                                     00610001
