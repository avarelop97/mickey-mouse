//ZMLLPZ02 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPZ02-SIVAXESP (OPC. 787ZR2)                     *00003000
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
//*   IMPRIMIR OPERACIONES DE COMPRA/VTA DE MERCADO DE DINERO.         *00060000
//*                                                         ZM4DLH78   *00060000
//*--------------------------------------------------------------------*00003000
//PLL02P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//PI601765 DD DUMMY
//*
//ZMLH78R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00240000
//*
//ZMLH78A1 DD DSN=SIVA.MDD.FIX.EMP.SUC.ESPEC.CB,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=101,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(8,4),RLSE)
//*
//ZMLH78A2 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE02,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL02T01),DISP=SHR
//*                                                                     00310000
//**********************************************************************00003000
//*                TERMINA PROCESO  Z M L L P Z 0 2                    *
//**********************************************************************00003000
