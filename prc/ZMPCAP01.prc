//ZMPCAP01 PROC
//**********************************************************************
//*                 B A N C A  P A T R I M O N I A L                   *
//*                 ================================                   *
//*                 >>>>  ACCIONES BBVATRADER   <<<<                   *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  BCJCAP01   (CTL-M)                                  *
//*   PROCEDIM. :  ZMPCAP01                                            *
//*                                                                    *
//*   OBJETIVO  :  INSUMO DATIO PARA FUTURA                            *
//*                                                                    *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO  HORARIO DE EJECUCION 20 HRS           *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*00240002
//* PASO    : PCA01P10                                                 *00240002
//* UTIL/PGM: ZM3LIQ01                                                 *00240002
//* OBJETIVO: GENERA TARJETA  DE CONTROL PARA OBTENER LA FECHA.        *00240002
//*--------------------------------------------------------------------*
//PCA01P10 EXEC PGM=ZM3LIQ01,PARM=&FECHA                                00780700
//S1DQ0001 DD DSN=MXCP.ZM.FIX.ZMPCAP01.FECHA,
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
//*--------------------------------------------------------------------*00240002
//* PASO    : PCA01P08                                                 *00240002
//* UTIL/PGM: ZM3BTR05                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//PCA01P08 EXEC PGM=ZM3BTR05,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=MXCP.ZM.FIX.ZMPCAP01.FECHA,DISP=SHR
//E1DQ0002 DD DSN=ZIVA.ZME.CONTROL(ZCP01T03),DISP=SHR
//S1DQ0001 DD DSN=MXCP.ZM.TMP.ZMPCAP01.CTC,
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
//*--------------------------------------------------------------------*00022400
//*   PASO    : PCA01P05                                               *00022500
//*   OBJETIVO: REALIZA DESCARGA DE ORDENES DESDE BBVATRADER           *00022600
//*--------------------------------------------------------------------*00022700
//PCA01P05 EXEC PGM=ADUUMAIN,COND=(4,LT),                               00022800
//         PARM='MXP1,PCA01P03,NEW,,MSGLEVEL(1)'                        00022900
//*                                                                     00023000
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00023100
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00023200
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00023300
//*                                                                     00023400
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMPCAP01.BTRADER,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00023600
//            SPACE=(CYL,(40,20),RLSE),                                 00023700
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00023800
//*                                                                     00023900
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSIN    DD DSN=MXCP.ZM.TMP.ZMPCAP01.CTC,DISP=SHR
//*                                                                     00024500
//**********************************************************************
//* PASO       : PCA01P04                                              *
//* OBJETIVO   : COPIA ARCHIVO CON DATOS DE BANQUERO PATRIMONIAL Y     *
//*              SUSTITUYE ';' POR '|' Y LO DEJA COMO FIX PARA DATAX   *
//**********************************************************************
//PCA01P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ENTRADA1 DD DSN=MXCP.ZM.FIX.ZMPCAP01.BTRADER,DISP=SHR
//SALIDA01 DD DSN=MXCP.ZM.FIX.ZMPCAP01.OPERA.BTRADER,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=639,BLKSIZE=0),
//         SPACE=(CYL,(1,1),RLSE),
//         UNIT=3390
//SALIDA02 DD DSN=MXCP.ZM.FIX.ZMPCAP01.CIFRAS.BTRADER,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=116,BLKSIZE=0),
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZCP01T02),DISP=SHR
//*--------------------------------------------------------------------
//* UTILERIA   : ICEGENER.
//* OBJETIVO   : PONE FECHA AL ARCHIVO DE OPERA BTRADER
//*--------------------------------------------------------------------
//PCA01P03 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ZMPCAP01.OPERA.BTRADER,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ZMPCAP01.OPERA.BTRADER.F&FECHA,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(LRECL=639,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------
//* UTILERIA   : ICEGENER.
//* OBJETIVO   : ACTUALIZA ARCHIVO DE TALENTO Y CULTURA
//*--------------------------------------------------------------------
//PCA01P02 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ZMPCAP01.CIFRAS.BTRADER,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.ZMPCAP01.CIFRAS.BTRADER.F&FECHA,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(LRECL=116,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//*--------------------------------------------------------------------*
//* PASO       : PCA01P00.                                             *
//* PROGRAMA   : IOACND                                                *
//* OBJETIVO   : ALOJA CONDICION PARA EJECUTAR PROCESO DE DATIO        *
//*--------------------------------------------------------------------*
// IF PCA01P04.RC = 0 THEN
//PCA01P00 EXEC PGM=IOACND,PARM='ADD COND MX2CRX_NZMBTR0400 &FEC',
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
//**********************************************************************
//*                     F I N  Z M P C A P 0 1                         *
//**********************************************************************
