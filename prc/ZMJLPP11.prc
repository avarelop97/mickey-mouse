//ZMJLPP11 PROC
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
//*   CORRE ANTES DE  :  CBJLPZ11                                      *
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
//*--------------------------------------------------------------------
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).
//* FECHA          :  NOVIEMBRE 2008. CONVERSION DE SUBMITIDORES
//*-------------------------------------------------------------------*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PJL11P07     EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PJL11P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.EMP.SUC.ZMJLPE11,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE),
//            BUFNO=30
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PJL11P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXRT1_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
//*
