//ZMLLPE28 PROC                                                         00001000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  SIVAXD77 OPC(932)                                   *
//*                                                                    *
//*   OBJETIVO  :  GENERA REPORTE DE ASIGNACION AUTOMATICA             *
//*                DEMANDA NO CUBIERTA.                                *
//*                                                                    *
//*   CORRE ANTES DE  : NINGUNO                                        *
//*                                                                    *
//*   CORRE DESPUES DE: NINGUNO                                        *
//*                                                                    *
//*   PERIODICIDAD    :  CORRE A PETICION DEL USUARIO.                 *
//*                                                                    *
//*   ELABORADO POR: ASATECK.                                          *
//*                                                                    *
//*   FECHA:  JULIO  2002.                                             *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PLL28P03     EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PLL28P03 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMLLPE28,
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
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     GENERA EL REPORTE DE ASIGNACION AUTOMATICA "DEMANDA  *00030000
//*  PLL28P02     NO CUBIERTA" Y "POSICICION DE OFERTA" NO AFECTA      *00040000
//*               TABLAS.                                   ZM4DLD77   *00020000
//**********************************************************************00060000
//PLL28P02 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M                      00060000
//*
//ZMLD77A1 DD  DSN=MXCP.ZM.TMP.MDC.E&EMP..S&SUC..ZMLLPE28,DISP=SHR
//*
//ZMLD77R1 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*                                                                     00240000
//ZMLD77R3 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*                                                                     00300000
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00110000
//SYSPRINT DD  SYSOUT=*                                                 00120000
//SYSOUT   DD  SYSOUT=*                                                 00130000
//SYSDBOUT DD  SYSOUT=*                                                 00140000
//SYSABOUT DD  DUMMY                                                    00150000
//SYSUDUMP DD  DUMMY                                                    00160000
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL28T02),DISP=SHR                  00170035
//*                                                                     00180000
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  3     ACTIVA LA CONDICION EN CTRL-D                        *00030000
//*  PLL28P01                                                          *00020000
//**********************************************************************00060000
//PLL28P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXD77_IN_SEP_OK WDATE',
//         COND=(0,NE)
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
//*
//**********************************************************************00060000
//*                   F I N    Z M L L P E 2 8                         *00020000
//**********************************************************************00060000
