//ZMPDNV20 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM / EECC-MUV                                       *
//* PROCESO      : ZMPDNV20                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : DESCARGA Y ACUMULADO SECART X CLIENTE               *
//* REALIZO      : FSW-ITS                                             *
//* FECHA        : FEBRERO 2014                                        *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2011                                                *
//* UTILERIA : IKJEFT01                                                *
//* OBJETIVO : GENERA TARJETAS CONTROL CON LOS QUERYS DE DESCARGA      *
//*--------------------------------------------------------------------*
//ZMNV2011 EXEC PGM=IKJEFT01
//*
//ZMLSCTC1 DD DSN=MXCP.ZM.TMP.ALERTAS.CTC1.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//ZMLSCTC2 DD DSN=MXCP.ZM.TMP.ALERTAS.CTC2.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//ZMLSCTC3 DD DSN=MXCP.ZM.TMP.ALERTAS.CTC3.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//ZMLSCTC4 DD DSN=MXCP.ZM.TMP.ALERTAS.CTC4.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//ZMLSCTC5 DD DSN=MXCP.ZM.TMP.ALERTAS.CTC5.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//ZMLSCTC6 DD DSN=MXCP.ZM.TMP.ALERTAS.CTC6.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//ZMLSCTC7 DD DSN=MXCP.ZM.TMP.ALERTAS.CTC7.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//ZMLSCTC8 DD DSN=MXCP.ZM.TMP.ALERTAS.CTC8.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//ZMLSCTC9 DD DSN=MXCP.ZM.TMP.ALERTAS.CTC9.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//ZMLSCT10 DD DSN=MXCP.ZM.TMP.ALERTAS.CTC10.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//ZMLSCT11 DD DSN=MXCP.ZM.TMP.ALERTAS.CTC11.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//ZMLSCT12 DD DSN=MXCP.ZM.TMP.ALERTAS.CTC12.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//ZMLSCT13 DD DSN=MXCP.ZM.TMP.ALERTAS.CTC13.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSIN  DD DISP=SHR,DSN=ZIVA.ZME.CONTROL(ZMNV2011)
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2010                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : SECART EFECTIVO                                         *
//*              DESCARGA DATOS DE LAS TABLAS SECART, ZMDT608, VECPRE, *
//*              CONCEPT, CUENTA                                       *
//*--------------------------------------------------------------------*
//ZMNV2010 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMNV2010,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.DINEFE.DESCARGA.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ALERTAS.CTC1.F&FECHA.,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2009    SECART-EFECTIVO                             *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : SUMA IMPORTE UNIFICA POR NUM-CTE, CUENTA Y EMISION      *
//*--------------------------------------------------------------------*
//ZMNV2009 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.DINEFE.DESCARGA.F&FECHA.,DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.TMP.DINEFE.SUMA.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//*            AUMENTO A 74 POR AMPL ICONCEPT
//             DCB=(LRECL=74,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(200,100),RLSE),UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2009),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2008                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA PARA COMPLETAR EL LAY OUT FINAL, ESTA CONTINE  *
//*            LOS DATOS DE LAS CUENTA PU                              *
//*--------------------------------------------------------------------*
//ZMNV2008 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMNV2008,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CUENTA.PU.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=32,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNV2008),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2007                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : SEPARA LOS REGISTROS QUE EN EL CONTRATO VENGAN EN CEROS *
//*--------------------------------------------------------------------*
//ZMNV2007 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.FIX.CUENTA.PU.F&FECHA.,DISP=SHR
//*
//SORTOF01 DD  DSN=MXCP.ZM.FIX.CUENTA.PU.FILTRO.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,BUFNO=30,
//             SPACE=(CYL,(200,100),RLSE),
//             DCB=(LRECL=32,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SORTOF02 DD  DSN=MXCP.ZM.FIX.CUENTA.PU.CEROS.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,BUFNO=30,
//             SPACE=(CYL,(200,100),RLSE),
//             DCB=(LRECL=32,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2007),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2006                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : SECART DINERO                                           *
//*              DESCARGA DATOS DE LAS TABLAS SECART, ZMDT608, VECPRE, *
//*              CONCEPT, CUENTA                                       *
//*--------------------------------------------------------------------*
//ZMNV2006 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMNV2006,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.DINERO.DESCARGA.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//*           SE AUMENTA A 74 POR AMPL ICONCEPT
//            DCB=(LRECL=74,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ALERTAS.CTC2.F&FECHA.,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2005                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : SUMA IMPORTE UNIFICA POR NUM-CTE, CUENTA Y EMISION      *
//*--------------------------------------------------------------------*
//ZMNV2005 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.DINERO.DESCARGA.F&FECHA.,DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.TMP.DINERO.SUMA.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//*            SE AUMENTA A 74 POR AMPL ICONCEPT
//             DCB=(LRECL=74,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(200,100),RLSE),UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2005),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2004                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DATOS DE LAS TABLAS SECART - CAPITALES         *
//*--------------------------------------------------------------------*
//ZMNV2004 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMNV2004,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.DINCAP.DESCARGA.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//*           SE AUMENTA A 74 POR AMPL ICONCEPT
//            DCB=(LRECL=74,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ALERTAS.CTC3.F&FECHA.,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2003                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : SUMA IMPORTE UNIFICA POR NUM-CTE, CUENTA Y EMISION,     *
//*            SECART-CAPITALES                                        *
//*--------------------------------------------------------------------*
//ZMNV2003 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.DINCAP.DESCARGA.F&FECHA.,DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.TMP.DINCAP.SUMA.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//*            SE AUMENTA A 74 POR AMPL ICONCEPT
//             DCB=(LRECL=74,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2005),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2002                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DATOS DE LAS TABLAS SECART - SOCIEDADES        *
//*--------------------------------------------------------------------*
//ZMNV2002 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMNV2002,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.DINSOC.DESCARGA.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//*           SE AUMENTA A 74 POR AMPL ICONCEPT
//            DCB=(LRECL=74,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ALERTAS.CTC4.F&FECHA.,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2001                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : SUMA IMPORTE UNIFICA POR NUM-CTE, CUENTA Y EMISION,     *
//*            SECART-SOCIEDADES                                       *
//*--------------------------------------------------------------------*
//ZMNV2001 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.DINSOC.DESCARGA.F&FECHA.,DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.TMP.DINSOC.SUMA.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//*            SE AUMENTA A 74 POR AMPL ICONCEPT
//             DCB=(LRECL=74,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2005),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMPDNV20                        *
//*--------------------------------------------------------------------*
