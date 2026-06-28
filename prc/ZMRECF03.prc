//ZMRECF03 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                    << MERCADO DE CAPITALES >>                      *
//*                                                                    *
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL   *
//*                                                                    *
//*   JCL              :  ZMRECF03                                     *
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
//* PROGRAMA :  IKJEFT01/ZM4MU551                                      *
//* OBJETIVO :  ACTUALIZA FOLIO UUID CORRESPONDIENTE A LAS FACTURAS DE *
//*             EGRESOS REPROCESADAS - BANCA PATRIMONIAL               *
//*--------------------------------------------------------------------*
//PRECF290 EXEC PGM=IKJEFT01
//*
//ZMMU51E1 DD DSN=MXCP.ZM.FIX.BCM.EGRE.RETIM.FISCA,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCREC07),DISP=SHR                   00710000
//*
