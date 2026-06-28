//ZMLLPC02 PROC
//**********************************************************************
//**********************************************************************
//**                    C A S A   D E   B O L S A                      *
//**                    =========================                      *
//**                    <<< MERCADO DE DINERO >>>                      *
//**                                                                   *
//**  APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//**                                                                   *
//**  PROCEDIM. :  ZMLLPC02-SIVAXMUV                                   *
//**                                                                   *
//**  OBJETIVO  :  REPORTE DE CONCILIACION DE MONTOS BUC VS. MUV       *
//**                                                                   *
//**  CORRE ANTES DE  :  NINGUNO                                       *
//**                                                                   *
//**  CORRE DESPUES DE:  NINGUNO                                       *
//**                                                                   *
//**  PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//**                                                                   *
//**********************************************************************
//**********************************************************************
//*         B I T A C O R A  D E  M O D I F I C A C I O N E S          *
//*         -------------------------------------------------          *
//*                                                                    *
//* N O M B R E                 D E S C R I P C I O N                  *
//* --------------------- -------------------------------------------  *
//* ------- ------- ---------- ----------------------------------------*
//* JGF01   XME1788 20200603  -SE MIGRAN LAS TRANSFERENCIAS DEL        *
//*                            SERVIDOR PUBLIC.                        *
//*                           -SE CREA UN PASO POR TRANSFERENCIA.      *
//* ------- ------- ---------- ----------------------------------------*
//**********************************************************************
//PLC02P55 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','   ','   ',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DL282
//* OBJETIVO: GENERA ARCHIVO CON EL NUMERO DE TITULOS DEL MUV
//*---------------------------------------------------------------------
//PLC02P50 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZML282A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..TITULOS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=108,BLKSIZE=0),
//            UNIT=3390
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP02T50),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//**********************************************************************
//* -- MUV --  SORT                                                    *
//* OBJETIVO : SELECCIONA LOS CONTRATOS DE BANCA PATRIOMIAL EN MUV     *
//**********************************************************************
//PLC02P45 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..S&SUC..TITULOS,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..CTOSMUV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=108,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T45),DISP=SHR
//**********************************************************************
//* -- BUC --  SORT                                                    *
//* OBJETIVO : SELECCIONA LOS CONTRATOS DE BANCA PATRIOMIAL EN BUC     *
//**********************************************************************
//PLC02P40 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*BUC ORIGINAL*
//**SORTIN   DD DSN=MXBP.BUC.FIX.OPERA.VAL.HOY,DISP=SHR
//**         DD DSN=MXBP.BUC.FIX.OPERA.VAL.NORMAL,DISP=SHR
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.OPERA.VAL.HOY.NOR,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.OPERA.VAL.NORMAL.NOR,DISP=SHR
//*BUC*
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.OPERA.E&EMP..S&SUC..CTOSBUC,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=190,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T40),DISP=SHR
//*********************************************************************
//* -- MUV --  SORT                                                    *
//* OBJETIVO : SELECCIONA LOS MOVIMIENTOS DE DIRECTO EN EL MUV         *
//* OBJETIVO : SELECCIONA LOS MOVIMIENTOS DE CPA EN REPTO EN EL MUV    *
//**********************************************************************
//PLC02P35 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..CTOSMUV,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..CTOSMUV.DTO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=108,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T35),DISP=SHR
//**********************************************************************
//* -- BUC --  SORT                                                    *
//* OBJETIVO : SELECCIONA LOS MOVIMIENTOS DE DIRECTO EN EL BUC         *
//* OBJETIVO : SELECCIONA LOS MOVIMIENTOS DE CPA EN REPTO EN EL BUC    *
//**********************************************************************
//PLC02P34 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*BUC ORIGINAL*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.OPERA.E&EMP..S&SUC..CTOSBUC,DISP=SHR
//*BUC*
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.OPERA.E&EMP..S&SUC..CTOSBUC.DTO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=190,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T34),DISP=SHR
//*********************************************************************
//* -- MUV --  SORT                                                    *
//* OBJETIVO : SELECCIONA LOS MOVIMIENTOS DE TERMINA REPORTO EN MUV    *
//**********************************************************************
//PLC02P33 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..CTOSMUV,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..CTOSMUV.VTO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=108,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T33),DISP=SHR
//**********************************************************************
//* -- BUC --  SORT                                                    *
//* OBJETIVO : SELECCIONA LOS MOVIMIENTOS DE TERMINA REPORTO EN BUC    *
//**********************************************************************
//PLC02P32 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*BUC ORIGINAL*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.OPERA.E&EMP..S&SUC..CTOSBUC,DISP=SHR
//*BUC*
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.OPERA.E&EMP..S&SUC..CTOSBUC.VTO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=190,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T32),DISP=SHR
//**********************************************************************
//* -- MUV --  SORT                                                    *
//* OBJETIVO : SELECCIONA LOS VENCIMIENTOS DE REPORTOS DEL MUV         *
//**********************************************************************
//PLC02P20 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*MUV ORIGINAL*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.MDD.EBCM.S000.CTOSMUV.VTO,DISP=SHR
//*MUV*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.VR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=108,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T20),DISP=SHR
//**********************************************************************
//* -- MUV --  SORT                                                    *
//* OBJETIVO : SELECCIONA LOS PREMIOS DE LOS REPORTOS DEL MUV          *
//**********************************************************************
//PLC02P19 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*MUV ORIGINAL*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.MDD.EBCM.S000.CTOSMUV.VTO,DISP=SHR
//*MUV*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.PR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=108,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T19),DISP=SHR
//**********************************************************************
//* -- MUV --  SORT                                                    *
//* OBJETIVO : SELECCIONA EL IMPUESTO DE LOS REPORTOS DEL MUV          *
//**********************************************************************
//PLC02P18 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*MUV ORIGINAL*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.MDD.EBCM.S000.CTOSMUV.VTO,DISP=SHR
//*MUV*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.IR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=108,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T18),DISP=SHR
//**********************************************************************
//* -- BUC --  SORT                                                    *
//* OBJETIVO : SELECCIONA LOS VENCIMIENTOS DE REPORTOS DEL BUC         *
//**********************************************************************
//PLC02P17 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*BUC ORIGINAL*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.OPERA.EBCM.S000.CTOSBUC.VTO,DISP=SHR
//*BUC*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.VR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=190,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T17),DISP=SHR
//**********************************************************************
//* -- BUC --  SORT                                                    *
//* OBJETIVO : SELECCIONA LOS PREMIOS DE LOS  REPORTOS DEL BUC         *
//**********************************************************************
//PLC02P16 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*BUC ORIGINAL*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.OPERA.EBCM.S000.CTOSBUC.VTO,DISP=SHR
//*BUC*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.PR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=190,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T16),DISP=SHR
//**********************************************************************
//* -- BUC --  SORT                                                    *
//* OBJETIVO : SELECCIONA EL IMPUESTO DE LOS  REPORTOS DEL BUC         *
//**********************************************************************
//PLC02P15 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*BUC ORIGINAL*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.OPERA.EBCM.S000.CTOSBUC.VTO,DISP=SHR
//*BUC*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.IR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=190,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T15),DISP=SHR
//**********************************************************************
//* -- MUV --  SORT                                                    *
//* OBJETIVO : SELECCIONA LAS COMPRAS     DE DIRECTO EN EL MUV         *
//**********************************************************************
//PLC02P14 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*MUV ORIGINAL*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.MDD.EBCM.S000.CTOSMUV.DTO,DISP=SHR
//*MUV*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.DCP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=108,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T14),DISP=SHR
//**********************************************************************
//* -- MUV --  SORT                                                    *
//* OBJETIVO : SELECCIONA LAS COMPRAS EN REPORTO DE MUV                *
//**********************************************************************
//PLC02P13 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*MUV ORIGINAL*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.MDD.EBCM.S000.CTOSMUV.DTO,DISP=SHR
//*MUV*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.DCR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=108,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T13),DISP=SHR
//**********************************************************************
//* -- MUV --  SORT                                                    *
//* OBJETIVO : SELECCIONA LAS VENTAS EN DIRECTO  DE MUV                *
//**********************************************************************
//PLC02P12 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*MUV ORIGINAL*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.MDD.EBCM.S000.CTOSMUV.DTO,DISP=SHR
//*MUV*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.DVT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=108,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T12),DISP=SHR
//**********************************************************************
//* -- MUV --  SORT                                                    *
//* OBJETIVO : SELECCIONA EL ISR DE VENTAS DIRECTO DE MUV              *
//**********************************************************************
//PLC02P11 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*MUV ORIGINAL*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.MDD.EBCM.S000.CTOSMUV.DTO,DISP=SHR
//*MUV*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.DVI,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=108,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T11),DISP=SHR
//**********************************************************************
//* -- BUC --  SORT                                                    *
//* OBJETIVO : SELECCIONA LOS MOVIMIENTOS DE DIRECTO EN EL BUC         *
//**********************************************************************
//PLC02P10 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*BUC ORIGINAL*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.OPERA.EBCM.S000.CTOSBUC.DTO,DISP=SHR
//*BUC*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.DCP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=190,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T10),DISP=SHR
//**********************************************************************
//* -- BUC --  SORT                                                    *
//* OBJETIVO : SELECCIONA LOS MOVIMIENTOS DE COMPRA DE REPORTO DE BUC  *
//**********************************************************************
//PLC02P09 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*BUC ORIGINAL*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.OPERA.EBCM.S000.CTOSBUC.DTO,DISP=SHR
//*BUC*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.DCR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=190,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T09),DISP=SHR
//**********************************************************************
//* -- BUC --  SORT                                                    *
//* OBJETIVO : SELECCIONA LOS MOVIMIENTOS DE VENTA EMN DIRECTO DE BUC  *
//**********************************************************************
//PLC02P08 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*BUC ORIGINAL*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.OPERA.EBCM.S000.CTOSBUC.DTO,DISP=SHR
//*BUC*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.DVT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=190,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T08),DISP=SHR
//**********************************************************************
//* -- BUC --  SORT                                                    *
//* OBJETIVO : SELECCIONA LOS MOVIMIENTOS DE ISR DE VENTAS EN DIRECTO  *
//**********************************************************************
//PLC02P07 EXEC PGM=SYNCSORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*BUC ORIGINAL*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.OPERA.EBCM.S000.CTOSBUC.DTO,DISP=SHR
//*BUC*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.DVI,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=190,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLP02T07),DISP=SHR
//*********************************************************************
//*   PROGRAMA: ZM4DL285
//*   OBJETIVO: GENERA CONCILIACION DE SALDOS BUC - MUV POR TIPO OPERA*
//*********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLC02P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZML285P1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC02,DISP=SHR
//*ZML285A1 DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.DCP,DISP=SHR
//*ZML285A2 DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.DCP,DISP=SHR
//*ZML285A3 DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.DVT,DISP=SHR
//*ZML285A4 DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.DVT,DISP=SHR
//*ZML285A5 DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.DVI,DISP=SHR
//*ZML285A6 DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.DVI,DISP=SHR
//*ZML285A7 DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.DCR,DISP=SHR
//*ZML285A8 DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.DCR,DISP=SHR
//*ZML285R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZML285R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP02T03),DISP=SHR
//**
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*********************************************************************
//*   PROGRAMA: ZM4DL285
//*   OBJETIVO: GENERA CONCILIACION DE SALDOS BUC - MUV POR TIPO OPERA*
//*********************************************************************
//PLC02P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZML285P1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC02,DISP=SHR
//ZML285A1 DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.DCP,DISP=SHR
//ZML285A2 DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.DCP,DISP=SHR
//ZML285A3 DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.DVT,DISP=SHR
//ZML285A4 DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.DVT,DISP=SHR
//ZML285A5 DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.DVI,DISP=SHR
//ZML285A6 DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.DVI,DISP=SHR
//ZML285A7 DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.DCR,DISP=SHR
//ZML285A8 DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.DCR,DISP=SHR
//ZML285R1 DD DSN=MXC&AMB..ZM.FIX.MDD.REP285.MOVIM.CORRECTO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=133,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*
//ZML285R2 DD DSN=MXC&AMB..ZM.FIX.MDD.REP285.MOVIM.CONDIFER,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=133,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP02T03),DISP=SHR
//*
//*********************************************************************
//*   PROGRAMA: ZM4DL286
//*   OBJETIVO: GENERA CONCILIACION DE SALDOS BUC - MUV POR TIPO OPERA*
//*********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLC02P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZML286P1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC02,DISP=SHR
//*ZML286A1 DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.VR,DISP=SHR
//*ZML286A2 DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.VR,DISP=SHR
//*ZML286A3 DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.PR,DISP=SHR
//*ZML286A4 DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.PR,DISP=SHR
//*ZML286A5 DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.IR,DISP=SHR
//*ZML286A6 DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.IR,DISP=SHR
//*ZML286R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*ZML286R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP02T05),DISP=SHR
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*********************************************************************
//*   PROGRAMA: ZM4DL286
//*   OBJETIVO: GENERA CONCILIACION DE SALDOS BUC - MUV POR TIPO OPERA*
//*********************************************************************
//PLC02P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZML286P1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC02,DISP=SHR
//ZML286A1 DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.VR,DISP=SHR
//ZML286A2 DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.VR,DISP=SHR
//ZML286A3 DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.PR,DISP=SHR
//ZML286A4 DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.PR,DISP=SHR
//ZML286A5 DD DSN=MXC&AMB..ZM.FIX.OPERA.EBCM.S000.CTOSBUC.IR,DISP=SHR
//ZML286A6 DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.S000.CTOSMUV.IR,DISP=SHR
//ZML286R1 DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.CORRECTO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=133,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//ZML286R2 DD DSN=MXC&AMB..ZM.FIX.MDD.EBCM.CONDIFER,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=133,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP02T05),DISP=SHR
//*
//*JGF INI
//*-------------------------------------------------------------------*
//*-------------------------------------------------------------------*
//*-------------------------------------------------------------------*
//* PROGRAMA: DMBATCH                                                 *
//* FUNCION:  TRANSFERIR UN ARCHIVO DE HOST A SERVIDOR                *
//*-------------------------------------------------------------------*
//*PLC02P01 EXEC PGM=DMBATCH,COND=(4,LT)
//**
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZLP02T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PLC02P01                                                *
//* PROGRAMA : DMBATCH                                                 *
//* OBJETIVO : TRANSFERENCIA DE ARCHIVOS                               *
//*--------------------------------------------------------------------*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493 SE CAMBIO TRANSFER A
//* BCLLPC03
//**********************************************************************00006000
//*PLC02P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//**
//*STEPLIB  DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//*DMNETMAP DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*DMPRINT  DD SYSOUT=*
//*SYSDUMP  DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*NDMCMDS  DD SYSOUT=*
//*SYSIN    DD *
//*SIGNON CASE(YES) ESF=NO
//*SUBMIT PROC=MSAHDDX1                              -
//*&HOST=SYSP.PROP.HOST1                             -
//*&DIST=CDWVPCDTXREPOMX0                            -
//*&DSNI='MXCP.ZM.FIX.MDD.EBCM.CONDIFER'             -
//*&DSNO='\\NASBBVAMXP\B_PLA004\HOST\SIANEXON.TXT'   -
//*&SYSOPTS='DATATYPE(TEXT) STRIP.BLANKS(NO)'
//*SIGNOFF
//**
//*JGF FIN
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493                        |||
//**********************************************************************00006000
//*****************************************************************
//* PASO: PLC02P00                                                *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *
//*****************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
//*PLC02P00 EXEC PGM=CTMCND,COND=(4,LT),
//*         PARM='ADD COND BCLLPC02_IN_SEP_OK WDATE'
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
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493
//**********************************************************************00006000
