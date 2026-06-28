//ZMLLPP29 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  SIVAXD7X                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZAR LA ASIGNACION PREVIA DE MDD.               *
//*                                                                    *
//*   CORRE ANTES DE  : CBLLPZ29 CBLLPZ29                              *
//*   CORRE ANTES DE  : ZMLLPP30 CBLLPZ30                              *
//*                                                                    *
//*   CORRE DESPUES DE: ZMLLPP28 CBLLPZ28                              *
//*                                                                    *
//*   PERIODICIDAD    :  CORRE A PETICION DEL USUARIO.                 *
//*                                                                    *
//*   ELABORADO POR: ASATECK.                                          *
//*                                                                    *
//*   FECHA:  JULIO  2002                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//* MODIFICA       :  OSCAR URBANO F. (AZERTIA).                       *
//* FECHA          :  NOVIEMBRE 2008.                                  *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************00060000
//PLL29P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//ZMG001A1 DD DSN=MXCP.ZM.TMP.MDD.EMP.SUC.ZMLLPE29,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(02,01),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//****************************************************************
//*                SE ADICIONA CONDICION                         *
//*                PARA QUE SEA TOMADA POR CTL-M                 *
//****************************************************************
//PLL29P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXD7X_IN_OK WDATE',
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
