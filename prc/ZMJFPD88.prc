//ZMJFPD88 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM.                                                 *
//* PROCESO      : ZMJFPD88                                            *
//* OBJETIVO     :                                                     *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PROCESO ORDENES                                                *
//*                                                                    *
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO     : PDO68005                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ORDENES.                           *
//*                                                                    *
//**********************************************************************
//PSO88090 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMJFPD88,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC01 DD DSN=MXCP.ZM.FIX.REPORTE.AUDIORD,
//            SPACE=(CYL,(500,350),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJO68013),DISP=SHR
//*====================================================================*
//* PASO     : PSO88070                                                *
//* OBJETIVO : EXTRAE INFORMACION ORDENES/CUENTAS DE FECHA ESPECIFICA  *
//* PROGRAMA : ZM4VER07                                                *
//**********************************************************************
//PSO88070 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO68010 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMORDEE1 DD DSN=MXCP.ZM.FIX.REPORTE.AUDIORD,DISP=SHR
//REPORDEN DD DSN=MXCP.ZM.FIX.REPORTE.AUORDEN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=745,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(500,350),RLSE),DSNTYPE=LARGE
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO68014),DISP=SHR
//*
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//* OBJETIVO : ORDENA EL ARCHIVO POR CONTRATO Y FOLIO GL               *
//**********************************************************************
//PSO88050 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REPORTE.AUORDEN,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REPORTE.ORDBANCO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=745,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(500,350),RLSE),DSNTYPE=LARGE,UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJO68015),DISP=SHR
//*
//*====================================================================*
//* PASO     : PSO88030                                                *
//* OBJETIVO : GENERA REPORTE ORDENES Y CONTRATOS                      *
//* PROGRAMA : ZM4VER08                                                *
//**********************************************************************
//PSO88030 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PIO68010 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMORDEE1 DD DSN=MXCP.ZM.FIX.REPORTE.ORDBANCO,DISP=SHR
//ZMORDEE2 DD DSN=MXCP.ZM.GDGD.LOCALD.CATAL(0),DISP=SHR
//REPORDEN DD DSN=MXCP.ZM.FIX.REPORTE.ORDBANCS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=747,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(500,350),RLSE),DSNTYPE=LARGE
//*
//REPERROR DD DSN=MXCP.ZM.FIX.REPORTE.ORDBANCE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=88,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(150,50),RLSE),DSNTYPE=LARGE
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJO68016),DISP=SHR
//*
//**********************************************************************
//*                          ==  ICEMAN  ==                            *
//* OBJETIVO : ELIMINA DUPLICADOS DEL ARCHIVO DE ERRORES               *
//**********************************************************************
//PSO88010 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.REPORTE.ORDBANCE,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REPORTE.ERRORDEN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=88,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(150,50),RLSE),DSNTYPE=LARGE,UNIT=3390
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJO68017),DISP=SHR
//*
//*@DF-I
//*--------------------------------------------------------------------*
//* PASO       : PSO88100.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO DE ALTMA        *
//*--------------------------------------------------------------------*
//PSO88100 EXEC PGM=IOACND,PARM='ADD COND CBJFCD88_OK &FEC',
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
//*@DF-F
