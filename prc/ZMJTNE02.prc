//ZMJTNE02 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << SISTEMA DE VALORES >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMJTNE02                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZA TRANSFERENCIA DE ARCHIVO DEL SERVIDOR AL    *
//*                SIVA.                                               *
//*                                                                    *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL (A PETICION DEL USUARIO, T11 TESOR.  *
//*                                                                    *
//*   ELABORADO POR: GETRONICS.                                        *
//*                                                                    *
//*   FECHA:  AGOSTO  2007.                                            *
//*                                                                    *
//*   ACTUALIZA : TABLAS DEL SIVA                                      *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//*--------------------------------------------------------------------*
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*-------------------------------------------------------------------**
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PJT02P02     EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//*-------------------------------------------------------------------**
//PJT02P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMJTNE02,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*-------------------------------------------------------------------**
//*                                                                    *00020000
//*  PASO:  1.A   DETERMINA SI EL ARCHIVO DE CARGOS O DE ABONOS DEBE   *00030000
//*  PJT02P02     TRANSMITIRSE.                                        *00040000
//*                                                         ZM3DG004   *00020000
//*-------------------------------------------------------------------**
//PJT02P03 EXEC PGM=ZM3DG004,COND=(4,LT)
//*
//ZMDJ23A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZMHLPE40,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*-------------------------------------------------------------------**
//*                                                                    *00020000
//*  PASO:  2.A   LEVANTA CONDICIóN                                    *00030000
//*  PHT39P01     SIVAXTAC_CAR_OK                                      *00040000
//*                                                                    *00020000
//*-------------------------------------------------------------------**
// IF  PJT02P03.RC EQ 01 THEN
//PHT39P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXTAC_CAR_OK WDATE',
//         COND=(4,LT)
//*
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
// ENDIF
//*
//*-------------------------------------------------------------------**
//*                                                                    *00020000
//*  PASO:  2.B   LEVANTA CONDICIóN                                    *00030000
//*  PHT39P02     SIVAXTAC_ABO_OK                                      *00040000
//*                                                                    *00020000
//*-------------------------------------------------------------------**
// IF  PJT02P03.RC EQ 02 THEN
//PHT39P02 EXEC PGM=CTMCND,PARM='ADD COND SIVAXTAC_ABO_OK WDATE',
//         COND=(4,LT)
//*
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
// ENDIF
//*
//*-------------------------------------------------------------------**
//*                                                                    *00020000
//*  PASO:  2.C   LEVANTA CONDICIóN                                    *00030000
//*  PHT39P03     SIVAXTAC_VAL_OK                                      *00040000
//*                                                                    *00020000
//*-------------------------------------------------------------------**
// IF  PJT02P03.RC EQ 03 THEN
//PHT39P03 EXEC PGM=CTMCND,PARM='ADD COND SIVAXTAC_VAL_OK WDATE',
//         COND=(4,LT)
//*
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
// ENDIF
//*
//*-------------------------------------------------------------------**
//*                                                                    *00020000
//*  PASO:  2     REALIZA LA TRANSFERENCIA DEL ARCHIVO PARA REALIZAR   *00030000
//*  PHT02P01     CARGOS DE TESORERIA CASA DE BOLSA                    *00040000
//*                                                                    *00020000
//*-------------------------------------------------------------------**
//*PHT39P01 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//**
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZJT02T01),DISP=SHR
//**
//*--------------------------------------------------------------------*00010000
//*                 F I N   Z M J T N E 0 2                            *00020000
//*--------------------------------------------------------------------*00010000
