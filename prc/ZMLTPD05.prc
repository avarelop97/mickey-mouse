//ZMLTPD05 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                                                                    *
//*   APLICACION:  MODULO UNICO DE VALORES (M.U.V.)                    *
//*                                                                    *
//*   PROCEDIM. :  ZMLTPD05                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZA TRANSFERENCIA DEL ARCHIVO DE MOVIMIENTOS    *
//*                PARA REP. A BANXICO  AL SERVIDOR PLANAS1F1          *
//*                                                                    *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    : DIARIO                                         *
//*                                                                    *
//*   ELABORADO POR: GETRONICS.                                        *
//*                                                                    *
//*   FECHA:  FEBRERO  2005.                                           *
//*                                                                    *
//*   ACTUALIZA : NINGUNA TABLA                                        *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*
//*-------------------------------------------------------------------**
//*    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA EN ARCHIVO
//*-------------------------------------------------------------------**
//PLT05P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.CON.E&EMP..S&SUC..ZMLTPD05,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*-------------------------------------------------------------------**
//*                                                                    *00020000
//*  PASO:  1     REALIZA LA TRANSFERENCIA DEL ARCHIVO                 *00030000
//*               SIVA.MDD.FIX.ECBP.MOV.OPERA                          *00020000
//*               AL SERVIDOR PLANAS1F1                                *00020000
//*-------------------------------------------------------------------**
//PLT05P01 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZLT05T01),DISP=SHR
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PLT05P00 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXQZ5_IN_SEP_OK WDATE',
//         COND=(5,LT)
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
//*--------------------------------------------------------------------*00010000
//*                 F I N   Z M L T P D 0 5                            *00020000
//*--------------------------------------------------------------------*00010000
