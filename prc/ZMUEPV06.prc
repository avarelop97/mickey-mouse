//ZMUEPV06 PROC EMP=,SUC=,INT1=,INT2=                                   00010000
//**********************************************************************00020000
//*                     C A S A   D E   B O L S A                      *00030000
//*                     =========================                      *00040000
//*                                                                    *00060000
//*   APLICACION:  PROCESO EVENTUAL (S.I.V.A)                          *00070000
//*                                                                    *00080000
//*   PROCEDIM. :  ZMUEPV06                                            *00090000
//*                                                                    *00100000
//*   CORRE ANTES DE  : NINGUNO                                        *00140000
//*                                                                    *00150000
//*   CORRE DESPUES DE: NINGUNO                                        *00160000
//*                                                                    *00170000
//*   PERIODICIDAD    :  EVENTUAL UNICA VEZ                            *00180000
//*                                                                    *00190000
//**********************************************************************00200000
//*                                                                     00300000
//PUE06P03 EXEC PGM=ZM3DG001,                                           00310000
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00320000
//SYSTSPRT DD SYSOUT=*                                                  00330000
//SYSPRINT DD SYSOUT=*                                                  00340000
//SYSOUT   DD SYSOUT=*                                                  00350000
//SYSDBOUT DD SYSOUT=*                                                  00360000
//SYSABOUT DD DUMMY                                                     00370000
//SYSUDUMP DD DUMMY                                                     00380000
//ZMG001A1 DD DSN=MXCP.ZM.TMP.EVE.ZMUEPV06,                             00400000
//            DISP=(NEW,CATLG,DELETE),                                  00410000
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),               00420000
//            UNIT=3390,                                                00430000
//            SPACE=(CYL,(2,1),RLSE)                                    00440000
//*                                                                     00570000
//PUE06P02 EXEC PGM=IKJEFT01,COND=(0,NE)                                00630000
//ZMU014P1 DD DSN=MXCP.ZM.TMP.EVE.ARCHPAR,                              00660000
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00670000
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),               00680000
//            SPACE=(CYL,(100,50),RLSE)                                 00690000
//SYSTSPRT DD SYSOUT=*                                                  00780000
//SYSPRINT DD SYSOUT=*                                                  00790000
//SYSOUT   DD SYSOUT=*                                                  00800000
//SYSDBOUT DD SYSOUT=*                                                  00810000
//SYSABOUT DD SYSOUT=*                                                  00820000
//SYSUDUMP DD DUMMY                                                     00830000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE46T02),DISP=SHR                   00840000
//*                                                                     00850000
//PUE06P01 EXEC PGM=IKJEFT01,COND=(0,NE)                                00930000
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00930100
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00930110
//         DD DSN=PLI.V2R3M0.SIBMLINK,DISP=SHR                          00930200
//SYSTSPRT DD SYSOUT=*                                                  01050000
//SYSPRINT DD SYSOUT=*                                                  01060000
//SYSOUT   DD SYSOUT=*                                                  01070000
//SYSDBOUT DD SYSOUT=*                                                  01080000
//SYSABOUT DD SYSOUT=*                                                  01090000
//SYSUDUMP DD DUMMY                                                     01100000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE46T01),DISP=SHR                   01110000
//SYSIN    DD DSN=MXCP.ZM.TMP.EVE.ARCHPAR,DISP=SHR                      01110100
//*                                                                     01120000
