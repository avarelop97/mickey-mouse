//ZMUPRD04 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO           *
//* OBJETIVO: GENERACION DE ARCHIVO CON RENDIMIENTOS DIARIOS           *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//* MARCA       AUTOR   FECHA    DESCRIPCION                           *
//*----------- ------- --------  --------------------------------------*
//*FS-1.1.0-01 XMCH074 14/11/12  SE MODIFICA EL PASO STEP030           *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//**********************************************************************00240002
//* PROGRAMA: IDCAMS
//* OBJETIVO: RESPALDO ARCHIVOS CON SALDOS
//**********************************************************************
//STEP030  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.INTFAZ.DIA.REND,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.INTFAZ.SDO.REND,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//*FS-1.1.0-01-INI
//*           DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS,LRECL=126)
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS,LRECL=128)
//*FS-1.1.0-01-FIN
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(NZMCT005),DISP=SHR
//*
