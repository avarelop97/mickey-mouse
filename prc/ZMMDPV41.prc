//ZMMDPV41 PROC                                                         00020301
//*====================================================================*00021000
//*                 ***  LO MANDA EJECUTAR EL BCMDCV41  ***             00021101
//* SORT DEL ARCHIVO DE PLAZOS POR EL CAMPO CUENTA BPIGO                00022001
//*====================================================================*00023000
//PMD41P02 EXEC PGM=ICEMAN                                              00024701
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.PLAZOS,DISP=SHR                    00030003
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG.PLAZOS.SORT,                          00030201
//            DISP=(NEW,CATLG,DELETE),                                  00030300
//            UNIT=3390,                                                00030400
//            SPACE=(CYL,(08,04),RLSE),                                 00030500
//            DCB=(DSORG=PS,LRECL=300,RECFM=FB,BLKSIZE=0)               00030601
//SYSOUT   DD SYSOUT=*                                                  00030800
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMD41T02),DISP=SHR                   00031401
//*                                                                     00032000
//*-------------------------------------------------------------------- 00040000
//* CORRE PGM: ZM4VMW06 (PLAZOS) PARA ENCONTRAR ICONCEPT(ESC Y CTA) MUV 00041001
//*-------------------------------------------------------------------- 00060000
//*                                                                     00061000
//PMD41P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070001
//*                                                                     00080000
//ZMMW06A1 DD DSN=MXCP.ZM.WKF.MIG.PLAZOS.SORT,DISP=SHR                  00120001
//ZMMW06A2 DD DSN=MXCP.ZM.FIX.MIG.PLAZOS.CESC300,                       00130002
//            DISP=(NEW,CATLG,DELETE),                                  00140000
//            UNIT=3390,                                                00150000
//            SPACE=(CYL,(08,04),RLSE),                                 00160000
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS)               00170001
//ZMMW06A3 DD DSN=MXCP.ZM.FIX.MIG.PLAZOS.ESC0100,                       00180001
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD41T01),DISP=SHR                   00291001
//*                                                                     00340000
