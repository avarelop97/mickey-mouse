//ZMFMLD19 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - FAMILY OFFICE.                                 *
//* PROCESO      : ZMFMLD19.                                           *
//* PERIODICIDAD : MENSUAL.                                            *
//* OBJETIVO     : REPORTES DE FAMILY OFFICE                           *
//* REALIZO      : INDRA                                               *
//* FECHA        : JULIO 2016.                                         *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* EME001      GESFOR    09JUL18 SE INCORPORAN DOS ARCHIVOS DE SALIDA *
//*                               EN EL PASO ZFM10T05 ESTO COMO        *
//*                               TARJETAS DE TRANSMISION PARA EXTRANET*
//* EME001      GESFOR    09JUL18 SE MODIFICA PROGRAMA ZM3FML27 DEL    *
//*                               DEL PASO ZFM14T00 PARA CREAR         *
//*                               CONDICION FIN-DE-PROCESO DE ARCHIVO  *
//* EME001      GESFOR    09JUL18 SE INCORPORA UN PASO ZMFM250A AL     *
//*                               FINAL QUE DEJA CONDICION AL PROCESO  *
//*                               NAJJM600 QUE ENVIA CONDICION AL      *
//*                               SERVIDOR DE EXTRANET PARA INDICAR QUE*
//*                               YA SE PROCESARON TODOS LOS GRUPOS DEL*
//*                               QUE ESTAN REGISTRADOS EN EL ARCHIVO. *
//* ----------- --------- ------- ------------------------------------ *
//* MBE001      XMZ7865   23OCT18 SE AGREGA PROCESO PARA GENERAR       *
//*                               TARJETAS DE PARAMETROS PARA CONTROLAR*
//*                               LOS GRUPOS QUE SE ACTIVAN POR CADA   *
//*                               PROCESO CICLICO.                     *
//*                               ADEMAS SE AGREGA PROCESO PARA ANEXAR *
//*                               LEYENDA AL FINAL DE LOS ARCHIVOS     *
//*                               DE POSICION Y TRANSACCIONES          *
//*--------------------------------------------------------------------*
//* MBE001      GETRONICS 11SEP18 SE INCORPORAN PROCESOS PARA          *
//*                               GENERAR NUEVAS CONDICIONES           *
//*   @MARP02   XMY6669   15ABR19 SE MODIFICA LA LONGITUD PARA LA      *
//*                               INCLUCION DEL TIPO DE TENENCIA EN EL *
//*                               ARCHIVO DE POSICION                  *
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
//ZFM10T45 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM15FME1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.MEN,
//            DISP=SHR
//*
//ZM15FMS1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.MEN,
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
//*           DCB=(RECFM=FB,LRECL=314,BLKSIZE=0,DSORG=PS)
//*@MARP02-INI
//            DCB=(RECFM=FB,LRECL=316,BLKSIZE=0,DSORG=PS)
//*@MARP02-FIN
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.FAM.CONTROL.POS.MEN,DISP=SHR
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
//SORTIN   DD  DSN=MXCP.ZM.WKF.FAM.ZM4FML15.POS.MEN.F,DISP=SHR
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM3FML43.LEYFAM.POS,DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.MEN.F,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//*            DCB=(RECFM=FB,LRECL=314,BLKSIZE=0,DSORG=PS)
//*MARP02-INI
//             DCB=(RECFM=FB,LRECL=316,BLKSIZE=0,DSORG=PS)
//*MARP02-FIN
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM10T00),DISP=SHR
//*EME001-FIN
//*
//*@MARP04-INI
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
//*@MARP04-FIN
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
//*INPUT    DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.MEN.F,DISP=SHR
//*
//*OUTPUT   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.MEN.F&HOR,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(200,100),RLSE),
//*           DCB=(RECFM=FB,LRECL=314,BLKSIZE=0,DSORG=PS)
//*@MARP02-INI
//*            DCB=(RECFM=FB,LRECL=316,BLKSIZE=0,DSORG=PS)
//*@MARP02-FIN
//*
//*SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM20T20),DISP=SHR
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
//*EME001-INI
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
//*@MARP04-INI
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
//*@MARP04-FIN
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
//*INPUT    DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.MEN.F,DISP=SHR
//*
//*OUTPUT   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.MEN.F&HOR,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            SPACE=(CYL,(200,100),RLSE),
//*            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0,DSORG=PS)
//*
//*SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZFM20T20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZFM10T09                                                *
//* PROGRAMA : ICEGENER                                                *
//* FUNCION  : COPIADO DE ARCHIVO DE POS DE UN DOMINIO MXCP.ZM A       *
//*            MBVP.AJ  DE FAMILY OFFICE                               *
//*--------------------------------------------------------------------*
//*ZFM10T09 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//*SYSUT1   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.MEN.F,
//*            DISP=SHR
//*
//*SYSUT2   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.F,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(10,05),RLSE),
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=314,BLKSIZE=0),
//*@MARP02-INI
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=316,BLKSIZE=0),
//*@MARP02-INI
//*            UNIT=3390
//*SYSIN    DD DUMMY
//*SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO     : ZFM10T08                                                *
//* PROGRAMA : ICEGENER                                                *
//* FUNCION  : COPIADO DE ARCHIVO DE TRX DE UN DOMINIO MXCP.ZM A       *
//*            MBVP.AJ  DE FAMILY OFFICE                               *
//*--------------------------------------------------------------------*
//*ZFM10T08 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//*SYSUT1   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.MEN.F,
//*            DISP=SHR
//*
//*SYSUT2   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.F,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(10,05),RLSE),
//*            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//*            UNIT=3390
//*SYSIN    DD DUMMY
//*SYSPRINT DD SYSOUT=*
//*MBE001-INI
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
//*MBE001-FIN
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
//*MBE001-INI
//ZMFM25P1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET1.MEN,
//            DISP=SHR
//*
//*ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA1,
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET11,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA2,
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET21,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T42),DISP=SHR
//*
//*EME001-INI
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0012 PROMECAP              *
//*--------------------------------------------------------------------*
// IF (ZFM10T05.RC = 1) THEN
//ZFM10T03 EXEC PGM=IOACND,PARM='ADD COND NAJJS501_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10T02.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0020 NSC                   *
//*--------------------------------------------------------------------*
// IF (ZFM10T05.RC = 2) THEN
//ZFM10T02 EXEC PGM=IOACND,PARM='ADD COND NAJJD501_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0021 FERNANDEZG            *
//*--------------------------------------------------------------------*
// IF (ZFM10T05.RC = 3) THEN
//ZFM10T01 EXEC PGM=IOACND,PARM='ADD COND NAJJM501_IN_OK &FECH1',
//         COND=(4,LT)
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
//*MBE001-INI
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10TA5.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML42                                     *
//* OBJETIVO   : REPORTES                                              *
//*--------------------------------------------------------------------*
//ZFM10TA5 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.MEN,
//            DISP=SHR
//*MBE001-INI
//ZMFM25P1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET2.MEN,
//            DISP=SHR
//*
//*ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA1,
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET12,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA2,
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET22,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T42),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0012 PROMECAP              *
//*--------------------------------------------------------------------*
// IF (ZFM10TA5.RC = 1) THEN
//ZFM10TA3 EXEC PGM=IOACND,PARM='ADD COND NAJJM502_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10T02.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0020 NSC                   *
//*--------------------------------------------------------------------*
// IF (ZFM10TA5.RC = 2) THEN
//ZFM10TA2 EXEC PGM=IOACND,PARM='ADD COND NAJJD502_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0021 FERNANDEZG            *
//*--------------------------------------------------------------------*
// IF (ZFM10TA5.RC = 3) THEN
//ZFM10TA1 EXEC PGM=IOACND,PARM='ADD COND NAJJD503_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10TA5.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML42                                     *
//* OBJETIVO   : REPORTES                                              *
//*--------------------------------------------------------------------*
//ZFM10TB5 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.MEN,
//            DISP=SHR
//*MBE001-INI
//ZMFM25P1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET3.MEN,
//            DISP=SHR
//*
//*ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA1,
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET13,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA2,
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET23,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T42),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0012 PROMECAP              *
//*--------------------------------------------------------------------*
// IF (ZFM10TB5.RC = 1) THEN
//ZFM10TB3 EXEC PGM=IOACND,PARM='ADD COND NAJJM503_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10T02.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0020 NSC                   *
//*--------------------------------------------------------------------*
// IF (ZFM10TB5.RC = 2) THEN
//ZFM10TB2 EXEC PGM=IOACND,PARM='ADD COND NAJJM504_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0021 FERNANDEZG            *
//*--------------------------------------------------------------------*
// IF (ZFM10TB5.RC = 3) THEN
//ZFM10TB1 EXEC PGM=IOACND,PARM='ADD COND NAJJD504_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10TA5.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML42                                     *
//* OBJETIVO   : REPORTES                                              *
//*--------------------------------------------------------------------*
//ZFM10TC5 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.MEN,
//            DISP=SHR
//*MBE001-INI
//ZMFM25P1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET4.MEN,
//            DISP=SHR
//*
//*ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA1,
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET14,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA2,
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET24,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T42),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0012 PROMECAP              *
//*--------------------------------------------------------------------*
// IF (ZFM10TC5.RC = 1) THEN
//ZFM10TC3 EXEC PGM=IOACND,PARM='ADD COND NAJJM505_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10T02.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0020 NSC                   *
//*--------------------------------------------------------------------*
// IF (ZFM10TC5.RC = 2) THEN
//ZFM10TC2 EXEC PGM=IOACND,PARM='ADD COND NAJJM506_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0021 FERNANDEZG            *
//*--------------------------------------------------------------------*
// IF (ZFM10TC5.RC = 3) THEN
//*
//*--------------------------------------------------------------------*
//* PASO     : ZFM25TC5                                                *
//* PROGRAMA : ICEGENER                                                *
//* FUNCION  : COPIADO DE ARCHIVO DE POS PARA EXTRANET DEL FAMILY      *
//*            OFFICE PROMECAP.                                        *
//*--------------------------------------------------------------------*
//ZFM25TC5 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.MEN.F,
//            DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.FAM.PROMECAP.POS.MEN.F,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=314,BLKSIZE=0),
//*@MARP02-INI
//            DCB=(DSORG=PS,RECFM=FB,LRECL=316,BLKSIZE=0),
//*@MARP02-FIN
//            UNIT=3390
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO     : ZFM35TC5                                                *
//* PROGRAMA : ICEGENER                                                *
//* FUNCION  : COPIADO DE ARCHIVO DE TRX PARA EXTRANET DEL FAMILY      *
//*            OFFICE PROMECAP.                                        *
//*--------------------------------------------------------------------*
//ZFM35TC5 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.TXS.MEN.F,
//            DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.FAM.PROMECAP.TXS.MEN.F,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0012 PROMECAP              *
//*--------------------------------------------------------------------*
//ZFM10TC1 EXEC PGM=IOACND,PARM='ADD COND NAJJM507_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10TA5.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML42                                     *
//* OBJETIVO   : REPORTES                                              *
//*--------------------------------------------------------------------*
//ZFM10TD5 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.MEN,
//            DISP=SHR
//*MBE001-INI
//ZMFM25P1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET5.MEN,
//            DISP=SHR
//*
//*ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA1,
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET15,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA2,
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET25,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T42),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0012 PROMECAP              *
//*--------------------------------------------------------------------*
// IF (ZFM10TD5.RC = 1) THEN
//ZFM10TD3 EXEC PGM=IOACND,PARM='ADD COND NAJJM508_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10T02.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0020 NSC                   *
//*--------------------------------------------------------------------*
// IF (ZFM10TD5.RC = 2) THEN
//ZFM10TD2 EXEC PGM=IOACND,PARM='ADD COND NAJJM509_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0021 FERNANDEZG            *
//*--------------------------------------------------------------------*
// IF (ZFM10TD5.RC = 3) THEN
//ZFM10TD1 EXEC PGM=IOACND,PARM='ADD COND NAJJM510_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10TA5.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML42                                     *
//* OBJETIVO   : REPORTES                                              *
//*--------------------------------------------------------------------*
//ZFM10TE5 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.MEN,
//            DISP=SHR
//*MBE001-INI
//ZMFM25P1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET6.MEN,
//            DISP=SHR
//*
//*ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA1,
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET16,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA2,
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET26,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T42),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0012 PROMECAP              *
//*--------------------------------------------------------------------*
// IF (ZFM10TE5.RC = 1) THEN
//ZFM10TE3 EXEC PGM=IOACND,PARM='ADD COND NAJJM511_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0012 PROMECAP              *
//*--------------------------------------------------------------------*
// IF (ZFM10TE5.RC = 2) THEN
//ZFM10TE2 EXEC PGM=IOACND,PARM='ADD COND NAJJM512_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0012 PROMECAP              *
//*--------------------------------------------------------------------*
// IF (ZFM10TE5.RC = 3) THEN
//ZFM10TE1 EXEC PGM=IOACND,PARM='ADD COND NAJJM513_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10TA5.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML42                                     *
//* OBJETIVO   : REPORTES                                              *
//*--------------------------------------------------------------------*
//ZFM10TF5 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.MEN,
//            DISP=SHR
//*MBE001-INI
//ZMFM25P1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET7.MEN,
//            DISP=SHR
//*
//*ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA1,
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET17,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA2,
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET27,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T42),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0012 PROMECAP              *
//*--------------------------------------------------------------------*
// IF (ZFM10TF5.RC = 1) THEN
//ZFM10TF3 EXEC PGM=IOACND,PARM='ADD COND NAJJM514_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0012 PROMECAP              *
//*--------------------------------------------------------------------*
// IF (ZFM10TF5.RC = 2) THEN
//ZFM10TF2 EXEC PGM=IOACND,PARM='ADD COND NAJJM515_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0012 PROMECAP              *
//*--------------------------------------------------------------------*
// IF (ZFM10TF5.RC = 3) THEN
//ZFM10TF1 EXEC PGM=IOACND,PARM='ADD COND NAJJM516_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10TA5.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML42                                     *
//* OBJETIVO   : REPORTES                                              *
//*--------------------------------------------------------------------*
//ZFM10TG5 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.MEN,
//            DISP=SHR
//*MBE001-INI
//ZMFM25P1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.PARAMET8.MEN,
//            DISP=SHR
//*
//*ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA1,
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET18,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJETA2,
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET28,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T42),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0012 PROMECAP              *
//*--------------------------------------------------------------------*
// IF (ZFM10TG5.RC = 1) THEN
//ZFM10TG1 EXEC PGM=IOACND,PARM='ADD COND NAJJM517_IN_OK &FECH1',
//         COND=(4,LT)
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
//* PASO       : ZFM10T03.                                             *
//* PROGRAMA   : CTMCND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA GRUPO 0012 PROMECAP              *
//*--------------------------------------------------------------------*
// IF (ZFM10TG5.RC = 2) THEN
//ZFM10TG2 EXEC PGM=IOACND,PARM='ADD COND NAJJM518_IN_OK &FECH1',
//         COND=(4,LT)
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
//**********************************************************************
//* PASO    : ZFM25T00                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT PARA CONCATENAR ARCHIVOS Y GENERAR TARJETA          *
//**********************************************************************
//ZFM25T00 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET11,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET12,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET13,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET14,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET15,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET16,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET17,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET18,DISP=SHR           04083167
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
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET22,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET23,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET24,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET25,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET26,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET27,DISP=SHR           04083167
//         DD  DSN=MXCP.ZM.FIX.FAM.ZM4FML42.TARJET28,DISP=SHR           04083167
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
//*
//*MBE001-FIN
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM14T10.                                             *
//* PROGRAMA   : ZM3FML27                                              *
//* OBJETIVO   : ACTUALIZA GRUPOS DE FAMILY OFFICE PROCESADOS          *
//*--------------------------------------------------------------------*
//ZFM14T00 EXEC PGM=ZM3FML27,COND=(4,LT)
//*
//ZM27FME1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.MEN,
//            DISP=SHR
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//*EME001-INI
//*---------------------------------------------------------------------
//* PASO    : ZFM14TA0.                                             *
//* PROGRAMA: CTMCND
//* OBJETIVO: ADICIONA CONDICION PARA QUE SEA TOMADA POR AJ
//*           Y SE EJECUTE EL PROCESO NAJJM600.
//*---------------------------------------------------------------------
// IF (ZFM14T00.RC = 4) THEN
//ZFM14TA0 EXEC PGM=IOACND,PARM='ADD COND NAJJM600_IN_OK &FECH1',
//         COND=(4,LT)
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
//*EME001-FIN.
//*
