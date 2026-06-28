//ZMLLPE05 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPE05-SIVAXPDI                                   *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  PRECIOS DE EMISORAS DE MDD.                         *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*
//**********************************************************************00003000
//* OBJETIVO: RECIBE PARAMETROS DE LINEA
//* AREA    : MERCADO DE DINERO
//**********************************************************************00003000
//PLL05P02 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE05,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//********************************************************************* 00040000
//* OBJETIVO: GENERA REPORTE DE PRECIOS DE EMISORAS MDD                 00050000
//* AREA    : MERCADO DE DINERO
//********************************************************************* 00060000
//PLL05P01 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M                      00070000
//PI601765 DD DUMMY
//*                                                                     00240000
//ZMG330P1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE05,DISP=SHR       00240000
//*
//ZMG330R1 DD DSN=SIVA.MDD.FIX.PRECIOS.DIN,DISP=(NEW,CATLG,DELETE),     00240000
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=193,DSORG=PS),UNIT=3390
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL05T01),DISP=SHR
//*                                                                     00310000
