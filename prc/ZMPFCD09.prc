//ZMPFCD09 PROC
//*--------------------------------------------------------------------*
//*               C A S A     D E     B O L S A                        *
//*               -----------------------------                        *
//*    GENERACION DE ARCHIVO CON EL REPORTE SAMANAL DE ALTAS           *
//*--------------------------------------------------------------------*
//*  ELABORO: ALFONSO DAMIAN E.                                        *
//*  FECHA  : FEBRERO/2006                                             *
//*--------------------------------------------------------------------*
//*  MODIFICACIONES                                                    *
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4CRX09                                                 *
//* FUNCION:  GENERACION DEL ARCHIVO CON EL REPORTE SEMANAL DE ALTAS   *
//*           PARA INTERFAZ CON BG.                                    *
//*--------------------------------------------------------------------*
//PSA09P02 EXEC PGM=IKJEFT01
//ZMRX09A1 DD DSN=MXCP.ZM.TMP.BCJFCD09.INTERF.SEMANAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=131,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZSA09T02),DISP=SHR
//*********************************************************************
//* PROGRAMA: IOACND
//* OBJETIVO: ADICIONA CONDICION PARA QUE SEA TOMADA POR PU Y SE
//*           EJECUTE AUTOMATICAMENTE EL PROCESO BGJL0530.
//*********************************************************************
//PSA09P01 EXEC PGM=IOACND,PARM='ADD COND BCJFCD09_OK_PR WDATE',
//         COND=(4,LT)
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//**********************************************************************
//*        TERMINA PROCESO ZMPFCD09 BANCA PATRIMONIAL                  *
//**********************************************************************
