//ZMRCBF02 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                    << MERCADO DE CAPITALES >>                      *
//*                                                                    *
//*   APLICACION       :  CASA DE BOLSA                                *
//*                                                                    *
//*   JCL              :  ZMRCBF02                                     *
//*                                                                    *
//*   OBJETIVO         :  ACTUALIZAR FOLIO UUID EN ZMDT884 Y VALIDAR   *
//*                       SI EL CONTRATO PROCESADO GENERA FACTURA DE   *
//*                       EGRESOS PARA GENERAR EL ARCHIVO CORRESPONDI- *
//*                       ENTE.                                        *
//*                                                                    *
//*   CORRE DESPUES DE :  HORARIO, 21:00 HRS                           *
//*                                                                    *
//*   ELABORADO POR    :  XMY2883                                      *
//**********************************************************************
//*--------------------------------------------------------------------*
//* PASO     :  PRECB250                                               *
//* PROGRAMA :  IKJEFT01/ZM4CBD09                                      *
//* OBJETIVO :  ACTUALIZA FOLIO UUID Y GENERA ARCHIVO DE DATOS PARA LA *
//*             FACTRURA DE EGRESOS EN CASO DE APLICAR                 *
//*--------------------------------------------------------------------*
//PRECB250 EXEC PGM=IKJEFT01
//*
//ZMCD09E1 DD DSN=MXCP.ZM.FIX.CBP.RET.UUID.MEDC,DISP=SHR
//*
//ZMCD09S1 DD DSN=MXCP.ZM.FIX.REC.ECBP.EGRESOS.RETIM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=95,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCCBC03),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO     :  PRECB240                                               *
//* PROGRAMA :  IKJEFT01/ZM4CBD10                                      *
//* OBJETIVO :  GENERA ARCHIVO PIPE PARA FACTURA DE EGRESOS REPROCESADO*
//*             DE CASA DE BOLSA                                       *
//*--------------------------------------------------------------------*
//PRECB240 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMUD10E1 DD DSN=MXCP.ZM.FIX.REC.ECBP.EGRESOS.RETIM,DISP=SHR
//*
//ZMUD10S1 DD DSN=MXCP.ZM.FIX.ECBP.EGRESO.RETIMEDC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=330,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCCBC04),DISP=SHR                   00710000
//*
