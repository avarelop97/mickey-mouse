//ZMHHPP16 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE DINERO  >>                      *
//*                     <<     Y CAPITALES     >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMHHPP16                                      *
//*                                                                    *
//*   JCL              : SIVAXHH1                                      *
//*                                                                    *
//*   LO EJECUTA       : TRANSACCION ZV75 CICLICAMENTE.                *
//*                                                                    *
//*   OBJETIVO         : ADICIONA CONDICION SIVAXHH1_OK AL PROCESO     *
//*                      CBHHPZ16 DE VALIDACION DE RESPUESTAS QUE SE   *
//*                      RECIBEN DE PLUS.                              *
//*                                                                    *
//*   FECHA            : 11/ABRIL/2016.                                *
//*                                                                    *
//*   PERIODICIDAD     : CICLICO.                                      *
//*                                                                    *
//*   AUTOR            : HITSS - ANS (CIHM)                            *
//*                                                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM3DG001                                                 *
//* FUNCION : GENERACION DE ARCHIVO DE PARAMETROS.                     *
//*           PROCESA REGISTROS: (LB, LD, LQ, LE, LG).                 *
//*--------------------------------------------------------------------*
//PHL16P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//ZMHH01A1 DD DSN=MXCP.ZM.FIX.PAR.ZMHHPD15,
//            DISP=(NEW,DELETE,DELETE),
//            SPACE=(CYL,(5,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PHL16P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXHH1_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//*
