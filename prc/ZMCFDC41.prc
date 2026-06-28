//ZMCFDC41 PROC
//*--------------------------------------------------------------------*
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : VALIDA RESPUESTA DEL ARCHIVO DE CONFIRMACION DE     *
//*                LA CANCELACION DE FOLIOS FISCALES (EGRESOS)         *
//* FECHA        : JULIO 2019                                          *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDC4103                                               *
//*   OBJETIVO: FILTRA LOS REGISTROS QUE SE CANCELARON CORRESPONDIENTES*
//*             A EGRESOS                                              *
//*--------------------------------------------------------------------*
//ZMDC4103 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.ZMDT884.CANCELA.FIN,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.ZMDT884.INGRESO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=14,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDC4103),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDC4102                                               *
//*   OBJETIVO: VALIDA ARCHIVO DE CONFIRMACION DE CANCELACION DE       *
//*             FOLIOS FISCALES (EGRESOS)                              *
//*                     -- ZM4CFD03 --                                 *
//*--------------------------------------------------------------------*
//ZMDC4102 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//CONFIRM  DD DSN=MXCP.ZM.FIX.ECBP.CONFIRM.EGRESO,
//            DISP=SHR
//*
//RECHAZA  DD DSN=MXCP.ZM.FIX.ECBP.RECHAZA.EGRESO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=21,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC4102),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDC410C                                               *
//*   OBJETIVO: ORDENA ARCHIVO DE EGRESOS RECHAZADOS                   *
//*--------------------------------------------------------------------*
//ZMDC410C EXEC PGM=ICEMAN,COND=(04,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.RECHAZA.EGRESO,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.RECHAZA.EGRESO.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=7,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDC410C),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDC4101                                               *
//*   OBJETIVO: MATCH ENTRE ARCHIVO DE FOLIOS RECHAZADOS CONTRA ARCHIVO*
//*             DE CANCELACION DE INGRESOS, PARA QUE NO ENVIEN A MEDC  *
//*                     -- ZM4CFD04 --                                 *
//*--------------------------------------------------------------------*
//ZMDC4101 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//RECHAZA  DD DSN=MXCP.ZM.FIX.ECBP.RECHAZA.EGRESO.SORT,
//            DISP=SHR
//*
//INGRESO  DD DSN=MXCP.ZM.FIX.ECBP.ZMDT884.INGRESO,
//            DISP=SHR
//*
//SALIDAF  DD DSN=MXCP.ZM.FIX.ECBP.CANCELA.FINAL.PREV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=182,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC4101),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDC4100                                               *
//*   OBJETIVO: QUITA ESPACIOS A ARCHIVO DE CANCELACION                *
//*                     -- ZM3CAN01 --                                 *
//*--------------------------------------------------------------------*
//ZMDC4100 EXEC PGM=ZM3CAN01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.CANCELA.FINAL.PREV,
//            DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.CANCELA.FINAL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=143,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
