//ZMARCD05 PROC                                                         00010006
//**********************************************************************00010006
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *00010006
//* PROCESO        :  BCARCD05                                         *00010006
//*                   PROCESO QUE CONVIERTE A TEXTO PLANO ARCHIVO CTA. *00010006
//* CORRE                                                              *00010006
//* ANTES DE       :                                                   *00010006
//* DESPUES DE     :                                                   *00010006
//* REALIZO        :  ACCENTURE FVI.                                  * 00010006
//* FECHA          :  AGOSTO 2018                                      *00010006
//* OBSERVACION    :  ESTE PROCESO CORRE DIARIAMENTE                   *00010006
//**********************************************************************00010006
//* PASO    : PAR05P01                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA ZMDTENT                    *
//**********************************************************************
//PAR05P01  EXEC PGM=ADUUMAIN,                                          00022900
//          PARM='MXP1,PAR05P01,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMDTENT.DESCA,                            00023800
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR05T01),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR05P02                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA ZMDTPAI.                   *
//**********************************************************************
//PAR05P02  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR05P02,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMDTPAI.DESCA,                            00023800
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR05T02),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR05P03                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA PERJUR.                    *
//**********************************************************************
//PAR05P03  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR05P03,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.PERJUR.DESCA,                             00023800
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR05T03),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR05P04                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA GPOCTA.                    *
//**********************************************************************
//PAR05P04  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR05P04,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.GPOCTA.DESCA,                             00023800
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR05T04),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR05P05                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA ESTZONE                    *
//**********************************************************************
//PAR05P05  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR05P05,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.ESTZONE.DESCA,                            00023800
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR05T05),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR05P06                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA PARAM                      *
//**********************************************************************
//PAR05P06  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR05P06,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.PARAM.DESCA,                              00023800
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
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR05T06),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR05P07                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA USUARIO                    *
//**********************************************************************
//PAR05P07  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR05P07,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.USUARIO.DESCA,                            00023800
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            UNIT=3390,BUFNO=30,                                       00024000
//            SPACE=(CYL,(500,50),RLSE),                                00024100
//            DCB=(RECFM=FB,BLKSIZE=0)
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSCNTL  DD DUMMY
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR05T07),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR05P08                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA SUCURSA                    *
//**********************************************************************
//PAR05P08  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR05P08,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.SUCURSA.DESCA,                            00023800
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            UNIT=3390,BUFNO=30,                                       00024000
//            SPACE=(CYL,(500,50),RLSE),                                00024100
//            DCB=(RECFM=FB,BLKSIZE=0)
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSCNTL  DD DUMMY
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR05T08),DISP=SHR
//*
//**********************************************************************
//* PASO    : PAR05P09                                                 *
//* PGM/UTIL: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE DATOS DE LA TABLA PROMOT                     *
//**********************************************************************
//PAR05P09  EXEC PGM=ADUUMAIN,COND=(4,LT),                              00022900
//          PARM='MXP1,PAR05P09,NEW,,MSGLEVEL(1)'                       00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.PROMOT.DESCA,                             00023800
//            DISP=(NEW,CATLG,DELETE),                                  00023900
//            UNIT=3390,BUFNO=30,                                       00024000
//            SPACE=(CYL,(500,50),RLSE),                                00024100
//            DCB=(RECFM=FB,BLKSIZE=0)
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSCNTL  DD DUMMY
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZAR05T09),DISP=SHR
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA11                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE ZMDTENT                     00380006
//********************************************************************* 00390006
//PAR05P10 EXEC PGM=ZM3DAA11,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.ZMDTENT.DESCA,DISP=SHR                    00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.ZMDTENT.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=85,RECFM=FB,BLKSIZE=0,DSORG=PS),               00470006
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
//*   EJECUCION DEL PROGRAMA:  ZM3DAA12                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE ZMDTPAI                     00380006
//********************************************************************* 00390006
//PAR05P11 EXEC PGM=ZM3DAA12,COND=(4,LT)                                00400006
//E1DQPAI1 DD DSN=MXCP.ZM.FIX.ZMDTPAI.DESCA,DISP=SHR                    00420006
//S1DQPAI1 DD DSN=MXCP.ZM.FIX.ZMDTPAI.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=135,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
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
//*   EJECUCION DEL PROGRAMA:  ZM3DAA13                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE PERJUR                      00380006
//********************************************************************* 00390006
//PAR05P12 EXEC PGM=ZM3DAA13,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.PERJUR.DESCA,DISP=SHR                     00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.PERJUR.PLANO,                             00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=170,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//*
//S1DQZMD2 DD DSN=MXCP.ZM.FIX.CLAPDV.PLANO,                             00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=20,RECFM=FB,BLKSIZE=0,DSORG=PS),               00470006
//            UNIT=3390,SPACE=(CYL,(10,1),RLSE)                         00480008
//*
//S1DQZMD3 DD DSN=MXCP.ZM.FIX.CARTAS.PLANO,                             00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=58,RECFM=FB,BLKSIZE=0,DSORG=PS),               00470006
//            UNIT=3390,SPACE=(CYL,(10,1),RLSE)                         00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//********************************************************************* 00360006
//*   EJECUCION DEL PROGRAMA:  ZM3DAA15                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE GPOCTA                      00380006
//********************************************************************* 00390006
//PAR05P13 EXEC PGM=ZM3DAA15,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.GPOCTA.DESCA,DISP=SHR                     00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.GPOCTA.PLANO,                             00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=113,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
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
//*   EJECUCION DEL PROGRAMA:  ZM4DAA26                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE ESTZONE                     00380006
//********************************************************************* 00390006
//PAR05P14 EXEC PGM=ZM3DAA26,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.ESTZONE.DESCA,DISP=SHR                    00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.ESTZONE.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=128,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
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
//*   EJECUCION DEL PROGRAMA:  ZM4DAA27                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE PARAM                       00380006
//********************************************************************* 00390006
//PAR05P15 EXEC PGM=ZM3DAA27,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.PARAM.DESCA,DISP=SHR                      00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.PARAM.PLANO,                              00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=103,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
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
//*   EJECUCION DEL PROGRAMA:  ZM4DAA37                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE USUARIO                     00380006
//********************************************************************* 00390006
//PAR05P16 EXEC PGM=ZM3DAA37,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.USUARIO.DESCA,DISP=SHR                    00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.USUARIO.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=205,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
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
//*   EJECUCION DEL PROGRAMA:  ZM4DAA38                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE SUCURSA                     00380006
//********************************************************************* 00390006
//PAR05P17 EXEC PGM=ZM3DAA38,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.SUCURSA.DESCA,DISP=SHR                    00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.SUCURSA.PLANO,                            00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=215,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
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
//*   EJECUCION DEL PROGRAMA:  ZM4DAA39                                 00370006
//*   CONVIERTE A TEXTO PLANO EL ARCHIVO DE PROMOT                      00380006
//********************************************************************* 00390006
//PAR05P18 EXEC PGM=ZM3DAA39,COND=(4,LT)                                00400006
//E1DQZMD1 DD DSN=MXCP.ZM.FIX.PROMOT.DESCA,DISP=SHR                     00420006
//S1DQZMD1 DD DSN=MXCP.ZM.FIX.PROMOT.PLANO,                             00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=548,RECFM=FB,BLKSIZE=0,DSORG=PS),              00470006
//            UNIT=3390,SPACE=(CYL,(100,25),RLSE)                       00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//**********************************************************************00900006
//*                    F I N   Z M A R C D 0 5                         *00900006
//**********************************************************************00900006
