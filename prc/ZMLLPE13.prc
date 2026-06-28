//ZMLLPE13 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPE13-SIVAXPCC                                   *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  PROGRAMA QUE GENERA REPORTE DE INTERESES POR CORTE  *00003000
//*                DE  CUPON                                           *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*                                                                    *00003000
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//* PLL13P02      EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PLL13P02 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//PI601765  DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE13,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     GENERA REPORTE DE INTERESES POR CORTE DE CUPON GENE- *00030000
//*  PLL13P01     RANDO ADEMAS UN ARCHIVO SECUENCIAL DE SALIDA.        *00040000
//*                                                          ZM4DLN97  *00020000
//**********************************************************************00060000
//PLL13P01 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M                      00070000
//PI601765  DD DUMMY
//*                                                                     00240000
//ZMLN97A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE13,DISP=SHR       00240000
//*
//ZMLN97R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00240000
//*
//ZMLN97S1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..PREVCCUP,                      00240000
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=080,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL13T01),DISP=SHR                   00300000
//*                                                                     00310000
//*****************************************************************
//* PASO: PLL13P00                                                *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *
//*****************************************************************
//PLL13P00 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND SIVAXPCC_IN_SEP_OK WDATE'
//*
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRTDBG   DD SYSOUT=*
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
