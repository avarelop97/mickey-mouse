//ZMPCAP02 PROC                                                         00010004
//*--------------------------------------------------------------------*00020004
//*                                                                    *00030004
//*                   C A S A   D E  B O L S A                         *00030004
//*                                                                    *00030004
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00120004
//*                                                                    *00130004
//* PROCESO        :  ZMPCAP02                                         *00140004
//*                                                                    *00160004
//* OBJETIVO       :  GENERA ARCHIVO ADA ONBOARDING.                   *00170004
//*                                                                    *00190004
//* PERIODICIDAD   :  DIARIO.                                          *00240004
//*                                                                    *00240004
//* ELABORADO POR  :  JCSR (XMF3771).                                  *00240004
//*                                                                    *00240004
//*--------------------------------------------------------------------*00300004
//*                      LOG DE MODIFICACIONES                         *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO    : ZMAP0225                                                 *
//* PROGRAMA: ZM3LIQ01                                                 *
//* OBJETIVO: GENERA TARJETA  DE CONTROL PARA OBTENER LA FECHA         *
//*--------------------------------------------------------------------*
//ZMAP0225 EXEC PGM=ZM3LIQ01,PARM=&FECHA
//*                                                                     00004200
//S1DQ0001 DD DSN=MXCP.ZM.FIX.ZMPCAP02.FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=10,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMAP0220                                                 *
//* PROGRAMA: ZM4LIQ01                                                 *
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA                  *
//*--------------------------------------------------------------------*
//ZMAP0220 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZMAP0201),DISP=SHR
//E1DQ0002 DD DSN=MXCP.ZM.FIX.ZMPCAP02.FECHA,DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZMPCAP02.CTC1,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMAP0203),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : ZMAP0215                                                 *
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE LA TABLA CUENTA, ZMDT608, ZMDT800, PARAM     *
//*--------------------------------------------------------------------*
//ZMAP0215 EXEC PGM=ADUUMAIN,COND=(4,LT),
//            PARM='MXP1,ZMPCAP02,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCJCAP02.ARCADA1.F&FECHA,
//            SPACE=(CYL,(50,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.ZMPCAP02.CTC1,DISP=SHR
//*                                                                     00004200
//*--------------------------------------------------------------------*
//* PASO    : ZMAP0210                                                 *
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE LA TABLA PARAM                               *
//*--------------------------------------------------------------------*
//ZMAP0210 EXEC PGM=ADUUMAIN,COND=(4,LT),
//            PARM='MXP1,ZMPCAP02,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00002700
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00002800
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00002900
//*                                                                     00003000
//SYSREC   DD DSN=MXCP.ZM.FIX.BCJCAP02.ARCADA2.F&FECHA,                 00007890
//            SPACE=(CYL,(50,20),RLSE),                                 00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007872
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMAP0202),DISP=SHR
//*                                                                     00004200
//*--------------------------------------------------------------------*00360006
//*   EJECUCION DEL PROGRAMA:  ZM3ADA01                                *00370006
//*   GENERA ARCHIVO                                                   *00380006
//*--------------------------------------------------------------------*00390006
//ZMAP0205 EXEC PGM=ZM3ADA01,COND=(4,LT)                                00400006
//E1DQADA1 DD DSN=MXCP.ZM.FIX.BCJCAP02.ARCADA1.F&FECHA,                 00420006
//            DISP=SHR
//E2DQADA1 DD DSN=MXCP.ZM.FIX.BCJCAP02.ARCADA2.F&FECHA,                 00420006
//            DISP=SHR
//E3DQADA1 DD DSN=MXCP.ZM.FIX.ZMPCAP02.FECHA,                           00420006
//            DISP=SHR
//S1DQADA1 DD DSN=MXCP.ZM.FIX.ZMPCAP02.BTRADER.F&FECHA,                 00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=136,RECFM=FB,BLKSIZE=0),                       00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//*
//S1DQADA2 DD DSN=MXCP.ZM.FIX.ZMPCAP02.CIFRAS.BTRADER.F&FECHA,          00450006
//            DISP=(NEW,CATLG,DELETE),                                  00460006
//            DCB=(LRECL=115,RECFM=FB,BLKSIZE=0),                       00470006
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)                        00480008
//*
//SYSTSPRT DD SYSOUT=*                                                  00430006
//SYSPRINT DD SYSOUT=*                                                  00440006
//SYSOUT   DD SYSOUT=*                                                  00490006
//SYSDBOUT DD SYSOUT=*                                                  00500006
//SYSABOUT DD DUMMY                                                     00510006
//SYSUDUMP DD DUMMY                                                     00520006
//*
//*--------------------------------------------------------------------*
//* PASO       : PCA01P00.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO DE DATIO        *
//*--------------------------------------------------------------------*
// IF ZMAP0205.RC = 0 THEN
//ZMAP0200 EXEC PGM=IOACND,PARM='ADD COND MX2CRX_BCJCAP0200 &FEC',
//          COND=(4,LT)
//*
//         INCLUDE MEMBER=IOASET
//         INCLUDE MEMBER=IOAENV
//SYSIN    DD DUMMY
//DALOG    DD  DISP=SHR,DSN=SYS3.IOAD.SYSMBBV.DATA.LOG
//DARESF   DD  DISP=SHR,DSN=SYS3.CTMD.SYSMBBV.DATA.RES
//STEPLIB  DD  DISP=SHR,DSN=SYS3.IOAO.SYSMBBV.TGT.LOAD
//PRTDBG   DD  SYSOUT=*
//SYSPRINT DD  DUMMY
//DAPRINT  DD  SYSOUT=*
//DACNDIN  DD  DDNAME=SYSIN
// ENDIF
//*--------------------------------------------------------------------*00007848
//*                FIN ZMPCAP02                                        *00007849
//*--------------------------------------------------------------------*
