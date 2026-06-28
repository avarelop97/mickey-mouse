//ZMHFPD04 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MUV MODULO UNICO DE VALORES ANTES SIVA.          *
//*                                                                    *
//* PROCESO        :  ZMHFPD04                                         *
//*                   DESPUES DE LA INTERFAZ DE MERCADO DE CAPITALES   *
//*                                                                    *
//* OBJETIVO       :  GENERACION DE INTERFASES DE CASA DE BOLSA        *
//*                   A CONTABILIDAD MV3, CONCILIACION Y MIS DE        *
//*                   MERCADO DE DINERO.                               *
//*                                                                    *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNA                                          *
//*                                                                    *
//* DESPUES DE     :  BCHFND03 (DESPUES DE LA INTERFAZ DE CAP.)        *
//*                                                                    *
//* REALIZACION    :  MARCIAL JAIME ROSALES RUIZ     24/OCT/2005       *
//*                                                                    *
//* OBSERVACION    :  ESTE JOB CORRE DESPUES DE GENERAR CONTAB MV2     *
//*                                                                    *
//**********************************************************************
//*                          === ZM3DG001 ===                          *
//*                                                                    *
//* OBJETIVO : RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO FIJO A 96 CHAR *
//*                                                                    *
//**********************************************************************
//PHF04P20 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMHFPD04,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//**********************************************************************
//*                          === ZM4DU807 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO MDD RESPALDO                             *
//*                                                                    *
//*                                                                    *
//* NOTA:      EN CASO DE FALLAR ESTE PASO SE LO PUEDEN SALTAR         *
//* NOTA:      EN CASO DE FALLAR ESTE PASO SE LO PUEDEN SALTAR         *
//* NOTA:      EN CASO DE FALLAR ESTE PASO SE LO PUEDEN SALTAR         *
//* NOTA:      EN CASO DE FALLAR ESTE PASO SE LO PUEDEN SALTAR         *
//* NOTA:      EN CASO DE FALLAR ESTE PASO SE LO PUEDEN SALTAR         *
//* NOTA:      EN CASO DE FALLAR ESTE PASO SE LO PUEDEN SALTAR         *
//* NOTA:      EN CASO DE FALLAR ESTE PASO SE LO PUEDEN SALTAR         *
//* NOTA:      EN CASO DE FALLAR ESTE PASO SE LO PUEDEN SALTAR         *
//* NOTA:      EN CASO DE FALLAR ESTE PASO SE LO PUEDEN SALTAR         *
//* NOTA:      EN CASO DE FALLAR ESTE PASO SE LO PUEDEN SALTAR         *
//* NOTA:      EN CASO DE FALLAR ESTE PASO SE LO PUEDEN SALTAR         *
//*                                                                    *
//**********************************************************************
//PHF04P19 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU807T1 DD DSN=MXCP.ZM.FIX.ECO.INTOSC.CONTMV3.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//ZMU807T2 DD DSN=MXCP.ZM.FIX.ECO.INTOSC.PRODUCTI.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=560,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF04T16),DISP=SHR
//**********************************************************************00779900
//*                          ===  ZM4DU002  ===                        *00780000
//*                                                                    *00780100
//* OBJETIVO:  OBTIENE DOS REPORTES :                                  *00780200
//*            - (DETALLE)CONCILIACION DE OPERACIONES DE               *00780200
//*              PAGARES POR VENCIMIENTOS                              *00780300
//*                                                                    *00780100
//**********************************************************************00780600
//PHF04P18 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU002R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*                                                  00130016
//SYSPRINT DD SYSOUT=*                                                  00140015
//SYSOUT   DD SYSOUT=*                                                  00150015
//SYSDBOUT DD SYSOUT=*                                                  00160015
//SYSABOUT DD DUMMY                                                     00170000
//SYSUDUMP DD DUMMY                                                     00180000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF04T24),DISP=SHR
//*                                                                     00280000
//**********************************************************************00779900
//*                          ===  ZM4DU003  ===                        *00780000
//*                                                                    *00780100
//* OBJETIVO:  OBTIENE DOS REPORTES :                                  *00780200
//*            - (DETALLE)CONCILIACION DE OPERACIONES DE               *00780200
//*              PAGARES POR COMPRAS                                   *00780300
//*                                                                    *00780100
//**********************************************************************00780600
//PHF04P17 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU003R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*                                                  00130016
//SYSPRINT DD SYSOUT=*                                                  00140015
//SYSOUT   DD SYSOUT=*                                                  00150015
//SYSDBOUT DD SYSOUT=*                                                  00160015
//SYSABOUT DD DUMMY                                                     00170000
//SYSUDUMP DD DUMMY                                                     00180000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF04T23),DISP=SHR
//*                                                                     00280000
//**********************************************************************00779900
//*                          ===  ZM4DU857  ===                        *00780000
//*                                                                    *00780100
//* OBJETIVO : GENERA REPORTE CON OPERACIONES DEL DIA DE MERCADO DE    *00780200
//*            CAPITALES (ACEPTADOS Y RECHAZOS)                        *00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PHF04P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU857R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMU857R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*                                                  00130016
//SYSPRINT DD SYSOUT=*                                                  00140015
//SYSOUT   DD SYSOUT=*                                                  00150015
//SYSDBOUT DD SYSOUT=*                                                  00160015
//SYSABOUT DD DUMMY                                                     00170000
//SYSUDUMP DD DUMMY                                                     00180000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF04T19),DISP=SHR
//*                                                                     00280000
//**********************************************************************00779900
//*                          ===  ZM4DU001  ===                        *00780000
//*                                                                    *00780100
//* OBJETIVO:  OBTIENE DOS REPORTES :                                  *00780200
//*            - (DETALLE)CONCILIACION DE OPERACIONES EN               *00780200
//*              SOCIEDADES DE INVERSION DEUDA Y RENTA VARIABLE        *00780300
//*              POR EMISORA Y SERIE.                                  *00780300
//*            - (TOTALES)CONCILIACION DE OPERACIONES EN               *00780300
//*              SOCIEDADES DE INVERSION DEUDA Y RENTA VARIABLE        *00780300
//*              POR EMISORA Y SERIE.                                  *00780300
//*                                                                    *00780100
//**********************************************************************00780600
//PHF04P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU001R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMU001R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*                                                  00130016
//SYSPRINT DD SYSOUT=*                                                  00140015
//SYSOUT   DD SYSOUT=*                                                  00150015
//SYSDBOUT DD SYSOUT=*                                                  00160015
//SYSABOUT DD DUMMY                                                     00170000
//SYSUDUMP DD DUMMY                                                     00180000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF04T20),DISP=SHR
//*                                                                     00280000
//**********************************************************************00780600
//**********************************************************************
//*                          === ZM4DU844 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO CON INFORMACION DEL MIS M. DE DINERO MDD *
//*            CON CONCILIACION Y/O CUADRE DE INVENTARIOS              *
//*                                                                    *
//**********************************************************************
//PHF04P14 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU844T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.U844VALU,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//ZMU844T3 DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.U844MIS.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF04T07),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DU842 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO CON INFORMACION DEL MIS M. DE DINERO MDD *
//*            CON CONCILIACION Y/O CUADRE DE INVENTARIOS              *
//*                       >>>> OPERDIN <<<<                            *
//**********************************************************************
//PHF04P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU842T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.U842VALU,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//ZMU842T3 DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.U842MIS.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF04T14),DISP=SHR
//*
//**********************************************************************
//*                          ===   SORT   ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO CON INTERFAZ MIS DE MERCADO DE DINERO    *
//*               MXCP.ZM.FIX.ECO.INTFAZ.MISMDD                        *
//*                                                                    *
//**********************************************************************
//PHF04P12 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.U844MIS.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.U842MIS.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MISMDD.PREV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF04T15),DISP=SHR
//*
//*COD-INI-ABRIL-08
//**********************************************************************
//*  PROGRAMA: ICEMAN                                                  *
//*  OBJETIVO: SORT DE ARCHIVO DE INTERFAZ MISMDD ORDENADO POR CUENTA  *
//*            DE INVERSION PATRIMONIAL                                *
//**********************************************************************
//PHF04P11 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.FIX.ECO.INTFAZ.MISMDD.PREV,
//             DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.ECO.INTFAZ.MISMDD,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(700,350),RLSE),UNIT=3390,
//             DCB=(LRECL=1050,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUF01T1B),
//             DISP=SHR
//*
//**********************************************************************
//*  PROGRAMA: ZM3DU832                                                *
//*  OBJETIVO: INTEGRA EL CENTRO DE APERTURA EN EL COñNTRATO PU AL     *
//*            LAYOUT  DEL ARCHIVO DE INTERFAZ MISMDDñ                 *
//**********************************************************************
//PHF04P10 EXEC PGM=ZM3DU832,COND=(4,LT)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDUMP  DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//AIM001   DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.MISMDD,
//            DISP=SHR
//AMCP001  DD DSN=MXCP.ZM.FIX.CON.AMCP,
//            DISP=SHR
//ARCHSAL  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MISMDD,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=1050,BLKSIZE=0,DSORG=PS)
//*
//*COD-FIN-ABRIL-08
//*ISR-I
//**********************************************************************
//*                          === ADUUMAIN ===                          *
//*                                                                    *
//* OBJETIVO : DESCARGA DE LAS TABLAS OPERDIN, CATOPER Y CUENTA        *
//*            PARA GENERAR ARCHIVO C/INTERFAZ CONTABLE DE MERCADO     *
//*            DE DINERO                                               *
//*                                                                    *
//**********************************************************************
//PHF04PA9 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMHFPD04,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.TMP.ECO.DESCAR.CONTMV3.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF04TA9),DISP=SHR
//*ISR-F
//**********************************************************************
//*                          === ZM4DU806 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO C/INTERFAZ CONTABLE DE MERCADO DE DINERO *
//*                                                                    *
//**********************************************************************
//PHF04P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*ISR-I
//ZMU806E1 DD DSN=MXCP.ZM.TMP.ECO.DESCAR.CONTMV3.F&FECHA,DISP=SHR
//*ISR-F
//ZMU806T1 DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.CONTMV3.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//ZMU806T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.PRODUCTI.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=560,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF04T06),DISP=SHR
//**********************************************************************
//*                          === ZM4DU816 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO C/VALUACION DE CARTERA MERCADO DE DINERO *
//*                                                                    *
//**********************************************************************
//PHF04P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU816T1 DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.VALMDD.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//ZMU816T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.CONMDD.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF04T05),DISP=SHR
//**********************************************************************
//*                          === ZM4DU819 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO C/VALUACION DE OPERDIN MERCADO DE DINERO *
//*                                                                    *
//**********************************************************************
//PHF04P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU819T1 DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.VA2MDD.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF04T04),DISP=SHR
//**********************************************************************
//*                          ===   SORT   ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO CON INTERFAZ CONTABLE                    *
//*               MXCP.ZM.FIX.ECO.INTFAZ.ACECMV3                       *
//*                                                                    *
//**********************************************************************
//PHF04P06 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.CONTMV3.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.VALMDD.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.VA2MDD.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV3.PREV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF04T03),DISP=SHR
//*
//*ADE-INI-JULIO-08
//**********************************************************************
//*  PROGRAMA: ICEMAN                                                  *
//*  OBJETIVO: SORT AL ARCHIVO DE INTERFAZ CONTABLE MV3 ORDENADO POR   *
//*            CUENTA DE INVERSION PATRIMONIAL                         *
//**********************************************************************
//PHF04P05 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV3.PREV,
//             DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.ECO.INTFAZ.ACECMV3,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(700,350),RLSE),UNIT=3390,
//             DCB=(LRECL=400,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUF01T1B),
//             DISP=SHR
//*
//**********************************************************************
//*  PROGRAMA: ZM3DU833                                                *
//*  OBJETIVO: INTEGRA EL CENTRO DE APERTURA EN EL CONTRATO PU AL      *
//*            LAYOUT DEL ARCHIVO DE INTERFAZ CONTABLE MV3.            *
//**********************************************************************
//PHF04P04 EXEC PGM=ZM3DU833,COND=(4,LT)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDUMP  DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//AIC001   DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.ACECMV3,
//            DISP=SHR
//AMCP001  DD DSN=MXCP.ZM.FIX.CON.AMCP,
//            DISP=SHR
//ARCHSAL  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV3,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0,DSORG=PS)
//*
//*ADE-FIN-JULIO-08
//**********************************************************************
//*                          === ZM3DU800 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO CON INTERFAZ CONTABLE MV3                *
//*            EDITADO PARA TRANSFERENCIA                              *
//*                                                                    *
//**********************************************************************
//PHF04P03 EXEC PGM=ZM3DU800,COND=(4,LT)
//ZMU800T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV3,DISP=SHR
//ZMU800T2 DD DSN=MXCP.ZM.FIX.ECO.INEDIT.ACECMV3,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(100,50),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=450,BLKSIZE=0),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//*                          === ZM3DU800 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO CON VALUACION MERCADO DE DINERO          *
//*            EDITADO PARA TRANSFERENCIA                              *
//*                                                                    *
//**********************************************************************
//PHF04P02 EXEC PGM=ZM3DU800,COND=(4,LT)
//ZMU800T1 DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.VALMDD.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.VA2MDD.F&FECHA,DISP=SHR
//ZMU800T2 DD DSN=MXCP.ZM.FIX.ECO.INEDIT.VALMDD,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(100,50),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=450,BLKSIZE=0),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//*                          === ZM3DU806 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO CON LA PRODUCTIVIDAD DE MERCADO DE DINERO*
//*            EDITADO PARA TRANSFERENCIA                              *
//*                                                                    *
//**********************************************************************
//PHF04P01 EXEC PGM=ZM3DU806,COND=(4,LT)
//ZM3806T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.PRODUCTI.F&FECHA,DISP=SHR
//ZM3806T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.PRODEDIT,
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(CYL,(100,50),RLSE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=635,BLKSIZE=0),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DUMMY
//*
//******************************* F I N ********************************
