//ZMJLPE20 PROC EMP=,SUC=,INT1=,INT2=
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMJLPE20.                                           *
//*                                                                    *
//*   OBJETIVO  :  GENERACION DEL ARCHIVO PARA ANEXO 3.                *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *
//*                                                                    *
//*   ELABORADO POR: AZERTIA (FVC)                                     *
//*                                                                    *
//*   FECHA:  SEPTIEMBRE 2002.                                         *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//**********************************************************************
//**********************************************************************
//* PROGRAMA: ZM3DG001                                                 *
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR         *
//* NO ACTUALIZA TABLAS.                                               *
//**********************************************************************
//PJL20P05 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.SIN.E&EMP..S&SUC..OPCCNA,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(2,1),RLSE),
//             DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//*
//**********************************************************************
//* PROGRAMA: ZM4DJ129                                                 *
//* FUNCION:  GEN. ARCHIVO DEL ANEXO 3 CON INFORMACION DEL SIVA        *
//**********************************************************************
//PJL20P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.SIN.E&EMP..S&SUC..OPCCNA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//SYSABEND DD  DUMMY
//SYSDBOUT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//PRINT    DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//*
//*GFPP.CB.FIX.ANEXO.SIVA1
//ZMJ129A1 DD  DSN=SIVA.SIN.FIX.ECBP.ANEXO.SIVA1,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,5),RLSE),
//             DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//*
//*GFPP.CB.FIX.ANEXO.SIVA2
//ZMJ129R1 DD  DSN=SIVA.SIN.FIX.ECBP.ANEXO.SIVA2,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,5),RLSE),
//             DCB=(RECFM=FB,LRECL=462,BLKSIZE=0)
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZSF28T04),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4DJ130                                                 *
//* FUNCION:  GEN. ARCHIVO DEL ANEXO 3 CON INFORMACION DEL BANCO       *
//**********************************************************************
//PJL20P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMG001A1 DD  DSN=MXCP.ZM.TMP.SIN.E&EMP..S&SUC..OPCCNA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  DUMMY
//SYSABEND DD  DUMMY
//SYSDBOUT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//PRINT    DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//*
//*GFPP.CB.FIX.ANEXO.BANCO1
//ZMJ130A1 DD  DSN=SIVA.SIN.FIX.ECBP.ANEXO.BANCO1,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,5),RLSE),
//             DCB=(RECFM=FB,LRECL=400,BLKSIZE=0)
//*
//*GFPP.CB.FIX.ANEXO.BANCO2
//ZMJ130R1 DD  DSN=SIVA.SIN.FIX.ECBP.ANEXO.BANCO2,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(10,5),RLSE),
//             DCB=(RECFM=FB,LRECL=462,BLKSIZE=0)
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZSF28T05),DISP=SHR
//*
//**********************************************************************
//*        AVISO EN CASO DE ERROR A LA CONSOLA                         *
//**********************************************************************
// IF (PJL20P04.RC GE 4 & PJL20P03.RC GE 4) THEN
//PJL20P02 EXEC PGM=MAILOPER,
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',
//             ' PROCESO SIVAXSI3 TERMINO MAL.CONTESTAR SI',
//             'PARA TERMINAR')
// ENDIF
//**********************************************************************
//* SE ADICIONA CONDICION PARA QUE SEA TOMADA POR CTL-D                *
//**********************************************************************
//PJL20P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXSI3_IN_SEP_OK WDATE',
//         COND=(4,LT)
//*
//STEPLIB  DD   DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*
//PRTDBG   DD   SYSOUT=*
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=*
//DACNDIN  DD   DDNAME=SYSIN
//*
