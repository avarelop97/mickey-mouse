//ZMHLPE85 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << MODULO DE VALORES >>                        *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  SIVAXRNA                                            *
//*                                                                    *
//*   OBJETIVO  :  ACTIVA CONDICION PARA TRANSFERIR ARCHIVO DE         *
//*                PRECIOS DE SERVIDOR A HOST.                         *
//*                                                                    *
//*   CORRE ANTES DE  :  CBHLPD86                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIA                                        *
//*                                                                    *
//*   ELABORADO POR   :  OSCAR URBANO FERNANDEZ (AZERTIA).             *
//*                                                                    *
//*   FECHA           : SEPTIEMBRE 2009.                               *
//*                                                                    *
//*   ACTUALIZA :                                                      *
//**********************************************************************
//*                                                                    *00020000
//*  PASO:  2     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PJL01P02     EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//*-------------------------------------------------------------------**
//PHL83P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.E&EMP..S&SUC..ZMHLPE85,
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
//*--------------------------------------------------------------------*00010000
//*                                                                    *
//*  PASO:  1     SE ADICIONA CONDICION PARA QUE SEA TOMADA POR        *
//*  PHL83P01     CTRL-M.                                              *
//*--------------------------------------------------------------------*00010000
//PHL83P01 EXEC PGM=CTMCND,PARM='ADD COND CBHLPD86_SIVA_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=Z
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=Z
//DACNDIN  DD DDNAME=SYSIN
//*--------------------------------------------------------------------*00010000
//*                 F I N   Z M J L P D 3 3                            *00020000
//*--------------------------------------------------------------------*00010000
