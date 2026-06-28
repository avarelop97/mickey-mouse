//**********************************************************************00780600
//ZMHFPD03 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  MUV MODULO UNICO DE VALORES ANTES SIVA.          *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMHFPD03                                         *00060002
//*                   DESPUES DE LA INTERFAZ DE S. I.                  *00070002
//*                                                                    *00080002
//* OBJETIVO       :  GENERACION DE INTERFASES DE CASA DE BOLSA        *00090002
//*                   A CONTABILIDAD MV2, CONCILIACION Y MIS DE        *00100002
//*                   MERCADO DE CAPITALES                             *00100002
//*                                                                    *00100002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  CBUFND01 (DESPUES DE LA INTERFAZ DE S.I.)        *00140002
//*                                                                    *00150002
//* REALIZACION    :  MARCIAL JAIME ROSALES RUIZ     14/SEP/2005       *00160002
//*                                                                    *00170002
//* OBSERVACION    :  ESTE JOB CORRE DESPUES DE GENERAR CONTAB MV1     *00180002
//*                                                                    *00190002
//**********************************************************************00240002
//*                                                                    *00240002
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PHF03P13 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TMP.E&EMP..ZMHFPD03,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//*                          === ZM4DHW28 ===                          *
//*                                                                    *
//* OBJETIVO : CARGA DE LA TABLA ZMDT632, INFORMACION DE COMPRA-VENTA  *
//*            DE MERCADO DE CAPITALES.                                *
//*                                                                    *
//**********************************************************************
//PHF03P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DHW28 DD DSN=MXCP.ZM.FIX.EBCM.ZM4DHW28.ZMDT632,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=390,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF03T08),DISP=SHR
//*
//**********************************************************************00779900
//*                          === ZM4DU805 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : GENERA ARCHIVO CON LA INTERFAZ CONTABLE DE CAPITALES    *00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PHF03P11 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMU805T1 DD DSN=MXCP.ZM.TMP.ECO.CONTMV2.F&FECHA,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF03T03),DISP=SHR
//**********************************************************************00779900
//*                          === ZM4MO805 ===  SOLO 1104 Y 1109        *00780000
//*                                                                    *00780100
//* OBJETIVO : GENERA ARCHIVO CON LA INTERFAZ CONTABLE DE CAPITALES    *00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PHF03P1B EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMU805TB DD DSN=MXCP.ZM.TMP.ECO.CONTMV2.CLA.F&FECHA,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHFMOT03),DISP=SHR
//**********************************************************************00779900
//*                          === ZM4DU815 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : GENERA ARCHIVO CON LA VALUACION DE CARTERA CUSTODIA CAP *00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PHF03P10 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMU815T1 DD DSN=MXCP.ZM.TMP.ECO.VALCTD.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//ZMU815T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.CONCICTD,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF03T05),DISP=SHR
//**********************************************************************00779900
//*                          === ZM4DU818 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : GENERA ARCHIVO CON LA VALUACION DE CARTERA MDO CAPITALES*00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PHF03P09 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMU818T1 DD DSN=MXCP.ZM.TMP.ECO.VALCAP.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//ZMU818T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.CONCICAP,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF03T06),DISP=SHR
//**********************************************************************00779900
//*                          ===   SORT   ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : GENERA ARCHIVO CON INTERFAZ CONTABLE                    *00780200
//*            MXCP.ZM.FIX.ECO.CONTCAP.F&FECHA                         *
//*                                                                    *00780300
//**********************************************************************00780600
//PHF03P08 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECO.CONTMV2.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECO.CONTMV2.CLA.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ECO.VALCAP.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV2.PREV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF03T04),DISP=SHR
//*
//*ADE-INI-JULIO-08
//**********************************************************************
//*  PROGRAMA: ICEMAN                                                  *
//*  OBJETIVO: SORT AL ARCHIVO DE INTERFAZ CONTABLE MV2 ORDENADO POR   *
//*            CUENTA DE INVERSION PATRIMONIAL                         *
//**********************************************************************
//PHF03P07 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV2.PREV,
//             DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.ECO.INTFAZ.ACECMV2,
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
//*            LAYOUT DEL ARCHIVO DE INTERFAZ CONTABLE MV2.            *
//**********************************************************************
//PHF03P06 EXEC PGM=ZM3DU833,COND=(4,LT)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDUMP  DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//AIC001   DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.ACECMV2,
//            DISP=SHR
//AMCP001  DD DSN=MXCP.ZM.FIX.CON.AMCP,
//            DISP=SHR
//ARCHSAL  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0,DSORG=PS)
//*
//*ADE-FIN-JULIO-08
//**********************************************************************00779900
//*                          === ZM4DU843 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : GENERA ARCHIVO CON INFORMACION DEL MIS CAPITALES        *00780200
//*                                                                    *00780300
//**********************************************************************00780600
//PHF03P05 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//ZMU843T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.U843VALU,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//ZMU843T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.U843CONC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//ZMU843T3 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MISCAP.PREV,
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF03T07),DISP=SHR
//*
//*COD-INI-ABRIL-08
//**********************************************************************
//*  PROGRAMA: ICEMAN                                                  *
//*  OBJETIVO: SORT DE ARCHIVO DE INTERFAZ MISCAP ORDENADO POR CUENTA  *
//*            DE INVERSION PATRIMONIAL                                *
//**********************************************************************
//PHF03P04 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.FIX.ECO.INTFAZ.MISCAP.PREV,
//             DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.ECO.INTFAZ.MISCAP,
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
//*            LAYOUT  DEL ARCHIVO DE INTERFAZ MISCAPñ                 *
//**********************************************************************
//PHF03P03 EXEC PGM=ZM3DU832,COND=(4,LT)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDUMP  DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//AIM001   DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.MISCAP,
//            DISP=SHR
//AMCP001  DD DSN=MXCP.ZM.FIX.CON.AMCP,
//            DISP=SHR
//ARCHSAL  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MISCAP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=1050,BLKSIZE=0,DSORG=PS)
//*
//*COD-FIN-ABRIL-08
//**********************************************************************00779900
//*                          === ZM3DU715 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : GENERA ARCHIVO CON INTERFAZ CONTABLE MV2                *00780200
//*            EDITADO PARA TRANSFERENCIA                              *
//*                                                                    *00780300
//**********************************************************************00780600
//*
//PHF03P02 EXEC PGM=ZM3DU715,COND=(4,LT)
//ZMU715T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV2,DISP=SHR
//ZMU715T2 DD DSN=MXCP.ZM.FIX.ECO.INEDIT.ACECMV2,
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
//*                                                                     00780600
//**********************************************************************00779900
//*                          === ZM3DU715 ===                          *00780000
//*                                                                    *00780100
//* OBJETIVO : GENERA ARCHIVO CON VALUACION CUSTODIA                   *00780200
//*            EDITADO PARA TRANSFERENCIA                              *
//*                                                                    *00780300
//**********************************************************************00780600
//*
//PHF03P01 EXEC PGM=ZM3DU715,COND=(4,LT)
//ZMU715T1 DD DSN=MXCP.ZM.TMP.ECO.VALCTD.F&FECHA,DISP=SHR
//ZMU715T2 DD DSN=MXCP.ZM.FIX.ECO.INEDIT.VALCTD,
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
//*                                                                     00780600
