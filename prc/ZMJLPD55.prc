//ZMJLPD55 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  ACTIVA CONDICION EN CONTROL-M QUE ES TOMADA POR     *
//*                EL DISPARADOR CBJTND55 QUE A SU VEZ EJECUTA EL PROC *
//*                ZMJTPD55 QUE SE ENCARGA DE TRANSFERIR EL ARCHIVO    *
//*                DE PRECIOS HISTORICO AL HOST Y DAR DE ALTA LOS      *
//*                REGISTROS EN LA TABLA ZMDT900.                      *
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
//PJL55P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//PI601765 DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJLPD55,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
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
//*PJL55P1A EXEC PGM=ICEGENER,COND=(4,LT)
//*
//*SYSUT1   DD DUMMY,LRECL=211,BLKSIZE=0,RECFM=FB
//*SYSUT2   DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PRECIOS.SIEFHIST,
//*            DISP=(NEW,CATLG,DELETE),
//*            SPACE=(CYL,(6,3),RLSE),UNIT=3390,
//*            DCB=(RECFM=FB,LRECL=211,BLKSIZE=0,DSORG=PS)
//*SYSIN    DD DUMMY
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*
//*********************************************************************
//*                                                                   *
//*  PASO 3: GENERA SYSIN PARA TRANSFERENCIA DE ARCHIVO HISTORICO.    *
//*                                                                   *
//*********************************************************************
//PJL55P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQ9000 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJLPD55,DISP=SHR
//S1DQ9000 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJTPD55.SYSIN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,
//            DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL55T03),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//*  PASO 2: REALIZA LA TRANSFERENCIA DEL ARCHIVO HISTORICO.           *
//*                                                                    *
//**********************************************************************
//PJL55P02 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSDUMP   DD SYSOUT=*
//SYSIN     DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJTPD55.SYSIN,DISP=SHR
//*
//**********************************************************************
//* OBJETIVO : AGREGA LA CONDICION EN CONTROLM.                        *
//**********************************************************************
//PJL55P01 EXEC  PGM=CTMCND,PARM='ADD COND    CBJTND55_IN_OK    WDATE',
//         COND=(4,LT)
//*
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
