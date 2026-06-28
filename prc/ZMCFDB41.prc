//ZMCFDB41 PROC
//*--------------------------------------------------------------------*
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : VALIDA RESPUESTA DEL ARCHIVO DE CONFIRMACION DE     *
//*                LA CANCELACION DE FOLIOS FISCALES (EGRESOS)         *
//* FECHA        : JULIO 2019                                          *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDB4103                                               *
//*   OBJETIVO: FILTRA LOS REGISTROS QUE SE CANCELARON CORRESPONDIENTES*
//*             A EGRESOS                                              *
//*--------------------------------------------------------------------*
//ZMDB4103 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.ZMDT884.CANCELA.FIN,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.ZMDT884.INGRESO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=14,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDB4103),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDB4102                                               *
//*   OBJETIVO: VALIDA ARCHIVO DE CONFIRMACION DE CANCELACION DE       *
//*             FOLIOS FISCALES (EGRESOS)                              *
//*                     -- ZM4CFD03 --                                 *
//*--------------------------------------------------------------------*
//ZMDB4102 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//CONFIRM  DD DSN=MXCP.ZM.FIX.EBCM.CONFIRM.EGRESO,
//            DISP=SHR
//*
//RECHAZA  DD DSN=MXCP.ZM.FIX.EBCM.RECHAZA.EGRESO,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDB4102),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDB410C                                               *
//*   OBJETIVO: ORDENA ARCHIVO DE EGRESOS RECHAZADOS                   *
//*--------------------------------------------------------------------*
//ZMDB410C EXEC PGM=ICEMAN,COND=(04,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.RECHAZA.EGRESO,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.RECHAZA.EGRESO.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=7,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDB410C),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDB4101                                               *
//*   OBJETIVO: MATCH ENTRE ARCHIVO DE FOLIOS RECHAZADOS CONTRA ARCHIVO*
//*             DE CANCELACION DE INGRESOS, PARA QUE NO ENVIEN A MEDC  *
//*                     -- ZM4CFD04 --                                 *
//*--------------------------------------------------------------------*
//ZMDB4101 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//RECHAZA  DD DSN=MXCP.ZM.FIX.EBCM.RECHAZA.EGRESO.SORT,
//            DISP=SHR
//*
//INGRESO  DD DSN=MXCP.ZM.FIX.EBCM.ZMDT884.INGRESO,
//            DISP=SHR
//*
//SALIDAF  DD DSN=MXCP.ZM.FIX.EBCM.CANCELA.FINAL.PREV,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDB4101),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDB4101                                               *
//*   OBJETIVO: QUITA ESPACIOS A ARCHIVO DE CANCELACION                *
//*                     -- ZM4CFD04 --                                 *
//*--------------------------------------------------------------------*
//ZMDB4101 EXEC PGM=ZM3CAN01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBCM.CANCELA.FINAL.PREV,
//            DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBCM.CANCELA.FINAL,
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
