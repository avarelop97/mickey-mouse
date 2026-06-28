//ZMUPRD03 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA : ZM - BANCA PATRIMONIAL Y FIDUCIARIO                      *
//* OBJETIVO: GENERACION DE ARCHIVO CON RENDIMIENTOS DIARIOS           *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*           L O G    D E   M O D I F I C A C I O N E S               *
//**********************************************************************
//* MARCA       AUTOR   FECHA    DESCRIPCION                           *
//*----------- ------- ------- ----------------------------------------*
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//* PASO    : STEP030                                                  *
//* PROGRAMA: IKJEFT01                                                 *
//* OBJETIVO: GENERACION DE ARCHIVO CON SALDOS                         *
//*--------------------------------------------------------------------*
//STEP030  EXEC PGM=IKJEFT01
//*
//I1DQ0001 DD DSN=MXCP.ZM.TMP.UNLOT608,DISP=SHR
//I1DQ0002 DD DSN=MXCP.ZM.FIX.INTFAZ.EVEN.FPROC,DISP=SHR
//*
//O1DQ0001 DD DSN=MXCP.ZM.FIX.INTFAZ.DIA.REND,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=128,RECFM=FB,BLKSIZE=0)
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(NZMCT03B),DISP=SHR
//*
