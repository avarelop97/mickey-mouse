//FDD4600 PROC
//*
//**********************************************************************
//*    CASA DE BOLSA PROBURSA  -  BILBAO VIZCAYA                       *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        : PFDFDD46.                                         *
//*
//*                                                                    *
//* OBJETIVO: GENERA ARCHIVOS CON POSICIONES EN FIRMA Y VENCIMIENTO.   *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       : NINGUNO
//*                                                                    *
//* CORRE
//* DESPUES DE     : FDD4500
//*                                                                    *
//* REALIZO        :  KARINA AGUILAR RINCON.(ASATECK).                 *
//*                                                                    *
//* FECHA          :  DICIEMBRE 1999.                                  *
//**********************************************************************
//*
//**********************************************************************
//*                          === VIBN81D ===                           *
//*    OBJETIVO :   ARCHIVO CON POSICIONES EN FIRME CON FECHA DE       *
//*                 VENCIMIENTO.(BANCO)                                *
//* PASO REINICIABLE POR RESTART                        *** M.DINERO   *
//**********************************************************************
//FDD4604 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//VIBN81A1 DD DSN=SIVA.MDD.FIX.MOV.VENCIM.BCO,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=0),
//             UNIT=SYSDA,
//             SPACE=(TRK,(5,5))
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD4604),DISP=SHR
//**********************************************************************
//*                          === VIBN81D ===                           *
//*    OBJETIVO :   ARCHIVO CON POSICIONES EN FIRME CON FECHA DE       *
//*                 VENCIMIENTO.(CASA)                                 *
//* PASO REINICIABLE POR RESTART                        *** M.DINERO   *
//**********************************************************************
//FDD4603 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//VIBN81A1 DD DSN=SIVA.MDD.FIX.MOV.VENCIM.CB,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=0),
//             UNIT=SYSDA,
//             SPACE=(TRK,(5,5))
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD4603),DISP=SHR
//**********************************************************************
//*                          === VIBN80D ===                           *
//*    OBJETIVO :   ARCHIVO CON POSICIONES EN FIRME. (BANCO)           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                        *** M.DINERO   *
//**********************************************************************
//FDD4602 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//VIBN80A1 DD DSN=SIVA.MDD.FIX.MOV.FIRME.BCO,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(DSORG=PS,RECFM=FBA,LRECL=123,BLKSIZE=0),
//             UNIT=SYSDA,
//             SPACE=(TRK,(5,5))
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD4602),DISP=SHR
//**********************************************************************
//*                          === VIBN80D ===                           *
//*    OBJETIVO :   ARCHIVO CON POSICIONES EN FIRME.(CASA)
//*
//* PASO REINICIABLE POR RESTART                        *** M.DINERO   *
//**********************************************************************
//FDD4601 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,
//             TIME=100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD  SYSOUT=X
//SYSOUT   DD  SYSOUT=X
//VIBN80A1 DD DSN=SIVA.MDD.FIX.MOV.FIRME.CB,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(DSORG=PS,RECFM=FBA,LRECL=123,BLKSIZE=0),
//             UNIT=SYSDA,
//             SPACE=(TRK,(5,5))
//SYSDBOUT DD  SYSOUT=X
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD4601),DISP=SHR
//**********************************************************************
//*                 FIN DEL PROCESO FDD4600                            *
//**********************************************************************
