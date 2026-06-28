//ZMJFPD68 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM.                                                 *
//* PROCESO      : ZMJFPD68                                            *
//* OBJETIVO     :                                                     *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//* FS-0.0.0-01 XMY2883   03MAY18 SE MODIFICA LONGITUD DE ARCHIVO      *
//* FS-0.0.0-02 XMY2883   25JUN18 SE CREA PASO PARA DESCARGA DE ARCHIVO*
//* FS-0.0.0-03 MI30309   25JUN18 SE CREAN DOS PASOS PARA DESCARGA DE  *
//*                               REGISTROS DE HECHOS Y GENERAR REPORTE*
//*--------------------------------------------------------------------*
//* PROCESO ORDENES                                                *
//*                                                                    *
//*--------------------------------------------------------------------*
//*FS-0.0.0-02-I
//**********************************************************************
//* PASO     : PDO68005                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ORDENES.                           *
//*                                                                    *
//**********************************************************************
//PDO68005 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PUC01P15,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC01 DD DSN=MXCP.ZM.FIX.REPORTE.DORDENS,
//            SPACE=(CYL,(500,350),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJO68012),DISP=SHR
//*FS-0.0.0-02-F
//*====================================================================*
//* PASO     : PDO68010                                                *
//* OBJETIVO : GENERA REPORTE ORDENES/CUENTAS SEGUN FECHA ESPECIFICA   *
//* PROGRAMA : ZM4DGE11                                                *
//**********************************************************************
//PDO68010 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO68010 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMORDEE1 DD DSN=MXCP.ZM.FIX.REPORTE.DORDENS,DISP=SHR
//REPORDEN DD DSN=MXCP.ZM.FIX.REPORTE.ORDEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=413,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(500,350),RLSE),DSNTYPE=LARGE
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO68010),DISP=SHR
//*
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//* OBJETIVO : ORDENA EL ARCHIVO POR CONTRATO Y FOLIO GL               *
//**********************************************************************
//ZPP06T45 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REPORTE.ORDEN,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REPORTE.ORDENES,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=413,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(500,350),RLSE),DSNTYPE=LARGE,UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJO68011),DISP=SHR
//*
//*FS-0.0.0-01-F
//*FS-0.0.0-03-I
//**********************************************************************
//* PASO     : PDO68015                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ORDENES.                           *
//*                                                                    *
//**********************************************************************
//PDO68015 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PDO68015,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC01 DD DSN=MXCP.ZM.FIX.REPORTE.SIRASIG,
//            SPACE=(CYL,(200,150),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJO68019),DISP=SHR
//*====================================================================*
//* PASO     : PDO68020                                                *
//* OBJETIVO : GENERA REPORTE ORDENES/CUENTAS SEGUN FECHA ESPECIFICA   *
//* PROGRAMA : ZM4DGE11                                                *
//**********************************************************************
//PDO68020 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO68020 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMORDEE2 DD DSN=MXCP.ZM.FIX.REPORTE.SIRASIG,DISP=SHR
//REPORDE2 DD DSN=MXCP.ZM.FIX.REPORTE.ASIGSIR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=273,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(250,150),RLSE),DSNTYPE=LARGE
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO68018),DISP=SHR
//*
//*FS-0.0.0-03-F
