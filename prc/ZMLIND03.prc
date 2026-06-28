//ZMLIND03 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM.                                                 *
//* PROCESO      : ZMLIND03.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : PROCESO DE DEPURACION DE MOVIMIENTOS PENDIENTES     *
//* REALIZO      : INDRA                                               *
//* FECHA        : 19 DE SEPTIEMBRE DE 2023.                           *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: IDCAMS.                                                  *
//* OBJETIVO: VERIFICA ARCHIVO PENDIENTES RRHHMUV EXISTA               *
//*--------------------------------------------------------------------*
//PZMD0399 EXEC PGM=IDCAMS
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMD03T01),DISP=SHR
//*
// IF PZMD0399.RC > 0 THEN
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: IEFBR14.                                                 *
//* OBJETIVO: GENERA ARCHIVO VACIO PENDIENTES RRHHMUV                  *
//*------------------------- ------------------------------------------*
//PZMD0398 EXEC PGM=IEFBR14
//*
//CREARCRH DD DSN=MXCP.ZM.FIX.RRHHMUV.PENDAPLI.MUV,
//            DISP=(MOD,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=555,BLKSIZE=0)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
// ENDIF
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: IDCAMS.                                                  *
//* OBJETIVO: VERIFICA QUE EL ARCHIVO PENDIENTES RACF EXISTA           *
//*--------------------------------------------------------------------*
//PZMD0397 EXEC PGM=IDCAMS,COND=(04,LT)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMD03T02),DISP=SHR
//*
// IF PZMD0397.RC > 0 THEN
//*--------------------------------------------------------------------*
//* PROGRAMA: IEFBR14.                                                 *
//* OBJETIVO: GENERA ARCHIVO VACIO PENDIENTES RACF                     *
//*------------------------- ------------------------------------------*
//PZMD0396 EXEC PGM=IEFBR14
//*
//CREARCRH DD DSN=MXCP.ZM.FIX.C07.PENDAPLI.ABM.MUV,
//            DISP=(MOD,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=185,BLKSIZE=0)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
// ENDIF
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: IDCAMS.                                                  *
//* OBJETIVO: VERIFICA EXISTA ARCHIVO BAJAS PENDIENTES MARKETING       *
//*--------------------------------------------------------------------*
//PZMD0395 EXEC PGM=IDCAMS,COND=(04,LT)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMD03T03),DISP=SHR
//*
// IF PZMD0395.RC > 0 THEN
//*--------------------------------------------------------------------*
//* PROGRAMA: IEFBR14.                                                 *
//* OBJETIVO: GENERA ARCHIVO VACIO DE BAJAS PENDIENTES MARKETING       *
//*------------------------- ------------------------------------------*
//PZMD0394 EXEC PGM=IEFBR14
//*
//CREARCRH DD DSN=MXCP.ZM.FIX.BAJCAMB.PENDAPLI.MUV,
//            DISP=(MOD,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=114,BLKSIZE=0)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
// ENDIF
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: IDCAMS.                                                  *
//* OBJETIVO: VERIFICA EXISTA ARCHIVO CAMBIOS PENDIENTES MARKETING     *
//*--------------------------------------------------------------------*
//PZMD0393 EXEC PGM=IDCAMS,COND=(04,LT)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMD03T04),DISP=SHR
//*
// IF PZMD0393.RC > 0 THEN
//*--------------------------------------------------------------------*
//* PROGRAMA: IEFBR14.                                                 *
//* OBJETIVO: GENERA ARCHIVO VACIO DE CAMBIOS PENDIENTES MARKETING     *
//*------------------------- ------------------------------------------*
//PZMD0392 EXEC PGM=IEFBR14
//*
//CREARCRH DD DSN=MXCP.ZM.FIX.MODCAMB.PENDAPLI.MUV,
//            DISP=(MOD,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=114,BLKSIZE=0)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
// ENDIF
//*
//*--------------------------------------------------------------------*
//* UTILERIA   : IKJEFT1A/ZM4OU074.                                    *
//* OBJETIVO   : DEPURA REGISTROS PENDIENTES DE MAS DE UN MES ALTAS    *
//*--------------------------------------------------------------------*
//PZMD0391 EXEC PGM=IKJEFT1A,COND=(04,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.RRHHMUV.PENDAPLI.MUV,DISP=SHR
//*
//ENTRADA2 DD DSN=MXCP.ZM.FIX.C07.PENDAPLI.ABM.MUV,DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.RRHHMUV.PENDAPLI.MUV.NEW,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(5,2),RLSE),
//            DCB=(DSORG=PS,LRECL=555,RECFM=FB,BLKSIZE=0)
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.C07.PENDAPLI.ABM.MUV.NEW,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(5,2),RLSE),
//            DCB=(DSORG=PS,LRECL=185,RECFM=FB,BLKSIZE=0)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD03T09),DISP=SHR
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* UTILERIA   : IKJEFT1A/ZM4OU075.                                    *
//* OBJETIVO   : DEPURA REGISTROS PENDIENTES MAS DE MES MARKETING      *
//*--------------------------------------------------------------------*
//PZMD0390 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.BAJCAMB.PENDAPLI.MUV,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MODCAMB.PENDAPLI.MUV,DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.PMCAMMOD.PENDAPLI.MUV.NEW,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(5,2),RLSE),
//            DCB=(DSORG=PS,LRECL=114,RECFM=FB,BLKSIZE=0)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD03T14),DISP=SHR
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PROGRAMA   : IDCAMS                                                *
//* OBJETIVO   : BORRADO DE ARCHIVOS PENDIENTES DE APLICAR             *
//*--------------------------------------------------------------------*
//PZMD0389 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMD03T07),DISP=SHR
//*
//*--------------------------------------------------------------------
//* UTILERIA   : ICEGENER.
//* OBJETIVO   : ACTUALIZA ARCHIVO DE TALENTO Y CULTURA
//*--------------------------------------------------------------------
//PZMD0388 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.RRHHMUV.PENDAPLI.MUV.NEW,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.RRHHMUV.PENDAPLI.MUV,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(LRECL=555,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------
//* UTILERIA   : ICEGENER.
//* OBJETIVO   : ACTUALIZA ARCHIVO DE RACF
//*--------------------------------------------------------------------
//PZMD0387 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.C07.PENDAPLI.ABM.MUV.NEW,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.C07.PENDAPLI.ABM.MUV,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(LRECL=185,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------
//* UTILERIA   : ICEGENER.
//* OBJETIVO   : ACTUALIZA ARCHIVO DE MARKETING
//*--------------------------------------------------------------------
//PZMD0386 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.PMCAMMOD.PENDAPLI.MUV.NEW,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.BAJCAMB.PENDAPLI.MUV,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(LRECL=114,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLIND03                        *
//*--------------------------------------------------------------------*
//*
