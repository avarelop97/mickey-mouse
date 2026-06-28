//ZMLLPE08 PROC                                                         00001000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPE08-SIVAXCFX                                   *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  CONTRATOS CON SERVIO DE CONFIRMACIONES VIA FAX      *00003000
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
//* PASO: PLL08P02                                                    * 00090000
//* RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO      * 00100000
//********************************************************************* 00110000
//PLL08P02 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)                        00140000
//PI601765 DD  DUMMY
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*                                                 00200000
//SYSOUT   DD  SYSOUT=*                                                 00210000
//SYSDBOUT DD  SYSOUT=*                                                 00220000
//SYSABOUT DD  SYSOUT=*                                                 00230000
//SYSUDUMP DD  SYSOUT=*                                                 00240000
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPE08,              00260000
//             DISP=(NEW,CATLG,DELETE),                                 00270000
//             DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),              00280000
//             UNIT=3390,                                               00290000
//             SPACE=(CYL,(2,1),RLSE)                                   00300000
//*                                                                     00310000
//**********************************************************************
//* PASO:     PLL08P01                                                 *
//* PROGRAMA: VIBN50D                                                  *
//* OBJETIVO: REPORTAR CONTRATOS CON FAX                               *
//**********************************************************************
//PLL08P01 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)
//SALIDA   DD  SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZLL08T01),DISP=SHR
//*****************************************************************
//* PASO: PLL08P00                                                *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *
//*****************************************************************
//PLL08P00 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND SIVAXCFX_IN_SEP_OK WDATE'
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
