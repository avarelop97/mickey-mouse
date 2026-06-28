//ZMFMLD17 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - FAMILY OFFICE.                                 *
//* PROCESO      : ZMFMLD17.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : REPORTES DE FAMILY OFFICE                           *
//* REALIZO      : INDRA                                               *
//* FECHA        : JULIO 2016.                                         *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* EME001      GESFOR    09JUL18 SE MODIFICA PROGRAMA ZM3FML27 DEL    *
//*                               DEL PASO ZFM14T00 PARA CREAR         *
//*                               CONDICION FIN-DE-PROCESO DE ARCHIVO  *
//* EME001      GESFOR    09JUL18 SE INCORPORA EL PASO ZFM14TA0 PARA   *
//*                               QUE DE LA ALTA LA CONDICION NAJJD600 *
//*                               LA CUAL CONDICIONA A EXTRANET SOBRE  *
//*                               EL FIN DE PROCESAMIENTO DE TODOS LOS *
//*                               GRUPOS DE FRECUENCIA DIARIA.         *
//* EME001      GESFOR    09JUL18 SE MODIFICA EL PROGRAMA ZM4FML400    *
//*                               PARA CONDICIONAR EL CODIGO DE RETORNO*
//*                               DE ACUERDO AL GRUPO QUE SE ESTA      *
//*                               PROCESANDO, SOBRE ESTE RC DEPENDERA  *
//*                               EL ENVIO DE LA CONDICION A EXTRANET  *
//*                               PARA QUE PROCESE EL CORRESPONDIENTE  *
//*                               GRUPO.                               *
//* ----------- --------- ------- ------------------------------------ *
//* MBE001      XMZ7865   23OCT18 SE AGREGA PROCESO PARA GENERAR       *
//*                               TARJETAS DE PARAMETROS PARA CONTROLAR*
//*                               LOS GRUPOS QUE SE ACTIVAN POR CADA   *
//*                               PROCESO CICLICO.                     *
//*                               ADEMAS SE AGREGA PROCESO PARA ANEXAR *
//*                               LEYENDA AL FINAL DE LOS ARCHIVOS     *
//*                               DE POSICION Y TRANSACCIONES          *
//*   @MARP02   XMY6669   15ABR19 SE MODIFICA LA LONGITUD PARA LA      *
//*                               INCLUCION DEL TIPO DE TENENCIA EN EL *
//*                               ARCHIVO DE POSICION                  *
//*   @MARP04   XMY6669   15ABR19 SE RESTRUCTURAN PASOS Y SE ANEXA EL  *
//*                               BORRADO DE UNA CONDICION PARA EL     *
//*                               CORRECTO ENVIO DE REPORTERIA         *
//*--------------------------------------------------------------------*
//*@MARP04-INI
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T50.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : BORRA CONDICION PARA EL CORRECTO ENVIO DE REPORTERIA  *
//*--------------------------------------------------------------------*
//ZFM10T50 EXEC PGM=CTMCND,PARM='DELETE COND BCFMLD17_IN_P4_OK &FECH1'
//*
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
//*@MARP04-FIN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T15.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML15                                     *
//* OBJETIVO   : REPORTE DE SAMPLE POSITION                            *
//*--------------------------------------------------------------------*
//*ZFM10T45 EXEC PGM=IKJEFT01
//ZFM10T45 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM15FME1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.DIA,
//            DISP=SHR
//*
//ZM15FMS1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*           DCB=(RECFM=FB,LRECL=314,BLKSIZE=0,DSORG=PS)
//*@MARP02-INI
//            DCB=(RECFM=FB,LRECL=316,BLKSIZE=0,DSORG=PS)
//*@MARP02-FIN
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
//ZM20FME1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.DIA,
//            DISP=SHR
//*
//ZM20FMS1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.DIA,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM11T20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T10.                                             *
//* UTILERIA   : IKJEFT01/ZM4FAM01                                     *
//* OBJETIVO   : CONTROL DE POSICION                                   *
//*--------------------------------------------------------------------*
//ZFM10T35 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM01A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.DIA,DISP=SHR
//*
//ZMFM01F1 DD DSN=MXCP.ZM.FIX.FAM.CONTROL.POS.DIA,
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
//ZMFM01A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.DIA,DISP=SHR
//*
//ZMFM01F1 DD DSN=MXCP.ZM.FIX.FAM.CONTROL.MOV.DIA,
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
//SORTIN   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.DIA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.FAM.ZM4FML15.POS.DIA.F,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*           DCB=(RECFM=FB,LRECL=314,BLKSIZE=0,DSORG=PS)
//*@MARP02-INI
//            DCB=(RECFM=FB,LRECL=316,BLKSIZE=0,DSORG=PS)
//*@MARP02-FIN
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.FAM.CONTROL.POS.DIA,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*EME001-INI
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA4.                                             *
//* UTILERIA   : IDCAMS.                                               *
//* OBJETIVO   : AGREGA LEYENDA ARCHIVO POSICIONES.                    *
//*--------------------------------------------------------------------*
//ZFM10TA4 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.WKF.FAM.ZM4FML15.POS.DIA.F,DISP=SHR
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM3FML43.LEYFAM.POS,DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.DIA.F,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//*            DCB=(RECFM=FB,LRECL=314,BLKSIZE=0,DSORG=PS)
//*@MARP02-INI
//             DCB=(RECFM=FB,LRECL=316,BLKSIZE=0,DSORG=PS)
//*@MARP02-FIN
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM10T00),DISP=SHR
//*EME001-FIN
//*
//*MARP04-INI
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T25.                                             *
//* UTILERIA   : ICEMAN                                                *
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
//SORTIN   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.DIA.F,DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.DIA.F&HOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=316,BLKSIZE=0,DSORG=PS)
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.F,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=316,BLKSIZE=0,DSORG=PS)
//*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM20T21),DISP=SHR
//*
//*MARP04-FIN
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T25.                                             *
//* UTILERIA   : IDCAMS                                                *
//* OBJETIVO   : COPIA DE REPORTE DE POSICION                          *
//*--------------------------------------------------------------------*
//*ZFM10T20 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//*SYSPRINT DD  SYSOUT=*
//*SYSTSPRT DD  SYSOUT=*
//*SYSDUMP  DD  SYSOUT=*
//*SYSABOUT DD  SYSOUT=*
//*SYSOUT   DD  SYSOUT=*
//*
//*INPUT    DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.DIA.F,DISP=SHR
//*
//*OUTPUT   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.DIA.F&HOR,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*           SPACE=(CYL,(200,100),RLSE),
//*           DCB=(RECFM=FB,LRECL=314,BLKSIZE=0,DSORG=PS)
//*@MARP02-INI
//*           DCB=(RECFM=FB,LRECL=316,BLKSIZE=0,DSORG=PS)
//*@MARP02-FIN
//*
//*SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM20T20),DISP=SHR
//*
//*MBE001-INI
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T25.                                             *
//* UTILERIA   : IDCAMS                                                *
//* OBJETIVO   : COPIA DE REPORTE DE POSICION                          *
//*--------------------------------------------------------------------*
//*ZFM10T2A EXEC PGM=IDCAMS,COND=(4,LT)
//*
//*SYSPRINT DD  SYSOUT=*
//*SYSTSPRT DD  SYSOUT=*
//*SYSDUMP  DD  SYSOUT=*
//*SYSABOUT DD  SYSOUT=*
//*SYSOUT   DD  SYSOUT=*
//*
//*INPUT    DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.DIA.F,DISP=SHR
//*
//*OUTPUT   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.F,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(200,100),RLSE),
//*           DCB=(RECFM=FB,LRECL=314,BLKSIZE=0,DSORG=PS)
//*@MARP02-INI
//*            DCB=(RECFM=FB,LRECL=316,BLKSIZE=0,DSORG=PS)
//*@MARP02-FIN
//*
//*SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM20T20),DISP=SHR
//*MBE001-FIN
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE01P20.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : OUTREC DE ARCHIVO DE TRANSACCIONES                    *
//*--------------------------------------------------------------------*
//ZFM10T15 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.DIA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.FAM.ZM4FML20.TXS.DIA.F,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0,DSORG=PS)
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.FAM.CONTROL.MOV.DIA,DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//*EME001-INI
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TE4.                                             *
//* UTILERIA   : IDCAMS.                                               *
//* OBJETIVO   : AGREGA LEYENDA ARCHIVO TRANSACCIONES.                 *
//*--------------------------------------------------------------------*
//ZFM10TE4 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.WKF.FAM.ZM4FML20.TXS.DIA.F,DISP=SHR
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM3FML43.LEYFAM.TRX,DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.DIA.F,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//             DCB=(RECFM=FB,LRECL=400,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM10T00),DISP=SHR
//*EME001-FIN
//*MARP04-INI
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T15.                                             *
//* UTILERIA   : ICEMAN                                                *
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
//SORTIN   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.DIA.F,DISP=SHR
//*
//SALIDA1  DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.DIA.F&HOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0,DSORG=PS)
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.F,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0,DSORG=PS)
//*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM20T21),DISP=SHR
//*MARP04-FIN
//*MBE001-INI
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T15.                                             *
//* UTILERIA   : IDCAMS                                                *
//* OBJETIVO   : COPIA DE REPORTE DE TRANSACCION                       *
//*--------------------------------------------------------------------*
//*ZFM10T10 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//*SYSPRINT DD  SYSOUT=*
//*SYSTSPRT DD  SYSOUT=*
//*SYSDUMP  DD  SYSOUT=*
//*SYSABOUT DD  SYSOUT=*
//*SYSOUT   DD  SYSOUT=*
//*
//*INPUT    DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.DIA.F,DISP=SHR
//*
//*OUTPUT   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.DIA.F&HOR,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(200,100),RLSE),
//*            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0,DSORG=PS)
//*
//*SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM20T20),DISP=SHR
//*MBE001-INI
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T15.                                             *
//* UTILERIA   : IDCAMS                                                *
//* OBJETIVO   : COPIA DE REPORTE DE TRANSACCION                       *
//*--------------------------------------------------------------------*
//*ZFM10T1A EXEC PGM=IDCAMS,COND=(4,LT)
//*
//*SYSPRINT DD  SYSOUT=*
//*SYSTSPRT DD  SYSOUT=*
//*SYSDUMP  DD  SYSOUT=*
//*SYSABOUT DD  SYSOUT=*
//*SYSOUT   DD  SYSOUT=*
//*
//*INPUT    DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.DIA.F,DISP=SHR
//*
//*OUTPUT   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.F,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(200,100),RLSE),
//*            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0,DSORG=PS)
//*
//*SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM20T20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T07.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML27                                     *
//* OBJETIVO   : GENERA ARCHIVOS DE PARAM DE ACUERDO AL GRUPO          *
//*--------------------------------------------------------------------*
//ZFM10T07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM27FME1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.DIA,
//            DISP=SHR
//*
//ZM27FMS1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET1.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=10,BLKSIZE=0,DSORG=PS)
//ZM27FMS2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET2.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=10,BLKSIZE=0,DSORG=PS)
//ZM27FMS3 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET3.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=10,BLKSIZE=0,DSORG=PS)
//ZM27FMS4 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET4.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=10,BLKSIZE=0,DSORG=PS)
//ZM27FMS5 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET5.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=10,BLKSIZE=0,DSORG=PS)
//ZM27FMS6 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET6.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=10,BLKSIZE=0,DSORG=PS)
//ZM27FMS7 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET7.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=10,BLKSIZE=0,DSORG=PS)
//ZM27FMS8 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET8.DIA,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T27),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T05.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML40                                     *
//* OBJETIVO   : REPORTES                                              *
//*--------------------------------------------------------------------*
//ZFM10T05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.DIA,
//            DISP=SHR
//*MBE001-INI
//ZMFM25P1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET1.DIA,
//            DISP=SHR
//*
//*ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA1,
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET11,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA2,
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET21,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*MBE001-FIN
//*
//*EME001-I
//ZMFM25F3 DD DUMMY
//*
//ZMFM25F4 DD DUMMY
//*EME001-F
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T40),DISP=SHR
//*
// IF (ZFM10T05.RC = 1) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM11T01 EXEC PGM=IOACND,PARM='ADD COND NAJJS501_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
// IF (ZFM10T05.RC = 2) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM12T01 EXEC PGM=IOACND,PARM='ADD COND NAJJD501_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
// IF (ZFM10T05.RC = 3) THEN
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM13T01 EXEC PGM=IOACND,PARM='ADD COND NAJJM501_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T05.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML40                                     *
//* OBJETIVO   : REPORTES                                              *
//*--------------------------------------------------------------------*
//ZFM10TA5 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.DIA,
//            DISP=SHR
//*MBE001-INI
//ZMFM25P1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET2.DIA,
//            DISP=SHR
//*
//*ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA1,
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET12,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA2,
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET22,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*MBE001-FIN
//*
//*EME001-I
//ZMFM25F3 DD DUMMY
//*
//ZMFM25F4 DD DUMMY
//*EME001-F
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T40),DISP=SHR
//*
// IF (ZFM10TA5.RC = 1) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM11TA1 EXEC PGM=IOACND,PARM='ADD COND NAJJM502_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*INI-ACC
//*--------------------------------------------------------------------*
//* PASO       : ZMFM2504.                                             *
//* PROGRAMA   : ZM4FMLF4                                              *
//* OBJETIVO   : GENERA TARJETAS DE MASTTRO                            *
//*--------------------------------------------------------------------*
// IF (ZFM10TA5.RC = 2) THEN
//ZFM12TA3 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25B2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.DIA,
//            DISP=SHR
//*
//ZMFM25G1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FMLF4.TARJETA1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//ZMFM25G2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FMLF4.TARJETA2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T26),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM14T10.                                             *
//* PROGRAMA   : ZM3FML27                                              *
//* OBJETIVO   : OBTIENE CONTRATOS DE FAMILY OFFICE                    *
//*--------------------------------------------------------------------*
//ZFM12TA2 EXEC PGM=CTMCND,PARM='ADD COND MZMFMLF4_IN_OK &FECH1',
//          COND=(4,LT)
//*
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MASTTRO.                               *
//*--------------------------------------------------------------------*
//ZFM12TA1 EXEC PGM=IOACND,PARM='ADD COND NAJJD502_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//*@MARP04-INI
//*--------------------------------------------------------------------*
//* PASO       : ZFM12TA0.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : BORRA CONDICION PARA EL CORRECTO ENVIO DE REPORTERIA  *
//*--------------------------------------------------------------------*
//ZFM12TA0 EXEC PGM=CTMCND,PARM='DELETE COND BCFMLD17_IN_PR_OK &FECH1',
//          COND=(4,LT)
//*
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
//*@MARP04-FIN
// ENDIF
//*
// IF (ZFM10TA5.RC = 3) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM13TA1 EXEC PGM=IOACND,PARM='ADD COND NAJJD503_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*EME001-FIN
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T05.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML40                                     *
//* OBJETIVO   : REPORTES                                              *
//*--------------------------------------------------------------------*
//ZFM10TB5 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.DIA,
//            DISP=SHR
//*MBE001-INI
//ZMFM25P1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET3.DIA,
//            DISP=SHR
//*
//*ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA1,
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET13,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA2,
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET23,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*MBE001-FIN
//*
//*EME001-I
//ZMFM25F3 DD DUMMY
//*
//ZMFM25F4 DD DUMMY
//*EME001-F
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T40),DISP=SHR
//*
// IF (ZFM10TB5.RC = 1) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM31TB1 EXEC PGM=IOACND,PARM='ADD COND NAJJM503_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
// IF (ZFM10TB5.RC = 2) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM32TB1 EXEC PGM=IOACND,PARM='ADD COND NAJJM504_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
// IF (ZFM10TB5.RC = 3) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM33TB1 EXEC PGM=IOACND,PARM='ADD COND NAJJD504_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T05.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML40                                     *
//* OBJETIVO   : REPORTES                                              *
//*--------------------------------------------------------------------*
//ZFM10TC5 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.DIA,
//            DISP=SHR
//*MBE001-INI
//ZMFM25P1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET4.DIA,
//            DISP=SHR
//*
//*ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA1,
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET14,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA2,
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET24,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*MBE001-FIN
//*
//*EME001-I
//ZMFM25F3 DD DUMMY
//*
//ZMFM25F4 DD DUMMY
//*EME001-F
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T40),DISP=SHR
//*
// IF (ZFM10TC5.RC = 1) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM41TC1 EXEC PGM=IOACND,PARM='ADD COND NAJJM505_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
// IF (ZFM10TC5.RC = 2) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM42TC1 EXEC PGM=IOACND,PARM='ADD COND NAJJM506_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
// IF (ZFM10TC5.RC = 3) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM43TC1 EXEC PGM=IOACND,PARM='ADD COND NAJJM507_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T05.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML40                                     *
//* OBJETIVO   : REPORTES                                              *
//*--------------------------------------------------------------------*
//ZFM10TD5 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.DIA,
//            DISP=SHR
//*MBE001-INI
//ZMFM25P1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET5.DIA,
//            DISP=SHR
//*
//*ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA1,
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET15,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA2,
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET25,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*MBE001-FIN
//*
//*EME001-I
//ZMFM25F3 DD DUMMY
//*
//ZMFM25F4 DD DUMMY
//*EME001-F
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T40),DISP=SHR
//*
// IF (ZFM10TD5.RC = 1) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM41TD1 EXEC PGM=IOACND,PARM='ADD COND NAJJM508_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
// IF (ZFM10TD5.RC = 2) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM42TD1 EXEC PGM=IOACND,PARM='ADD COND NAJJM509_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
// IF (ZFM10TD5.RC = 3) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM43TD1 EXEC PGM=IOACND,PARM='ADD COND NAJJM510_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T05.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML40                                     *
//* OBJETIVO   : REPORTES                                              *
//*--------------------------------------------------------------------*
//ZFM10TE5 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.DIA,
//            DISP=SHR
//*MBE001-INI
//ZMFM25P1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET6.DIA,
//            DISP=SHR
//*
//*ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA1,
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET16,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA2,
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET26,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*MBE001-FIN
//*
//*EME001-I
//ZMFM25F3 DD DUMMY
//*
//ZMFM25F4 DD DUMMY
//*EME001-F
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T40),DISP=SHR
//*
// IF (ZFM10TE5.RC = 1) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM41TE1 EXEC PGM=IOACND,PARM='ADD COND NAJJM511_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
// IF (ZFM10TE5.RC = 2) THEN
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM42TE1 EXEC PGM=IOACND,PARM='ADD COND NAJJM512_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
//*@MARP-INI
//* IF (ZFM10TE5.RC = 3) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//*ZFM43TE1 EXEC PGM=IOACND,PARM='ADD COND NAJJM513_IN_OK &FECH1',
//*          COND=(4,LT)
//*
//*         INCLUDE MEMBER=IOASET
//*         INCLUDE MEMBER=IOAENV
//*SYSIN    DD DUMMY
//*DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//*DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//*STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//*PRTDBG   DD  SYSOUT=*
//*SYSPRINT DD  DUMMY
//*DAPRINT  DD  SYSOUT=*
//*DACNDIN  DD  DDNAME=SYSIN
//* ENDIF
//*@MARP-FIN
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T05.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML40                                     *
//* OBJETIVO   : REPORTES                                              *
//*--------------------------------------------------------------------*
//ZFM10TF5 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.DIA,
//            DISP=SHR
//*MBE001-INI
//ZMFM25P1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET7.DIA,
//            DISP=SHR
//*
//*ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA1,
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET17,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA2,
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET27,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*MBE001-FIN
//*
//*EME001-I
//ZMFM25F3 DD DUMMY
//*
//ZMFM25F4 DD DUMMY
//*EME001-F
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T40),DISP=SHR
//*EME001-INI
//*
// IF (ZFM10TF5.RC = 1) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM41TF1 EXEC PGM=IOACND,PARM='ADD COND NAJJM514_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
// IF (ZFM10TF5.RC = 2) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM42TF1 EXEC PGM=IOACND,PARM='ADD COND NAJJM515_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
// IF (ZFM10TF5.RC = 3) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM43TF1 EXEC PGM=IOACND,PARM='ADD COND NAJJM516_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T05.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML40                                     *
//* OBJETIVO   : REPORTES                                              *
//*--------------------------------------------------------------------*
//ZFM10TG5 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.DIA,
//            DISP=SHR
//*MBE001-INI
//ZMFM25P1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET8.DIA,
//            DISP=SHR
//*
//*ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA1,
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET18,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA2,
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET28,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*MBE001-FIN
//*
//*EME001-I
//ZMFM25F3 DD DUMMY
//*
//ZMFM25F4 DD DUMMY
//*EME001-F
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T40),DISP=SHR
//*
// IF (ZFM10TG5.RC = 1) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM43TG1 EXEC PGM=IOACND,PARM='ADD COND NAJJM517_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
// IF (ZFM10TG5.RC = 2) THEN
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA3.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO TRANSMISION     *
//*              DE ARCHIVOS DE MGCAPITAL.                             *
//*--------------------------------------------------------------------*
//ZFM43TG2 EXEC PGM=IOACND,PARM='ADD COND NAJJM518_IN_OK &FECH1',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*
//**********************************************************************
//* PASO    : ZFM25T00                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA CONCATENAR ARCHIVOS Y GENERAR TARJETA          *
//**********************************************************************
//ZFM25T00 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET11,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET12,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET13,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET14,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET15,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET16,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET17,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET18,DISP=SHR           04083167
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA1,                   04083267
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
//SORTIN   DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET21,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET22,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET23,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET24,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET25,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET26,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET27,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJET28,DISP=SHR           04083167
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML40.TARJETA2,                   04083267
//             DISP=(NEW,CATLG,DELETE),                                 04083367
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS),              04083467
//             SPACE=(CYL,(50,20),RLSE),UNIT=3390                       04083567
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM10T00),DISP=SHR
//*
//*MBE001-FIN
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM14T10.                                             *
//* PROGRAMA   : ZM3FML27                                              *
//* OBJETIVO   : OBTIENE CONTRATOS DE FAMILY OFFICE                    *
//*--------------------------------------------------------------------*
//ZFM14T00 EXEC PGM=ZM3FML27,COND=(4,LT)
//*
//ZM27FME1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.DIA,
//            DISP=SHR
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*@MARP05-INI
// IF (ZFM14T00.RC = 3) THEN
//*---------------------------------------------------------------------
//* PASO    : ZFM14TB0.                                             *
//* PROGRAMA: CTMCND
//* OBJETIVO: ADICIONA CONDICION PARA QUE SE EJECUTE EL SIGUIENTE FAMILY
//*           CON TRANSMICION A EXTRANET
//*---------------------------------------------------------------------
//ZFM14TB0 EXEC PGM=CTMCND,PARM='ADD COND BCFMLD17_IN_P4_OK &FECH1'
//*
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
// ENDIF
//*
//*@MARP05-FIN
//*
//*EME001-INI
// IF (ZFM14T00.RC = 4) THEN
//*---------------------------------------------------------------------
//* PASO    : ZFM14TA0.                                             *
//* PROGRAMA: IOACND
//* OBJETIVO: ADICIONA CONDICION PARA QUE SEA TOMADA POR AJ Y SE EJECUTE
//*           EL PROCESO NAJJD600, INDICANDO QUE YA SE HA PROCESADO
//*           COMPLETO EL ARCHIVO DE GRUPOS DE FRECUENCIA DIARIA.
//*---------------------------------------------------------------------
//ZFM14TA0 EXEC PGM=IOACND,PARM='ADD COND NAJJD600_IN_OK &FECH1',
//         COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
// ENDIF
//*
//*EME001-FIN.
//*
