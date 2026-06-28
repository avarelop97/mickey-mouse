//ZMJCPL03 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                                                                    *
//* SISTEMA        :  ZM - LIQUIDACION VALOR HOY                       *
//*                                                                    *
//* PROCESO        :  OPC. L6B (SUBMITIDOR)                            *
//*                   ZMJCPL03 (PROCEDIMIENTO)                         *
//*                                                                    *
//* OBJETIVO       :  GENERA REPORTE DE CARGOS MUV Y DIFO              *
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
//* UTILERIA   : IKJEFT01/ZM4OJ605                                     *
//* OBJETIVO   : OBTIENE DATOS ZMDT703                                 *
//*--------------------------------------------------------------------*
//ZPL03P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ091S1 DD DSN=MXCP.ZM.FIX.LVH.CARGO.DIFMUV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=59,BLKSIZE=0,DSORG=PS)
//*
//ZMJ091S2 DD DSN=MXCP.ZM.FIX.LVH.ZM4OJ605.INC,
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
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZPL03T01),DISP=SHR
