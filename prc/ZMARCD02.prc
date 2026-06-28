//ZMARCD02 PROC                                                         00010006
//**********************************************************************00010006
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00010006
//* PROCESO        :  BCARCD02                                         *00010006
//*                   PROCESO QUE CONVIERTE A TEXTO PLANO ARCHIVO CTA. *00010006
//* CORRE                                                              *00010006
//* ANTES DE       :                                                   *00010006
//* DESPUES DE     :                                                   *00010006
//* REALIZO        :  ACCENTURE FVI.                                  * 00010006
//* FECHA          :  AGOSTO 2018                                      *00010006
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *00010006
//**********************************************************************00010006
//**********************************************************************
//* PASO    : PAR02P01                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA CUENTA.                    *
//**********************************************************************
//PAR02P01  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR02P01,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.TMP.CUENTA.DESCA,                             00023800
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            UNIT=3390,BUFNO=30,                                       00024000
//            SPACE=(CYL,(500,250),RLSE),                               00024100
//            DCB=(RECFM=FB,BLKSIZE=0)
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSCNTL  DD DUMMY
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR02T01),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR02P02                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA ZMDTPRM.                   *
//**********************************************************************
//PAR02P02  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR02P02,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.TMP.ZMDTPRM.DESCA,                            00023800
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            UNIT=3390,BUFNO=30,                                       00024000
//            SPACE=(CYL,(500,250),RLSE),                               00024100
//            DCB=(RECFM=FB,BLKSIZE=0)
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSCNTL  DD DUMMY
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR02T02),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR02P03                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA CCOSTO.                    *
//**********************************************************************
//PAR02P03  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR02P03,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.TMP.CCOSTO.DESCA,                             00023800
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            UNIT=3390,BUFNO=30,                                       00024000
//            SPACE=(CYL,(500,250),RLSE),                               00024100
//            DCB=(RECFM=FB,BLKSIZE=0)
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSCNTL  DD DUMMY
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR02T03),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR02P04                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA SUCURSA.                   *
//**********************************************************************
//PAR02P04  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR02P04,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.TMP.SUCURSA.DESCA,                            00023800
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            UNIT=3390,BUFNO=30,                                       00024000
//            SPACE=(CYL,(500,250),RLSE),                               00024100
//            DCB=(RECFM=FB,BLKSIZE=0)
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSCNTL  DD DUMMY
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR02T04),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR02P05                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA ZMDT611.                   *
//**********************************************************************
//PAR02P05  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR02P05,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.TMP.ZMDT611.DESCA,                            00023800
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            UNIT=3390,BUFNO=30,                                       00024000
//            SPACE=(CYL,(500,250),RLSE),                               00024100
//            DCB=(RECFM=FB,BLKSIZE=0)
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSCNTL  DD DUMMY
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR02T05),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR02P06                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA ZMDTPRM.                   *
//**********************************************************************
//PAR02P06  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR02P06,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.TMP.PROMOT.DESCA,                             00023800
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            UNIT=3390,BUFNO=30,                                       00024000
//            SPACE=(CYL,(500,250),RLSE),                               00024100
//            DCB=(RECFM=FB,BLKSIZE=0)
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSCNTL  DD DUMMY
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR02T06),DISP=SHR
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA01                                 00370006
//*   CONVRIETE A TEXTO PLANO EL ARCHIVO DE CUENTA                      00380006
//********************************************************************* 00390006
//PAR02P07 EXEC PGM=ZM3DAA01,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.TMP.CUENTA.DESCA,DISP=SHR                     00420006
//S1DQZMD1 DD DSN=MXCP.ZM.TMP.CUENTA.PLANO,                             00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=840,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA02                                 00370006
//*   CONVRIETE A TEXTO PLANO EL ARCHIVO DE CUENTA                      00380006
//********************************************************************* 00390006
//PAR02P08 EXEC PGM=ZM3DAA02,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.TMP.ZMDTPRM.DESCA,DISP=SHR                    00420006
//S1DQZMD1 DD DSN=MXCP.ZM.TMP.ZMDTPRM.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=203,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA03                                 00370006
//*   CONVRIETE A TEXTO PLANO EL ARCHIVO DE CUENTA                      00380006
//********************************************************************* 00390006
//PAR02P09 EXEC PGM=ZM3DAA03,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.TMP.CCOSTO.DESCA,DISP=SHR                     00420006
//S1DQZMD1 DD DSN=MXCP.ZM.TMP.CCOSTO.PLANO,                             00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=176,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA04                                 00370006
//*   CONVRIETE A TEXTO PLANO EL ARCHIVO DE SUCURSA                     00380006
//********************************************************************* 00390006
//PAR02P10 EXEC PGM=ZM3DAA04,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.TMP.SUCURSA.DESCA,DISP=SHR                    00420006
//S1DQZMD1 DD DSN=MXCP.ZM.TMP.SUCURSA.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=195,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA05                                 00370006
//*   CONVRIETE A TEXTO PLANO EL ARCHIVO DE ZMDT611                     00380006
//********************************************************************* 00390006
//PAR02P11 EXEC PGM=ZM3DAA05,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.TMP.ZMDT611.DESCA,DISP=SHR                    00420006
//S1DQZMD1 DD DSN=MXCP.ZM.TMP.ZMDT611.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=057,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA06                                 00370006
//*   CONVRIETE A TEXTO PLANO EL ARCHIVO DE PROMOT                      00380006
//********************************************************************* 00390006
//PAR02P12 EXEC PGM=ZM3DAA06,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.TMP.PROMOT.DESCA,DISP=SHR                     00420006
//S1DQZMD1 DD DSN=MXCP.ZM.TMP.PROMOT.PLANO,                             00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=530,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//*@DGCM01-I
//**********************************************************************
//* PASO    : PAR02P13                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA CTABCO.                    *
//**********************************************************************
//PAR02P13  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR02P13,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.TMP.CTABCO.DESCA,                             00023800
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            UNIT=3390,BUFNO=30,                                       00024000
//            SPACE=(CYL,(500,250),RLSE),                               00024100
//            DCB=(RECFM=FB,BLKSIZE=0)
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSCNTL  DD DUMMY
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PAR02P13),DISP=SHR
//*                                                                     00024400
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA07                                 00370006
//*   CONVRIETE A TEXTO PLANO EL ARCHIVO DE CTACBO                      00380006
//********************************************************************* 00390006
//PAR02P14 EXEC PGM=ZM3DAA07,COND=(4,LT)                                00400006
//ENTRADA1 DD DSN=MXCP.ZM.TMP.CTABCO.DESCA,DISP=SHR                     00420006
//SALIDA01 DD DSN=MXCP.ZM.TMP.CTABCO.PLANO,                             00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=407,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//*@DGCM01-F
//**********************************************************************00900006
//*                    F I N   Z M A R C D 0 2                         *00900006
//**********************************************************************00900006
