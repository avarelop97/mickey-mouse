//ZMJCPL08 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                                                                    *
//* SISTEMA        :  ZM - LIQUIDACION VALOR HOY                       *
//*                                                                    *
//* PROCESO        :  OPC. ZAA1(SUBMITIDOR)                            *
//*                   ZMJCPL08 (PROCEDIMIENTO)                         *
//*                                                                    *
//* OBJETIVO       :  GENERA REPORTE DE CARGA DE CREDITOS              *
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
//* PASO       : ZPL08P01.                                             *
//* UTILERIA   : IKJEFT01/ZM4DJL62                                     *
//* OBJETIVO   : REPORTE DE CARGA DE CREDITOS                          *
//*--------------------------------------------------------------------*
//ZPL08P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4DJL62 DD DSN=MXCP.ZM.FIX.LVH.RCARGA.CRED,
//           DISP=(NEW,CATLG,DELETE),
//           UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//           DCB=(LRECL=67,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZPL08T01),DISP=SHR
//*
