//ZMLLPE01 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPE01-SIVAXCTO                                   *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  REPORTE DE MOVIMIENTOS DEL CTO 9966235              *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*                                                                    *00003000
//*********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*********************************************************************
//*
//PLL01P02 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE01,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//********************************************************************* 00040000
//*   GENERA REPORTE DE MOVIMIENTOS DE CONTRATOS OPERATIVOS POR EMPRESA 00050000
//*   AREA: MERCADO DE DINERO                                           00050000
//********************************************************************* 00060000
//*
//PLL01P01 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M                      00070000
//ZMLM26R1  DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                    00240000
//ZMLM26A1  DD DSN=SIVA.MDD.FIX.E&EMP..S&SUC..CONOPERT,
//           DISP=(NEW,CATLG,CATLG),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=132,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(8,4),RLSE)
//*
//ZMLM26P1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE01,
//         DISP=(OLD,KEEP,KEEP)
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//SYSDBOUT DD SYSOUT=X                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL01T01),DISP=SHR                   00300000
//*                                                                     00310000
//*****************************************************************
//* PASO: PLL01P00                                                *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *
//*****************************************************************
//PLL01P00 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND MOVSMDD_IN_SEP_OK WDATE'
//STEPLIB  DD DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD,DISP=SHR
//DALOG    DD DSN=SYS3.IOAD.SYSZBBV.DATA.LOG,DISP=SHR
//DARESF   DD DSN=SYS3.IOAD.SYSZBBV.DATA.NRS,DISP=SHR
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//PRTDBG   DD SYSOUT=Z
//DAPRINT  DD SYSOUT=Z
//DACNDIN  DD DDNAME=SYSIN
