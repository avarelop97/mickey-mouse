//ZMLLPE17 PROC                                                          0001000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPE17                                            *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  CARGA EL PAPEL PROPORCIONADO POR EL TAS / MIDAS     *00003000
//*                A TRAVES DE  ARCHIVO GENERADO EN EL PISO FINANCIERO *00003000
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
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PLL17P03     EN ARCHIVO SECUENCIAL.                               *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PLL17P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//PI601765  DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE17,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE),
//            BUFNO=30
//*
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     GENERACION DE VENTAS AUTOMATICAS.                    *00030000
//*  PLL17PO2                                             ZM4DLN11     *00040000
//**********************************************************************00060000
//PLL17PO2 EXEC PGM=IKJEFT01,COND=(4,LT)                                00262001
//*
//ZMLN11A2 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE17,DISP=SHR       00100000
//*
//ZMLN11A1 DD DSN=SIVA.MDD.WKF.E&EMP..VENTACB,DISP=SHR                  00100000
//*
//ZMLN11R1 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMLN11R2 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00267001
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSABOUT DD DUMMY                                                     10920000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL17T02),DISP=SHR                   10950000
//*
//**********************************************************************00010000
//*                           ZM4DLE11                                 *00020000
//*  PASO:  3     PROGRAMA QUE BORRA ELEVENTO 'VTA'                    *00030000
//*  PLL17P01     SE BORRA EVENTO PARA PERMITIR EJECUCION DE VENTAS    *00040000
//*               AUTOMATICAS.          << CASA DE BOLSA  >>           *00020000
//**********************************************************************00060000
//PLL17P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00009000
//*
//ZMLE11A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE17,DISP=SHR       00100000
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY                                                     00010000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL17T01),DISP=SHR                   00020000
//*
//*****************************************************************
//* PASO: PLL17P00                                                *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *
//*****************************************************************
//PLL17P00 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND SIVAXLCR_IN_SEP_OK WDATE'
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
