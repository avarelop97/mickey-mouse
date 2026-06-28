//ZMUFPM24 PROC
//*---------------------------------------------------------------------
//*                                                                    *
//*  SISTEMA      : ZM (REPORTE DE GESTION SIVA).                      *
//*                                                                    *
//*  PROCESO      : ZMUFPM24.                                          *
//*                                                                    *
//*  OBJETIVO     : DESCARGA INFORMACIÓN FUNDAMENTAL PARA LA CONSULTA  *
//*                 DE CTAS DADAS DE BAJA A UN ARCHIVO PLANO QUE SERA  *
//*                 PROCESADO EN SEIS PASOS, PARA POSTERIORMENTE       *
//*                 CONCATENAR LOS ARCHIVOS RESULTANTES Y CARGAR LA    *
//*                 TABLA DE INGRESOS ZMDT768.                         *
//*                                                                    *
//*  REALIZO      : ASP (HRRSR)                                        *
//*                                                                    *
//*  FECHA        : DICIEMBRE 2009.                                    *
//*                                                                    *
//*  PERIODICIDAD : EVENTUAL                                           *
//*                                                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO     : PUF24P11                                                *
//* UTILERIA : IDCAMS                                                  *
//* OBJETIVO : BORRAR ARCHIVOS DE PASO                                 *
//*--------------------------------------------------------------------*
//PUF24P11 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF24T11),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     : PUF24P10                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE DATOS DE LA TABLA ZMDT705 DE RENDIMIENTOS   *
//*--------------------------------------------------------------------*
//PUF24P10 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PUF24P10,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC1  DD DSN=MXCP.ZM.WKF.BCM.BAJAS,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(LRECL=28,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF24T10),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     : PUF24P09                                                *
//* UTILERIA : IKJEFT01/ZM4MV017                                       *
//* OBJETIVO : GENERACION DE REGISTROS DE BAJAS A NIVEL BANQUERO       *
//*--------------------------------------------------------------------*
//PUF24P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1CTABAJ DD DISP=SHR,DSN=MXCP.ZM.WKF.BCM.BAJAS
//S1SALBAJ DD DSN=MXCP.ZM.WKF.BCM.BAJAS.BQR,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS)
//S2CCTROL DD DSN=MXCP.ZM.WKF.BCM.CTRLBAJA.BQR,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF24T09),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     : PUF24P08                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA POR TPBANCA, UNIDAD GESTORA, PROD                *
//*--------------------------------------------------------------------*
//PUF24P08 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DISP=SHR,DSN=MXCP.ZM.WKF.BCM.BAJAS.BQR
//SORTOUT  DD  DSN=MXCP.ZM.WKF.BCM.BAJAS.BQR.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSOUT   DD SYSOUT=*                                                  00204000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF24T08),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     : PUF24P07                                                *
//* UTILERIA : IKJEFT01/ZM4VU002                                       *
//* OBJETIVO : GENERACION DE REGISTROS DE BAJAS A NIVEL UNIDAD GESTORA *
//*--------------------------------------------------------------------*
//PUF24P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1SRTBQR DD DISP=SHR,DSN=MXCP.ZM.WKF.BCM.BAJAS.BQR.SORT
//S1ALTUNG DD DSN=MXCP.ZM.WKF.BCM.BAJAS.UNG,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF24T07),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     : PUF24P06                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO POR TPBANCA, DIVISION, PRODUCTO          *
//*--------------------------------------------------------------------*
//PUF24P06 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DISP=SHR,DSN=MXCP.ZM.WKF.BCM.BAJAS.UNG
//SORTOUT  DD  DSN=MXCP.ZM.WKF.BCM.BAJAS.UNG.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSOUT   DD  SYSOUT=*                                                 00204000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF24T06),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     : PUF24P05                                                *
//* UTILERIA : IKJEFT01/ZM4VU015                                       *
//* OBJETIVO : GENERACION DE REGISTROS DE BAJAS A NIVEL DIVISION       *
//*--------------------------------------------------------------------*
//PUF24P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1ALTUNG DD DSN=MXCP.ZM.WKF.BCM.BAJAS.UNG.SORT,DISP=SHR
//S1ALTDIV DD DSN=MXCP.ZM.WKF.BCM.BAJAS.DIV,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF24T05),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     : PUF24P04                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA ARCHIVO POR TPBANCA, PROD                        *
//*--------------------------------------------------------------------*
//PUF24P04 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DISP=SHR,DSN=MXCP.ZM.WKF.BCM.BAJAS.DIV
//SORTOUT  DD DSN=MXCP.ZM.WKF.BCM.BAJAS.DIV.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSOUT   DD SYSOUT=*                                                  00204000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF24T04),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     : PUF24P03                                                *
//* UTILERIA : IKJEFT01/ZM4VU016                                       *
//* OBJETIVO : GENERACION DE REGISTROS DE BAJAS A NIVEL DIVISION       *
//*--------------------------------------------------------------------*
//PUF24P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DISP=SHR,DSN=MXCP.ZM.WKF.BCM.BAJAS.DIV.SORT
//SALIDA1  DD DSN=MXCP.ZM.WKF.BCM.BAJAS.BCA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF24T03),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     : PUF24P02                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : CONCATENA ARCHIVOS PARA CARGA                           *
//*--------------------------------------------------------------------*
//PUF24P02 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DISP=SHR,DSN=MXCP.ZM.WKF.BCM.BAJAS.BQR
//         DD DISP=SHR,DSN=MXCP.ZM.WKF.BCM.BAJAS.UNG
//         DD DISP=SHR,DSN=MXCP.ZM.WKF.BCM.BAJAS.DIV
//         DD DISP=SHR,DSN=MXCP.ZM.WKF.BCM.BAJAS.BCA
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.BCM.BAJAS.ZMDT768,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=323,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*                                                 00204000
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF24T02),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     : PUF24P01                                                *
//* UTILERIA : AMUUMAIN                                                *
//* OBJETIVO : CARGA TABLA  DE INGRESOS ZMDT768                        *
//*--------------------------------------------------------------------*
//PUF24P01 EXEC PGM=AMUUMAIN,COND=(4,LT),
//         PARM='MXP1,PUF24P01,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC1  DD DISP=SHR,DSN=MXCP.ZM.WKF.BCM.BAJAS.ZMDT768
//*
//SYSUT1   DD DSN=MXCP.ZM.TMP.SYSUT01,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0)
//*
//SYSERR   DD DSN=MXCP.ZM.TMP.SYSERR,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0)
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.SORTOUT,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0)
//DSSPRINT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF24T01),DISP=SHR
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMUFPM24                        *
//*--------------------------------------------------------------------*
