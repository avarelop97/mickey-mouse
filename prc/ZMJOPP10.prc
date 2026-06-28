//ZMJOPP10 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                                                                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  SIVAX123                                            *
//*   PROCEDIM. :  ZMJOPP10           (OPC. '   ')                     *
//*                                                                    *
//*   OBJETIVO  : GENERACION DE ARCHIVO SECUENCIAL DE COLOCACIONES     *
//*                                                                    *
//*   CORRE     : A PETICION DE USUARIO                                *
//*                                                                    *
//*   CORRE DESPUES DE: NINGUNO                                        *
//*                                                                    *
//*                                                                    *
//*--------------------------------------------------------------------*
//* AUTOR          :  RCC (HITSS)                                      *
//* FECHA          :  ENERO 2015                                       *
//*                                                                    *
//*-------------------------------------------------------------------**
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//* PASO:  1
//**********************************************************************
//PJLP1002 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.EMP.SUC.PARAM123,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//****************************************************************
//*        SE ADICIONA CONDICION                                 *
//*        PARA QUE SEA TOMADA POR CTL-M POR CBJOT300            *
//****************************************************************
//PJLP1001 EXEC PGM=CTMCND,PARM='ADD COND SIVAX123_IN_OK WDATE',
//         COND=(4,LT)
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
//*
