//ZMLLPZ01 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPZ01-SIVAXCTO (OPC. 787ZR1)                     *00003000
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
//*   GENERA REPORTE DE MOVIMIENTOS DE CONTRATOS OPERATIVOS POR EMPRESA*00050000
//*   AREA: MERCADO DE DINERO                                          *00050000
//**********************************************************************00060000
//**********************************************************************00006000
//* INI JLJH SEP/2021 NO SE BORRA CDAM HGO 24493  MDINE
//**********************************************************************00006000
//*
//PLL01P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//*ZMLM26R1  DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                   00240000
//ZMLM26R1  DD DUMMY                                                    00240000
//ZMLM26A1  DD DSN=SIVA.MDD.FIX.EMP.SUC.CONOPERT,
//           DISP=(NEW,CATLG,CATLG),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=132,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(8,4),RLSE)
//*
//ZMLM26P1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE01,
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
//****************************************************************
//*        TERMINA PROCESO  Z M L L P Z 0 1                      *
//****************************************************************
