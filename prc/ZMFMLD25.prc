//ZMFMLD25 PROC
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - FAMILY OFFICE.                                 *
//* PROCESO      : ZMFMLD25.                                           *
//* PERIODICIDAD : VARIABLE.                                           *
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
//* PASO       : ZFM25T10.                                             *
//* UTILERIA   : IKJEFT01/ZM4FML25                                     *
//* OBJETIVO   : REPORTES                                              *
//*--------------------------------------------------------------------*
//ZFM10T25 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMFM25A1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML24.DIA,
//            DISP=SHR
//*
//ZMFM25F1 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML25.TARJETA1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//ZMFM25F2 DD DSN=MXCP.ZM.FIX.FAM.ZM4FML25.TARJETA2,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZFM10T25),DISP=SHR
//*
