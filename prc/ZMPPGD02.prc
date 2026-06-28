//ZMPPGD02 PROC
//*                                                                   **
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - BCPPGD02.                                      *
//* PROCESO      : ZMPPGD02.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : REPORTE DE DETALLE DE INVERSIONES PPG.              *
//* REALIZO      : FSW INDRA                                           *
//* FECHA        : 15 DE OCTUBRE DEL 2015.                             *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*@INDRA-0216-I  INDRA   15-02-16 SE MODIFICAN LAS LONGITUDES         *
//*@INDRA-0216-F                                                       *
//*--------------------------------------------------------------------*
//*@INDRA-1116-I  INDRA   30-11-16 SE MODIFICAN LAS LONGITUDES         *
//*@INDRA-1116-F                                                       *
//*--------------------------------------------------------------------*
//*@INDRA-0117-I  INDRA   30-11-16 SE MODIFICAN LAS LONGITUDES         *
//*@INDRA-0117-F                                                       *
//*--------------------------------------------------------------------*
//*@INDRA-0317-I  INDRA   28-03-17 SE MODIFICAN LAS LONGITUDES         *
//*@INDRA-0317-F                                                       *
//*--------------------------------------------------------------------*
//* PASO       : ZPP02T20.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG17                                     *
//* OBJETIVO   : OBTIENE INFORMACION DE CONTRATOS DE INVERSION PPG     *
//*--------------------------------------------------------------------*
//*
//ZPP02T20 EXEC PGM=IKJEFT01
//*
//ZM20PPS1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG17.DESC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*@INDRA-0216-I
//*           DCB=(RECFM=FB,LRECL=231,BLKSIZE=0,DSORG=PS)
//*@INDRA-0117-I
//*           DCB=(RECFM=FB,LRECL=247,BLKSIZE=0,DSORG=PS)
//*@INDRA-0317-I
//*           DCB=(RECFM=FB,LRECL=339,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=439,BLKSIZE=0,DSORG=PS)
//*@INDRA-0317-F
//*
//*@INDRA-0117-F
//*@INDRA-0216-F
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP02T20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP02T15.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO POR NUMERO DE CLIENTE Y POR NUMERO DE  *
//*              CONTRATO/FOLIO UG. SE SUMARIZAN LOS CAMPOS VALOR DE LA*
//*              GARANTIA (ACTUAL) Y VALOR DE LA GARANTIA (FORMALIZADO)*
//*--------------------------------------------------------------------*
//*
//ZPP02T15 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG17.DESC,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG17.DESC.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@INDRA-0216-I
//*           DCB=(DSORG=PS,LRECL=231,RECFM=FB,BLKSIZE=0),
//*@INDRA-0117-I
//*           DCB=(DSORG=PS,LRECL=247,RECFM=FB,BLKSIZE=0),
//*
//*@INDRA-0317-I
//*           DCB=(DSORG=PS,LRECL=339,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=439,RECFM=FB,BLKSIZE=0),
//*
//*@INDRA-0317-F
//*
//*@INDRA-0117-F
//*@INDRA-0216-F
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP02T15),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP02T10.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : MATCH ENTRE ARCHIVOS                                  *
//*--------------------------------------------------------------------*
//*
//ZPP02T10 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG17.DESC,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG17.DESC.SORT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG17.MATCH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@INDRA-0216-I
//*           DCB=(DSORG=PS,LRECL=231,RECFM=FB,BLKSIZE=0),
//*@INDRA-0117-I
//*           DCB=(DSORG=PS,LRECL=247,RECFM=FB,BLKSIZE=0),
//*
//*@INDRA-0317-I
//*           DCB=(DSORG=PS,LRECL=339,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=439,RECFM=FB,BLKSIZE=0),
//*@INDRA-0317-F
//*
//*@INDRA-0117-F
//*@INDRA-0216-I
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP02T10),DISP=SHR
//*
//*@INDRA
//*--------------------------------------------------------------------*
//* PASO       : ZPP02T09.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO POR NUMERO CONTRATO/FOLIO UG.          *
//*--------------------------------------------------------------------*
//*
//ZPP02T09 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG17.MATCH,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG17.MATCHSOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@INDRA-0117-I
//*           DCB=(DSORG=PS,LRECL=247,RECFM=FB,BLKSIZE=0),
//*
//*@INDRA-0317-I
//*           DCB=(DSORG=PS,LRECL=339,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=439,RECFM=FB,BLKSIZE=0),
//*@INDRA-0317-F
//*@INDRA-0117-F
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP02T09),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP02T08.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO POR NUMERO CONTRATO/FOLIO UG.          *
//*--------------------------------------------------------------------*
//*
//ZPP02T08 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXBP.YH.FIX.F&FECHA..PPGSAMUV.MONITINV,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPGSAMUV.MONITINV.SORT2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@INDRA-1116-I
//*           DCB=(DSORG=PS,LRECL=44,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=54,RECFM=FB,BLKSIZE=0),
//*@INDRA-1116-F
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP02T08),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP02T07.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : MATCH ENTRE ARCHIVOS                                  *
//*--------------------------------------------------------------------*
//*
//ZPP02T07 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG17.MATCHSOR,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.PPGSAMUV.MONITINV.SORT2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG17.MATCH2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@INDRA-0117-I
//*           DCB=(DSORG=PS,LRECL=247,RECFM=FB,BLKSIZE=0),
//*@INDRA-0317-I
//*           DCB=(DSORG=PS,LRECL=339,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=439,RECFM=FB,BLKSIZE=0),
//*@INDRA-0317-F
//*
//*@INDRA-0117-F
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP02T07),DISP=SHR
//*
//*@INDRA
//*--------------------------------------------------------------------*
//* PASO       : ZPP02T05.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG18                                     *
//* OBJETIVO   : GENERA REPORTE DE MONITOREO A DETALLE DE INVERSIONES  *
//*--------------------------------------------------------------------*
//*
//ZPP02T05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM05PPE1 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG17.MATCH2,
//             DISP=SHR
//*
//ZM05PPS1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG18.REPPPGDE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*@INDRA-0216-I
//*           DCB=(RECFM=FB,LRECL=257,BLKSIZE=0,DSORG=PS)
//*@INDRA-0117-I
//*           DCB=(RECFM=FB,LRECL=277,BLKSIZE=0,DSORG=PS)
//*
//*@INDRA-0317-I
//*           DCB=(RECFM=FB,LRECL=399,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=499,BLKSIZE=0,DSORG=PS)
//*@INDRA-0317-F
//*@INDRA-0117-F
//*@INDRA-0216-F
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP02T05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                       FIN PROCESO ZMPPGD02                         *
//*--------------------------------------------------------------------*
