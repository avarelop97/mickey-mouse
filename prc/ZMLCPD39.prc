//ZMLCPD39 PROC                                                         00001000
//*                                                                     00002000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBLCCD39                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERAR REPORTE DE PROMOTORES DE LA BANCA           *
//*                SE ENVIA EL REPORTE A SERVIDOR                      *
//*                                                                    *
//*   CORRE ANTES DE  :  NZMSIR39                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  CBLCCD39                                      *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR: XM05034                                           *
//*                                                                    *
//*   FECHA:  MAYO  2018.                                            *
//*                                                                    *
//*--------------------------------------------------------------------*00022400
//*   PASO    : PLC39P99                                               *00022500
//*   OBJETIVO: REALIZA DESCARGA DE LOS PROMOTORES DE LA BANCA       *  00022600
//*--------------------------------------------------------------------*00022700
//PLC39P99 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00022800
//         PARM='MXP1,PLC39P99,NEW,,MSGLEVEL(1)'                        00022900
//*                                                                     00023000
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00023100
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00023200
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00023300
//*                                                                     00023400
//SYSREC   DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD39,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00023600
//            SPACE=(CYL,(40,20),RLSE),                                 00023700
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00023800
//*                                                                     00023900
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC39T10),DISP=SHR
//*                                                                     00024500
//**********************************************************************00010000
//*  PASO:  FORMATEA REPORTE DE LOS PROMOTORES DE LA BANCA            * 00030000
//*  PLC39P90                                                          *00040000
//**********************************************************************00060000
//PLC39P90 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGBANE1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD39,DISP=SHR
//*
//*ZMGBANS1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD39.BANQUERO.S,
//ZMGBANS1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD39.BANQUERO.C,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//*BTRPRO3Q24-I
//*            DCB=(LRECL=146,RECFM=FB,BLKSIZE=0,DSORG=PS)
//             DCB=(LRECL=156,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*BTRPRO3Q24-F
//*BTRPROC3Q24-I
//ZMGBANS2 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD39.BANQUERO.S,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(40,20),RLSE),
//             DCB=(LRECL=146,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*BTRPRO3Q24-F
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC39T11),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*          F I N      Z M L C P D 3 8                                *
//**********************************************************************
