//ZMPPGD01 PROC
//*                                                                   **
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - BCPPGD01.                                      *
//* PROCESO      : ZMPPGD01.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : REPORTE DE MONITOREO GENERAL DE INVERSINOES.        *
//* REALIZO      : FSW INDRA                                           *
//* FECHA        : 15 DE OCTUBRE DEL 2015.                             *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*@INDRA-11-15  INDRA    09-11-15 SE MODIFICAN TARJETAS DE CONTROL Y  *
//*@INDRA-11-15                    SE MODIFICAN LONGITUDES EN LOS      *
//*                                ARCHIVOS.                           *
//*--------------------------------------------------------------------*
//*@INDRA-0516-I  INDRA   27-05-16 SE AGREGAN PASOS PARA OBTENER EL    *
//*@INDRA-0516-F                   ARCHIVO DE PERSONAS.                *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*@INDRA-1116-I  INDRA   30-11-16 SE AGREGAN EL CAMPO FEFORMA EN EL   *
//*@INDRA-1116-F                   ARCHIVO QUE SE RECIBE DE UG.        *
//*--------------------------------------------------------------------*
//* PASO       : ZPP01T25.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG15                                     *
//* OBJETIVO   : OBTIENE INFORMACION DE CONTRATOS DE INVERSION PPG     *
//*--------------------------------------------------------------------*
//*
//ZPP01T25 EXEC PGM=IKJEFT01
//*
//ZM25PPS1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG15.DESC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*@INDRA-11-15
//*           DCB=(RECFM=FB,LRECL=175,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=217,BLKSIZE=0,DSORG=PS)
//*@INDRA-11-15
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPP01T25),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP01T1D.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO POR NUMERO DE CLIENTE.                 *
//*--------------------------------------------------------------------*
//*
//ZPP01T1D EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG15.DESC,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG15.DESC.SORTCTE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=217,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP01T1D),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP01T1C.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA EL ARCHIVO MAESTRO DE PERSONAS POR CLIENTE     *
//*--------------------------------------------------------------------*
//*
//ZPP01T1C EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.CON.AMCP,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.AMCP.SORT1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=512,BLKSIZE=0),
//            SPACE=(CYL,(050,025),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP01T1C),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP01T0B.                                             *
//* UTILERIA   : ZM3PPG15.                                             *
//* OBJETIVO   : MATCH PARA OBTENER EL NOMBRE DE LOS CLIENTES DE       *
//*              PERSONAS.                                             *
//*--------------------------------------------------------------------*
//*
//ZPP01T0B EXEC PGM=ZM3PPG15,COND=(4,LT)
//*
//ZM0BPPE1 DD  DSN=MXCP.ZM.FIX.PPG.ZM4PPG15.DESC.SORTCTE,
//             DISP=SHR
//*
//ZM0BPPE2 DD  DSN=MXCP.ZM.WKF.AMCP.SORT1,
//             DISP=SHR
//*
//ZM05PPS1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG15.MATCH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=217,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP01T20.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO POR NUMERO CONTRATO/FOLIO UG.          *
//*              SE SUMARIZAN LOS CAMPOS VALOR DE LA GARANTIA (ACTUAL) *
//*              Y VALOR DE LA GARANTIA (FORMALIZADO)                  *
//*--------------------------------------------------------------------*
//*
//ZPP01T20 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG15.MATCH,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG15.DESC.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@INDRA-11-15
//*           DCB=(DSORG=PS,LRECL=175,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=217,RECFM=FB,BLKSIZE=0),
//*@INDRA-11-15
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP01T20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP01T15.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : ORDENA ARCHIVO POR NUMERO CONTRATO/FOLIO UG.          *
//*--------------------------------------------------------------------*
//*
//ZPP01T15 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXBP.YH.FIX.F&FECHA..PPGSAMUV.MONITINV,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPGSAMUV.MONITINV.SORT,
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP01T15),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP01T10.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : MATCH ENTRE ARCHIVOS                                  *
//*--------------------------------------------------------------------*
//*
//ZPP01T10 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG15.DESC.SORT,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.PPGSAMUV.MONITINV.SORT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG15.MATCH,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*@INDRA-11-15
//*           DCB=(DSORG=PS,LRECL=203,RECFM=FB,BLKSIZE=0),
//*@INDRA-1116-I
//*           DCB=(DSORG=PS,LRECL=246,RECFM=FB,BLKSIZE=0),
//            DCB=(DSORG=PS,LRECL=257,RECFM=FB,BLKSIZE=0),
//*@INDRA-1116-F
//*@INDRA-11-15
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPP01T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP01T05.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG16                                     *
//* OBJETIVO   : OBTIENE INFORMACION DE CONTRATOS DE INVERSION PPG     *
//*--------------------------------------------------------------------*
//*
//ZPP01T05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM05PPE1 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4PPG15.MATCH,
//             DISP=SHR
//*
//ZM05PPS1 DD DSN=MXCP.ZM.FIX.PPG.ZM4PPG16.REPPPG,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*@INDRA-1116-I
//*           DCB=(RECFM=FB,LRECL=267,BLKSIZE=0,DSORG=PS)
//            DCB=(RECFM=FB,LRECL=278,BLKSIZE=0,DSORG=PS)
//*@INDRA-1116-F
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP01T05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP01T04.                                             *
//* UTILERIA   :                                                       *
//* OBJETIVO   : OBTIENE INFORMACION DE GARANTIAS ZMDT834              *
//*--------------------------------------------------------------------*
//*
//ZPP01T04 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMPPGD01,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.PPG.EBCM.AZMDT834,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(05,10),RLSE),
//            DCB=(RECFM=FB,LRECL=030,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZPP01T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPP01T03.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPGRP                                     *
//* OBJETIVO   : OBTIENE INFORMACION DE GARANTIAS ZMDT834              *
//*--------------------------------------------------------------------*
//*
//ZPP01T03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//AZMDT834 DD  DSN=MXCP.ZM.FIX.PPG.EBCM.AZMDT834,
//             DISP=SHR
//*
//REPGRNT  DD DSN=MXCP.ZM.FIX.PPG.ZM4PPGRP.REPGRNT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(05,10),RLSE),
//            DCB=(RECFM=FB,LRECL=237,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPP01T03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                      FIN PROCESO ZMPPGD01                          *
//*--------------------------------------------------------------------*
