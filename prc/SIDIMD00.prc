//SIDIMD00 PROC
//*
//**********************************************************************00000100
//*                                                                    *00000200
//*     BBB  BBB  VV VV    PPPP RRRR OOOO BBB  U  U RRRR SSSS AAAA     *00000300
//*     B BB B BB VV VV    P PP R RR O  O B BB U  U R RR S    A  A     *00000400
//*     BBBB BBBB VV VV @@ PPPP RRRR O  O BBBB U  U RRRR SSSS AAAA     *00000500
//*     B BB B BB  VVV     P    RR   O  O B BB U  U RR      S A  A     *00000600
//*     BBB  BBB    V      P    R RR OOOO BBB  UUUU R RR SSSS A  A     *00000700
//*                                                                    *00000800
//**********************************************************************00000900
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  SIVAXAA  (TRANSFERENCIA DE ARCHIVOS SACSI)       *
//*                                                                    *
//* OBJETIVO: DAR DE ALTA CONDICION PARA EJECUTAR PROCESO QUE GENERA   *
//*           ARCHIVOS PARA SACSI ESTE PROCESO CORRE A PETICION DEL    *
//*           USUARIO VIA CSP                                          *
//*                                                                    *
//* CORRE          :  A CUALQUIER HORA                                 *
//* ANTES DE       :  PINSID14 TRANSFIERE ARCHIVOS                     *
//*                                                                    *
//* REALIZO        :  RZV
//* FECHA          :  JULIO  DE 1997.                                  *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA DIARIO.            *
//**********************************************************************
//*****************************************************************
//*   ACTIVA LA CONDICION EN CONTROLM
//*****************************************************************
//PASO00   EXEC  PGM=CTMCND,PARM='ADD COND  PINSID14_IN    WDATE',
//     COND=(0,NE)
//STEPLIB  DD   DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD,DISP=SHR
//DALOG    DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD   DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//DAPARM   DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD   DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//PRTDBG   DD   SYSOUT=Z
//SYSPRINT DD   DUMMY
//SYSUDUMP DD   DUMMY
//DAPRINT  DD   SYSOUT=Z
//DACNDIN  DD   DDNAME=SYSIN
//*****************************************************************
//*   PROCESO QUE GENERA ARCHIVO SISASI - VAL - MDD - ACPO - CAP -
//*****************************************************************
//SIDIM02  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//*
//VIBSISA1 DD DSN=SIVA.SIN.FIX.SISASI,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(500,200),RLSE),
//            DCB=(LRECL=248,BLKSIZE=2480,RECFM=FB),
//            UNIT=SYSDA
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSTSIN  DD  DSN=SIVA.CARDS(SIDIM02),DISP=SHR
//******************************************************************
//*  INTEGRACION AL ARCHIVO SISASI DE OPERACIONES DE MDD.
//******************************************************************
//SIDIM01  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//*
//VIBSISA2 DD DSN=SIVA.SIN.FIX.SISASI,DISP=MOD
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSTSIN  DD  DSN=SIVA.CARDS(SIDIM01),DISP=SHR
