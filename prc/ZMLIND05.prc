//ZMLIND05 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM.                                                 *
//* PROCESO      : ZMLIND05.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : PROCESO DE ALTAS, BAJAS Y CAMBIO DE PROMOTORES MUV. *
//* REALIZO      : BBVA.                                               *
//* FECHA        : OCTUBRE 2023.                                       *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROGRAMA: IDCAMS.                                                  *
//* OBJETIVO: VERIFICA ARCHIVO PENDIENTES RRHHMUV EXISTA               *
//*--------------------------------------------------------------------*
//PZMD0519 EXEC PGM=IDCAMS
//*
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMD05T12),DISP=SHR
//*
// IF PZMD0519.RC > 0 THEN
//*--------------------------------------------------------------------*
//* PROGRAMA: IEFBR14.                                                 *
//* OBJETIVO: GENERA ARCHIVO VACIO PENDIENTES RRHHMUV                  *
//*------------------------- ------------------------------------------*
//PZMD0518 EXEC PGM=IEFBR14
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
//PZMD0517 EXEC PGM=IDCAMS,COND=(04,LT)
//*
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMD05T11),DISP=SHR
//*
// IF PZMD0517.RC > 0 THEN
//*--------------------------------------------------------------------*
//* PROGRAMA: IEFBR14.                                                 *
//* OBJETIVO: GENERA ARCHIVO VACIO PENDIENTES RACF                     *
//*------------------------- ------------------------------------------*
//PZMD0516 EXEC PGM=IEFBR14
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
//PZMD0515 EXEC PGM=IDCAMS,COND=(04,LT)
//*
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMD05T10),DISP=SHR
//*
// IF PZMD0515.RC > 0 THEN
//*--------------------------------------------------------------------*
//* PROGRAMA: IEFBR14.                                                 *
//* OBJETIVO: GENERA ARCHIVO VACIO DE BAJAS PENDIENTES MARKETING       *
//*------------------------- ------------------------------------------*
//PZMD0514 EXEC PGM=IEFBR14
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
//PZMD0513 EXEC PGM=IDCAMS,COND=(04,LT)
//*
//SYSPRINT  DD SYSOUT=*
//SYSOUT    DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZMD05T15),DISP=SHR
//*
// IF PZMD0513.RC > 0 THEN
//*--------------------------------------------------------------------*
//* PROGRAMA: IEFBR14.                                                 *
//* OBJETIVO: GENERA ARCHIVO VACIO DE CAMBIOS PENDIENTES MARKETING     *
//*------------------------- ------------------------------------------*
//PZMD0512 EXEC PGM=IEFBR14
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
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA ARCHIVO CAMBIOS MARKETING POR FECHA            *
//*--------------------------------------------------------------------*
//PZMD0511 EXEC PGM=ICEMAN,COND=(04,LT)
//SORTIN   DD DSN=MBVP.PM.FIX.CAMBIOS.F&FECHA..MUV,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MODCAMB.PENDAPLI.MUV,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CAMBIOS.F&FECHA..MUV.SORT,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=114,RECFM=FB,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMD05T05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA ARCHIVO BAJAS MARKETING POR FECHA              *
//*--------------------------------------------------------------------*
//PZMD0510 EXEC PGM=ICEMAN,COND=(04,LT)
//SORTIN   DD DSN=MBVP.PM.FIX.BAJAS.F&FECHA..MUV,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.BAJCAMB.PENDAPLI.MUV,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.BAJAS.F&FECHA..MUV.SORT,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=114,RECFM=FB,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMD05T05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA ARCHIVO RACF POR M999999 Y FECHA               *
//*--------------------------------------------------------------------*
//PZMD0509 EXEC PGM=ICEMAN,COND=(04,LT)
//SORTIN   DD DSN=MBVP.QS.FIX.C07.F&FECHA..ABM.MUV,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.C07.PENDAPLI.ABM.MUV,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.C07.F&FECHA..ABM.MUV.SORT,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=185,RECFM=FB,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMD05T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENA ARCHIVO DE RRHHMUV POR M999999 Y FECHA         *
//*            : ARC.RRHHMUV. LO GENERA EL PRC ZMLIND04                *
//*--------------------------------------------------------------------*
//PZMD0508 EXEC PGM=ICEMAN,COND=(04,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.RRHHMUV.F&FECHA..MUV,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.RRHHMUV.PENDAPLI.MUV,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RRHHMUV.F&FECHA..MUV.SORT,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=555,RECFM=FB,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMD05T06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA : IDCAMS                                                  *
//* OBJETIVO : BORRADO DE ARCHIVOS PENDIENTES DE APLICAR               *
//*--------------------------------------------------------------------*
//PZMD0507 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMD05T08),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* UTILERIA   : IKJEFT1A/ZM4OU071.                                    *
//* OBJETIVO   : BAJA DE USUARIO MUV.                                  *
//*--------------------------------------------------------------------*
//PZMD0506 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.RRHHMUV.F&FECHA..MUV.SORT,DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.C07.F&FECHA..ABM.MUV.SORT,DISP=SHR
//ENTRADA3 DD DSN=MXCP.ZM.FIX.BAJAS.F&FECHA..MUV.SORT,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.CAMBIOS.F&FECHA..MUV.SORT,DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.C07.F&FECHA..BAJREPRH.MUV,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(5,2),RLSE),
//            DCB=(DSORG=PS,LRECL=241,RECFM=FB,BLKSIZE=0)
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.RRHHMUV.PENDAPLI.MUV,
//            DISP=(MOD,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(5,2),RLSE),
//            DCB=(DSORG=PS,LRECL=555,RECFM=FB,BLKSIZE=0)
//*
//SALIDA3  DD DSN=MXCP.ZM.FIX.C07.PENDAPLI.ABM.MUV,
//            DISP=(MOD,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(5,2),RLSE),
//            DCB=(DSORG=PS,LRECL=185,RECFM=FB,BLKSIZE=0)
//*
//SALIDA4  DD DSN=MXCP.ZM.FIX.BAJCAMB.PENDAPLI.MUV,
//            DISP=(MOD,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=114,RECFM=FB,BLKSIZE=0)
//*
//SALIDA5  DD DSN=MXCP.ZM.FIX.MKT.F&FECHA..REASIGNA.MUV,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(5,2),RLSE),
//            DCB=(DSORG=PS,LRECL=241,RECFM=FB,BLKSIZE=0)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD05T02),DISP=SHR
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* UTILERIA   : IKJEFT1A/ZM4OU072.                                    *
//* OBJETIVO   : CAMBIO DE USUARIO MUV.                                *
//*--------------------------------------------------------------------*
//PZMD0505 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.RRHHMUV.F&FECHA..MUV.SORT,DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.C07.F&FECHA..ABM.MUV.SORT,DISP=SHR
//ENTRADA3 DD DSN=MXCP.ZM.FIX.CAMBIOS.F&FECHA..MUV.SORT,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.BAJAS.F&FECHA..MUV.SORT,DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.C07.F&FECHA..MODREPRH.MUV,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(5,2),RLSE),
//            DCB=(DSORG=PS,LRECL=241,RECFM=FB,BLKSIZE=0)
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.RRHHMUV.PENDAPLI.MUV,
//            DISP=(MOD,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(5,2),RLSE),
//            DCB=(DSORG=PS,LRECL=555,RECFM=FB,BLKSIZE=0)
//*
//SALIDA3  DD DSN=MXCP.ZM.FIX.C07.PENDAPLI.ABM.MUV,
//            DISP=(MOD,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(5,2),RLSE),
//            DCB=(DSORG=PS,LRECL=185,RECFM=FB,BLKSIZE=0)
//*
//SALIDA4  DD DSN=MXCP.ZM.FIX.MODCAMB.PENDAPLI.MUV,
//            DISP=(MOD,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=114,RECFM=FB,BLKSIZE=0)
//*
//SALIDA5  DD DSN=MXCP.ZM.FIX.MKT.F&FECHA..REASIGNA.MUV,
//            DISP=(MOD,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(5,2),RLSE),
//            DCB=(DSORG=PS,LRECL=241,RECFM=FB,BLKSIZE=0)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD05T01),DISP=SHR
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* UTILERIA   : IKJEFT1A/ZM4OU070.                                    *
//* OBJETIVO   : ALTA DE USUARIO MUV.                                  *
//*--------------------------------------------------------------------*
//PZMD0504 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.RRHHMUV.F&FECHA..MUV.SORT,DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.C07.F&FECHA..ABM.MUV.SORT,DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.C07.F&FECHA..ALTREPRH.MUV,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,LRECL=191,RECFM=FB,BLKSIZE=0)
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.RRHHMUV.PENDAPLI.MUV,
//            DISP=(MOD,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(5,2),RLSE),
//            DCB=(DSORG=PS,LRECL=555,RECFM=FB,BLKSIZE=0)
//*
//SALIDA3  DD DSN=MXCP.ZM.FIX.C07.PENDAPLI.ABM.MUV,
//            DISP=(MOD,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(5,2),RLSE),
//            DCB=(DSORG=PS,LRECL=185,RECFM=FB,BLKSIZE=0)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD05T03),DISP=SHR
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* UTILERIA   : IKJEFT1A/ZM4OU073.                                    *
//* OBJETIVO   : GENERA ARCHIVO DE PROMOTORES VIGENTES                 *
//*--------------------------------------------------------------------*
//PZMD0503 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.F&FECHA..PROMOT.MUV,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(5,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=500,BLKSIZE=0)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD05T00),DISP=SHR
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* UTILERIA   : IKJEFT1A/ZM4OU078.                                    *
//* OBJETIVO   : GENERA ARCHIVO DE MANCUERNAS VIGENTES                 *
//*--------------------------------------------------------------------*
//PZMD0502 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.F&FECHA..MANCUERN.MUV,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,
//            SPACE=(CYL,(5,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=215,BLKSIZE=0)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD05T18),DISP=SHR
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLIND05                        *
//*--------------------------------------------------------------------*
//*
