//ZMSFPD52 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO    :  ZM - 7X24 INTERNET BANCA PATRIMONIAL.               *
//* PROCESO     :  ZMSFPD52                                            *
//* PERIODICIDAD:  DIARIO                                              *
//* OBJETIVO    :  PROCESO PARA CONSULTAS DE BANCA PATRIMONIAL, DESCAR *
//*                GA DE TABLA ZMDT933  Y CARGA DE TABLAS ESPEJO.      *
//* REALIZO     :  FABRICA DE SOFTWARE HILDEBRANDO (XM010AC).          *
//* FECHA       :  04 DE SEPTIEMBRE DE 2010                            *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-0.0.0-00  XXXXXXX DDMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO     : PSF52P04                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT933 DE DETALLE DE MOVIMIENTO   *
//*            ESTADO DE CUENTA.                                       *
//*--------------------------------------------------------------------*
//PSF52P04 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PSF52P04,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ZMDT933,
//            SPACE=(CYL,(1000,500),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=272,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF52T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PSF52P03                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO POR LOS CAMPOS ANIO, MES.                *
//*--------------------------------------------------------------------*
//PSF52P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.TMP.ZMDT933,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZMDT933.SALIDA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=272,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZSF52T03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PSF52P02                                                *
//* UTILERIA : ZM3DS003                                                *
//* OBJETIVO : TRAE INFORMACION DE LOS ULTIMOS 6 MESES PARTIENDO DE LA *
//*            FECHA DE OPERACION.                                     *
//*--------------------------------------------------------------------*
//PSF52P02 EXEC PGM=ZM3DS003,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//E1DQT933 DD DSN=MXCP.ZM.TMP.ZMDT933.SALIDA,DISP=SHR
//S1DQT933 DD DSN=MXCP.ZM.TMP.ZMDT933.FECHAS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=272,BLKSIZE=0),
//            UNIT=3390
//*
//*--------------------------------------------------------------------*
//* PASO     : PSF52P01                                                *
//* UTILERIA : MBMCLOAD                                                *
//* OBJETIVO : PROCEDIMIENTO DE CARGA TABLA ZMDT928                    *
//*--------------------------------------------------------------------*
//PSF52P01 EXEC MBMCLOAD,COND=(04,LT),
//         UID=PSF52P01.LO928,
//         ENTORNO=PRODUSVP,
//         NOMTAB=ZMDT928,
//         OPTION=REPLACE,
//         NPART='',
//         INPPUN=DSN=ZIVA.ZME.CONTROL(ZSF52T02),
//         INPREC=DSN=MXCP.ZM.TMP.ZMDT933.FECHAS
//*
//*--------------------------------------------------------------------*
//*                   FIN DE PROCESO ZMSFPD52                          *
//*--------------------------------------------------------------------*
