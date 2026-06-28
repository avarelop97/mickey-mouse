//ZMARCD06 PROC                                                         00010006
//**********************************************************************00010006
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00010006
//* PROCESO        :  BCARCD06                                         *00010006
//*                   PROCESO QUE CONVIERTE A TEXTO PLANO ARCHIVOS DE  *00010006
//*                   TABLAS OPERATIVAS CONTRACTUAL                    *00010006
//* CORRE                                                              *00010006
//* ANTES DE       :                                                   *00010006
//* DESPUES DE     :                                                   *00010006
//* REALIZO        :  RHB.                                             *00010006
//* FECHA          :  NOVIEMBRE 2025                                   *00010006
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *00010006
//**********************************************************************00010006
//* PASO    : PAR06P00                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA ZMDT828                    *
//**********************************************************************
//PAR06P00  EXEC PGM=ADUUMAIN,                                          00022900
//          PARM='MXP1,PAR06P00,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMDT828.DESCA,                            00023800
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR06T00),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR06P01                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA ZMDT827                    *
//**********************************************************************
//PAR06P01  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR06P01,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMDT827.DESCA,                            00023800
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR06T01),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR06P02                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA CUENTA                     *
//**********************************************************************
//PAR06P02  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR06P02,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.SCUENTA.DESCA,                            00023800
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR06T02),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR06P03                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA ACLICTA                    *
//**********************************************************************
//PAR06P03  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR06P03,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.ACLICTA.DESCA,                            00023800
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR06T03),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR06P04                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA AGPOCTA                    *
//**********************************************************************
//PAR06P04  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR06P04,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.AGPOCTA.DESCA,                            00023800
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR06T04),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR06P05                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA CLIENTE                    *
//**********************************************************************
//PAR06P05  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR06P05,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.CLIENTE.DESCA,                            00023800
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR06T05),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR06P06                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA CTECOMP                    *
//**********************************************************************
//PAR06P06  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR06P06,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.CTECOMP.DESCA,                            00023800
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR06T06),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR06P07                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA ZMDT815                    *
//**********************************************************************
//PAR06P07  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR06P07,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMDT815.DESCA,                            00023800
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR06T07),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR06P08                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA CAUSCAN                    *
//**********************************************************************
//PAR06P08  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR06P08,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.CAUSCAN.DESCA,                            00023800
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR06T08),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR06P09                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA DOCUM                      *
//**********************************************************************
//PAR06P09  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR06P09,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.DOCUM.DESCA,                              00023800
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR06T09),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR06P10                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA CONTITU                    *
//**********************************************************************
//PAR06P10  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR06P10,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.CONTITU.DESCA,                            00023800
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR06T10),DISP=SHR
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA14                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE ZMDT827                     00380006
//********************************************************************* 00390006
//PAR06P20 EXEC PGM=ZM3DAA14,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.ZMDT827.DESCA,DISP=SHR                    00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.ZMDT827.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=230,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE)                      00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA16                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE CUENTA                      00380006
//********************************************************************* 00390006
//PAR06P21 EXEC PGM=ZM3DAA16,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.SCUENTA.DESCA,DISP=SHR                    00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.SCUENTA.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=860,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE)                      00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA17                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE ACLICTA                     00380006
//********************************************************************* 00390006
//PAR06P22 EXEC PGM=ZM3DAA17,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.ACLICTA.DESCA,DISP=SHR                    00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.ACLICTA.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=139,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE)                      00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA18                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE AGPOCTA                     00380006
//********************************************************************* 00390006
//PAR06P23 EXEC PGM=ZM3DAA18,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.AGPOCTA.DESCA,DISP=SHR                    00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.AGPOCTA.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=076,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE)                      00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA19                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE CLIENTE                     00380006
//********************************************************************* 00390006
//PAR06P24 EXEC PGM=ZM3DAA19,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.CLIENTE.DESCA,DISP=SHR                    00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.CLIENTE.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=384,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE)                      00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA20                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE CTECOMP                     00380006
//********************************************************************* 00390006
//PAR06P25 EXEC PGM=ZM3DAA20,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.CTECOMP.DESCA,DISP=SHR                    00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.CTECOMP.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=380,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE)                      00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA21                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE ZMDT815                     00380006
//********************************************************************* 00390006
//PAR06P26 EXEC PGM=ZM3DAA21,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.ZMDT815.DESCA,DISP=SHR                    00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.ZMDT815.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=175,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE)                      00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA22                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE CAUSCAN                     00380006
//********************************************************************* 00390006
//PAR06P27 EXEC PGM=ZM3DAA22,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.CAUSCAN.DESCA,DISP=SHR                    00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.CAUSCAN.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=130,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE)                      00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA23                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE DOCUM                       00380006
//********************************************************************* 00390006
//PAR06P28 EXEC PGM=ZM3DAA23,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.DOCUM.DESCA,DISP=SHR                      00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.DOCUM.PLANO,                              00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=098,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE)                      00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA24                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE CONTITU                     00380006
//********************************************************************* 00390006
//PAR06P29 EXEC PGM=ZM3DAA24,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.CONTITU.DESCA,DISP=SHR                    00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.CONTITU.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=142,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE)                      00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA25                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE ZMDT828                     00380006
//********************************************************************* 00390006
//PAR06P29 EXEC PGM=ZM3DAA25,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.ZMDT828.DESCA,DISP=SHR                    00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.ZMDT828.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=045,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(500,250),RLSE)                      00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//**********************************************************************00900006
//*                    F I N   Z M A R C D 0 6                         *00900006
//**********************************************************************00900006
