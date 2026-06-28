//ZMJLPE59 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*-------------------------------------------------------------------**
//**********************************************************************
//* OBJETIVO: DAR DE ALTA LA CONDICION UNA VEZ QUE SE TRANSFIRIO EL    *
//*           ARCHIVO DEL SERVIDOR AL HOST PU.                         *
//**********************************************************************
//PJL59P02 EXEC  PGM=CTMCND,PARM='ADD COND   CBJTND59_END_OK    WDATE'  00004700
//*                                                                     00004900
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD                   00005000
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM                   00005100
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV                 00005200
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG                   00005300
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*                                                                     00005500
//PRTDBG   DD   SYSOUT=*                                                00005600
//SYSPRINT DD   DUMMY                                                   00005700
//SYSUDUMP DD   DUMMY                                                   00005800
//DAPRINT  DD   SYSOUT=*                                                00005900
//DACNDIN  DD DDNAME=SYSIN
//*
//**********************************************************************
//*                                                                    *
//*  ACTUALIZA CTLPROC                                                 *
//*                                                                    *
//**********************************************************************
//PJL59P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*,
//            DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL51T00),DISP=SHR
//*
