//ZMLLPE11 PROC
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPE11                                            *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  REPORTE DE EMISORAS DE ALTA MENSUAL                 *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*                                                                    *00003000
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN *00030000
//*  PLL11P02     ARCHIVO.                                             *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PLL11P02 EXEC PGM=ZM3DG001,REGION=0M,
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
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE11,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE),
//            BUFNO=30
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     REPORTE DE EMISORAS DE ALTA MENSUAL   -              *00030000
//*  PLL11P01                                                          *00040000
//*               PASO REINICIABLE POR RESTART             ZM4DLN84    *00040000
//**********************************************************************00060000
//PLL11P01 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//ZMLN84A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE11,DISP=SHR
//*
//ZMLN84R1 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL11T01),DISP=SHR
//*
//*****************************************************************
//* PASO: PLL11P00                                                *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *
//*****************************************************************
//PLL11P00 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND SIVAXREM_IN_SEP_OK WDATE'
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
//**********************************************************************00010000
//*                 F I N     Z M L L P E 1 1                          *00020000
//**********************************************************************00060000
