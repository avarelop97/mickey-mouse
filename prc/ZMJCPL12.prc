//ZMJCPL12 PROC
//**********************************************************************
//**                    C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                                                                    *
//* SISTEMA        :  ZM - LIQUIDACION VALOR HOY                       *
//*                                                                    *
//* PROCESO        :  OPC. ZAA1(SUBMITIDOR)                            *
//*                   ZMJCPL12 (PROCEDIMIENTO)                         *
//*                                                                    *
//* OBJETIVO       :  GENERA COMPRAS Y VENTAS                          *
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
//* UTILERIA   : IKJEFT01/ZM4OJ607                                     *
//* OBJETIVO   : PROCESO DE COMPRAS VENTAS LIQUIDACION VALOR HOY       *
//*--------------------------------------------------------------------*
//ZPL12P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPL12T01),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : PPL02P02.                                             *
//* UTILERIA   : IKJEFT01/ZM4DJL61                                     *
//* OBJETIVO   : PROCESO QUE DEPURA LA TABLA ZMDTLVH                   *
//*--------------------------------------------------------------------*
//ZPL12P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPL12T02),DISP=SHR
//*
//**--------------------------------------------------------------------*
//** PASO      : PPL02P03.                                             *
//** UTILERIA  : IKJEFT01/ZM4DJL64                                     *
//** OBJETIVO  : PROCESO QUE GENERA REPORTE DE NETEO                   *
//**--------------------------------------------------------------------*
//*ZPL12P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZMJ201P1 DD DSN=MXCP.ZM.TMP.LVH.EMP.SUC.ZMJCPL11,DISP=SHR
//**
//*ZMJ201R1 DD DSN=MXCP.ZM.FIX.ECBP.ZMJL64R1,
//*         DISP=(NEW,CATLG,DELETE),
//*         UNIT=3390,SPACE=(CYL,(05,05),RLSE),
//*         DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS)
//**
//*ZMJ201R2 DD DSN=MXCP.ZM.FIX.ECBP.ZMJL64R2,
//*         DISP=(NEW,CATLG,DELETE),
//*         UNIT=3390,SPACE=(CYL,(05,05),RLSE),
//*         DCB=(LRECL=133,RECFM=FB,BLKSIZE=0,DSORG=PS)
//**
//*PI601765 DD DUMMY
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT  DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//*SYSTSIN DD  DSN=ZIVA.ZME.CONTROL(ZPL12T03),DISP=SHR
//**
