//ZMCFDB52 PROC
//*--------------------------------------------------------------------*
//* OBJETIVO  : REALIZA MATCH EN ARCHIVO DE SELLOS VS DE SUSTITUCION   *
//*             PARA GENERAR REPORTE PARA ENTREGAR A NEGOCIO           *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDC4003                                               *
//*   OBJETIVO: ORDENA ARCHIVO DE SUSTITUCION POR UUID                 *
//*--------------------------------------------------------------------*
//ZMDC5203 EXEC PGM=ICEMAN
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.CONSRFC.SUSTITU,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.CONSRFC.SUSTITU.ORD,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDC5203),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDC5202                                               *
//*   OBJETIVO: ORDENA ARCHIVO DE SELLOS POR UUID                      *
//*--------------------------------------------------------------------*
//ZMDC5202 EXEC PGM=ICEMAN,COND=(04,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.EBCM.ZMDTCFI.SELLOS,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.EBCM.ZMDTCFI.SELLOS.ORD,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=62,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMDC5202),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMDC5201                                               *
//*   OBJETIVO: REALIZA MATCH ENTRE ARCHIVO DE SUSTITUCION Y SELLOS    *
//*             FISCALES PARA AGREGAR CONTRATO Y TITULAR               *
//*--------------------------------------------------------------------*
//ZMDC5201 EXEC PGM=ZM3CFI60,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.EBCM.CONSRFC.SUSTITU.ORD,
//            DISP=SHR
//*
//ENTRADA2 DD DSN=MXCP.ZM.FIX.EBCM.ZMDTCFI.SELLOS.ORD,
//            DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.EBCM.ZMCFDC52.SUSTITU.FIN,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
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
