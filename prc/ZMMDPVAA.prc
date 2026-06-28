//ZMMDPVAA PROC                                                         00010000
//*-------------------------------------------------------------------- 00020000
//*                 ***  LO MANDA EJECUTAR EL BCMDCVAA  ***             00030000
//* SORT DEL ARCHIVO POS248 POR EL CAMPO CUENTA BPIGO                   00040000
//*-------------------------------------------------------------------- 00050000
//PMDAAP04 EXEC PGM=ICEMAN                                              00060000
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.POS248,DISP=SHR                    00120001
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.POS248.SORT,                         00130001
//            DISP=(NEW,CATLG,DELETE),                                  00140000
//            SPACE=(CYL,(06,03),RLSE),                                 00150001
//            DCB=(DSORG=PS,LRECL=550,RECFM=FB,BLKSIZE=0),              00160000
//            UNIT=3390                                                 00170000
//SYSOUT   DD SYSOUT=*                                                  00180000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDAAT04),DISP=SHR                   00190001
//*                                                                     00200000
//*-------------------------------------------------------------------- 00210000
//* CORRE PGM:ZM4VMW33 (POS248) PARA ENCONTRAR ICONCEPT (ESC Y CTA) MUV 00220000
//*-------------------------------------------------------------------- 00230000
//PMDAAP03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00240000
//ZMMW33A1 DD DSN=MXCP.ZM.WKF.MIG1.POS248.SORT,DISP=SHR                 00250001
//ZMMW33A2 DD DSN=MXCP.ZM.FIX.MIG1.POS248.CESC550,                      00260001
//            DISP=(NEW,CATLG,DELETE),                                  00270000
//            SPACE=(CYL,(06,03),RLSE),                                 00280001
//            DCB=(RECFM=FB,LRECL=550,BLKSIZE=0,DSORG=PS),              00290000
//            UNIT=3390                                                 00300000
//ZMMW33A3 DD DSN=MXCP.ZM.FIX.MIG1.POS248.ESC0100,                      00310001
//            DISP=(NEW,CATLG,DELETE),                                  00320000
//            SPACE=(CYL,(06,03),RLSE),                                 00330001
//            DCB=(RECFM=FB,LRECL=100,BLKSIZE=0,DSORG=PS),              00340000
//            UNIT=3390                                                 00350000
//SYSTSPRT DD SYSOUT=*                                                  00360000
//SYSPRINT DD SYSOUT=*                                                  00370000
//SYSOUT   DD SYSOUT=*                                                  00380000
//SYSDBOUT DD SYSOUT=*                                                  00390000
//SYSABOUT DD DUMMY                                                     00400000
//SYSUDUMP DD DUMMY                                                     00410000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDAAT03),DISP=SHR                   00420001
//*                                                                     00430000
//*-------------------------------------------------------------------- 00440000
//* CORRE PGM:ZM4VMW34 CARGA ZMDTMG1 (OPERA)                            00450000
//*-------------------------------------------------------------------- 00460000
//PMDAAP02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00470000
//ZMMW34A1 DD DSN=MXCP.ZM.FIX.MIG1.POS248.CESC550,DISP=SHR              00480001
//ZMMW34A2 DD DSN=MXCP.ZM.FIX.MIG1.POS248.L550ER34,                     00490001
//            DISP=(NEW,CATLG,DELETE),                                  00500000
//            SPACE=(CYL,(06,03),RLSE),                                 00510001
//            DCB=(RECFM=FB,LRECL=550,BLKSIZE=0,DSORG=PS),              00520000
//           UNIT=3390                                                  00530000
//SYSTSPRT DD SYSOUT=*                                                  00540000
//SYSPRINT DD SYSOUT=*                                                  00550000
//SYSOUT   DD SYSOUT=*                                                  00560000
//SYSDBOUT DD SYSOUT=*                                                  00570000
//SYSABOUT DD DUMMY                                                     00580000
//SYSUDUMP DD DUMMY                                                     00590000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDAAT02),DISP=SHR                   00600001
//*                                                                     00610000
//*-------------------------------------------------------------------- 00620000
//* CORRE PGM:ZM4VMW35 CARGA (ZMDTMG2) CARTERA                          00630000
//*-------------------------------------------------------------------- 00640000
//PMDAAP01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00650000
//SYSTSPRT DD SYSOUT=*                                                  00660000
//SYSPRINT DD SYSOUT=*                                                  00670000
//SYSOUT   DD SYSOUT=*                                                  00680000
//SYSDBOUT DD SYSOUT=*                                                  00690000
//SYSABOUT DD DUMMY                                                     00700000
//SYSUDUMP DD DUMMY                                                     00710000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDAAT01),DISP=SHR                   00720001
//*-------------------------------------------------------------------- 00730000
