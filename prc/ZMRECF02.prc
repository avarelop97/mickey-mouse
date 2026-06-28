//ZMRECF02 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                    << MERCADO DE CAPITALES >>                      *
//*                                                                    *
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL   *
//*                                                                    *
//*   JCL              :  ZMRECF02                                     *
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
//* PASO     :  PRECF290                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  CONSOLIDA LA INFORMACION DE LOS 6 ARCHIVOS DE RESPUESTA*
//*             QUE SE RECIBEN DE BANCA                                *
//*--------------------------------------------------------------------*
//PRECF250 EXEC PGM=ICEMAN
//*
//SORTIN   DD DISP=SHR,DSN=MXCP.ZM.FIX.PATRSI.RET.UUID.MEDC
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.PATRNO.RET.UUID.MEDC
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.PRIVSI.RET.UUID.MEDC
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.PRIVNO.RET.UUID.MEDC
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.UHNSI.RET.UUID.MEDC
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.UHNNO.RET.UUID.MEDC
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.RESP.UUID.RETIM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=118,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNE1145),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO     :  PRECF240                                               *
//* PROGRAMA :  IKJEFT01/ZM4MU549                                      *
//* OBJETIVO :  ACTUALIZA FOLIO UUID Y GENERA ARCHIVO DE DATOS PARA LA *
//*             FACTRURA DE EGRESOS EN CASO DE APLICAR                 *
//*--------------------------------------------------------------------*
//PRECF240 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD05E1 DD DSN=MXCP.ZM.FIX.EBCM.RESP.UUID.RETIM,DISP=SHR
//*
//ZMUD05S1 DD DSN=MXCP.ZM.FIX.REC.EBCM.EGRESOS.RETIM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=95,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCREC03),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO     :  PRECF230                                               *
//* PROGRAMA :  IKJEFT01/ZM4MU550                                      *
//* OBJETIVO :  GENERA ARCHIVO PIPE PARA FACTURA DE EGRESOS REPROCESADO*
//*             DE BANCA PATRIMONIAL                                   *
//*--------------------------------------------------------------------*
//PRECF230 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD04E1 DD DSN=MXCP.ZM.FIX.REC.EBCM.EGRESOS.RETIM,DISP=SHR
//*
//ZMUD04S1 DD DSN=MXCP.ZM.FIX.EBCM.EGRESO.RETIMEDC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=350,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCREC06),DISP=SHR                   00710000
//*
