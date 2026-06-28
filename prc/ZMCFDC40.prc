//ZMCFDC40 PROC
//*--------------------------------------------------------------------*
//* PERIODICIDAD : A PETICION                                          *
//* OBJETIVO     : GENERA ARCHVIVO DE CANCELACION DE FOLIOS FISCALES   *
//*                SE SUBMITE DESDE LA OPCION 464                      *
//* FECHA        : JULIO 2019                                          *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDC4003                                               *
//*   OBJETIVO: ORDENA ARCHIVO DE CONTRATOS A CANCELAR                 *
//*--------------------------------------------------------------------*
//ZMDC4003 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECBP.CANCELA.MASIVA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECBP.CANCELA.MASIVA.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=20,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDC4003),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDC4001                                               *
//*   OBJETIVO: EN CASO DE CANCELACIONES MASIVAS SOLO SE TOMARAN LOS   *
//*             CONTRATOS QUE SE INDIQUEN                              *
//*                     -- ZM4CFD06 --                                 *
//*--------------------------------------------------------------------*
//ZMDC4002 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA2 DD DSN=MXCP.ZM.FIX.ECBP.CANCELA.MASIVA.SORT,
//            DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.ZMDT884.CANCELA.FIN,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=14,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC4002),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDC4000                                               *
//*   OBJETIVO: GENERA ARCHIVO DE CANCELACION DE FOLIOS FISCALES       *
//*                     -- ZM4CFD02 --                                 *
//*--------------------------------------------------------------------*
//ZMDC4001 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.ZMDT884.CANCELA.FIN,
//            DISP=SHR
//*
//EGRESO   DD DSN=MXCP.ZM.FIX.ECBP.CANCELA.EGRESO.PREV,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC4001),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDC4000                                               *
//*   OBJETIVO: QUITA LOS ESPACIOS A ARCHIVO DE CANCELACION            *
//*                     -- ZM3CAN01 --                                 *
//*--------------------------------------------------------------------*
//ZMDC4000 EXEC PGM=ZM3CAN01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.ECBP.CANCELA.EGRESO.PREV,
//            DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.ECBP.CANCELA.EGRESO,
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
