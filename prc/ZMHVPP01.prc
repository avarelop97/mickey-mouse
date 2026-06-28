//ZMHVPP01 PROC                                                         00010006
//**********************************************************************00030000
//*                     C A S A   D E  B O L S A                       *00040000
//*                     ========================                       *00050000
//*                                                                    *00070000
//*   APLICACION:  S I S T E M A   M U L T I E M P R E S A             *00080000
//*                                                                    *00090000
//*   OBJETIVO  :  GENERA REPORTE DE VENTAS EN CORTO                   *00100000
//*                                                                    *00101000
//*   PERIODICIDAD    :  DIARIO.                                       *00160000
//*                                                                    *00170000
//*   ELABORADO POR   :  DYD SIVA-MUV.                                 *00180006
//*                                                                    *00181000
//**********************************************************************00181300
//*                      LOG DE MODIFICACIONES                         *00181400
//*--------------------------------------------------------------------*00181401
//*                                                                    *00181410
//**********************************************************************00385000
//**********************************************************************00385100
//* PASO       : ZVPP0101.                                             *00385200
//* UTILERIA   : ADUUMAIN                                              *00385300
//* OBJETIVO   : DESCARGA DE LAS TABLA OPERA                           *00385400
//**********************************************************************00385500
//ZVPP0101 EXEC PGM=ADUUMAIN,                                           00385600
//         PARM='MXP1,ZVPP0101,NEW,,MSGLEVEL(1)'                        00385700
//*                                                                     00385800
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00385900
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00386000
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00386100
//*                                                                     00386200
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCAR.OPERAPP.DIA,                       00386300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00386400
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00386500
//            SPACE=(CYL,(500,250),RLSE)                                00386600
//*                                                                     00386700
//SYSTSPRT DD SYSOUT=*                                                  00386800
//SYSPRINT DD SYSOUT=*                                                  00386900
//SYSPUNCH DD SYSOUT=*                                                  00387000
//SYSCNTL  DD DUMMY                                                     00387100
//*                                                                     00387200
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZVPP0101),DISP=SHR                   00387300
//*                                                                     00387500
//*--------------------------------------------------------------------*00387600
//* PASO       : ZVPP0102.                                             *00387700
//* UTILERIA   : IKJEFT01 / ZM4CPP01.                                  *00387800
//* OBJETIVO   : GENERA ARCHIVO DE MOVIMIENTOS CON POSICIONES DE LOS   *00387900
//*              CONTRATOS DE PP BANCO                                 *00387910
//*--------------------------------------------------------------------*00388000
//ZVPP0102 EXEC PGM=IKJEFT01,COND=(04,LT)                               00388100
//*                                                                     00388200
//ENTRADA  DD DSN=MXCP.ZM.FIX.DESCAR.OPERAPP.DIA,DISP=SHR               00388300
//*                                                                     00388500
//SALIDA1  DD DSN=MXCP.ZM.FIX.ZMLCPA02.VCN.MOVPP.OPERA,                 00388600
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00388700
//            DCB=(DSORG=PS,LRECL=87,RECFM=FB,BLKSIZE=0),               00388800
//            SPACE=(CYL,(100,50),RLSE)                                 00389000
//*                                                                     00389100
//SYSABOUT DD SYSOUT=*                                                  00389200
//SYSDBOUT DD SYSOUT=*                                                  00389300
//SYSOUT   DD SYSOUT=*                                                  00389400
//SYSPRINT DD SYSOUT=*                                                  00389500
//SYSTSPRT DD SYSOUT=*                                                  00389600
//SYSUDUMP DD DUMMY                                                     00389700
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVPP0102),DISP=SHR                   00389800
//*                                                                     00389900
//**********************************************************************00390000
//* PASO       : ZVPP0103.                                             *00390100
//* UTILERIA   : ADUUMAIN                                              *00390200
//* OBJETIVO   : DESCARGA DE LAS TABLA OPERA VENTAS EN CORTO           *00390300
//**********************************************************************00390400
//ZVPP0103 EXEC PGM=ADUUMAIN,COND=(04,LT),                              00390500
//         PARM='MXP1,ZVPP0103,NEW,,MSGLEVEL(1)'                        00390600
//*                                                                     00390700
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00390800
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00390900
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00391000
//*                                                                     00391100
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCAR.OPERAPP.VTACTO,                    00391200
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00391300
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),                        00391400
//            SPACE=(CYL,(500,250),RLSE)                                00391500
//*                                                                     00391600
//SYSTSPRT DD SYSOUT=*                                                  00391700
//SYSPRINT DD SYSOUT=*                                                  00391800
//SYSPUNCH DD SYSOUT=*                                                  00391900
//SYSCNTL  DD DUMMY                                                     00392000
//*                                                                     00392100
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZVPP0103),DISP=SHR                   00392200
//*                                                                     00392300
//*--------------------------------------------------------------------*00392400
//* PASO       : ZVPP0104.                                             *00392500
//* UTILERIA   : IKJEFT01 / ZM4CPP02.                                  *00392600
//* OBJETIVO   : GENERA REPORTE DE VENTAS EN CORTO MARCADAS DESDE EL   *00392700
//*              AUTOMATA                                               00392710
//*--------------------------------------------------------------------*00392800
//ZVPP0104 EXEC PGM=IKJEFT01,COND=(04,LT)                               00392900
//*                                                                     00393000
//ENTRADA  DD DSN=MXCP.ZM.FIX.DESCAR.OPERAPP.VTACTO,DISP=SHR            00393100
//*                                                                     00393200
//SALIDA1  DD DSN=MXCP.ZM.FIX.ZMLCPA02.VCN.REPOPP.VENTAS,               00393300
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00393400
//            DCB=(DSORG=PS,LRECL=131,RECFM=FB,BLKSIZE=0),              00393500
//            SPACE=(CYL,(100,50),RLSE)                                 00393600
//*                                                                     00393700
//SYSABOUT DD SYSOUT=*                                                  00393800
//SYSDBOUT DD SYSOUT=*                                                  00393900
//SYSOUT   DD SYSOUT=*                                                  00394000
//SYSPRINT DD SYSOUT=*                                                  00394100
//SYSTSPRT DD SYSOUT=*                                                  00394200
//SYSUDUMP DD DUMMY                                                     00394300
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVPP0104),DISP=SHR                   00394400
//*                                                                     00394500
//*--------------------------------------------------------------------*00394501
//* PASO       : ZVPP0106.                                             *00394502
//* UTILERIA   : IKJEFT01 / ZM4CPP03.                                  *00394503
//* OBJETIVO   : GENERA REPORTE PARA DETERMINAR SI AL FINAL DEL DIA    *00394504
//*              EL CONTRATO-EMISORA-SERIE QUEDA EN CORTO               00394505
//*--------------------------------------------------------------------*00394506
//ZVPP0105 EXEC PGM=ICEMAN,COND=(4,LT)                                  00394510
//*                                                                     00394511
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMLCPA02.VCN.MOVPP.OPERA,DISP=SHR         00394520
//*                                                                     00394540
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMLCPA02.VCN.MOVPP.OPERA.ORD,             00394560
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00394561
//            DCB=(DSORG=PS,LRECL=87,RECFM=FB,BLKSIZE=0),               00394562
//            SPACE=(CYL,(100,50),RLSE)                                 00394563
//*                                                                     00394564
//SYSTSPRT DD SYSOUT=*                                                  00394591
//SYSOUT   DD SYSOUT=*                                                  00394592
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZVPP0105),DISP=SHR                   00394593
//*                                                                     00394594
//*--------------------------------------------------------------------*00394600
//* PASO       : ZVPP0106.                                             *00394700
//* UTILERIA   : IKJEFT01 / ZM4CPP03.                                  *00394800
//* OBJETIVO   : GENERA REPORTE PARA DETERMINAR SI AL FINAL DEL DIA    *00394900
//*              EL CONTRATO-EMISORA-SERIE QUEDA EN CORTO               00395000
//*--------------------------------------------------------------------*00395100
//ZVPP0106 EXEC PGM=IKJEFT01,COND=(04,LT)                               00395200
//*                                                                     00395300
//ENTRADA  DD DSN=MXCP.ZM.FIX.ZMLCPA02.VCN.MOVPP.OPERA.ORD,DISP=SHR     00395400
//*                                                                     00395500
//SALIDA1  DD DSN=MXCP.ZM.FIX.ZMLCPA02.VCN.REPOPP.OPERA,                00395600
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00395700
//            DCB=(DSORG=PS,LRECL=131,RECFM=FB,BLKSIZE=0),              00395800
//            SPACE=(CYL,(100,50),RLSE)                                 00395900
//*                                                                     00396000
//SYSABOUT DD SYSOUT=*                                                  00396100
//SYSDBOUT DD SYSOUT=*                                                  00396200
//SYSOUT   DD SYSOUT=*                                                  00396300
//SYSPRINT DD SYSOUT=*                                                  00396400
//SYSTSPRT DD SYSOUT=*                                                  00396500
//SYSUDUMP DD DUMMY                                                     00396600
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVPP0106),DISP=SHR                   00396700
//*                                                                     00396800
