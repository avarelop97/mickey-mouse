//ZMMDPV61 PROC                                                         00020301
//*====================================================================*00021000
//*                 ***  LO MANDA EJECUTAR EL BCMDCV61  ***             00021101
//* SORT DEL ARCHIVO DE CAPAS POR EL CAMPO CUENTA BPIGO                 00022001
//*====================================================================*00023000
//PMD61P02 EXEC PGM=ICEMAN                                              00024701
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.CAPAS,DISP=SHR                     00030002
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG.CAPAS.SORT,                           00030201
//            DISP=(NEW,CATLG,DELETE),                                  00030300
//            UNIT=3390,                                                00030400
//            SPACE=(CYL,(08,04),RLSE),                                 00030500
//            DCB=(DSORG=PS,LRECL=152,RECFM=FB,BLKSIZE=0)               00030601
//SYSOUT   DD SYSOUT=*                                                  00030800
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMD61T02),DISP=SHR                   00031401
//*                                                                     00032000
//*-------------------------------------------------------------------- 00040000
//* CORRE PGM: ZM4VMW06 (PLAZOS) PARA ENCONTRAR ICONCEPT(ESC Y CTA) MUV 00041000
//*-------------------------------------------------------------------- 00060000
//*                                                                     00061000
//PMD61P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070001
//*                                                                     00080000
//ZMMW14A1 DD DSN=MXCP.ZM.WKF.MIG.CAPAS.SORT,DISP=SHR                   00120001
//ZMMW14A2 DD DSN=MXCP.ZM.FIX.MIG.CAPAS.MUV,                            00130001
//            DISP=(NEW,CATLG,DELETE),                                  00140000
//            UNIT=3390,                                                00150000
//            SPACE=(CYL,(08,04),RLSE),                                 00160000
//            DCB=(RECFM=FB,LRECL=152,BLKSIZE=0,DSORG=PS)               00170001
//ZMMW14A3 DD DSN=MXCP.ZM.FIX.MIG.CAPAS.ESC0100,                        00180001
//            DISP=(NEW,CATLG,DELETE),                                  00190000
//            UNIT=3390,                                                00200000
//            SPACE=(CYL,(08,04),RLSE),                                 00210000
//            DCB=(RECFM=FB,LRECL=100,BLKSIZE=0,DSORG=PS)               00220000
//*                                                                     00230000
//SYSTSPRT DD SYSOUT=*                                                  00240000
//SYSPRINT DD SYSOUT=*                                                  00250000
//SYSOUT   DD SYSOUT=*                                                  00260000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD61T01),DISP=SHR                   00291001
//*                                                                     00340000
