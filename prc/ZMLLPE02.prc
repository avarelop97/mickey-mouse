//ZMLLPE02 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPE02-SIVAXESP                                   *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  REPORTE DE OPERACIONES ESPECIALES DE MDD.           *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*                                                                    *00003000
//********************************************************************* 00040000
//*   OBJETIVO: GENERAR REPORTE DE OPERACIONES ESPECIALES MDD           00050000
//*   AREA    : MERCADO DE DINERO                                       00050000
//*--------------------------------------------------------------------*00003000
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO    *
//*--------------------------------------------------------------------*00003000
//PLL02P02 EXEC PGM=ZM3DG001
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*--------------------------------------------------------------------*00003000
//*   IMPRIMIR OPERACIONES DE COMPRA/VTA DE MERCADO DE DINERO.         *00060000
//*                                                         ZM4DLH78   *00060000
//*--------------------------------------------------------------------*00003000
//PLL02P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//PI601765 DD DUMMY
//*
//ZMLH78R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00240000
//*
//ZMLH78A1 DD DSN=SIVA.MDD.FIX.E&EMP..S&SUC..ESPEC.CB,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=101,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(8,4),RLSE)
//*
//ZMLH78A2 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE02,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL02T01),DISP=SHR
//*                                                                     00310000
//*--------------------------------------------------------------------*00003000
//* PASO: PLL02P00                                                     *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D      *
//*--------------------------------------------------------------------*00003000
//PLL02P00 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND SIVAXESP_IN_SEP_OK WDATE'
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*--------------------------------------------------------------------*00003000
//*           F  I  N     Z  M  L  L  P  E  0  2                       *
//*--------------------------------------------------------------------*00003000
