//ZMUENE01 PROC
//*--------------------------------------------------------------------*
//* PROCESO      : CBUENE01                                            *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : GENERA FACTURA PARA CFDI DE TIPO EGRESOS            *
//* FECHA        : MARZO 2018                                          *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-0.0.0-01  XMY2883 28AGO18  SE AGREGA PASO ZMUENE45 PARA CARGA DE*
//*                               UUID Y TOTALES DE EDC DEL MES        *
//* FS-0.0.0-02  M906542 28JUL22  SE MODIFICA LONGITUD DE SALIDA PARA  *
//*                               ARCHIVO DE EGRESO QUE SE ENVIA A MEDC*
//*--------------------------------------------------------------------*
//* PASO       : ZMUENE60                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO RA ORDENAR EL ARCHIVO DE SELLOS        *
//*              FISCALES POR NUMERO DE CUENTA                         *
//*--------------------------------------------------------------------*
//ZMUENE60 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.RESP.UUID,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.RESP.UUID.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=115,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMUENE60),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMUENE55                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA SORT DE CONTRATOS QUE VAN A GENERAR FACTURA   *
//*              DE EGRESOS                                            *
//*--------------------------------------------------------------------*
//ZMUENE55 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.ECBP.EGRESOS.FACTURA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.EDOSCTA.EGRESO.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=90,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(500,250),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMUENE55),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMUENE50                                              *
//* UTILERIA   : IKJEFT01(ZM4CBD05)                                    *
//* OBJETIVO   : GENERA ARCHIVO PIPE PARA FACTURA DE EGRESOS DE CASA   *
//*              BOLSA                                                 *
//*--------------------------------------------------------------------*
//ZMUENE50 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMUD04E1 DD DSN=MXCP.ZM.FIX.ECBP.EDOSCTA.EGRESO.SORT,DISP=SHR
//*
//ZMUD04E2 DD DSN=MXCP.ZM.FIX.ECBP.RESP.UUID.SORT,DISP=SHR
//*
//ZMUD04S1 DD DSN=MXCP.ZM.FIX.ECBP.FACTURA.EGRESO.PIPE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//*FS-0.0.0-02-I
//*           DCB=(RECFM=FB,LRECL=200,BLKSIZE=0)
//            DCB=(RECFM=FB,LRECL=450,BLKSIZE=0)
//*FS-0.0.0-02-F
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMUENE50),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMUENE45                                              *
//* UTILERIA   : IKJEFT01(ZM4CBD06)                                    *
//* OBJETIVO   : CARGA A LAS TABLAS ZMDT884 LOS UUID REGRESADOS POR    *
//*              MEDC Y A LA ZMDT885 LOS TOTALES POR CONCEPTO DE EDOS. *
//*              DE CUENTA PARA PROCESO DE EGRESOS.                    *
//*--------------------------------------------------------------------*
//ZMUENE45 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMCBD6E1 DD DSN=MXCP.ZM.FIX.ECT.ECBP.EDOSCTA.SALDOS.TOT,DISP=SHR
//*
//ZMCBD6E2 DD DSN=MXCP.ZM.FIX.ECBP.RESP.UUID.SORT,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMUENE61),DISP=SHR
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMUENE01                          *
//*--------------------------------------------------------------------*
//*
