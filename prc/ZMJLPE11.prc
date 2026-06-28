//ZMJLPE11 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  SIVAXRT1                                            *
//*   PROCEDIM. :  ZMJLPE11 (OPC. T60)                                 *
//*                                                                    *
//*   OBJETIVO  :   GENERA REPORTE DE EMISION T+1                      *
//*                 PRODUCCION TESORERIA GENERACION DE REPORTE DE      *
//*                 OPERACION T+1 (PTERT100).                          *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL                                      *
//*                                                                    *
//*   MULTIEMPRESA : ASATECK.                                          *
//*                                                                    *
//*   FECHA:  JUNIO  2002                                              *
//*                                                                    *
//**********************************************************************
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PJL11P07     EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PJL11P04 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE11,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE),
//            BUFNO=30
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     GENERACION DEL REPORTE DE OPERACION T + 1.           *00030000
//*  PJL11P06                                                          *00040000
//*                                                         ZM4EGG86   *00020000
//**********************************************************************00060000
//PJL11P03 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZMGG86A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE11,DISP=SHR
//*
//ZMGG86R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL11T01),DISP=SHR
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  3     GRABAR LOS PARAMETROS RECIBIDOS EN LINEA EN LA PARAM *00030000
//*  PJL11P04     'T54' PARA PERMITIR CONTROLAR CONTENCION (-911) EN EL*00040000
//*                PROC Y RESUBMITIR Y ASI GENERAR REP.  EMISION T+1.  *00020000
//*                                                       ZM4DG001     *00020000
//**********************************************************************00060000
//PJL11P02 EXEC PGM=IKJEFT01,REGION=0M,
//         COND=(20,NE,PJL11P03)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMJLPE11,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL11T02),DISP=SHR
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-D                 *
//****************************************************************
//PJL11P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXRT1_IN_SEP_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD   DDNAME=SYSIN
//SYSIN    DD   DUMMY
//*
//**********************************************************************00010000
//*                  F I N      Z M J L P E 1 1                        *00020000
//**********************************************************************00060000
