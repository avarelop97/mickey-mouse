//ZMJLPP51 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                      << T E S O R E R I A >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                  MODULO DE TESORERIA                               *
//*                                                                    *
//*   PROCEDIM. :  SIVAXV01  ( OPCION V01 )                            *
//*                                                                    *
//*   OBJETIVO  :  PROCEDIMIENTO DE GENERACION DE ARCHIVO DE PARAME    *
//*                TROS PARA GENERACION DEL CERTIFICADO DE ELEGIBI-    *
//*                LIDAD DE UN CLIENTE DE LA BANACA PATRIMONIAL        *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  CORRE A PETICION DEL USUARIO                  *
//*                                                                    *
//*   ELABORADO POR: INDRA                                             *
//*                                                                    *
//*   FECHA:  ENERO 2021.                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*  FECHA  DESCRIPCION                                                *
//*--------------------------------------------------------------------*
//* ENER/2021 SE CLONO DEL PROC ZMJLPPA6                               *
//*--------------------------------------------------------------------*
//* NOV /2008 SE AGREGA CONDICION EN CONTROL-M IDCMZA (TOWA). IDCMZA   *
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PJLA6P03     EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PJLA6P03 EXEC PGM=ZM3DG001,
// PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.EMP.ZMJLPP51,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTRL-M *00030000
//*  PJLA6P01                                                          *00040000
//**********************************************************************00060000
//PJLA6P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXV01_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
//*
//**********************************************************************00010000
//*                 F I N     Z M J L P P 5 1                          *00020000
//**********************************************************************00060000
