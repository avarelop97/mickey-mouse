//ZMUEPM37 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM37                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERAR REPORTE DE CON LAS CUENTAS DE LA TABLA PARAM*
//*                                                                    *
//*   CORRE ANTES DE  :  FIN DE MES (2 DIAS ANTES)                     *
//*                                                                    *
//*   CORRE DESPUES DE:  18:00 HORAS                                   *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   JULIO   2011                                                     *
//**********************************************************************
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*
//**********************************************************************
//**********************************************************************
//* PASO     : PUE37P03                                                *
//* PGM/UTIL : IKJEFT01 (ZM4CBD01)                                     *
//* OBJETIVO : GENERA ARCHIVO ESTADOS DE CUENTA PARA SU DIGITALIZACION *
//**********************************************************************
//PUE37P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECT.ECBP.PARAM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=43,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMECBD0X),DISP=SHR
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM37 SIVA MULTIEMPRESA                  *
//**********************************************************************
