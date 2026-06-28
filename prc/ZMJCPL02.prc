//ZMJCPL02 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                                                                    *
//* SISTEMA        :  ZM - LIQUIDACION VALOR HOY                       *
//*                                                                    *
//* PROCESO        :  OPC. L6B (SUBMITIDOR)                            *
//*                   ZMJCPL02 (PROCEDIMIENTO)                         *
//*                                                                    *
//* OBJETIVO       :  GENERA DVH                                       *
//*                                                                    *
//* PERIODICIDAD   :                                                   *
//**********************************************************************
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*  MARCA      AUTOR     FECHA  DESCRIPCION                           *
//* ----------- --------- ------ --------------------------------------*
//* FS-9.9.9-99 XXXXXXXXX DDMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//* PASO       : PPL02P01.                                             *
//* UTILERIA   : IKJEFT01/ZM4OJ600                                     *
//* OBJETIVO   : OBTIENE DATOS ZMDT703                                 *
//*--------------------------------------------------------------------*
//ZPL02P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ091S1 DD DSN=MXCP.ZM.FIX.LVH.ZM703,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=74,BLKSIZE=0,DSORG=PS)
//*
//ZMJ091S2 DD DSN=MXCP.ZM.FIX.LVH.ZM4OJ600.INC,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPL02T01),DISP=SHR
//**********************************************************************
//*                        == ZM4OJ601 ==                              *
//* OBJETIVO : PROGRAMA DE RECUPERA EL PRECIO                          *
//**********************************************************************
//ZPL02P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.LVH.ZM703,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.LVH.ZM4OJ601,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=104,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPL02T02),DISP=SHR
//*
//**********************************************************************
//*                        == ZM4OJ602 ==                              *
//* OBJETIVO : PROGRAMA DE RECUPERA LA CUENTA CONCENTRADORA            *
//**********************************************************************
//ZPL02P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.LVH.ZM4OJ601,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.LVH.ZM4OJ602,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=116,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPL02T03),DISP=SHR
//*
//**********************************************************************
//*  GENERA UN SE GENERA UN SOLO ARCHIVO                               *
//**********************************************************************
//ZPL02P04 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.LVH.ZM4OJ602,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.LVH.ZM4OJ602.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=116,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPL02T04),DISP=SHR
//*
//**********************************************************************
//*                        == ZM4OJ603 ==                              *
//* OBJETIVO : REALIZA EL REGISTRO CON EL ACUMULADO                    *
//*            VENDE CLIENTE COMPRA FONDO                              *
//*            COMPRA CLIENTE VENDE FONDO                              *
//**********************************************************************
//ZPL02P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.LVH.ZM4OJ602.SORT,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.LVH.ZM4OJ603,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=143,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPL02T05),DISP=SHR
//*
//**********************************************************************
//*                        == ZM4OJ604 ==                              *
//* OBJETIVO : INSERTA EN LA TABLA ZMDTLVH                             *
//*            VENDE CLIENTE COMPRA FONDO                              *
//*            COMPRA CLIENTE VENDE FONDO                              *
//**********************************************************************
//ZPL02P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.LVH.ZM4OJ603,DISP=SHR
//*
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPL02T06),DISP=SHR
//*
//**********************************************************************
//*                        == ZM3OJ600 ==                              *
//*                                                                    *
//* OBJETIVO : GENERA REPORTE                                          *
//*                                                                    *
//**********************************************************************
//ZPL02P07 EXEC PGM=ZM3OJ600,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.LVH.ZM4OJ603,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.LVH.ZM3OJ600.REP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=191,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(6,3),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
