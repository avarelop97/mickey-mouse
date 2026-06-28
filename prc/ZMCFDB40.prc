//ZMCFDB40 PROC
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
//*   PASO    : ZMDB4003                                               *
//*   OBJETIVO: ORDENA ARCHIVO DE CONTRATOS A CANCELAR                 *
//*--------------------------------------------------------------------*
//ZMDB4003 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.CANCELA.MASIVA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.CANCELA.MASIVA.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=21,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDB4003),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDB400A                                               *
//*   OBJETIVO: OBTIENE CONTRATO DE 7 POSICIONES PARA CUENTAS BPIGO    *
//*                     -- ZM4CFD06 --                                 *
//*--------------------------------------------------------------------*
//ZMDB400A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBCM.CANCELA.MASIVA.SORT,
//             DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBCM.CANCELA.MASIVA.BPIGO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=20,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDB400A),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDB4001                                               *
//*   OBJETIVO: GUARDA DATOS EN ZMDTLOG E IDENTIFICA SI HAY EGRESOS A  *
//*             CANCELAR                                               *
//*                     -- ZM4CFD06 --                                 *
//*--------------------------------------------------------------------*
//ZMDB4002 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA2 DD DSN=MXCP.ZM.FIX.EBCM.CANCELA.MASIVA.BPIGO,
//             DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBCM.ZMDT884.CANCELA.FIN,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDB4002),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDB4000                                               *
//*   OBJETIVO: GENERA ARCHIVO DE CANCELACION DE FOLIOS FISCALES DE    *
//*             EGRESOS                                                *
//*                     -- ZM4CFD02 --                                 *
//*--------------------------------------------------------------------*
//ZMDB4001 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBCM.ZMDT884.CANCELA.FIN,
//            DISP=SHR
//*
//EGRESO   DD DSN=MXCP.ZM.FIX.EBCM.CANCELA.EGRESO.PREV,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDB4001),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDB4000                                               *
//*   OBJETIVO: QUITA ESPACIOS A ARCHIVO DE CANCELACION                *
//*                     -- ZM3CAN01 --                                 *
//*--------------------------------------------------------------------*
//ZMDB4000 EXEC PGM=ZM3CAN01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.EBCM.CANCELA.EGRESO.PREV,
//            DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBCM.CANCELA.EGRESO,
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
