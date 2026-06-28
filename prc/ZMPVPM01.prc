//ZMPVPM01 PROC
//*--------------------------------------------------------------------*00010000
//*               C A S A     D E     B O L S A                        *00020000
//*               -----------------------------                        *00020000
//*               GENERACION DE ARCHIVO CON VENCIMIENTOS DE PLAZOS     *00020000
//*--------------------------------------------------------------------*00060000
//*  ELABORO: ALFONSO DAMIAN E.                                        *01090000
//*  FECHA  : ENERO/2006                                               *01090000
//*--------------------------------------------------------------------*00060000
//*  MODIFICACIONES                                                    *00060000
//*--------------------------------------------------------------------*00060000
//********************************************************************
//* PROGRAMA: ZM4CRX02
//* FUNCION:  GENERACION DE ARCHIVO CON LA POSICION DE PLAZOS, PARA SU
//*           TRANSFERENCIA A SERVIDOR.
//********************************************************************
//PJV01P02 EXEC PGM=IKJEFT01
//ZMRX02A1 DD DSN=MXCP.ZM.FIX.PLAZOS.ZM4CRX02.VENCPLAZ,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=151,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVP01T02),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: CTMCND
//* OBJETIVO: ADICIONA CONDICION PARA QUE SEA TOMADA PARA LA EJECUCION
//*           AUTOMATICA DEL PROCESO BCHTND11.
//*---------------------------------------------------------------------
//PJV01P01 EXEC PGM=CTMCND,PARM='ADD COND BCJVPM01_IN_SEP_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
//**********************************************************************
//*        TERMINA PROCESO ZMPVPM01 BANCA PATRIMONIAL                  *
//**********************************************************************
