//ZMHCPT03 PROC                                                         00010004
//*--------------------------------------------------------------------*00020004
//*                                                                    *00030004
//*                   C A S A   D E  B O L S A                         *00030004
//*                                                                    *00030004
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00120004
//*                                                                    *00130004
//* PROCESO        :  ZMHCPT03                                         *00140004
//*                                                                    *00160004
//* OBJETIVO       :  GENERA ARCHIVO DE CUENTAS EJE PRODUCTO 21        *00170004
//*                                                                    *00190004
//* PERIODICIDAD   :  DIARIO.                                          *00240004
//*                                                                    *00240004
//* ELABORADO POR  :  JCSR (XMF3771).                                  *00240004
//*                                                                    *00240004
//*--------------------------------------------------------------------*00300004
//*                      LOG DE MODIFICACIONES                         *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO    : ZMHT0325                                                 *
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE LA TABLA CUENTA, ZMDT608                     *
//*--------------------------------------------------------------------*
//ZMHT0325 EXEC PGM=ADUUMAIN,PARM='MXP1,ZMHCPT03,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00002700
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00002800
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00002900
//*                                                                     00003000
//SYSREC   DD DSN=MXCP.ZM.FIX.CBHCCT03.SCUENTA.F&FECHA,                 00007890
//            SPACE=(CYL,(50,20),RLSE),                                 00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007872
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMHT0301),DISP=SHR
//*                                                                     00004200
//*--------------------------------------------------------------------*
//* PASO    : ZMHT0320                                                 *
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE LA TABLA CTABCO                              *
//*--------------------------------------------------------------------*
//ZMHT0320 EXEC PGM=ADUUMAIN,PARM='MXP1,ZMHCPT03,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR                                 00002700
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00002800
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00002900
//*                                                                     00003000
//SYSREC   DD DSN=MXCP.ZM.FIX.CBHCCT03.SCTABCO.F&FECHA,                 00007890
//            SPACE=(CYL,(50,20),RLSE),                                 00007891
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00007892
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00007872
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMHT0302),DISP=SHR
//*                                                                     00004200
//*--------------------------------------------------------------------*00085700
//* PASO    : ZMHT0315                                                 *00022600
//* PROGRAMA: ADUUMAIN                                                 *00022700
//* OBJETIVO: REALIZA MATCH ENTRE ARCHIVOS                             *00022700
//*--------------------------------------------------------------------*
//ZMHT0315 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.CBHCCT03.SCUENTA.F&FECHA,
//            DISP=SHR
//SORTJNF2 DD DSN=MXCP.ZM.FIX.CBHCCT03.SCTABCO.F&FECHA,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBHCCT03.MATCHCTA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,20),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=23,BLKSIZE=0)
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMHT0303),DISP=SHR                   00183716
//*
//*--------------------------------------------------------------------*00085700
//* PASO    : ZMHT0310                                                 *00022600
//* PROGRAMA: ADUUMAIN                                                 *00022700
//* OBJETIVO: GENERA REPORTE                                           *00022700
//*--------------------------------------------------------------------*
//ZMHT0310 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBHCCT03.MATCHCTA.F&FECHA,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBHCCT03.INGESEJE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,20),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=50,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMHT0304),DISP=SHR                   00183716
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMHT0305.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO DE CTA EJE.     *
//*--------------------------------------------------------------------*
//ZMHT0305 EXEC PGM=IOACND,PARM='ADD COND AJJCEJ03_IN_OK &FECH1',
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
//*
//*--------------------------------------------------------------------*00007848
//*                FIN ZMHCPT03                                        *00007849
//*--------------------------------------------------------------------*
