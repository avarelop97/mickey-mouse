//FDE7100 PROC
//*
//*************************** RIB071E ********************************* 00001020
//*                                                                   *
//* PROGRAMA QUE ACTUALIZA LAS CUENTAS DE BANCO EN SIVA, POR LAS DE   *
//* P.U., PARA TODAS LAS CUENTA QUE SE LES GENERO CARTA DE AVISO DE   *
//* CAMBIO DE CUENTA Y ADEMAS ESTAN VIGENTES.                         *
//*                                                                   *
//********************************************************************* 00001040
//*
//FDE7100  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,         00070000
//         TIME=100                                                     00090000
//*
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//*        DD DSN=SIVA.BIB.CARGA,DISP=SHR                               00110000
//*
//RIB071A1 DD DSN=SIVA.TES.WKF.CUENTAS,DISP=SHR                         00001330
//*                                                                     00018420
//RIB071A2 DD DSN=SIVA.TES.FIX.CUENTAS.NO.ACTUALI,                      00001420
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(TRK,(050,010),RLSE),
//         DCB=(LRECL=195,BLKSIZE=0,RECFM=FB),
//         UNIT=SYSDA
//*                                                                     00018420
//RIB071A3 DD DSN=SIVA.TES.FIX.CUENTAS.SI.ACTUALI,                      00001420
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(TRK,(050,010),RLSE),
//         DCB=(LRECL=125,BLKSIZE=0,RECFM=FB),
//         UNIT=SYSDA
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=1024                                 00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//SYSDBOUT DD SYSOUT=X                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSOUP   DD SYSOUT=*                                                  00018790
//SYSTSIN  DD DSN=SIVA.CARDS(RIB071E),DISP=SHR                          00300000
