//ZMLLPC40 PROC                                                         00040000
//*--------------------------------------------------------------------*
//* SISTEMA  : ZM - CASA DE BOLSA.                                     *00003000
//* PROCESO  : ZMLLPC40.                                               *
//* OBJETIVO : PROCESO DE CARGA DE PARAM CRP, CSR, RFC, RPF            *
//*                                                                    *
//* REALIZO  : CDA-INFORMATICA (CABS).                                 *
//* FECHA    : 02-04-2014.                                             *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-0.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                                                                    *
//*--------------------------------------------------------------------*
//*---------------------------------------------------------------------
//* PASO    : PZMPC402
//* PROGRAMA: ZM4OJ086
//* OBJETIVO: CARGAR A PARAM ARCHIVOS CRP, RFC, RPF (SEGUN CORRESPONDA)
//*---------------------------------------------------------------------
//PZMPC402 EXEC PGM=IKJEFT01
//*
//ZMJ086E1 DD DSN=MXCP.ZM.FIX.CRP.PARAM,DISP=SHR
//ZMJ086E2 DD DSN=MXCP.ZM.FIX.RFC.PARAM,DISP=SHR
//ZMJ086E3 DD DSN=MXCP.ZM.FIX.RPF.PARAM,DISP=SHR
//*
//ZMJ086S1 DD DSN=MXCP.ZM.FIX.INC.CRP.PARAM.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=83,BLKSIZE=0,DSORG=PS)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMC40T01),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*---------------------------------------------------------------------
//* PASO    : PZMPC401
//* PROGRAMA: ZM4OJ087
//* OBJETIVO: GENERAR ARCHIVO CON PARAM CRP
//*---------------------------------------------------------------------
//PZMPC401 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ087S1 DD DSN=MXCP.ZM.FIX.PARAM.CRP.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//ZMJ087S2 DD DSN=MXCP.ZM.FIX.PARAM.CSR.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//ZMJ087S3 DD DSN=MXCP.ZM.FIX.PARAM.RFC.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//ZMJ087S4 DD DSN=MXCP.ZM.FIX.PARAM.RPF.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMC40T02),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00003000
//*                          FINAL DEL PROCESO
//**********************************************************************00003000
