//ZMLLPZ05 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPZ05-SIVAXPDI (OPC. 787ZR5)                     *00003000
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
//*                                                                    *
//**********************************************************************00040000
//* OBJETIVO: GENERA REPORTE DE PRECIOS DE EMISORAS MDD                *00050000
//* AREA    : MERCADO DE DINERO                                        *
//**********************************************************************00060000
//PLL05P01 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M                      00070000
//PI601765 DD DUMMY
//*                                                                     00240000
//ZMG330P1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE05,DISP=SHR             00240000
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
//*********************************************************************
//*              TERMINA PROCESO   Z M L L P Z 0 5                    *
//*********************************************************************
