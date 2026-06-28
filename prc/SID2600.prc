//SID2600 PROC
//**********************************************************************
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *
//* PROCESO        :  PINSID26   (DISPARADOR)     .                    *
//*                   SID2600    PROCEDIMIENTO                         *
//* OBJETIVO       :  CORRER LA INTERFASE DEL SISTEMA DE ADMON. Y      *
//*                   CONTROL DE SOCIEDADES DE INVERSION.              *
//*                         S   I   S   A   S   I                      *
//*                                                                    *
//* REALIZO        :  J. JAIME FLORES ESTRADA.    - ASATECK -          *
//**********************************************************************
//*****************************************************************
//*   EJECUTA    PROGRAMA VIB250D
//*   PROCESO QUE GENERA ARCHIVO SISASI - VAL - MDD - ACPO - CAP -
//*****************************************************************
//SID2602  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
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
//SYSTSIN  DD  DSN=SIVA.CARDS(SID2602),DISP=SHR
//******************************************************************
//*  EJECUTA    PROGRAMA VIB251D
//*  INTEGRACION AL ARCHIVO SISASI DE OPERACIONES DE MDD.
//******************************************************************
//SID2601  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
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
//SYSTSIN  DD  DSN=SIVA.CARDS(SID2601),DISP=SHR
//*
