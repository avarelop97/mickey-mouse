//ZMMDPVA7 PROC                                                         00010000
//*-------------------------------------------------------------------- 00020000
//*                 ***  LO MANDA EJECUTAR EL BCMDCVA7  ***             00030000
//* SORT DEL ARCHIVO POSMUV POR EL CAMPO CUENTA BPIGO                   00200000
//*-------------------------------------------------------------------- 00210000
//PMDA7P04 EXEC PGM=ICEMAN                                              00220000
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.POSMUV,DISP=SHR                    00280001
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.POSMUV.SORT,                         00290001
//            DISP=(NEW,CATLG,DELETE),                                  00300000
//            SPACE=(CYL,(10,05),RLSE),                                 00310001
//            DCB=(DSORG=PS,LRECL=550,RECFM=FB,BLKSIZE=0),              00320000
//            UNIT=3390                                                 00330000
//SYSOUT   DD SYSOUT=*                                                  00340000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDA7T04),DISP=SHR                   00350001
//*                                                                     00360000
//*-------------------------------------------------------------------- 00370000
//* CORRE PGM:ZM4VMW11 (POSMUV) PARA ENCONTRAR ICONCEPT (ESC Y CTA) MUV 00380000
//*-------------------------------------------------------------------- 00390000
//PMDA7P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400000
//ZMMW11A1 DD DSN=MXCP.ZM.WKF.MIG1.POSMUV.SORT,DISP=SHR                 00410001
//ZMMW11A2 DD DSN=MXCP.ZM.FIX.MIG1.POSMUV.CESC550,                      00420001
//           DISP=(NEW,CATLG,DELETE),                                   00430000
//            SPACE=(CYL,(10,05),RLSE),                                 00440001
//            DCB=(RECFM=FB,LRECL=550,BLKSIZE=0,DSORG=PS),              00450000
//            UNIT=3390                                                 00460000
//ZMMW11A3 DD DSN=MXCP.ZM.FIX.MIG1.POSMUV.CESC100,                      00470001
//            DISP=(NEW,CATLG,DELETE),                                  00480000
//            SPACE=(CYL,(10,05),RLSE),                                 00490001
//            DCB=(RECFM=FB,LRECL=100,BLKSIZE=0,DSORG=PS),              00500000
//            UNIT=3390                                                 00510000
//SYSTSPRT DD SYSOUT=*                                                  00520000
//SYSPRINT DD SYSOUT=*                                                  00530000
//SYSOUT   DD SYSOUT=*                                                  00540000
//SYSDBOUT DD SYSOUT=*                                                  00550000
//SYSABOUT DD DUMMY                                                     00560000
//SYSUDUMP DD DUMMY                                                     00570000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA7T03),DISP=SHR                   00580001
//*                                                                     00590000
//*-------------------------------------------------------------------- 00600000
//* CORRE PGM:ZM4VMW23 CARGA ZMDTMG1 (OPERA)                            00610000
//*-------------------------------------------------------------------- 00620000
//PMDA7P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00630000
//ZMMW23A1 DD DSN=MXCP.ZM.FIX.MIG1.POSMUV.CESC550,DISP=SHR              00640001
//ZMMW23A2 DD DSN=MXCP.ZM.FIX.MIG1.POSMUV.L550ER23,                     00650001
//            DISP=(NEW,CATLG,DELETE),                                  00660000
//            SPACE=(CYL,(10,05),RLSE),                                 00670001
//            DCB=(RECFM=FB,LRECL=550,BLKSIZE=0,DSORG=PS),              00680000
//           UNIT=3390                                                  00690000
//SYSTSPRT DD SYSOUT=*                                                  00700000
//SYSPRINT DD SYSOUT=*                                                  00710000
//SYSOUT   DD SYSOUT=*                                                  00720000
//SYSDBOUT DD SYSOUT=*                                                  00730000
//SYSABOUT DD DUMMY                                                     00740000
//SYSUDUMP DD DUMMY                                                     00750000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA7T02),DISP=SHR                   00760001
//*                                                                     00770000
//*-------------------------------------------------------------------- 00780000
//* CORRE PGM:ZM4VMW24 CARGA (ZMDTMG2) CARTERA                          00790000
//*-------------------------------------------------------------------- 00800000
//PMDA7P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00810000
//SYSTSPRT DD SYSOUT=*                                                  00820000
//SYSPRINT DD SYSOUT=*                                                  00830000
//SYSOUT   DD SYSOUT=*                                                  00840000
//SYSDBOUT DD SYSOUT=*                                                  00850000
//SYSABOUT DD DUMMY                                                     00860000
//SYSUDUMP DD DUMMY                                                     00870000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA7T01),DISP=SHR                   00880001
//*-------------------------------------------------------------------- 00890000
