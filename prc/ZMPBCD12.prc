//ZMPBCD12 PROC                                                         00040000
//**********************************************************************00003000
//*   APLICACION: ZM                                                   *00003000
//*   JCL       : BCTEND12                                             *00003000
//*   PROCEDIM  : ZMPBCD12                                             *00003000
//*   PERIODIC  : DIARIO                                               *00003000
//**********************************************************************
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO     : PZMD12P1                                                *
//* OBJETIVO : LEVANTA CONDICION EN CONTROL-M DE PU PARA QUE SEA       *
//*            TOMADA POR MEDC.                                        *
//**********************************************************************
//PZMD12P1 EXEC  PGM=IOACND,
//         PARM='ADD COND BCTEND12_PR_OK WDATE'
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
