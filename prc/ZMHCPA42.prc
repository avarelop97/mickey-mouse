//ZMHCPA42 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM@                                                 *
//* PROCESO      : ZMHCPA42                                            *
//* OBJETIVO     : PROCESO ORDENES                                     *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO     : PSO42001                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ORDENES.                           *
//**********************************************************************
//PSO42001 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMHCPA42,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC01 DD DSN=MXCP.ZM.FIX.REPORTE.ORDDIGI,
//            SPACE=(CYL,(500,350),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC42T10),DISP=SHR
//*
//*====================================================================*
//* PASO     : PSO42002                                                *
//* OBJETIVO : EXTRAE INFORMACION ORDENES DE FECHA ESPECIFICA          *
//* PROGRAMA : ZM4DHT87                                                *
//**********************************************************************
//PSO42002 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO68010 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMORDEE1 DD DSN=MXCP.ZM.FIX.REPORTE.ORDDIGI,DISP=SHR
//REPORDEN DD DSN=MXCP.ZM.FIX.REPORTE.ORDENBP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=300,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(500,350),RLSE),DSNTYPE=LARGE
//REORDTXT DD DSN=MXCP.ZM.FIX.REPTXTE.ORDENB2.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=185,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(500,350),RLSE),DSNTYPE=LARGE
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC42T11),DISP=SHR
//*
