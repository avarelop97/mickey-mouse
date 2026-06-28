//ZMGIPD21  PROC                                                        00010025
//*====================================================================*
//* COMPANIA    : BBVA BANCOMER - MEXICO                               *
//* SISTEMA     : ZM / BANCA PATRIMONIAL                               *
//* PROCESO     : ZMGIPD21                                             *
//*                                                                    *
//*                       - O B J E T I V O -                          *
//*                                                                    *
//* GENERACION DE ARCHIVO PLANO  CON LAS CUENTAS DADAS DE ALTA POR LA  *
//* APP(FIRMA DIFERIDA) Y LOS CONTRATOD DADOS DE BAJA APARTIR DEL 4    *
//* DE DICIEMBRE DEL 2023.                                             *
//*====================================================================*
//*                    - LOG DE MODIFICACIONES -                       *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*====================================================================*
//* PASO     : PGI21P01                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE INFORMACION PARA DEMANDAS                   *
//*====================================================================*
//PGI21P01 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PWR01P01,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BAJAALT.APPFD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSCNTL  DD DUMMY
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGI21T01),DISP=SHR
//*
//*********************************************************************
//*   PROGRAMA:    IOACND
//*   OBJETIVO:    ADICIONA CONDICION PARA QUE SEA TOMADA POR PU Y SE
//*                EJECUTE AUTOMATICAMENTE EL PROCESO EU.
//*********************************************************************
//PGI21P02 EXEC PGM=IOACND,PARM='ADD COND BCJICD21_OK WDATE',
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
//*
//*====================================================================*
//*                    Z M G I P D 2 1                                 *
//*====================================================================*
