//ZMRCBF03 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                    << MERCADO DE CAPITALES >>                      *
//*                                                                    *
//*   APLICACION       :   MODULO UNICO DE VALORES CASA DE BOLSA       *
//*                                                                    *
//*   JCL              :  ZMRCBF03                                     *
//*                                                                    *
//*   OBJETIVO         :  ACTUALIZAR FOLIO UUID EN ZMDT884 Y VALIDAR   *
//*                       SI EL CONTRATO PROCESADO GENERA FACTURA DE   *
//*                       EGRESOS PARA GENERAR EL ARCHIVO CORRESPONDI- *
//*                       ENTE.                                        *
//*                                                                    *
//*   CORRE DESPUES DE :  HORARIO, 21:00 HRS                           *
//*                                                                    *
//*   ELABORADO POR    :  HGM                                          *
//**********************************************************************
//*--------------------------------------------------------------------*
//* PASO     :  PRECF290                                               *
//* PROGRAMA :  IKJEFT01/ZM4CBD11                                      *
//* OBJETIVO :  ACTUALIZA FOLIO UUID CORRESPONDIENTE A LAS FACTURAS DE *
//*             EGRESOS REPROCESADAS - BANCA PATRIMONIAL               *
//*--------------------------------------------------------------------*
//PRECF390 EXEC PGM=IKJEFT01
//*
//ZMCB11E1 DD DSN=MXCP.ZM.FIX.CBP.EGRE.RETIM.FISCA,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCCBC06),DISP=SHR                   00710000
//*
