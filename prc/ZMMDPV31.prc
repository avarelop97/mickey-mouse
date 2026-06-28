//ZMMDPV31 PROC                                                         00020301
//*====================================================================*00021000
//*                 ***  LO MANDA EJECUTAR EL BCMDCV31  ***             00021101
//* SORT DEL ARCHIVO POSMUV POR EL CAMPO CUENTA BPIGO                   00022001
//*====================================================================*00023000
//PMD31P02 EXEC PGM=ICEMAN                                              00024701
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.POSMUV,DISP=SHR                    00030003
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG.POSMUV.SORT,                          00030202
//            DISP=(NEW,CATLG,DELETE),                                  00030300
//            UNIT=3390,                                                00030400
//            SPACE=(CYL,(08,04),RLSE),                                 00030500
//            DCB=(DSORG=PS,LRECL=550,RECFM=FB,BLKSIZE=0)               00030602
//SYSOUT   DD SYSOUT=*                                                  00030800
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMD31T02),DISP=SHR                   00031402
//*                                                                     00032000
//*-------------------------------------------------------------------- 00040000
//* CORRE PGM: ZM4VMW11 (POSMUV) PARA ENCONTRAR ICONCEPT(ESC Y CTA) MUV 00041002
//*-------------------------------------------------------------------- 00060000
//*                                                                     00061000
//PMD31P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070002
//*                                                                     00080000
//ZMMW11A1 DD DSN=MXCP.ZM.WKF.MIG.POSMUV.SORT,DISP=SHR                  00120002
//ZMMW11A2 DD DSN=MXCP.ZM.FIX.MIG.POSMUV.CESC550,                       00130002
//            DISP=(NEW,CATLG,DELETE),                                  00140000
//            UNIT=3390,                                                00150000
//            SPACE=(CYL,(08,04),RLSE),                                 00160000
//            DCB=(RECFM=FB,LRECL=550,BLKSIZE=0,DSORG=PS)               00170002
//ZMMW11A3 DD DSN=MXCP.ZM.FIX.MIG.POSMUV.ESC0100,                       00180002
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD31T01),DISP=SHR                   00291002
//*                                                                     00340000
