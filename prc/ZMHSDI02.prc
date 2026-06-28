//ZMHSDI02 PROC                                                         00010002
//*                                                                     00190000
//**********************************************************************00191002
//*                     C A S A   D E   B O L S A                      *00192002
//*                     =========================                      *00193002
//*                     <<<   V A L O R E S   >>>                      *00194002
//*                                                                    *00195002
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00196002
//*                                                                    *00197002
//*   PROCEDIM. :  ZMHSDI02.                                           *00198002
//*                                                                    *00199002
//*   OBJETIVO  :  VENTAS AUTOMATICAS DE SDI (BATCH)                   *00199104
//*                                                                    *00199202
//*                                                                    *00199302
//*   CORRE ANTES DE  :                                                *00199402
//*                                                                    *00199502
//*   CORRE DESPUES DE:                                                *00199602
//*                                                                    *00199702
//*   PERIODICIDAD    :  A PETICION                                    *00199802
//*                                                                    *00199902
//*   ELABORADO POR   :  EVERIS                                        *00200002
//*                                                                    *00201002
//*   FECHA:  MAYO 2009.                                               *00202002
//*                                                                    *00203002
//*   MODIFICA       :                                                 *00204002
//*   FECHA          :                                                 *00205002
//**********************************************************************00206002
//**********************************************************************
//* PASO    : PHSDIP05                                                 *
//* PROGRAMA: IKJEFT01 / ZM4CSDI2                                      *
//* FUNCION : EJECUTA EL PROGRAMA ZM4CSDI2 PARA VALIDAR PARAMETRO      *
//*           DE MESA ASSET O MESA PRECIOS                             *
//**********************************************************************
//PHSDIP05 EXEC PGM=IKJEFT01
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCSDI02),DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//**********************************************************************
// IF (PHSDIP05.RC<4) THEN
//**********************************************************************
//*-------------------------------------------------------------------* 00207002
//* PROGRAMA: ZM2CSDI1                                                * 00208002
//* FUNCION : GENERA DEFINITIVO DE VENTAS AUTOMATICAS SDI             * 00209105
//*-------------------------------------------------------------------* 00209202
//**********************************************************************
//*    GENERA EL ARCHIVO DE LAS VENTAS AUTOMATICAS
//**********************************************************************
//PHSDIP02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ797R1 DD DSN=MXCP.ZM.FIX.EBMC.REPSDI1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=249,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCSDI01),DISP=SHR
//*
//****************************************************************      00200002
//*                SE ADICIONA CONDICION                         *      00210002
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00220002
//****************************************************************      00230002
//PHSDIP07 EXEC PGM=CTMCND,PARM='ADD COND BCHSDI01_A_OK WDATE',         00240003
//         COND=(4,LT)                                                  00250002
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00260002
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00270002
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00280002
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00290002
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00300002
//PRTDBG   DD SYSOUT=*                                                  00310002
//SYSPRINT DD DUMMY                                                     00320002
//SYSUDUMP DD DUMMY                                                     00330002
//DAPRINT  DD SYSOUT=*                                                  00340002
//DACNDIN  DD DDNAME=SYSIN                                              00350002
//*                                                                     00360002
//*--------------------------------------------------------------------*
// ENDIF
//*--------------------------------------------------------------------*
//**********************************************************************
// IF (PHSDIP05.RC=4) THEN
//**********************************************************************
//*-------------------------------------------------------------------* 00207002
//* PROGRAMA: ZM2CSDI1                                                * 00208002
//* FUNCION : GENERA DEFINITIVO DE VENTAS AUTOMATICAS SDI             * 00209105
//*-------------------------------------------------------------------* 00209202
//**********************************************************************
//*    GENERA EL ARCHIVO DE LAS VENTAS AUTOMATICAS
//**********************************************************************
//PHSDIP01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ797R1 DD DSN=MXCP.ZM.FIX.EBMC.REPSDI2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=249,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCSDI01),DISP=SHR
//*
//****************************************************************      00200002
//*                SE ADICIONA CONDICION                         *      00210002
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00220002
//****************************************************************      00230002
//PHSDIP08 EXEC PGM=CTMCND,PARM='ADD COND BCHSDI01_P_OK WDATE',         00240003
//         COND=(4,LT)                                                  00250002
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00260002
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00270002
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00280002
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00290002
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS                   00300002
//PRTDBG   DD SYSOUT=*                                                  00310002
//SYSPRINT DD DUMMY                                                     00320002
//SYSUDUMP DD DUMMY                                                     00330002
//DAPRINT  DD SYSOUT=*                                                  00340002
//DACNDIN  DD DDNAME=SYSIN                                              00350002
//*                                                                     00360002
//*--------------------------------------------------------------------*
// ENDIF
//*--------------------------------------------------------------------*
