//ZMLLPE15 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPE15                                            *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  CARGAR LOS PRECIOS DE EMISORAS MDD                  *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*
//* OBJETIVO : BORRA LOS ARCHIVOS DE TRABAJO                           *
//**********************************************************************
//PLL15P02 EXEC PGM=IDCAMS,REGION=0M
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLL15T02),DISP=SHR
//*                                                                    *00003000
//********************************************************************* 00040000
//* RECEPCION DE PARAMETROS                                           *
//********************************************************************* 00060000
//PLL15P01 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE15,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//********************************************************************* 00060000
//*  OBJETIVO: CARGAR LOS PRECIOS DE EMISORAS MDD                       00050000
//*  AREA    : MERCADO DE DINERO                                        00050000
//********************************************************************* 00060000
//PLL15P02 EXEC PGM=IKJEFT01,COND=(4,LT),REGION=0M                      00070000
//*                                                                     00310000
//ZMLM29A1 DD DSN=MXCP.ZM.GDGD.MDD.E&EMP..EMISORAS.MDD(0),DISP=SHR      00310000
//*                                                                     00310000
//ZMLM29P1 DD DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE15,DISP=SHR
//*                                                                     00310000
//ZMLM29R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')                     00240000
//*                                                                     00310000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL15T01),DISP=SHR                   00300000
//*                                                                     00310000
//*****************************************************************
//* PASO: PLL15P00                                                *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *
//*****************************************************************
//PLL15P00 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND SIVAXEMI_IN_SEP_OK WDATE'
//*                                                                     00310000
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*                                                                     00310000
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRTDBG   DD SYSOUT=Z
//DAPRINT  DD SYSOUT=Z
//DACNDIN  DD DDNAME=SYSIN
