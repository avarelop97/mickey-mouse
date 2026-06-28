//ZMUEPDF1 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>> FONDOS DE INVERSION <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPDF1                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERA ARCHIVO CON INFORMACION DE LOS FONDOS DE     *
//*                INVERSION PARA EL PROMOTOR 130 CON CR 48103.        *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO Y MENSUAL                              *
//*                                                                    *
//*   REALIZO: CDA                                                     *
//*                                                                    *
//*   FECHA: SEPTIEMBRE 2015                                           *
//**********************************************************************
//*
//**********************************************************************
//* ZMUEPM01           -- ZM4DJF01  --
//*  GENERA ARCHIVO CON INFORMACION DE LOS FONDOS DE
//*  INVERSION PARA EL PROMOTOR 130 CON CR 48103.
//*  UTILIZA LAS TABLAS EDMOVED Y EDCUENTA SOLO PARA CBP.
//**********************************************************************
//PUEDFP01 EXEC PGM=IKJEFT01
//PI601765 DD DUMMY
//S1DJF001 DD DSN=MXCP.ZM.FIX.REPORTE.DIARIO.FDSI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=256,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,10),RLSE)
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUEDFT01),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPDF1 SIVA MULTIEMPRESA                  *
//**********************************************************************
