//ZMLLPE16 PROC
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPE16                                            *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  GENERA EL ARCHIVO OPERMDD PARA LA B.M.V.            *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*AZCS*SIVA*PENDIENTE*HPC**********************************************00003000
//**********************************************************************
//*RECIBE PARAMETROS                                                   *
//**********************************************************************
//PLL15P02 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMLLPE16,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//*-------------------------------------------------------------------
//*                   * ZM4ELH26 *
//*   OBJETIVO GENERA EL ARCHIVO OPERMDD PARA LA B.M.V.
//*PASO NO REINICIABLE
//*-------------------------------------------------------------------
//PLL16P01 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ZMHL26R  DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//*GFPP.CB.WKF.OPERMDD                               PU
//ZMHL26E  DD DSN=SIVA.MDD.WKF.OPERMDD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//*INVESTIGAR ESTE ARCHIVO YA QUE NO EXISTE EN LA RELACION
//*DE ARCHIVOS A TRANSFERIR NI EN TODO CHAGMAN
//*
//PREBONO  DD DSN=SIVA.MDD.FIX.PREBONO,DISP=SHR
//*
//ZMHL29P1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..S&SUC..ZMLLPE16,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL16T01),DISP=SHR
//*
//*****************************************************************
//* PASO: PLL16P00                                                *
//* OBJETIVO: SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D *
//*****************************************************************
//PLL16P00 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND MDD3000_IN_SEP_OK WDATE'
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
