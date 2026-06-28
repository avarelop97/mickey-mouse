//ZMUEPR04 PROC
//*                                                                   **
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - BCUENR04.                                      *
//* PROCESO      : ZMUEPR04.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : GENERACION DE RENDIMIENTOS.                         *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 21 DE AGOSTO DE 2013.                               *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*-------------------------------------------------------------------**
//* PASO       : ZUE04T01.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU530                                     *
//* OBJETIVO   : PROGRAMA QUE DESCARGA LA TABLA ZMDT934 PARA LAS CTAS.**
//*-------------------------------------------------------------------
//ZUR04T01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//S1DES934 DD DSN=MXCP.ZM.FIX.REC.ZM4MU530.DESCA934,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=449,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUR04T01),DISP=SHR
//*-------------------------------------------------------------------**
//* PASO       : ZUR04T02.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU532                                     *
//* OBJETIVO   : PROGRAMA DESCARGA EDDEPRE PARA LA OBTENCIO DE        **
//*              LOS DEPOSITOS Y RETIROS DEL DIA.                     **
//*-------------------------------------------------------------------
//ZUR04T02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//S1DEDPRE DD DSN=MXCP.ZM.FIX.REC.ZM4MU532.EDDEPREE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=30,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUR04T02),DISP=SHR
//*-------------------------------------------------------------------**
//* PASO       : ZUR04T03.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU531                                     *
//* OBJETIVO   : SE REALIZA LA DESCARGA DE LA TABLA ZMDT933           **
//*              DE LOS DEPOSITOS Y RETIROS DEL MES EN CURSO          **
//*-------------------------------------------------------------------
//*ZUR04T03 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*S1DES933 DD DSN=MXCP.ZM.FIX.REC.ZM4MU531.DESCA933.D,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(200,100),RLSE),
//*            DCB=(RECFM=FB,LRECL=77,BLKSIZE=0,DSORG=PS)
//*QRLSDB2  DD  SYSOUT=*
//*SYSPRINT DD  SYSOUT=*
//*SYSTSPRT DD  SYSOUT=*
//*SYSUDUMP DD  SYSOUT=*
//*SYSABOUT DD  SYSOUT=*
//*SYSDBOUT DD  SYSOUT=*
//*SYSOUT   DD  SYSOUT=*
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR04T03),DISP=SHR
//*
//*-------------------------------------------------------------------
//* PASO       : ZUR04T04.
//* UTILERIA   : IKJEFT01/ZM4MU534
//* OBJETIVO   : PROGRAMA PARA EL CALCULO DE SALDO ACUMULADO DEL
//*              MES EN CURSO.
//*-------------------------------------------------------------------
//*ZUR04T04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ENTRADA1 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU530.DESCA934,
//*             DISP=SHR
//*ENTRADA2 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU531.DESCA933.D,
//*             DISP=SHR
//*ENTRADA3 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU532.EDDEPREE,
//*             DISP=SHR
//*S1SALIDA DD  DSN=MXCP.ZM.FIX.REC.ZM4MU534.SAL.D,
//*             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*             SPACE=(CYL,(200,100),RLSE),
//*             DCB=(RECFM=FB,LRECL=96,BLKSIZE=0,DSORG=PS)
//*
//*QRLSDB2  DD  SYSOUT=*
//*SYSPRINT DD  SYSOUT=*
//*SYSTSPRT DD  SYSOUT=*
//*SYSUDUMP DD  SYSOUT=*
//*SYSABOUT DD  SYSOUT=*
//*SYSDBOUT DD  SYSOUT=*
//*SYSOUT   DD  SYSOUT=*
//*SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUR04T04),DISP=SHR
//*
//*-------------------------------------------------------------------
//* PASO       : ZUR04T05.
//* UTILERIA   : IKJEFT01/ZM4MU505
//* OBJETIVO   : PROGRAMA PARA LA ACTUALIZACION DE LA UTILIDAD Y
//*              EL RENDIMIENTO DEL MES EN CURSO
//*-------------------------------------------------------------------
//*ZUR04T05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ENTRADA1 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU534.SAL.D,
//*             DISP=SHR
//*
//*QRLSDB2  DD  SYSOUT=*
//*SYSPRINT DD  SYSOUT=*
//*SYSTSPRT DD  SYSOUT=*
//*SYSUDUMP DD  SYSOUT=*
//*SYSABOUT DD  SYSOUT=*
//*SYSDBOUT DD  SYSOUT=*
//*SYSOUT   DD  SYSOUT=*
//*SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUR04T05),DISP=SHR
//*
//*-------------------------------------------------------------------**
//* PASO       : ZUR04T06.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU531                                     *
//* OBJETIVO   : SE REALIZA LA DESCARGA DE LA TABLA ZMDT933           **
//*              DE LOS DEPOSITOS Y RETIROS DEL ANO EN CURSO          **
//*-------------------------------------------------------------------
//ZUR04T06 EXEC PGM=IKJEFT1A,COND=(4,LT)
//S1DES933 DD DSN=MXCP.ZM.FIX.REC.ZM4MU531.DESCA933.AN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=77,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR04T06),DISP=SHR
//*
//*-------------------------------------------------------------------
//* PASO       : ZUR04T07.
//* UTILERIA   : IKJEFT01/ZM4MU534
//* OBJETIVO   : PROGRAMA PARA EL CALCULO DE SALDO ACUMULADO DEL
//*              ANO EN CURSO.
//*-------------------------------------------------------------------
//ZUR04T07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU530.DESCA934,
//             DISP=SHR
//ENTRADA2 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU531.DESCA933.AN,
//             DISP=SHR
//ENTRADA3 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU532.EDDEPREE,
//             DISP=SHR
//S1SALIDA DD  DSN=MXCP.ZM.FIX.REC.ZM4MU534.SAL.AN,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//             DCB=(RECFM=FB,LRECL=96,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUR04T07),DISP=SHR
//*-------------------------------------------------------------------
//* PASO       : ZUR04T08.
//* UTILERIA   : IKJEFT01/ZM4MU505
//* OBJETIVO   : PROGRAMA PARA LA ACTUALIZACION DE LA UTILIDAD Y
//*              EL RENDIMIENTO DEL ANO EN CURSO
//*-------------------------------------------------------------------
//ZUR04T08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU534.SAL.AN,
//             DISP=SHR
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUR04T08),DISP=SHR
//*
//*-------------------------------------------------------------------**
//* PASO       : ZUR04T09.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU531                                     *
//* OBJETIVO   : SE REALIZA LA DESCARGA DE LA TABLA ZMDT933           **
//*              PARA LOS MOVIMIENTOS DE 12 MESES HACIA ATRAS         **
//*-------------------------------------------------------------------
//*ZUR04T09 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*S1DES933 DD DSN=MXCP.ZM.FIX.REC.ZM4MU531.DESCA933.ANU,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(200,100),RLSE),
//*            DCB=(RECFM=FB,LRECL=77,BLKSIZE=0,DSORG=PS)
//*QRLSDB2  DD  SYSOUT=*
//*SYSPRINT DD  SYSOUT=*
//*SYSTSPRT DD  SYSOUT=*
//*SYSUDUMP DD  SYSOUT=*
//*SYSABOUT DD  SYSOUT=*
//*SYSDBOUT DD  SYSOUT=*
//*SYSOUT   DD  SYSOUT=*
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR04T09),DISP=SHR
//*
//*-------------------------------------------------------------------
//* PASO       : ZUR04T10.
//* UTILERIA   : IKJEFT01/ZM4MU534
//* OBJETIVO   : PROGRAMA PARA EL CALCULO DE RENDIMIENTOS DIARIO.
//*-------------------------------------------------------------------
//*ZUR04T10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ENTRADA1 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU530.DESCA934,
//*             DISP=SHR
//*ENTRADA2 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU531.DESCA933.ANU,
//*             DISP=SHR
//*ENTRADA3 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU532.EDDEPREE,
//*             DISP=SHR
//*S1SALIDA DD  DSN=MXCP.ZM.FIX.REC.ZM4MU534.SAL.ANU,
//*             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*             SPACE=(CYL,(200,100),RLSE),
//*             DCB=(RECFM=FB,LRECL=96,BLKSIZE=0,DSORG=PS)
//*
//*QRLSDB2  DD  SYSOUT=*
//*SYSPRINT DD  SYSOUT=*
//*SYSTSPRT DD  SYSOUT=*
//*SYSUDUMP DD  SYSOUT=*
//*SYSABOUT DD  SYSOUT=*
//*SYSDBOUT DD  SYSOUT=*
//*SYSOUT   DD  SYSOUT=*
//*SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUR04T10),DISP=SHR
//*-------------------------------------------------------------------
//* PASO       : ZUR04T11.
//* UTILERIA   : IKJEFT01/ZM4MU505
//* OBJETIVO   : PROGRAMA QUE ACTUALIZA EL RENDIMIENTO Y LA UTILIDAD
//*              DE 12 MESES HACIA ATRAS.
//*-------------------------------------------------------------------
//*ZUR04T11 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*ENTRADA1 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU534.SAL.ANU,
//*             DISP=SHR
//*
//*QRLSDB2  DD  SYSOUT=*
//*SYSPRINT DD  SYSOUT=*
//*SYSTSPRT DD  SYSOUT=*
//*SYSUDUMP DD  SYSOUT=*
//*SYSABOUT DD  SYSOUT=*
//*SYSDBOUT DD  SYSOUT=*
//*SYSOUT   DD  SYSOUT=*
//*SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUR04T11),DISP=SHR
