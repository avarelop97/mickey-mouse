//ZMHLPZ46 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIMI.:  ZMHLPZ46                                            *
//*                                                                    *
//*   OBJETIVO  :  DEFINITIVO DE CORTE DE CUPON DE RENTA VARIABLE      *
//*                (OPCION 778)                                        *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA     :  JULIO 03, 2003                                      *
//*                                                                    *
//*   AUTOR     :  (GESFOR) GUADALUPE OROZCO OROZCO                    *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 FSW INDRA 15FEB16 SE AGREGA EL PASO PHL46P3A PARA LA   *
//*                               ACTUALIZACION DE LA CARTERA ZMDT834  *
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//* PASO: PHL46P09                                                     *
//* OBJETIVO: PASO PARA COPIAR EL ARCHIVO DE PARAMETROS CICS           *
//**********************************************************************
//PHL46P09 EXEC PGM=IDCAMS
//PI601765 DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE46,
//            DISP=(OLD,PASS)
//SYSUT2   DD DSN=MXCP.ZM.TMP.VAL.PASO.ZMHLPE46,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL46T01),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4EH926                                                 *
//* FUNCION:  DEFINITIVO DE CORTE DE CUPON RENTA VARIABLE              *
//**********************************************************************
//PHL46P08 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT)
//ZMH926A1 DD DSN=MXCP.ZM.TMP.VAL.PASO.ZMHLPE46,
//            DISP=SHR
//ZMH926R1 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.REPOR46,
//            DISP=(NEW,CATLG),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//ZMH926R2 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.REPFI46,
//            DISP=(NEW,CATLG),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=132,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*                                                      ANS-1.1.0-INI
//ZMH926A3 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.PZ46.ARCH03,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=195,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE)
//*                                                      ANS-1.1.0-FIN
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL46T02),DISP=SHR
//*
//********************************************************************
//* PROGRAMA: ZM4EH925                                               *
//* FUNCION:  ACTUALIZA LA BASE DE DATOS POR EL CORTE DE CUPON       *
//********************************************************************
//PHL46P8A EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH925A3 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.PZ46.ARCH03,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL46T06),DISP=SHR
//*                                                      ANS-1.1.0-FIN
//********************************************************************
//* OBJETIVO : SORTEAR ARCHIVO                                       *
//* PROGRAMA : ICEMAN                                                *
//********************************************************************
//PHL46P07 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.REPFI46,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.REPSO46,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL45T02),DISP=SHR
//*
//********************************************************************
//* OBJETIVO : SEPARA LAS CUENTAS DE FIDEICOMISO DEL RESTO
//* PROGRAMA : ZM4CFID8
//********************************************************************
//PHL46P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH992A1 DD DSN=MXCP.ZM.TMP.VAL.EMP.SUC.ZMHLPE46,DISP=(OLD,PASS)
//*
//ZMH992A2 DD DSN=MXCP.ZM.FIX.VAL.EMP.SUC.REPSO46,DISP=SHR
//*
//ZMH926R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMH926RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL45T03),DISP=SHR
//*
//**********************************************************************
//*       REPORTE DEFINITIVO DE CORTE DE CUPON DE RENTA VARIABLE PARA
//*       PROMOCION
//*       PROGRAMA: ZM4EH975                     ANTES VIB975E
//**********************************************************************
//PHL46P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH975A1 DD DSN=MXCP.ZM.TMP.VAL.PASO.ZMHLPE46,
//            DISP=SHR
//ZMH975R1 DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL46T03),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM4EH431                                                 *
//* FUNCION:  REPORTE DE LAS ORDENES CANCELADAS POR CORTE DE CUPON     *
//*           MERCADO DE CAPITALES                                     *
//**********************************************************************
//PHL46P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH431A1 DD DSN=MXCP.ZM.TMP.VAL.PASO.ZMHLPE46,
//            DISP=SHR
//ZMH431R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMH431R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL46T04),DISP=SHR
//*
//* FS-0.0.0-00-INI
//*--------------------------------------------------------------------*
//* PASO       : PHL46P3A.                                             *
//* UTILERIA   : IKJEFT01/ZM4PPG32                                     *
//* OBJETIVO   : ACTUALIZA CARTERA ADMISIBLE POR CORTE CUPON R.V.      *
//*--------------------------------------------------------------------*
//*
//PHL46P3A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXCP.ZM.TMP.VAL.PASO.ZMHLPE46,
//            DISP=SHR
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHL46P3A),
//            DISP=SHR
//*
//* FS-0.0.0-00-FIN
//**********************************************************************
//* PROGRAMA: ZM4EH988                                                 *
//* FUNCION:  ACTUALIZA ESTATUS DE ORDENES CONDICIONADAS EN TABLAS     *
//*           ZMDTCND Y ZMDTEMI ***MERCADO DE CAPITALES***             *
//**********************************************************************
//PHL46P3B EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH988A1 DD DSN=MXCP.ZM.TMP.VAL.PASO.ZMHLPE46,
//            DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL46P3B),DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT925                            *
//**********************************************************************
//PHL46P2A EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PHL46P2A,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.MDC.ZMHLPZ46.ZMDT925,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=188,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL10T30),DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA CARTERA MERCADO CAPITALES RTA.VAR. *
//**********************************************************************
//PHL46P2B EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PHL46P2B,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.MDC.ZMHLPZ46.CARTERA,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=032,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL10T20),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA   : IKJEFT01 / ZM4DH039                                   *
//* OBJETIVO   : IGUALA LA TABLA ZMDT925 VS. CARTERA MERCADO CAPITALES *
//*              PARA LA EMISORA-SERIE QUE CORTO CUPON                 *
//**********************************************************************
//PHL46P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH039A1 DD DSN=MXCP.ZM.TMP.VAL.PASO.ZMHLPE46,DISP=SHR
//ZMH039E1 DD DSN=MXCP.ZM.FIX.MDC.ZMHLPZ46.CARTERA,DISP=SHR
//ZMH039E2 DD DSN=MXCP.ZM.FIX.MDC.ZMHLPZ46.ZMDT925,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL10T10),DISP=SHR
//*
//**********************************************************************
//* PASO: PHL46P01                                                     *
//* OBJETIVO: PASO PARA BORRAR EL ARCHIVO DE PARAMETROS CICS           *
//*           'MXCP.ZM.TMP.VAL.PASO.ZMHLPE46'                          *
//**********************************************************************
//PHL46P01 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL46T05),DISP=SHR
//*
//**********************************************************************
//*                         TERMINA ZMHLPZ46                           *
//**********************************************************************
