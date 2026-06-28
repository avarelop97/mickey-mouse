//ZMFMLD01 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - FAMILY OFFICE.                                 *
//* PROCESO      : ZMFMLD01.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : REPORTES DE FAMILY OFFICE                           *
//* REALIZO      : INDRA                                               *
//* FECHA        : NOVIEMBRE 2015.                                     *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*@INDRA-0216-I  INDRA   22FEB16 SE MODIFICAN LAS LONGITUDES DE LOS   *
//*@INDRA-0216-F                  ARCHIVOS.                            *
//*--------------------------------------------------------------------*
//* PASO       : ZFM01T95.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML01                                     *
//* OBJETIVO   : OBTIENE CONTRATOS DE FAMILY OFFICE                    *
//*--------------------------------------------------------------------*
//ZFM01T95 EXEC PGM=IKJEFT01
//*
//ZM95FMS1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML01.DESC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=45,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZFO01T95),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM01T90.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML02                                     *
//* OBJETIVO   : REPORTE DE SAMPLE POSITION                            *
//*--------------------------------------------------------------------*
//ZFM01T90 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM90FME1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML01.DESC,
//            DISP=SHR
//*
//ZM90FMS1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML02.REPPOS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*@INDRA-0216-I
//*           DCB=(RECFM=FB,LRECL=281,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=314,BLKSIZE=0,DSORG=PS)
//*@INDRA-0216-F
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFO01T90),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM01T85.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML03                                     *
//* OBJETIVO   : REPORTE DE SAMPLE TRANSACCION                         *
//*--------------------------------------------------------------------*
//ZFM01T85 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM85FME1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML01.DESC,
//            DISP=SHR
//*
//ZM85FMS1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML03.REPTXS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*@INDRA-0216-I
//*           DCB=(RECFM=FB,LRECL=327,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=370,BLKSIZE=0,DSORG=PS)
//*@INDRA-0216-F
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFO01T85),DISP=SHR
//*
