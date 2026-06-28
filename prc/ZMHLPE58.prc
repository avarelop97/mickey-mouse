//ZMHLPE58 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << SISTEMA DE VALORES >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  SIVAXBXT                                            *
//*                                                                    *
//*   OBJETIVO  :  ACTIVA CONDICION PARA TRANSFERIR ARCHIVO DE OPERA-  *
//*                CIONES DE DEPOSITOS Y RETIROS DE INDEVAL DE SERVIDOR*
//*                A HOST.                                             *
//*                                                                    *
//*   CORRE ANTES DE  :  CBHTND58                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL (A PETICION DEL USUARIO)             *
//*                                                                    *
//*   ELABORADO POR: GETRONICS.                                        *
//*                                                                    *
//*   FECHA:  FEBRERO 2004.                                            *
//*                                                                    *
//*   ACTUALIZA :                                                      *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*-------------------------------------------------------------------**
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PLL33P08     EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//*-------------------------------------------------------------------**
//PLL33P08 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHLPE58,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*00010000
//*                                                                    *
//*  PASO:  8     SE ADICIONA CONDICION PARA QUE SEA TOMADA POR        *
//*  PLL33P01     CTRL-M.                                              *
//*--------------------------------------------------------------------*00010000
//PLL33P01 EXEC PGM=CTMCND,PARM='ADD COND CBHTNE58_&EMP_SIVA_OK WDATE',
//         COND=(4,LT)
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
//*                 F I N   Z M H L P E 5 8                            *00020000
//*--------------------------------------------------------------------*00010000
