//ZMLLPD04 PROC
//*
//**********************************************************************
//**
//** SISTEMA        :  MUV
//**
//** PROCESO        :  ZMLLPD04
//**
//** OBJETIVO       :  RECIBIR ARCHIVO DE BUC Y GRABARLO
//**                    EN LA TABLA ASIGNABUC.
//**
//** CORRE ANTES DE :  BCLLND07
//**
//**
//** DESPUES DE     :  RECIBIR ARCHIVO DE BUC
//**
//**
//** OBSERVACIONES  :
//**
//**
//**
//**
//** REALIZO        :  GETRONICS (IEF)
//*                    OCTUBRE 2005.                                   *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//* BITACORA DE MODIFICACIONES :                                       *
//*--------------------------------------------------------------------*
//*MODIF |  FECHA   |USUARIO|  PASO  | DESCRIPCION                     *
//*--------------------------------------------------------------------*
//* JFE  |30-MAR-07 |IDCEX37|PLL04P03| SE AMPLIA LONG. ARCHIVO A 136.  *
//*--------------------------------------------------------------------*
//* MUV  |JULIO2007 |IDCEX52|PLL04PXX| SE INCLUYE PROCESO BONY.        *
//*--------------------------------------------------------------------*
//* AGR01|ENERO2017 |XM01AXZ|PLL04P09| SE INCLUYE RESPALDO DE LA TABLA *
//*                                  | ZMDT633 ( SOLO DIN)             *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PLL04P25 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','  ','  ','  ',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLLPD04,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*---------------------------------------------------------------------
//* SORT
//* OBJETIVO: REALIZA SORT DE ARCHIVO BUC PARA REGISTROS BONY
//*---------------------------------------------------------------------
//PLL04P20 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXBP.BUC.GDGD.BUPDPIGO.ENVIADOS(0),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MDD.E&EMP..BUC.SORT.BONY,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=136,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLL04T20),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DLX06
//* OBJETIVO: TOMA ARCHIVO SORT-BONY,
//* Y GRABA REGISTROS  EN ZMDT633
//*---------------------------------------------------------------------
//PLL04P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLX06A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLLPD04,DISP=SHR
//ZMLX06A2 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..BUC.SORT.BONY,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL04T15),DISP=SHR
//*
//*---------------------------------------------------------------------
//* SORT
//* OBJETIVO: REALIZA SORT DE ARCHIVO BUC
//*
//*---------------------------------------------------------------------
//PLL04P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXBP.BUC.GDGD.BUPDPIGO.ENVIADOS(0),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.E&EMP..BUC.SORT.F&FEC..H&HOR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=136,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLL04T03),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DLX16
//* OBJETIVO: VERIFICACION DE IISIN
//*---------------------------------------------------------------------
//PLL04P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLX16A1 DD DSN=MXCP.ZM.FIX.E&EMP..BUC.SORT.F&FEC..H&HOR,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL04T16),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DLX01
//* OBJETIVO: TOMA ARCHIVO SORT,
//* Y GRABA EN TABLA ZMDT633
//*---------------------------------------------------------------------
//PLL04P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLX01A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..ZMLLPD04,DISP=SHR
//ZMLX01A2 DD DSN=MXCP.ZM.FIX.E&EMP..BUC.SORT.F&FEC..H&HOR,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL04T04),DISP=SHR
//*
//**********************************************************************
//*                     -- ZM4OJ207 --                                 *
//*   OBJETIVO : GENERAR UN ARCHIVO DE RESPALDO DE LA TABLA  -         *
//*              DEMANDA.                                              *
//*                                                                    *
//**********************************************************************
//PLL04P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ARCDEMA  DD DSN=MXCP.ZM.FIX.DEMANDA.F&FEC..H&HOR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=500,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZH1OT207),DISP=SHR
//*
//**********************************************************************
//*                     -- ZM4OJ208 --                                 *
//*   OBJETIVO : GENERAR UN ARCHIVO DE RESPALDO DE LA TABLA  -         *
//*              ZMDT633.                                              *
//*                                                                    *
//**********************************************************************
//PLL04P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ARZM33   DD DSN=MXCP.ZM.FIX.ZMDT633.F&FEC..H&HOR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=500,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZH1OT208),DISP=SHR
//*
//*** AGR01   INI
//**********************************************************************
//*                     -- ZM4OJ209 --                                 *
//*   OBJETIVO : GENERAR UN ARCHIVO DE RESPALDO DE LA TABLA  -         *
//*              ZMDT633 (SOLO TPOMERC = DIN, SOL. DE COMP)            *
//*                                                                    *
//**********************************************************************
//PLL04P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ARZM33   DD DSN=MXCP.ZM.FIX.ZMDT633.DIN.F&FEC..H&HOR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=500,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZH1OT209),DISP=SHR
//*
//*** AGR01   FIN
//*---------------------------------------------------------------------
//* PROGRAMA:
//* OBJETIVO: ADICIONA CONDICION PARA QUE SE DISPARE EL
//*           PROCESO BCLLND03 (ASIGNACION)
//*---------------------------------------------------------------------
//PLL04P01 EXEC  PGM=CTMCND,
//         PARM='ADD COND BCLLND10_&EMP_SIVA_OK WDATE',COND=(4,LT)
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD   DDNAME=SYSIN
//*
