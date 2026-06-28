//ZMPLPC66 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMPLPC66                                            *
//*                                                                    *
//*   OBJETIVO  :  CARGA DE ARCHIVO                                    *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  A PETICION DEL USUARIO                        *
//*                                                                    *
//*   AUTOR           :  ACCENTURE , ENERO 2016                        *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*  FECHA  DESCRIPCION                                                *
//*--------------------------------------------------------------------*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*               EN ARCHIVO SECUENCIAL.                               *00040000
//**********************************************************************00060000
//PJPC6603 EXEC PGM=ZM3DG001,
// PARM=('&EMP','&SUC','&INT1','&INT2')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMPLPC66,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//*====================================================================*
//* PASO     : PJPC4801                                                *
//* PROGRAMA : ICEGENER                                                *
//* OBJETIVO : COPY DEL ARCHIVO PARA SER EJECUTADO PROCESO EN AJ       *
//*====================================================================*
//PJPC6601 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMPLPC66,DISP=SHR
//*
//SYSUT2   DD DSN=MXCP.ZM.FIX.FECHAS.INPC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DUMMY
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//* PARA QUE SE EJECUTE EL PROGRAMA DE AJENOS                    *
//****************************************************************
//PJPC6600 EXEC  PGM=CTMCND,PARM='ADD COND ZMPLPC66_IN_OK WDATE',
//         COND=(4,LT)
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.CTMD.SYSZBBV.DATA.RES
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
//**********************************************************************00010000
//*                 F I N     Z M J L P C 6 7                          *00020000
//**********************************************************************00060000
