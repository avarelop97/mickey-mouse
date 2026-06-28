//ZMFMLD11 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - FAMILY OFFICE.                                 *
//* PROCESO      : ZMFMLD11.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : REPORTES DE FAMILY OFFICE                           *
//* REALIZO      : INDRA                                               *
//* FECHA        : FEBRERO 2016.                                       *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : ZFM10T10.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML10                                     *
//* OBJETIVO   : OBTIENE CONTRATOS DE FAMILY OFFICE                    *
//*--------------------------------------------------------------------*
//ZFM11T10 EXEC PGM=IKJEFT01
//*
//ZM10FMS1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML10.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=50,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFM11T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM11T15.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML05                                     *
//* OBJETIVO   : REPORTE DE SAMPLE POSITION                            *
//*--------------------------------------------------------------------*
//ZFM11T15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM15FME1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML10.DIA,
//            DISP=SHR
//*
//ZM15FMS1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML15.POS.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=314,BLKSIZE=0,DSORG=PS)
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
//* PASO       : ZFM11T20.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML20                                     *
//* OBJETIVO   : REPORTE DE SAMPLE TRANSACCION                         *
//*--------------------------------------------------------------------*
//ZFM11T20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM20FME1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML10.DIA,
//            DISP=SHR
//*
//ZM20FMS1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML20.REPTXS.DIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=370,BLKSIZE=0,DSORG=PS)
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
