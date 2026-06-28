//ZMHFIZ21 PROC
//*                                                                     00190000
//**********************************************************************00191002
//**                    C A S A   D E   B O L S A                      *00192002
//*                     =========================                      *00193002
//*                     <<<   V A L O R E S   >>>                      *00194002
//*                                                                    *00195002
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00196002
//*                                                                    *00197002
//*   PROCEDIM. :  ZMHFIZ21.                                           *00198002
//*                                                                    *00199002
//*   OBJETIVO  :  COMPROBANTE DE INVERSIóN DE MERCADO DE DINERO       *00199102
//*                (DIRECTO/REPORTO) BATCH                             *00199202
//*                                                                    *00199302
//*   CORRE ANTES DE  :                                                *00199402
//*                                                                    *00199502
//*   CORRE DESPUES DE:           ZMHFIP21                             *00199602
//*                                                                    *00199702
//*   PERIODICIDAD    :                                                *00199802
//*                                                                    *00199902
//*   ELABORADO POR   :  EVERIS                                        *00200002
//*                                                                    *00201002
//*   FECHA:  MAYO 2009.                                               *00202002
//*                                                                    *00203002
//*   MODIFICA       :                                                 *00204002
//*   FECHA          :                                                 *00205002
//**********************************************************************00206002
//**********************************************************************
//* PASO    : ZMHAFI03                                                 *
//* PROGRAMA: IKJEFT01 / ZM4CFI20                                      *
//* FUNCION : EJECUTA EL PROGRAMA ZM4CFI20 PARA VALIDAR PARAMETRO      *
//*           DE MESA ASSET O MESA PRECIOS                             *
//**********************************************************************
//ZMHAFI03 EXEC PGM=IKJEFT01
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCFID20),DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//**********************************************************************
// IF (ZMHAFI03.RC<4) THEN
//**********************************************************************
//*-------------------------------------------------------------------* 00207002
//* PROGRAMA: ZM4CFI21                                                * 00208002
//* FUNCION:      COMPROBANTE DE INVERSIóN DE MERCADO DE DINERO       * 00199102
//*               (DIRECTO/REPORTO) BATCH   (ARCHIVO)                 * 00199202
//*-------------------------------------------------------------------* 00209102
//*                                                                     00340000
//ZMHAFI02 EXEC PGM=IKJEFT01
//ZMHFIENT DD DSN=MXC&AMB..ZM.FIX.EBMC.ZMLCFI21,DISP=SHR
//ZMHFISAL DD DSN=MXC&AMB..ZM.FIX.EBCM.COMPMDD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=131,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCFID21),DISP=SHR
//*                                                                     00340006
//*-------------------------------------------------------------------* 00207002
//* PROGRAMA: ZM4CFI21                                                * 00208002
//* FUNCION:      COMPROBANTE DE INVERSIóN DE MERCADO DE DINERO       * 00199102
//*               (DIRECTO/REPORTO) BATCH                             * 00199202
//*-------------------------------------------------------------------* 00209102
//*                                                                     00340000
//ZMHAFI01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHFIENT DD DSN=MXC&AMB..ZM.FIX.EBMC.ZMLCFI21,DISP=SHR
//ZMHFISAL DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCFID21),DISP=SHR
//*                                                                     00340006
//****************************************************************      00200002
//*                SE ADICIONA CONDICION                         *      00210002
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00220002
//****************************************************************      00230002
//ZMHAFI06 EXEC PGM=CTMCND,PARM='ADD COND BCHFIZ21_A_OK WDATE',         00240003
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
// IF (ZMHAFI03.RC=4) THEN
//**********************************************************************
//*-------------------------------------------------------------------* 00207002
//* PROGRAMA: ZM4CFI21                                                * 00208002
//* FUNCION:      COMPROBANTE DE INVERSIóN DE MERCADO DE DINERO       * 00199102
//*               (DIRECTO/REPORTO) BATCH   (ARCHIVO)                 * 00199202
//*-------------------------------------------------------------------* 00209102
//*                                                                     00340000
//ZMHAFI05 EXEC PGM=IKJEFT01
//ZMHFIENT DD DSN=MXC&AMB..ZM.FIX.EBMC.ZMLCFI21,DISP=SHR
//ZMHFISAL DD DSN=MXC&AMB..ZM.FIX.EBCM.COMPMDD.PRECIOS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=131,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCFID21),DISP=SHR
//*                                                                     00340006
//*-------------------------------------------------------------------* 00207002
//* PROGRAMA: ZM4CFI21                                                * 00208002
//* FUNCION:      COMPROBANTE DE INVERSIóN DE MERCADO DE DINERO       * 00199102
//*               (DIRECTO/REPORTO) BATCH                             * 00199202
//*-------------------------------------------------------------------* 00209102
//*                                                                     00340000
//ZMHAFI04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHFIENT DD DSN=MXC&AMB..ZM.FIX.EBMC.ZMLCFI21,DISP=SHR
//ZMHFISAL DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHCFID21),DISP=SHR
//*                                                                     00340006
//****************************************************************      00200002
//*                SE ADICIONA CONDICION                         *      00210002
//*                PARA QUE SEA TOMADA POR CTL-M                 *      00220002
//****************************************************************      00230002
//ZMHAFI07 EXEC PGM=CTMCND,PARM='ADD COND BCHFIZ21_P_OK WDATE',         00240003
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
