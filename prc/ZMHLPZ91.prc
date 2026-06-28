//ZMHLPZ91 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                                                                    *
//* SISTEMA        :  ZM - RIESGO DE LIQUIDEZ                          *
//*                                                                    *
//* PROCESO        :  OPC. D60 (SUBMITIDOR)                            *
//*                   ZMHLPZ91 (PROCEDIMIENTO)                         *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVOS CON LOS MOVIMIENTOS Y POSICION   *
//*                   PROPIA DE MERCADO CAPITALES PARA SU ENVIO AL SIRE*
//*                                                                    *
//* PERIODICIDAD   :  EVENTUAL                                         *
//**********************************************************************
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*  MARCA      AUTOR     FECHA  DESCRIPCION                           *
//* ----------- --------- ------ --------------------------------------*
//* FS-9.9.9-99 XXXXXXXXX DDMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//**********************************************************************
//* OBJETIVO : GENERA ARCHIVO CON LOS MOVIMIENTOS Y   POSICION PROPIA  *
//*             DE MERCADO DE CAPITALES PARA SU ENVIO AL SIRE          *
//* PROGRAMA : ZM4DH072                                                *
//**********************************************************************
//PHL91P02 EXEC PGM=IKJEFT01
//*
//ZMFH0720 DD DSN=MXCP.ZM.TMP.MDC.EMP.SUC.ZMLLPP91,
//            DISP=SHR
//*
//ZMFH0721 DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.RENVAR.REPRO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMFH0722 DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.CIFCTRL.REPRO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(PHL91P02),DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : GENERA TARJETAS DE CONTROL PARA TRANSMISION DE ARCHIVOS *
//* PROGRAMA : ZM4DH073                                                *
//**********************************************************************
//PHL91P01 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMFH0730 DD DSN=MXCP.ZM.TMP.MDC.EMP.SUC.ZMLLPP91,
//            DISP=SHR
//*
//ZMFH0731 DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.NZMICD15,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//*
//ZMFH0732 DD DSN=MXCP.ZM.FIX.MDC.ECBP.SIRE.NZMICD16,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSIN DD DSN=ZIVA.ZME.CONTROL(PHL91P01),DISP=SHR
//*
//**********************************************************************00010000
//*                 F I N     Z M H L P Z 9 1                          *00020000
//**********************************************************************00060000
