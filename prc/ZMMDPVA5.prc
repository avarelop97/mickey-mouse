//ZMMDPVA5 PROC                                                         00010000
//*====================================================================*00020000
//*                 ***  LO MANDA EJECUTAR EL BCMDCVA5  ***             00030000
//* SORT DEL ARCHIVO DE CAPAS POR EL CAMPO CUENTA BPIGO                 00040000
//*====================================================================*00050000
//PMDA5P03 EXEC PGM=ICEMAN                                              00060000
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.CAPAS,DISP=SHR                     00120001
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG1.CAPAS.SORT,                          00130001
//            DISP=(NEW,CATLG,DELETE),                                  00140000
//            SPACE=(CYL,(10,05),RLSE),                                 00150001
//            DCB=(DSORG=PS,LRECL=152,RECFM=FB,BLKSIZE=0),              00160000
//            UNIT=3390                                                 00170000
//SYSOUT   DD SYSOUT=*                                                  00180000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDA5T03),DISP=SHR                   00190001
//*                                                                     00200000
//*-------------------------------------------------------------------- 00210000
//*                       PGM: ZM4VMW14                                 00220000
//*           PARA ENCONTRAR ICONCEPT(E-S-C Y CTA) MUV                  00230000
//*-------------------------------------------------------------------- 00240000
//PMDA5P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00250000
//ZMMW14A1 DD DSN=MXCP.ZM.WKF.MIG1.CAPAS.SORT,DISP=SHR                  00260001
//ZMMW14A2 DD DSN=MXCP.ZM.FIX.MIG1.CAPAS.CESC152,                       00270001
//            DISP=(NEW,CATLG,DELETE),                                  00280000
//            SPACE=(CYL,(10,05),RLSE),                                 00290001
//            DCB=(RECFM=FB,LRECL=152,BLKSIZE=0,DSORG=PS),              00300000
//            UNIT=3390                                                 00310000
//ZMMW14A3 DD DSN=MXCP.ZM.FIX.MIG1.CAPAS.CESC100,                       00320001
//            DISP=(NEW,CATLG,DELETE),                                  00330000
//            SPACE=(CYL,(10,05),RLSE),                                 00340001
//            DCB=(RECFM=FB,LRECL=100,BLKSIZE=0,DSORG=PS),              00350000
//            UNIT=3390                                                 00360000
//SYSTSPRT DD SYSOUT=*                                                  00370000
//SYSPRINT DD SYSOUT=*                                                  00380000
//SYSOUT   DD SYSOUT=*                                                  00390000
//SYSDBOUT DD SYSOUT=*                                                  00400000
//SYSABOUT DD DUMMY                                                     00410000
//SYSUDUMP DD DUMMY                                                     00420000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA5T02),DISP=SHR                   00430001
//*                                                                     00440000
//*---------------------------------------------------------------------00450000
//*                          PGM   ZM4VMW44                             00460000
//*        GRABA REGS. DE CAPAS EN LAS TABLAS ZMDT161 Y MDDCST          00470000
//*---------------------------------------------------------------------00480000
//PMDA5P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00490000
//ZMMW44A1 DD DSN=MXCP.ZM.FIX.MIG1.CAPAS.CESC152,DISP=SHR               00500001
//SYSTSPRT DD SYSOUT=*                                                  00510000
//SYSPRINT DD SYSOUT=*                                                  00520000
//SYSOUT   DD SYSOUT=*                                                  00530000
//SYSDBOUT DD SYSOUT=*                                                  00540000
//SYSABOUT DD DUMMY                                                     00550000
//SYSUDUMP DD DUMMY                                                     00560000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA5T01),DISP=SHR                   00570001
//*---------------------------------------------------------------------00580000
