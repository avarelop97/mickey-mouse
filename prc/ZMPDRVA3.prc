//ZMPDRVA3 PROC                                                         00010002
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CASA DE BOLSA.                                 *
//* PROCESO      : BCJDRVA3.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : EDICIÓN DE INTERFAZ DE CASA DE BOLSA                *
//*                A CONTABILIDAD MV5.                                 *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 24 DE MARZO DE 2016.                                *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION.                         *
//* ----------- --------- ------- ------------------------------------ *
//*  @MEX002    XMZ8533   18DIC17 SE AGREGA PASO NUEVO                 *
//* ----------- --------- ------- ------------------------------------ *
//*  GCV-INI    ZMF2853   200823  SE AGREGAN 2 SALIDAS AL PASO ZMRVA093*
//*  GCV-FIN                      S4DQSAL4 PARA DATIO CON PIPES        *
//*                               S5DQSAL5 CIFRAS DE CONTROL           *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMRVA110                                                 *00240002
//* UTIL/PGM: ZM4RVA14                                                 *00240002
//* OBJETIVO: SE AGREGAN INDICADORES DE DEBE-HABER.                    *00240002
//*--------------------------------------------------------------------*
//ZMRVA110 EXEC PGM=IKJEFT01                                            00780700
//E1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ACECMV5,DISP=SHR
//S1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.MV5PREV,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA100),DISP=SHR
//*
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMRVA100                                                 *00240002
//* UTIL/PGM: ZM3RVA03                                                 *00240002
//* OBJETIVO: EDICION DE LAS INTERFACES MV5.                           *00240002
//*--------------------------------------------------------------------*
//ZMRVA100 EXEC PGM=ZM3RVA03,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.MV5PREV,DISP=SHR
//S1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ECO.INEDIT.ACECMV5,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=508,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//*
//E2DQ0002 DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ACECMV5.SALDOS,DISP=SHR
//S2DQ0002 DD DSN=MXC&AMB..ZM.FIX.ECO.INEDIT.SALDMV5,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=1126,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*@MEX001-I
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA095                                              *
//* UTILERIA   : ZM4RVA23                                              *
//* OBJETIVO   : GENERA REPORTE PARA RV3.                              *
//*--------------------------------------------------------------------*
//ZMRVA095 EXEC PGM=IKJEFT01,COND=(4,LT)
//REPORRV3 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA3.F&FECHA..REPORRV3,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=231,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA095),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA094                                              *
//* UTILERIA   : ZM4RVA24                                              *
//* OBJETIVO   : GENERA REPORTE PARA RV4.                              *
//*--------------------------------------------------------------------*
//ZMRVA094 EXEC PGM=IKJEFT01,COND=(4,LT)
//REPORRV4 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA3.F&FECHA..REPORRV4,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=193,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA094),DISP=SHR
//*@MEX001-F
//*@MEX002-I
//*--------------------------------------------------------------------*
//* PASO       : ZMRVA093                                              *
//* UTILERIA   : ZM4PPAID                                              *
//* OBJETIVO   : GENERA REPORTE DE REGISTROS PREPAID COLLAR EN ZMDT800 *
//*--------------------------------------------------------------------*
//ZMRVA093 EXEC PGM=IKJEFT01,COND=(4,LT)
//S1DQSAL1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA3.F&FECHA..REPPPAID,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=130,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//S2DQSAL2 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA3.F&FECHA..REPPPAID.TOTPOS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=050,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//S3DQSAL3 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA3.F&FECHA..REPPPAID.BAJALT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,LRECL=130,RECFM=FB,BLKSIZE=0),
//            UNIT=3390
//*GCV-INI
//**********************************************************************
//*
//S4DQSAL4 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA3.F&FECHA..REPPPAID.DATIO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=130,BLKSIZE=0),
//            UNIT=3390
//*
//S5DQSAL5 DD DSN=MXC&AMB..ZM.FIX.MDC.ECBP.SIRE.REPPACTL.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(4,2),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=73,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//*GCV-INI
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMRVA093),DISP=SHR
//*@MEX002-F
//*GCV-INI-SDATOOL
//*--------------------------------------------------------------------*
//*   UTILERIA: IOACND                                                 *
//*   PASO    : ZMRVA094                                               *
//*   OBJETIVO: DEJA CONDICION MX2CRX_BCJDRVA300 (REPPAID)             *
//*--------------------------------------------------------------------*
//ZMRVA094 EXEC  PGM=IOACND,PARM='ADD COND MX2CRX_BCJDRVA300 WDATE',
//             COND=(4,LT)
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
//*GCV-FIN-SDATOOL
//*--------------------------------------------------------------------*00240002
//*                 FIN DEL PROCESO ZMPDRVA3                           *00240002
//*--------------------------------------------------------------------*00240002
