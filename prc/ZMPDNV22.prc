//ZMPDNV22 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM / EECC-MUV                                       *
//* PROCESO      : ZMPDNV22                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : MATCH SECART - OPERA   X CLIENTE                    *
//* REALIZO      : FSW-ITS                                             *
//* FECHA        : FEBRERO 2014                                        *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2204                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : SUMATORIA DE DEPOSITOS OPERA                            *
//*--------------------------------------------------------------------*
//*
//ZMNV2204 EXEC PGM=ICEMAN
//SORTIN   DD  DSN=MXCP.ZM.TMP.OPERA.CAPDEP.DESCARGA.F&FECHA.,DISP=SHR
//         DD  DSN=MXCP.ZM.TMP.OPERA.DINDEP.DESCARGA.F&FECHA.,DISP=SHR
//         DD  DSN=MXCP.ZM.TMP.OPERA.EFEDEP.REF.F&FECHA.,DISP=SHR
//         DD  DSN=MXCP.ZM.TMP.OPERA.SOCDEP.DESCARGA.F&FECHA.,DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.OPERA.DEPOSITO.SUMA.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//*            SE MODIFICA A 88 POR AMPL ICONCEPT
//             DCB=(LRECL=88,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSOUT   DD  SYSOUT=*                                                 00204000
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2204),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2203                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : SUMATORIA DE RETIROS OPERA                             *
//*--------------------------------------------------------------------*
//*
//ZMNV2203 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.TMP.OPERA.CAPRET.DESCARGA.F&FECHA.,DISP=SHR
//         DD  DSN=MXCP.ZM.TMP.OPERA.DINRET.DESCARGA.F&FECHA.,DISP=SHR
//         DD  DSN=MXCP.ZM.TMP.OPERA.EFERET.REF.F&FECHA.,DISP=SHR
//         DD  DSN=MXCP.ZM.TMP.OPERA.SOCRET.DESCARGA.F&FECHA.,DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.OPERA.RETIROS.SUMA.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//*            SE MODIFICA A 88 POR AMPL ICONCEPT
//             DCB=(LRECL=88,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSOUT   DD  SYSOUT=*                                                 00204000
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2203),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2202    EFECTIVO                                    *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : MATCH DEPOSITOS Y RETIROS                               *
//*--------------------------------------------------------------------*
//ZMNV2202 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTJNF1 DD  DSN=MXCP.ZM.TMP.OPERA.DEPOSITO.SUMA.F&FECHA.,DISP=SHR
//SORTJNF2 DD  DSN=MXCP.ZM.TMP.OPERA.RETIROS.SUMA.F&FECHA.,DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.OPERA.MATCH.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=42,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2202),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMNV2201                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : DEPOSITOS  - RETIROS OPERA                              *
//*--------------------------------------------------------------------*
//ZMNV2201 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.TMP.OPERA.MATCH.F&FECHA.,DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.OPERA.RESTA.F&FECHA.,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=42,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZMNV2201),DISP=SHR
//*
