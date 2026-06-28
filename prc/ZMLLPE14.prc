//ZMLLPE14 PROC
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPE14                                            *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  ARCHIVO PREVIO DE TRASPASO INDEVAL.                 *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*                                                                    *00003000
//********************************************************************* 00090000
//* PASO: PLL14P02                                                    * 00090000
//* RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO      * 00100000
//********************************************************************* 00110000
//PLL14P02 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00140000
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*                                                 00200000
//SYSOUT   DD  SYSOUT=*                                                 00210000
//SYSDBOUT DD  SYSOUT=*                                                 00220000
//SYSABOUT DD  SYSOUT=*                                                 00230000
//SYSUDUMP DD  SYSOUT=*                                                 00240000
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE14,              00260000
//             DISP=(NEW,CATLG,DELETE),                                 00270000
//             DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),              00280000
//             UNIT=3390,                                               00290000
//             SPACE=(CYL,(2,1),RLSE)                                   00300000
//*                                                                     00310000
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DLN96 (VOBN96D)                                      *
//* FUNCION:  PROGRAMA QUE GENERA ARCHIVO DE TRASPASOS INDEVAL.       *
//*                                                                   *
//*                                     (  PRODUCCION )               *
//*-------------------------------------------------------------------*
//*
//PLL14P01 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)
//ZMLN96A1 DD  DSN=MXCP.ZM.FIX.MDD.TRASIND.GOBFED,                      00240000
//             DISP=(NEW,CATLG,CATLG),
//             UNIT=3390,
//             SPACE=(CYL,(15,5),RLSE),
//             DCB=(DSORG=PS,RECFM=FB,LRECL=150,BLKSIZE=0)
//ZMLN96A2 DD  DSN=MXCP.ZM.FIX.MDD.TRASIND.BANCO,                       00240000
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(15,5),RLSE),
//             DCB=(DSORG=PS,RECFM=FB,LRECL=150,BLKSIZE=0)
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL14T01),
//             DISP=SHR
//SYSTSPRT DD  SYSOUT=*                                                 00230000
//SYSPRINT DD  SYSOUT=*                                                 00240000
//SYSOUT   DD  SYSOUT=*                                                 00250000
//SYSDBOUT DD  SYSOUT=*                                                 00270000
//SYSABOUT DD  SYSOUT=*                                                 00280000
//SYSUDUMP DD  SYSOUT=*                                                 00290000
//*                                                                     00310000
