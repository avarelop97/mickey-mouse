//ZMPDNV21 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM / EECC-MUV                                       *
//* PROCESO      : ZMPDNV21                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : DESCARGA          Y ACUMULADO OPERA                 *
//* REALIZO      : FSW-ITS                                             *
//* FECHA        : ABRIL 2014                                          *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2110                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : OPERA-EFECTIVO-DEPOSITO                                 *
//*--------------------------------------------------------------------*
//ZMNV2110 EXEC PGM=ADUUMAIN
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.OPERA.EFEDEP.DESCARGA.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=37,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ALERTAS.CTC5.F&FECHA.,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2109                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : OPERA-EFECTIVO-RETIROS                                  *
//*--------------------------------------------------------------------*
//ZMNV2109 EXEC PGM=ADUUMAIN,COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.OPERA.EFERET.DESCARGA.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=37,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ALERTAS.CTC6.F&FECHA.,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2108                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : OPERA-DINERO-DEPOSITOS                                  *
//*--------------------------------------------------------------------*
//ZMNV2108 EXEC PGM=ADUUMAIN,COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.OPERA.DINDEP.DESCARGA.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=79,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ALERTAS.CTC7.F&FECHA.,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2107                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : OPERA-DINERO-RETIROS                                    *
//*--------------------------------------------------------------------*
//ZMNV2107 EXEC PGM=ADUUMAIN,COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.OPERA.DINRET.DESCARGA.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=79,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ALERTAS.CTC8.F&FECHA.,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2106                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : OPERA-CAPITALES-DEPOSITOS                               *
//*--------------------------------------------------------------------*
//ZMNV2106 EXEC PGM=ADUUMAIN,COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.OPERA.CAPDEP.DESCARGA.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=79,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ALERTAS.CTC9.F&FECHA.,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2105                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : OPERA-CAPITALES-RETIROS                                 *
//*--------------------------------------------------------------------*
//ZMNV2105 EXEC PGM=ADUUMAIN,COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.OPERA.CAPRET.DESCARGA.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=79,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ALERTAS.CTC10.F&FECHA.,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2104                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : OPERA-SOCIEDADES-DEPOSITOS                              *
//*--------------------------------------------------------------------*
//ZMNV2104 EXEC PGM=ADUUMAIN,COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.OPERA.SOCDEP.DESCARGA.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=79,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ALERTAS.CTC11.F&FECHA.,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2103                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : OPERA-SOCIEDADES-RETIROS                                *
//*--------------------------------------------------------------------*
//ZMNV2103 EXEC PGM=ADUUMAIN,COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.OPERA.SOCRET.DESCARGA.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=79,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.TMP.ALERTAS.CTC12.F&FECHA.,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2102                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : REFORMATEA ARCHIVO A 79 POS - OPERA-EFECTIVO-DEPOSITO   *
//*--------------------------------------------------------------------*
//*
//ZMNV2102 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.TMP.OPERA.EFEDEP.DESCARGA.F&FECHA.,DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.OPERA.EFEDEP.REF.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//*            SE MODIFICA A 79 POR AMPL ICONCEPT
//             DCB=(LRECL=79,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSOUT   DD  SYSOUT=*                                                 00204000
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2102),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2101                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : REFORMATEA ARCHIVO A 79 POS - OPERA-EFECTIVO-RETIROS   *
//*--------------------------------------------------------------------*
//*
//ZMNV2101 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.TMP.OPERA.EFERET.DESCARGA.F&FECHA.,DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.OPERA.EFERET.REF.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//*            SE MODIFICA A 79 POR AMPL ICONCEPT
//             DCB=(LRECL=79,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSOUT   DD  SYSOUT=*                                                 00204000
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2102),DISP=SHR
//*
