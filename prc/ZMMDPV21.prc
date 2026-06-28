//ZMMDPV21 PROC                                                         00020301
//*====================================================================*00021000
//*                 ***  LO MANDA EJECUTAR EL BCMDCV21  ***             00021101
//* SORT DEL ARCHIVO MOVHIS POR EL CAMPO CUENTA BPIGO                   00022001
//*====================================================================*00023000
//PMD21P03 EXEC PGM=ICEMAN                                              00024701
//SORTIN   DD DSN=MXCP.ZM.FIX.MIG061.MOVHIS,DISP=SHR                    00030001
//SORTOUT  DD DSN=MXCP.ZM.WKF.MIG.MOVHIS.SORT,                          00030201
//            DISP=(NEW,CATLG,DELETE),                                  00030300
//            UNIT=3390,                                                00030400
//            SPACE=(CYL,(10,05),RLSE),                                 00030503
//            DCB=(DSORG=PS,LRECL=550,RECFM=FB,BLKSIZE=0)               00030602
//SYSOUT   DD SYSOUT=*                                                  00030800
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMD21T03),DISP=SHR                   00031402
//*                                                                     00032000
//*-------------------------------------------------------------------- 00040000
//* CORRE PGM:ZM4VMW09 (MOVHIS) PARA ENCONTRAR ICONCEPT (ESC Y CTA) MUV 00041002
//*-------------------------------------------------------------------- 00060000
//*                                                                     00061000
//PMD21P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070002
//*                                                                     00080000
//ZMMW09A1 DD DSN=MXCP.ZM.WKF.MIG.MOVHIS.SORT,DISP=SHR                  00100002
//ZMMW09A2 DD DSN=MXCP.ZM.FIX.MIG.MOVHIS.CESC550,                       00110002
//            DISP=(NEW,CATLG,DELETE),                                  00111002
//            UNIT=3390,                                                00112002
//            SPACE=(CYL,(10,05),RLSE),                                 00113002
//            DCB=(RECFM=FB,LRECL=550,BLKSIZE=0,DSORG=PS)               00114002
//ZMMW09A3 DD DSN=MXCP.ZM.FIX.MIG.MOVHIS.ESC0100,                       00115002
//            DISP=(NEW,CATLG,DELETE),                                  00116002
//            UNIT=3390,                                                00117002
//            SPACE=(CYL,(10,05),RLSE),                                 00118002
//            DCB=(RECFM=FB,LRECL=100,BLKSIZE=0,DSORG=PS)               00119002
//*                                                                     00119102
//SYSTSPRT DD SYSOUT=*                                                  00240000
//SYSPRINT DD SYSOUT=*                                                  00250000
//SYSOUT   DD SYSOUT=*                                                  00260000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD21T02),DISP=SHR                   00291002
//*                                                                     00340000
//*-------------------------------------------------------------------- 00360002
//* CORRE PGM:ZM4VMW28 (MOVHIS) LLENA CAMPOS PARA EL ZM4VMW27           00370002
//*-------------------------------------------------------------------- 00380002
//*                                                                     00390002
//PMD21P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00400002
//*                                                                     00410002
//ZMMW28A1 DD DSN=MXCP.ZM.FIX.MIG.MOVHIS.CESC550,DISP=SHR               00420002
//ZMMW28A2 DD DSN=MXCP.ZM.FIX.MIG.MOVHIS.L550PG28,                      00430002
//            DISP=(NEW,CATLG,DELETE),                                  00440002
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),                       00450002
//            DCB=(RECFM=FB,LRECL=550,BLKSIZE=0,DSORG=PS)               00460002
//ZMMW28A3 DD DSN=MXCP.ZM.FIX.MIG.MOVHIS.L550,                          00470002
//            DISP=(NEW,CATLG,DELETE),                                  00480002
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),                       00490002
//            DCB=(RECFM=FB,LRECL=550,BLKSIZE=0,DSORG=PS)               00500002
//ZMMW28A4 DD DSN=MXCP.ZM.FIX.MIG.MOVHIS.L150,                          00510002
//            DISP=(NEW,CATLG,DELETE),                                  00520002
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),                       00521002
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)               00522002
//*                                                                     00530002
//SYSTSPRT DD SYSOUT=*                                                  00540002
//SYSPRINT DD SYSOUT=*                                                  00550002
//SYSOUT   DD SYSOUT=*                                                  00560002
//SYSDBOUT DD SYSOUT=*                                                  00570002
//SYSABOUT DD DUMMY                                                     00580002
//SYSUDUMP DD DUMMY                                                     00590002
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD21T01),DISP=SHR                   00600002
//*                                                                     00610002
