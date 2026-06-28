//ZMFMLD50 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - FAMILY OFFICE.                                 *
//* PROCESO      : ZMFMLD50.                                           *
//* PERIODICIDAD : MENSUAL.                                            *
//* OBJETIVO     : REPORTES DE FAMILY OFFICE PARA CANALES              *
//* REALIZO      : INDRA                                               *
//* FECHA        : JULIO 2016.                                         *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T15.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML15                                     *
//* OBJETIVO   : REPORTE DE SAMPLE POSITION                            *
//*--------------------------------------------------------------------*
//ZFM10T45 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM15FME1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.MEN,
//            DISP=SHR
//*
//ZM15FMS1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=316,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T15),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T20.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML20                                     *
//* OBJETIVO   : REPORTE DE SAMPLE TRANSACCION                         *
//*--------------------------------------------------------------------*
//ZFM10T40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM20FME1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.MEN,
//            DISP=SHR
//*
//ZM20FMS1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM12T20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T10.                                             *
//* UTILERIA   : IKJEFT01/ZM4FAM01                                     *
//* OBJETIVO   : CONTROL DE POSICION                                   *
//*--------------------------------------------------------------------*
//ZFM10T35 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM01A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.MEN,DISP=SHR
//*
//ZMFM01F1 DD DSN=MXCP.ZM.FIX.FAM.CONTROL.POS.MEN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=072,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM15T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T05.                                             *
//* UTILERIA   : IKJEFT01/ZM4FAM02                                     *
//* OBJETIVO   : CONTROL DE MOVIMIENTOS                                *
//*--------------------------------------------------------------------*
//ZFM10T30 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM01A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.MEN,DISP=SHR
//*
//ZMFM01F1 DD DSN=MXCP.ZM.FIX.FAM.CONTROL.MOV.MEN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=072,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM15T05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T04.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : OUTREC DE ARCHIVO DE POSICIONES                       *
//*--------------------------------------------------------------------*
//ZFM10T25 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.MEN,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.FAM.ZM4FML15.POS.MEN.F,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=316,BLKSIZE=0,DSORG=PS)
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.FAM.CONTROL.POS.MEN,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA4.                                             *
//* UTILERIA   : IDCAMS.                                               *
//* OBJETIVO   : AGREGA LEYENDA ARCHIVO POSICIONES.                    *
//*--------------------------------------------------------------------*
//ZFM10TA4 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.WKF.FAM.ZM4FML15.POS.MEN.F,DISP=SHR
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM3FML43.LEYFAM.POS,DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.MEN.F,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//             DCB=(RECFM=FB,LRECL=316,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM10T00),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T25.                                             *
//* UTILERIA   : IDCAMS                                                *
//* OBJETIVO   : COPIA DE REPORTE DE POSICION                          *
//*--------------------------------------------------------------------*
//ZFM10T20 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDUMP  DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.MEN.F,DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.MEN.F&HOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=316,BLKSIZE=0,DSORG=PS)
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.F,
//          DISP=(NEW,CATLG,DELETE),
//          SPACE=(CYL,(10,05),RLSE),
//          DCB=(DSORG=PS,RECFM=FB,LRECL=316,BLKSIZE=0),
//          UNIT=3390
//*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM20T21),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE01P20.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : OUTREC DE ARCHIVO DE TRANSACCIONES                    *
//*--------------------------------------------------------------------*
//ZFM10T15 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.MEN,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.FAM.ZM4FML20.TXS.MEN.F,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0,DSORG=PS)
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.FAM.CONTROL.MOV.MEN,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TE4.                                             *
//* UTILERIA   : IDCAMS.                                               *
//* OBJETIVO   : AGREGA LEYENDA ARCHIVO TRANSACCIONES.                 *
//*--------------------------------------------------------------------*
//ZFM10TE4 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.WKF.FAM.ZM4FML20.TXS.MEN.F,DISP=SHR
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM3FML43.LEYFAM.TRX,DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.MEN.F,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//             DCB=(RECFM=FB,LRECL=400,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM10T00),DISP=SHR
//*EME001-FIN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T15.                                             *
//* UTILERIA   : IDCAMS                                                *
//* OBJETIVO   : COPIA DE REPORTE DE TRANSACCION                       *
//*--------------------------------------------------------------------*
//ZFM10T10 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDUMP  DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.MEN.F,DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.MEN.F&HOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0,DSORG=PS)
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.F,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            UNIT=3390
//*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM20T21),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T07.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML27                                     *
//* OBJETIVO   : GENERA ARCHIVOS DE PARAM DE ACUERDO AL GRUPO          *
//*--------------------------------------------------------------------*
//ZFM10T07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM27FME1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.MEN,
//            DISP=SHR
//*
//ZM27FMS1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET1.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=10,BLKSIZE=0,DSORG=PS)
//ZM27FMS2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET2.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=10,BLKSIZE=0,DSORG=PS)
//ZM27FMS3 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET3.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=10,BLKSIZE=0,DSORG=PS)
//ZM27FMS4 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET4.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=10,BLKSIZE=0,DSORG=PS)
//ZM27FMS5 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET5.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=10,BLKSIZE=0,DSORG=PS)
//ZM27FMS6 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET6.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=10,BLKSIZE=0,DSORG=PS)
//ZM27FMS7 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET7.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=10,BLKSIZE=0,DSORG=PS)
//ZM27FMS8 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET8.MEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=10,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM13T27),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T05.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML42                                     *
//* OBJETIVO   : REPORTES                                              *
//*--------------------------------------------------------------------*
//ZFM10T05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.MEN,
//            DISP=SHR
//ZMFM25P1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET1.MEN,
//            DISP=SHR
//*
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET11,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET21,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//ZMFM25F3 DD DUMMY
//*
//ZMFM25F4 DD DUMMY
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T42),DISP=SHR
//**********************************************************************
//* PASO    : ZFM25T00                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA CONCATENAR ARCHIVOS Y GENERAR TARJETA          *
//**********************************************************************
//ZFM25T00 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET11,DISP=SHR           04083167
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA1,                   04083267
//             DISP=(NEW,CATLG,DELETE),                                 04083367
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS),              04083467
//             SPACE=(CYL,(50,20),RLSE),UNIT=3390                       04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM10T00),DISP=SHR
//*
//*
//**********************************************************************
//* PASO    : ZFM25T01                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA CONCATENAR ARCHIVOS Y GENERAR TARJETA          *
//**********************************************************************
//ZFM25T01 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET21,DISP=SHR           04083167
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA2,                   04083267
//             DISP=(NEW,CATLG,DELETE),                                 04083367
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS),              04083467
//             SPACE=(CYL,(50,20),RLSE),UNIT=3390                       04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM10T00),DISP=SHR
