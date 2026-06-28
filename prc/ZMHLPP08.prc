//ZMHLPP08 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPP08.                                           *
//*   PROC ANT. :  ZMHLPE08.                                           *
//*                                                                    *
//*   OBJETIVO  :  REPORTES DE CONCILIACION OPERATIVOS Y CAPITAL       *
//*                                                                    *
//*   CORRE ANTES DE  :  CBHLPZ08 (CBP).                               *
//*                      BCHLPZ08 (BCM).                               *
//*                                                                    *
//*   CORRE DESPUES DE:  SIVAXVA1.                                     *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *
//*                                                                    *
//*   ELABORADO POR: SOFTTEK / ELIZABETH COLIN (ECV)                   *
//*                                                                    *
//*   FECHA:  SEPTIEMBRE 2002.                                         *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*MODXXX|2005-06-07|IDCEX75|PHL08P01|SE AGREGA PREFIJO (V605)         *
//*--------------------------------------------------------------------*
//*MODIFICA : OSCAR URBANO F. (AZERTIA).                               *
//*FECHA    : OCTUBRE 2008.   (CONVERSION DE SUBMITIDORES)             *
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM3DG001                                                 *
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR         *
//* NO ACTUALIZA TABLAS.                                               *
//*--------------------------------------------------------------------*
//PHL08P04 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                        -- ZM3DG010--                               *
//* PASO 05 SECUENCIA 02                                               *
//* OBJETIVO       :  GENERA CODIGO DE RETORNO DE ACUERDO A LA EMPRESA *
//*                   CBP ==> RC=1 OTRA ==> RC=2                       *
//**********************************************************************
//PHL08P03 EXEC PGM=ZM3DG010,COND=(4,LT)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN2,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//*
//**********************************************************************
//*              SE ADICIONA CONDICION                                 *
//*              PARA QUE SEA TOMADA POR CTL-M                         *
//**********************************************************************
// IF  PHL08P03.RC EQ 1 THEN
//PHL08P02 EXEC PGM=CTMCND,PARM='ADD COND CBHLPZ08_IN_OK WDATE',
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
// ENDIF
//*
//**********************************************************************
//*              SE ADICIONA CONDICION                                 *
//*              PARA QUE SEA TOMADA POR CTL-M                         *
//**********************************************************************
// IF  PHL08P03.RC EQ 2 THEN
//PHL08P01 EXEC PGM=CTMCND,PARM='ADD COND BCHLPZ08_IN_OK WDATE',
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
// ENDIF
//*
