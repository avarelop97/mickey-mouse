//ZMLLPC01 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<< MERCADO DE DINERO >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMLLPC01-SIVAXBUC                                   *
//*                                                                    *
//*   OBJETIVO  :  REPORTES DE CONCILIACION DE SALDOS BUC VS. MUV      *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//**********************************************************************
//*---------------------------------------------------------------------
//* ------- ------- ---------- ----------------------------------------*
//* JGF01   XME1788 20191219  -SE AGREGA UNA TARGETA DE CONTROL, OMITE *
//*                            LAS @ EN EL ARCHIVO DE TRANSFERENCIA.   *
//*                                                                    *
//*---------------------------------------------------------------------
//*---------------------------------------------------------------------
//* PROGRAMA: SORT (1)
//* OBJETIVO: SEPARA CONTRATOS   DE FIDEICOMISOS DE BUC
//*---------------------------------------------------------------------
//PLC01P12 EXEC PGM=SYNCSORT
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXB&AMB..BUC.FIX.SALDOS.VAL.HOY,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.SALDOS.VAL.HOY.FID,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=142,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP01T12),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: SORT
//* OBJETIVO: SEPARA CONTRATOS DIFERENTES A FIDEICOMISOS
//*---------------------------------------------------------------------
//PLC01P11 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXB&AMB..BUC.FIX.SALDOS.VAL.HOY,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.SALDOS.VAL.HOY.NOR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=142,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP01T11),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: SORT (2)
//* OBJETIVO: SEPARA CONTRATOS   DE FIDEICOMISOS DE BUC
//*---------------------------------------------------------------------
//PLC01P10 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXB&AMB..BUC.FIX.OPERA.VAL.HOY,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.OPERA.VAL.HOY.FID,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=190,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP01T10),DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: SORT
//* OBJETIVO: SEPARA CONTRATOS DIFERENTES A FIDEICOMISOS
//*---------------------------------------------------------------------
//PLC01P09 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXB&AMB..BUC.FIX.OPERA.VAL.HOY,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.OPERA.VAL.HOY.NOR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=190,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP01T09),DISP=SHR
//*---------------------------------------------------------------------
//* PROGRAMA: SORT (3)
//* OBJETIVO: SEPARA CONTRATOS   DE FIDEICOMISOS DE BUC
//*---------------------------------------------------------------------
//PLC01P08 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXB&AMB..BUC.FIX.OPERA.VAL.NORMAL,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.OPERA.VAL.NORMAL.FID,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=190,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP01T08),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: SORT
//* OBJETIVO: SEPARA CONTRATOS DIFERENTES A FIDEICOMISOS
//*---------------------------------------------------------------------
//PLC01P07 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXB&AMB..BUC.FIX.OPERA.VAL.NORMAL,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.OPERA.VAL.NORMAL.NOR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=190,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP01T07),DISP=SHR
//*
//*---------------------------------------------------------------------
//*---------------------------------------------------------------------
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DL279
//* OBJETIVO: GENERA ARCHIVO MUV DE SALDOS CUENTAS GLOBALES BUC
//*---------------------------------------------------------------------
//PLC01P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZML279A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..SALDOS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=53,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP01T06),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*---------------------------------------------------------------------
//* PROGRAMA: SORT
//* OBJETIVO: ORDENAR ARCHIVO MUV DE SALDOS (NORMAL)
//*---------------------------------------------------------------------
//PLC01P6A EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.SALDOS.VAL.HOY.NOR,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.SALDOS.VAL.HOY.NOR.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=142,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP01T6A),DISP=SHR
//*********************************************************************
//*   PROGRAMA: ZM4DL280 C/A
//*   OBJETIVO: GENERA CONCILIACION DE SALDOS BUC - MUV
//*********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLC01P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*ZML280P1  DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC00,DISP=SHR
//*ZML280A1  DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..SALDOS,DISP=SHR
//**ZML280A2  DD DSN=MXB&AMB..BUC.FIX.SALDOS.VAL.HOY,DISP=SHR
//*ZML280A2  DD DSN=MXC&AMB..ZM.FIX.SALDOS.VAL.HOY.NOR.SORT,DISP=SHR
//*ZML280LS  DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP01T05),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*********************************************************************
//*   PROGRAMA: ZM4DL280  C/A
//*   OBJETIVO: GENERA CONCILIACION DE SALDOS BUC - MUV
//*********************************************************************
//PLC01P5A EXEC PGM=IKJEFT01,COND=(4,LT)
//ZML280P1  DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC00,DISP=SHR
//ZML280A1  DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..SALDOS,DISP=SHR
//*ZML280A2  DD DSN=MXB&AMB..BUC.FIX.SALDOS.VAL.HOY,DISP=SHR
//ZML280A2  DD DSN=MXC&AMB..ZM.FIX.SALDOS.VAL.HOY.NOR.SORT,DISP=SHR
//ZML280LS  DD DSN=MXC&AMB..ZM.FIX.MDD.REPCON.BUC.VS.MUV,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(10,05),RLSE),
//             DCB=(RECFM=FB,DSORG=PS,LRECL=133,BLKSIZE=0)
//*
//ZML280L1  DD DSN=MXC&AMB..ZM.FIX.MDD.REPCON.PLANO,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(10,05),RLSE),
//             DCB=(RECFM=FB,DSORG=PS,LRECL=122,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP01T05),DISP=SHR
//*
//*JGF01 INI
//*
//**********************************************************************
//* MUV-BUC    SORT                                                    *
//* OBJETIVO : OMITIR CARACTER ARROBA EN LA CONCILIACION MUV-BUC       *
//**********************************************************************
//PLC21P10 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DISP=SHR,DSN=MXC&AMB..ZM.FIX.MDD.REPCON.PLANO
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.MDD.REPCON.PLANO1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=122,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP21T8B),DISP=SHR
//*
//*JGF01 FIN
//*
//**********************************************************************
//* -- MUV --  SORT                                                    *
//* OBJETIVO : ORDENAR ARCHIVO MUV DE SALDOS CUENTAS GLOBALES BUC      *
//**********************************************************************
//PLC01P04 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..SALDOS,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..SALDOS.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=53,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP01T04),DISP=SHR
//*
//**********************************************************************
//* -- BUC --  SORT                                                    *
//* OBJETIVO : ORDENAR ARCHIVO MUV DE SALDOS CUENTAS GLOBALES BUC      *
//**********************************************************************
//PLC01P03 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*SORTIN   DD DSN=MXB&AMB..BUC.FIX.SALDOS.VAL.HOY,DISP=SHR
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.SALDOS.VAL.HOY.NOR,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..SALDOS.BUC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=142,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP01T03),DISP=SHR
//*
//*********************************************************************
//*   PROGRAMA: ZM4DL281
//*   OBJETIVO: GENERA CONCILIACION DE SALDOS BUC - MUV (POR CVE. ISIN)
//*********************************************************************
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLC01P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*ZML281P1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC00,DISP=SHR
//*ZML281A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..SALDOS.SORT,
//*            DISP=SHR
//*ZML281A2 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..SALDOS.BUC,
//*            DISP=SHR
//*ZML281LS DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP01T02),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*********************************************************************
//*   PROGRAMA: ZM4DL281
//*   OBJETIVO: GENERA CONCILIACION DE SALDOS BUC - MUV (POR CVE. ISIN)
//*********************************************************************
//*
//PLC01P2A EXEC PGM=IKJEFT01,COND=(4,LT)
//ZML281P1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC00,DISP=SHR
//ZML281A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..SALDOS.SORT,
//            DISP=SHR
//ZML281A2 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..SALDOS.BUC,
//            DISP=SHR
//ZML281LS DD DSN=MXC&AMB..ZM.FIX.MDD.SALDOS.CONC.X.CVEISI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=133,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP01T02),DISP=SHR
//*
//*****************************************************************
//* PASO: PLLPC011                                                *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *
//*****************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLC01P01 EXEC PGM=CTMCND,COND=(4,LT),
//*         PARM='ADD COND BCLLPC01_IN_SEP_OK WDATE'
//*STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//*DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//*         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//*DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//*DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*PRTDBG   DD SYSOUT=*
//*SYSPRINT DD DUMMY
//*SYSUDUMP DD DUMMY
//*DAPRINT  DD SYSOUT=*
//*DACNDIN  DD DDNAME=SYSIN
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//**********************************************************************
//*                      F I N   Z M L L P C 0 1                       *
//**********************************************************************
