//ZMUENE11 PROC
//*--------------------------------------------------------------------*
//* PROCESO      : BCUENE01                                            *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : GENERA FACTURA PARA CFDI DE TIPO EGRESOS            *
//* FECHA        : MARZO 2018                                          *
//*                                                                    *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-01  XMY2883 28AGO18  SE AGREGAN LOS PASOS ZMNE1130 Y      *
//*                               ZMNE1125 PARA REALIZAR LA CARGA DE   *
//*                               UUID Y TOTALES DE LOS EDC DEL MES    *
//*--------------------------------------------------------------------*
//* FS-0.0.0-02  M906542 16AGO22  SE MODIFICA LONGITUD DE SALIDA PARA  *
//*                               EL ARCHIVO DE EGRESO                 *
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1145                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  CONSOLIDA LA INFORMACION DE LOS 6 ARCHIVOS DE RESPUESTA*
//*             QUE SE RECIBEN DE BANCA                                *
//*--------------------------------------------------------------------*
//ZMNE1145 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DISP=SHR,DSN=MXCP.ZM.FIX.EBCM.BPATR.SIIMP.RESP.UUID
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.EBCM.BPATR.NOIMP.RESP.UUID
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.EBCM.BPRIV.SIIMP.RESP.UUID
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.EBCM.BPRIV.NOIMP.RESP.UUID
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.EBCM.BUHN.SIIMP.RESP.UUID
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.EBCM.BUHN.NOIMP.RESP.UUID
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.RESP.UUID.TOTAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=118,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNE1145),DISP=SHR                   00710000
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1140                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  CONSOLIDA ARCHIVO CON CONTRATOS QUE VAN A GENERAR      *
//*             FACTURA DE EGRESOS PARA BANCA                          *
//*--------------------------------------------------------------------*
//ZMNE1140 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DISP=SHR,DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.EGRESOS.PIPES
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.EGRESOS.PIPES
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.EGRESOS.PIPES
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.EGRESOS.TOTAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=95,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNE1140),DISP=SHR                   00710000
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1135                                               *
//* PROGRAMA :  IKJEFT01/ZM4MU528                                      *
//* OBJETIVO :  GENERA ARCHIVO PIPE PARA FACTURA DE EGRESOS DE BANCA   *
//*             PATRIMONIAL                                            *
//*--------------------------------------------------------------------*
//ZMNE1135 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMUD04E1 DD DSN=MXCP.ZM.FIX.REC.EBCM.EGRESOS.TOTAL,DISP=SHR
//*
//ZMUD04E2 DD DSN=MXCP.ZM.FIX.EBCM.RESP.UUID.TOTAL,DISP=SHR
//*
//ZMUD04S1 DD DSN=MXCP.ZM.FIX.EBCM.FACTURA.EGRESO.PIPE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//*FS-0.0.0-02-I
//*           RECFM=FB,LRECL=200,BLKSIZE=0
//            DCB=(DSORG=PS,LRECL=450,RECFM=FB,BLKSIZE=0)
//*FS-0.0.0-02-F
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNE1135),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1130                                               *
//* PROGRAMA :  ICEMAN                                                 *
//* OBJETIVO :  CONSOLIDA ARCHIVO CON CONTRATOS QUE VAN A GENERAR      *
//*             FACTURA DE EGRESOS PARA BANCA                          *
//*--------------------------------------------------------------------*
//ZMNE1130 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DISP=SHR,DSN=MXCP.ZM.FIX.REC.EBCM.BPATR.TOTALES.PIPES
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.REC.EBCM.BPRIV.TOTALES.PIPES
//         DD DISP=SHR,DSN=MXCP.ZM.FIX.REC.EBCM.BUHN.TOTALES.PIPES
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REC.EBCM.COMIS.TOTAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=66,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNE1148),DISP=SHR                   00710000
//*--------------------------------------------------------------------*
//* PASO     :  ZMNE1125                                               *
//* PROGRAMA :  IKJEFT01/ZM4MU545                                      *
//* OBJETIVO :  CARGA EN LA ZMDT884 LOS UUID DE LOS ESTADOS DE CUENTA  *
//*             Y EN LA ZMDT885 LOS TOTALES DE LAS COMISIONES EN BANCA.*
//*--------------------------------------------------------------------*
//ZMNE1125 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMMU45E1 DD DSN=MXCP.ZM.FIX.REC.EBCM.COMIS.TOTAL,DISP=SHR
//*
//ZMMU45E2 DD DSN=MXCP.ZM.FIX.EBCM.RESP.UUID.TOTAL,DISP=SHR
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNE1146),DISP=SHR                   00710000
//*
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMUENE11                          *
//*--------------------------------------------------------------------*
