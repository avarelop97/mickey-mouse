//ZMJLPD51 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  ACTIVA CONDICION PARA TRANSFERIR ARCHIVO DE         *
//*                PRECIOS DE SIEFORES DE SERVIDOR NT A HOST.          *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*-------------------------------------------------------------------**
//**********************************************************************
//*  RECIBE LOS PARAMETROS ENVIADOS DE LINEA.                          *
//**********************************************************************
//PJL51P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//PI601765 DD DUMMY
//*
//ZMG001A1 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*********************************************************************
//*  GENERACION DE ARCHIVO VACIO                                      *
//*********************************************************************
//*PJL51PA1 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//*SYSUT1   DD DUMMY,LRECL=300,BLKSIZE=0,RECFM=FB
//*SYSUT2   DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PRECIOS.SIEFORES,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(6,3),RLSE),UNIT=3390,
//*            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS)
//*SYSIN    DD DUMMY
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*
//**********************************************************************
//*                                                                    *00020000
//*  PASO:  2     REALIZA LA TRANSFERENCIA DEL ARCHIVO SIEFORES.       *00030000
//*                                                                    *00020000
//**********************************************************************
//PJT51P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSDUMP   DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZJT51T01),DISP=SHR
//*
//**********************************************************************00004300
//* OBJETIVO : AGREGA LA CONDICION EN CONTROLM.                        *
//**********************************************************************00004600
//PJL51P01 EXEC  PGM=CTMCND,PARM='ADD COND    CBJTND51_IN_OK    WDATE', 00004700
//         COND=(4,LT)                                                  00004800
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
