//ZMUFPD01 PROC
//**********************************************************************
//*                   RESPALDO DE PRODUCCION 22-01-2014                *
//* SISTEMA        :  MODULO UNICO DE VALORES (MUV) ANTES (SIVA)       *
//*                                                                    *
//* PROCESO        :  ZMUFPD01.                                        *
//*                   DESPUES DEL ENLACE CONTABLE.                     *
//*                                                                    *
//* OBJETIVO       :  GENERACION DE INTERFASES DE CASA DE BOLSA        *
//*                   A CONTABILIDAD MV1, CONCILIACION Y MIS.          *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNA                                          *
//*                                                                    *
//* DESPUES DE     :  PAFOPD30 (DESPUES DEL ENLACE CONTABLE)           *
//*                                                                    *
//* REALIZACION    :  MARCIAL JAIME ROSALES RUIZ     03/MAY/2004       *
//* MODIFICACION   :                                 17/AGO/2006       *
//*                   EL PASO UNO SE ELIMINA Y SE    04/ENE/2007       *
//*                   COPIA AL JCL NMUFPD02                            *
//*                                                                    *
//* REALIZACION    :  EDUARDO MARTINEZ ESPINOSA      17/AGO/2018       *
//* MODIFICACION   :  SE INCORPORAN LOS PASOS PUF01PA7 Y PUF01PD7      *
//*                   PARA EJECUTAR EL PROGRAMA ZM4DU847 QUE ACTUALIZA *
//*                   LOS CR'S PARA LOS EVENTOS CONTABLES 13A, 14A Y   *
//*                   26A CORRESPONDIENTES A CUSTODIAS.                *
//* CLAVE MODIFICA :  EME001                                           *
//*                                                                    *
//* OBSERVACION    :  ESTE JOB CORRE DESPUES DEL ENLACE CONTABLE       *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------
//* PGM ZM4VMWCE QUE GENERA EL ARCHIVO DE CONTROL DE EMISORAS
//*--------------------------------------------------------------------
//PUF01P10 EXEC PGM=IKJEFT01
//*
//ZMMWCEA1 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MEMISOR,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=120,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC1T0E),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PUF01P09 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     '),COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TMP.E&EMP..ZMJFPD01,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//**********************************************************************
//*                          === ZM4DU800 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO INTERFAZ PARA CONTABILIDAD               *
//*                                                                    *
//**********************************************************************
//PUF01P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//ZMU800T1 DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T03),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DU810 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO CON LA   VALUACION DE CARTERA            *
//*                                                                    *
//**********************************************************************
//PUF01P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU810T1 DD DSN=MXCP.ZM.TMP.ECO.VALUAC.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMU810T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.CONCILIA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T05),DISP=SHR
//*
//*EME001-INI
//**********************************************************************
//*                          === ZM4DU847 ===                          *
//*                                                                    *
//* OBJETIVO : ACTUALIZA ARCHIVO PARA EVENTOS 13A,14A Y 26A INTERFAZ   *
//*                                                                    *
//**********************************************************************
//PUF01PA7 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//ZMU847T1 DD DSN=MXCP.ZM.TMP.ECO.VALUAC.F&FECHA,DISP=SHR
//ZMU847T2 DD DSN=MXCP.ZM.FIX.ECO.VALUAC.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T52),DISP=SHR
//*
//*EME001-FIN
//* FSW-INI
//**********************************************************************
//*                          === ZM4DU812 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO CON LA COMISION DE ADMON DE LOS FONDOS   *
//*                                                                    *
//**********************************************************************
//PUF01PC7 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU812T1 DD DSN=MXCP.ZM.TMP.ECO.VALCOM.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//*
//ZMU812T2 DD DSN=MXCP.ZM.FIX.ECO.NOIMPR.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01TC5),DISP=SHR
//*EME001-INI
//**********************************************************************
//*                          === ZM4DU847 ===                          *
//*                                                                    *
//* OBJETIVO : ACTUALIZA ARCHIVO PARA EVENTOS 13A,14A Y 26A INTERFAZ   *
//*                                                                    *
//**********************************************************************
//PUF01PD7 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//ZMU847T1 DD DSN=MXCP.ZM.TMP.ECO.VALCOM.F&FECHA,
//            DISP=SHR
//ZMU847T2 DD DSN=MXCP.ZM.FIX.ECO.VALCOM.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T52),DISP=SHR
//*EME001-FIN
//**********************************************************************
//*                          ===   SORT   ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO CON INTERFAZ CONTABLE                    *
//*                                                                    *
//**********************************************************************
// IF PUF01PC7.RC EQ 01 THEN
//PUF01PC6 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECO.VALUAC.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV1.PREV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF01T04),DISP=SHR
//*
//**********************************************************************
//*                          ===   SORT   ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO CON INTERFAZ CONTABLE                    *
//*                                                                    *
//**********************************************************************
// ELSE
//PUF01P06 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECO.VALUAC.F&FECHA,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECO.VALCOM.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV1.PREV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF01T04),DISP=SHR
//*
// ENDIF
//* FSW-FIN
//*ADE-INI-JULIO-08                                                    *
//**********************************************************************
//*  PROGRAMA: ICEMAN                                                  *
//*  OBJETIVO: SORT AL ARCHIVO DE INTERFAZ CONTABLE MV1 ORDENADO POR   *
//*            CUENTA DE INVERSION PATRIMONIAL                         *
//**********************************************************************
//PUF01P05 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV1.PREV,
//             DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.ECO.INTFAZ.ACECMV1,
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
//*            LAYOUT DEL ARCHIVO DE INTERFAZ MV1                      *
//**********************************************************************
//PUF01P04 EXEC PGM=ZM3DU833,COND=(4,LT)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDUMP  DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//AIC001   DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.ACECMV1,
//            DISP=SHR
//AMCP001  DD DSN=MXCP.ZM.FIX.CON.AMCP,
//            DISP=SHR
//ARCHSAL  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ACECMV1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=400,BLKSIZE=0,DSORG=PS)
//*
//*ADE-FIN-JULIO-08
//**********************************************************************
//*                          === ZM4DU845 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO INTERFAZ PARA MIS                        *
//*                                                                    *
//**********************************************************************
//PUF01P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//ZMU845T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.U845VALU,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMU845T2 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.U845CONC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//ZMU845T3 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MIS.PREV,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T07),DISP=SHR
//*                                                                    *
//**********************************************************************
//*  PROGRAMA: ICEMAN                                                  *
//*  OBJETIVO: SORT DE ARCHIVO DE INTERFAZ MIS ORDENADO POR CUENTA     *
//*            DE INVERSION PATRIMONIAL                                *
//**********************************************************************
//PUF01P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD  DSN=MXCP.ZM.FIX.ECO.INTFAZ.MIS.PREV,
//             DISP=SHR
//SORTOUT  DD  DSN=MXCP.ZM.TMP.ECO.INTFAZ.MIS,
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
//*            LAYOUT  DEL ARCHIVO DE INTERFAZ MIS   ñ                 *
//**********************************************************************
//PUF01P01 EXEC PGM=ZM3DU832,COND=(4,LT)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDUMP  DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//AIM001   DD DSN=MXCP.ZM.TMP.ECO.INTFAZ.MIS,
//            DISP=SHR
//AMCP001  DD DSN=MXCP.ZM.FIX.CON.AMCP,
//            DISP=SHR
//ARCHSAL  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MIS,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=1050,BLKSIZE=0,DSORG=PS)
//*
//*COD-FIN-ABRIL-08
//**********************************************************************
//*  PROGRAMA: IDCAMS                                                  *
//*  OBJETIVO: GENERA COPIA DE RESPALDO AL ARCHIVO DE OPERACIONES DIA- *
//*            DIAS DE S.I.                          ñ                 *
//**********************************************************************
//PUF01P00 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDUMP  DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//INPUT    DD  DSN=MXCP.ZM.FIX.ECO.INTFAZ.MIS,DISP=SHR
//*
//OUTPUT   DD  DSN=MXCP.ZM.FIX.ECO.INTFAZ.MIS.RESPALDO,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,
//             SPACE=(CYL,(300,150),RLSE),
//             DCB=(RECFM=FB,LRECL=1050,BLKSIZE=0,DSORG=PS)
//*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZLF38T12),DISP=SHR
//*
//*********************************************************************
