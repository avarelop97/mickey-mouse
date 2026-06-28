//ZMMDPVA1 PROC                                                         00010000
//*-------------------------------------------------------------------- 00020000
//*                 ***  LO MANDA EJECUTAR EL BCMDCVA1  ***             00030000
//* SORT DEL ARCHIVO POSBP POR EL CAMPO CUENTA BPIGO                    00040000
//*-------------------------------------------------------------------- 00050000
//PMDA1P04 EXEC PGM=ICEMAN                                              00060002
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.POSBP,DISP=SHR                     00120001
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.POSBP.SORT,                          00130001
//            DISP=(NEW,CATLG,DELETE),                                  00140000
//            SPACE=(CYL,(10,05),RLSE),                                 00150000
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),              00160000
//            UNIT=3390                                                 00170000
//SYSOUT   DD SYSOUT=*                                                  00180000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDA1T04),DISP=SHR                   00190002
//*                                                                     00200000
//*-------------------------------------------------------------------- 00210000
//* CORRE PGM: ZM4VMW08 (POSBP) PARA ENCONTRAR ICONCEPT (ESC Y CTA) MUV 00220000
//*-------------------------------------------------------------------- 00230000
//PMDA1P03 EXEC PGM=IKJEFT01,COND=(4,LT)                                00240002
//ZMMW08A1 DD DSN=MXCP.ZM.WKF.MIG1.POSBP.SORT,DISP=SHR                  00250001
//ZMMW08A2 DD DSN=MXCP.ZM.FIX.MIG1.POSBP.CESC200,                       00260001
//            DISP=(NEW,CATLG,DELETE),                                  00270000
//            SPACE=(CYL,(10,05),RLSE),                                 00280000
//            DCB=(RECFM=FB,LRECL=200,BLKSIZE=0,DSORG=PS),              00290000
//            UNIT=3390                                                 00300000
//ZMMW08A3 DD DSN=MXCP.ZM.FIX.MIG1.POSBP.ESC0100,                       00310001
//            DISP=(NEW,CATLG,DELETE),                                  00320000
//            SPACE=(CYL,(10,05),RLSE),                                 00330000
//            DCB=(RECFM=FB,LRECL=100,BLKSIZE=0,DSORG=PS),              00340000
//            UNIT=3390                                                 00350000
//SYSTSPRT DD SYSOUT=*                                                  00360000
//SYSPRINT DD SYSOUT=*                                                  00370000
//SYSOUT   DD SYSOUT=*                                                  00380000
//SYSDBOUT DD SYSOUT=*                                                  00390000
//SYSABOUT DD DUMMY                                                     00400000
//SYSUDUMP DD DUMMY                                                     00410000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA1T03),DISP=SHR                   00420002
//*                                                                     00430000
//*---------------------------------------------------------------------00440000
//* CORRE PGM: ZM4VMW21 (POSBP) GRABAR REGISTROS EN CARTERA - ZMDTMG2   00450000
//*---------------------------------------------------------------------00460000
//PMDA1P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00470002
//ZMMW21A1 DD DSN=MXCP.ZM.FIX.MIG1.POSBP.CESC200,DISP=SHR               00480001
//ZMMW21A2 DD DSN=MXCP.ZM.FIX.MIG1.POSBP.L080ER21,                      00490001
//            DISP=(NEW,CATLG,DELETE),                                  00500000
//            SPACE=(CYL,(10,05),RLSE),                                 00510000
//            DCB=(RECFM=FB,LRECL=080,BLKSIZE=0,DSORG=PS),              00520000
//            UNIT=3390                                                 00530000
//SYSTSPRT DD SYSOUT=*                                                  00540000
//SYSPRINT DD SYSOUT=*                                                  00550000
//SYSOUT   DD SYSOUT=*                                                  00560000
//SYSDBOUT DD SYSOUT=*                                                  00570000
//SYSABOUT DD DUMMY                                                     00580000
//SYSUDUMP DD DUMMY                                                     00590000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA1T02),DISP=SHR                   00600002
//*                                                                     00610000
//*---------------------------------------------------------------------00620000
//*  PROGRAMA ZM4VMW22 CARGA DIARIA  DE SECART                          00630000
//*---------------------------------------------------------------------00640000
//PMDA1P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00650002
//ZMMW22R1 DD DSN=MXCP.ZM.FIX.MIG1.POSBP.L132PG22,                      00660001
//            DISP=(NEW,CATLG,DELETE),                                  00670000
//            SPACE=(CYL,(10,05),RLSE),                                 00680000
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS),              00690000
//            UNIT=3390                                                 00700000
//SYSTSPRT DD SYSOUT=*                                                  00710000
//SYSPRINT DD SYSOUT=*                                                  00720000
//SYSOUT   DD SYSOUT=*                                                  00730000
//SYSDBOUT DD SYSOUT=*                                                  00740000
//SYSABOUT DD DUMMY                                                     00750000
//SYSUDUMP DD DUMMY                                                     00760000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA1T01),DISP=SHR                   00770002
//*                                                                     00780000
