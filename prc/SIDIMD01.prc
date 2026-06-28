//SIDIMD01 PROC
//**********************************************************************
//*
//*  BBB  BBB  VV VV   A      BBB    A   NN  N  CCC OOOO M   M EEEE RRR
//*  B BB B BB VV VV  AAA     B BB  AAA  NN  N CC   O  O MM MM EE   R  R
//*  BBBB BBBB VV VV AA AA == BBBB AA AA N N N CC   O  O M M M EEEE RRRR
//*  B BB B BB  VVV  AAAAA    B BB AAAAA N  NN CC   O  O M   M EE   R R
//*  BBB  BBB    V   AA AA    BBB  AA AA N  NN  CCC OOOO M   M EEEE R  R
//*                                                               OSCT
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  SIVAXAA  (TRANSFERENCIA DE ARCHIVOS SACSI)       *
//*                                                                    *
//* OBJETIVO       :  CARGAR TABLA OPERPRE Y GENERAR ARCHIVO           *
//*                   PARA INTERFASE SISASI                            *
//*                                                                    *
//* CORRE          :  A CUALQUIER HORA                                 *
//* ANTES DE       :                                                   *
//*                                                                    *
//* REALIZO        :  NOE ALVAREZ MELGAR                               *
//* FECHA          :  JUNIO  DE 2001.                                  *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA DIARIO             *
//*                   A PETICION DEL USUARIO                           *
//**********************************************************************
//*                     V O B 2 8 1 D
//*          GENERA SIVA DE LA ASIGNACION DEFINITIVA
//*               USO DE ARCHIVO VSAM: FOLCTROL
//*********************************************************************
//SIDIM003  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)
//*
//* DEFINICION DE ARCHIVO VSAM PARA FOLCTRL ¢CONTROL DE FOLIADO!
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//*
//FOLCTRL  DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=SIVA.CARDS(SID2603),DISP=SHR
//*****************************************************************
//*                     V I B 2 8 9 D
//*          PROGRAMA QUE GENERA ARCHIVO SISAPRE
//*****************************************************************
//SIDIM002 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100                                                 00040000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//*                                                                     00050000
//VIBSIPRE DD DSN=SIVA.SIN.FIX.SISAPRE,                                 00060000
//            DISP=(NEW,CATLG,DELETE),                                  00070000
//            SPACE=(TRK,(500,200),RLSE),                               00090000
//            DCB=(LRECL=248,BLKSIZE=2480,RECFM=FB),                    00100000
//            UNIT=SYSDA                                                00110000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00120000
//SYSDBOUT DD SYSOUT=X                                                  00130000
//SYSABOUT DD DUMMY                                                     00140027
//SYSUDUMP DD DUMMY                                                     00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//SYSTSIN  DD  DSN=SIVA.CARDS(SID2604),DISP=SHR                         00270000
//******************************************************************    00280000
//*  EJECUTA    PROGRAMA VIB251D
//*  INTEGRACION AL ARCHIVO SISASI DE OPERACIONES DE MDD.
//******************************************************************
//SIDIM001 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//*
//VIBSISA2 DD DSN=SIVA.SIN.FIX.SISAPRE,DISP=MOD
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSTSIN  DD  DSN=SIVA.CARDS(SID2601),DISP=SHR
//*
//**********************************************************************
//*   ACTIVA LA CONDICION EN CONTROLM PARA QUE CORRA TRANSFER.         *
//**********************************************************************
//SIDIM000  EXEC  PGM=CTMCND,PARM='ADD COND    NSISAPRE_IN     WDATE',
//          COND=(4,LT)
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD  DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//SYSUDUMP DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
