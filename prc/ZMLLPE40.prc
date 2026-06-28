//ZMLLPE40 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPE40-SIVAXMIG                                   *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  REPORTE DE MOVIMIENTOS DE LA MIGRACION              *00003000
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
//PLL40P03 EXEC PGM=ZM3DG001,
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
//*   GENERA REPORTE DE MOVIMIENTOS DE LA MIGRACION ANTES               00050000
//********************************************************************* 00060000
//*
//PLL40P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//ZMLX10R1 DD SYSOUT=*                                                  00240000
//ZMLX10R2 DD SYSOUT=*                                                  00240000
//ZMLX10R3 DD SYSOUT=*                                                  00240000
//ZMLX10R4 DD SYSOUT=*                                                  00240000
//ZMLX10R5 DD SYSOUT=*                                                  00240000
//ZMLX10R6 DD SYSOUT=*                                                  00240000
//ZMLX10R7 DD SYSOUT=*                                                  00240000
//ZMLX10R8 DD SYSOUT=*                                                  00240000
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//SYSDBOUT DD SYSOUT=X                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL40T02),DISP=SHR                   00300000
//*                                                                     00310000
//********************************************************************* 00040000
//*   GENERA REPORTE DE MOVIMIENTOS DE LA MIGRACION DESPUES             00050000
//********************************************************************* 00060000
//*
//PLL40P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//ZMLX09R1 DD SYSOUT=*                                                  00240000
//ZMLX09R2 DD SYSOUT=*                                                  00240000
//ZMLX09R3 DD SYSOUT=*                                                  00240000
//ZMLX09R4 DD SYSOUT=*                                                  00240000
//ZMLX09R5 DD SYSOUT=*                                                  00240000
//ZMLX09R6 DD SYSOUT=*                                                  00240000
//ZMLX09R7 DD SYSOUT=*                                                  00240000
//ZMLX09R8 DD SYSOUT=*                                                  00240000
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//SYSDBOUT DD SYSOUT=X                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL40T01),DISP=SHR                   00300000
//*                                                                     00310000
//*****************************************************************
//* PASO: PLL40P00                                                *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *
//*****************************************************************
//PLL40P00 EXEC PGM=CTMCND,COND=(4,LT),
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
