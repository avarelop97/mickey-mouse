//ZMJCPL06 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                                                                    *
//* SISTEMA        :  ZM - LIQUIDACION VALOR HOY                       *
//*                                                                    *
//* PROCESO        :  OPC. L6D (SUBMITIDOR)                            *
//*                   ZMJCPL05 (PROCEDIMIENTO)                         *
//*                                                                    *
//* OBJETIVO       :  GENERA REPORTE DE ACCIONES MISMO DIA             *
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
//* UTILERIA   : IKJEFT01/ZM4DJL61                                     *
//* OBJETIVO   : REPORTE ACCIONES MISMO DIA                            *
//*--------------------------------------------------------------------*
//ZPL06P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4DJL61 DD DSN=MXCP.ZM.FIX.LVH.RMISM0.DIA,
//           DISP=(NEW,CATLG,DELETE),
//           UNIT=3390,SPACE=(CYL,(10,05),RLSE),
//           DCB=(LRECL=97,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(ZPL06T01),DISP=SHR
//*
