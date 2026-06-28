//ZMLLPE19 PROC
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPE19                                            *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  GENERA REPORTE Y ARCHIVO CON DEMANDAS VALOR NORMAL  *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*                                                                    *00003000
//********************************************************************* 00090000
//* PASO: PLL19P02                                                    * 00090000
//* RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO      * 00100000
//********************************************************************* 00110000
//PLL19P02 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00140000
//*                                                                     00310000
//PI601765 DD  DUMMY
//*                                                                     00310000
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*                                                 00200000
//SYSOUT   DD  SYSOUT=*                                                 00210000
//SYSDBOUT DD  SYSOUT=*                                                 00220000
//SYSABOUT DD  SYSOUT=*                                                 00230000
//SYSUDUMP DD  SYSOUT=*                                                 00240000
//*                                                                     00310000
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE19,              00260000
//             DISP=(NEW,CATLG,DELETE),                                 00270000
//             DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),              00280000
//             UNIT=3390,                                               00290000
//             SPACE=(CYL,(2,1),RLSE)                                   00300000
//*                                                                     00310000
//**********************************************************************
//* PASO:     PLL19P01                                                 *
//* PROGRAMA: ZM4DLN79                                                 *
//* OBJETIVO: GENERA REPORTE Y ARCHIVO CON DEMANDAS VALOR NORMAL       *
//**********************************************************************
//PLL19P01 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)
//*
//PI601765 DD  DUMMY
//*
//ZMLN79S1 DD  DSN=SIVA.MDD.DEMANDA.NORMAL,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(20,10),RLSE),
//             DCB=(LRECL=096,BLKSIZE=0,RECFM=FB)
//*
//ZMLN79R1 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//PARAMETR DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL19T01),DISP=SHR
//*
//*****************************************************************
//* PASO: PLL19P00                                                *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *
//*****************************************************************
//PLL19P00 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND SIVAXDVN_IN_SEP_OK WDATE'
//*
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//PRTDBG   DD SYSOUT=*
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
