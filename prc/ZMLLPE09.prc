//ZMLLPE09 PROC                                                         00001000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPE09                                            *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  REPORTE CONTRATOS VIGENTES (BANCO)                  *00003000
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
//* PASO: PLL09P04                                                    * 00090000
//* RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO      * 00100000
//********************************************************************* 00110000
//PLL09P04 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00140000
//PI601765 DD  DUMMY
//SYSTSPRT DD  SYSOUT=X
//SYSPRINT DD  SYSOUT=X                                                 00200000
//SYSOUT   DD  SYSOUT=X                                                 00210000
//SYSDBOUT DD  SYSOUT=X                                                 00220000
//SYSABOUT DD  SYSOUT=X                                                 00230000
//SYSUDUMP DD  SYSOUT=X                                                 00240000
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE09,              00260000
//             DISP=(NEW,CATLG,DELETE),                                 00270000
//             DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),              00280000
//             UNIT=3390,                                               00290000
//             SPACE=(CYL,(2,1),RLSE)                                   00300000
//*                                                                     00310000
//**********************************************************************
//* PASO: PLL09P03                                                     *
//* OBJETIVO:                                                          *
//**********************************************************************
//PLL09P03 EXEC PGM=IDCAMS,REGION=0M,COND=(4,LT)
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZLL09T01),DISP=SHR
//*
//**********************************************************************
//* PASO: PLL09P02                                                     *
//* PROGRAMA: ZM4DLN73                                                 *
//* OBJETIVO: REPORTE DE CONTRATOS VIGENTES Y NO VIGENTES BBV          *
//**********************************************************************
//PLL09P02 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)
//PI601765 DD  DUMMY
//ZMLN73A1 DD  DSN=SIVA.MDD.FIX.CONVIG,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(20,10),RLSE),
//             DCB=(DSORG=PS,LRECL=143,RECFM=FB,BLKSIZE=0)              00172001
//ZMLN73R1 DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//SYSTSPRT DD  SYSOUT=X
//SYSPRINT DD  SYSOUT=X
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL09T02),DISP=SHR
//*
//*****************************************************************
//* PASO: PLL09P01                                                *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *
//*****************************************************************
//PLL09P01 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND CONVIG_IN_SEP_OK WDATE'
//STEPLIB  DD DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD,DISP=SHR
//DALOG    DD DSN=SYS3.IOAD.SYSZBBV.DATA.LOG,DISP=SHR
//DARESF   DD DSN=SYS3.IOAD.SYSZBBV.DATA.NRS,DISP=SHR
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//PRTDBG   DD SYSOUT=Z
//DAPRINT  DD SYSOUT=Z
//DACNDIN  DD DDNAME=SYSIN
