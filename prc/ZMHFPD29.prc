//ZMHFPD29 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MUV MODULO UNICO DE VALORES ANTES SIVA.          *
//*                                                                    *
//* PROCESO        :  ZMHFPD29                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  SE HACE LA SEPARACION DE INTERFACES MUVOPE,      *
//*                   MUVCART Y MUVACTI                                *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PFDFDD01, PFDFDD02                               *
//*                                                                    *
//* DESPUES DE     :  CBLCCD02, CBHCND09, CBJCCD05, CBHCCD03           *
//*                                                                    *
//* REALIZACION    :  MARCIAL JAIME ROSALES RUIZ     06/SEP/2006       *
//*                                                                    *
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-05  XMY0609 01AGO18 SE CAMBIO LA SALIDA DEL PASO PHF09PD6 *
//*                              PARA QUE AHORA LO TOME EL BCHFND14 QUE*
//*                              CAMBIA LAS NUCVEOS DE RECLASIFICACION *
//*                              Y DEJA EL ARCHIVO PX ACTUALIZADO.     *
//*--------------------------------------------------------------------*
//**********************************************************************
//*                          === ZM3DG001 ===                          *
//*                                                                    *
//* OBJETIVO : RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO FIJO A 96 CHAR *
//*                                                                    *
//**********************************************************************
//PHF29P90 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMHFPD29,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*****************
//* INICIA MUVCART
//*****************
//**********************************************************************
//*                          === ZM4DU917 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO C/VALUACION DE CARTERA SOCIEDADES DE INV,*
//*            MERCADO DE CAPITALES, MERCADO DE DINERO E INV. BANCARIAS*
//*                                                                    *
//**********************************************************************
//PHF29P88 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMJ917A1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZM4DU917.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//         SPACE=(CYL,(10,5),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF09T14),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: SORT ORDENA X CTA-EMI-SER-CUP REG CARTERA Y REPORTOS     *
//*--------------------------------------------------------------------*
//PHF29P86 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZM4DU917.F&FECHA,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.ECO.SORT.ZM4DU917.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=140,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1,2),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T22),DISP=SHR
//*
//**********************************************************************
//*                          ===   SORT   ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO CON INTERFAZ CON SALDOS DE MERCADOS      *
//*               MXC&AMB..ZM.FIX.ECO.INTFAZ.SALDOMER                  *
//*                                                                    *
//**********************************************************************
//PHF29P84 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.WKF.ECO.SORT.ZM4DU917.F&FECHA,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.SALDOMER.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T08),DISP=SHR
//*
//**********************************************************************
//*     COPIA DEL ARCHIVO DE SALDOS PARA USO DE BPIGO                  *
//*                                                                    *
//**********************************************************************
//PHF29P82 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.SALDOMER.F&FECHA,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.INTBPIGO.CARTERA1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : PHF14P0A.                                             *
//* UTILERIA   : IKJEFT01/ZM4CU916                                     *
//* OBJETIVO   : CAMBIA EMISORA PLCOMER POR PAGARE O CEDE Y BUSCA SU   *
//*              NUMERO DE SECUENCIAL Y AL CEDE BUSCA SU CUPON         *
//*--------------------------------------------------------------------*
//PHF29P80 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.INTBPIGO.CARTERA1,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.INTBPIGO.CARTERA.SUM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(30,15),RLSE),
//            DCB=(RECFM=FB,LRECL=140,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMHMUV01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PHF14P0B.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO : SORTEAR POR CTA PATRIMONIAL, EMI, SER, CUP, NUPAPEL     *
//* UTILERIA : ICEMAN + SUM DE TITULOS, IMPORTE E INTERESES            *
//*                                                                    *
//*--------------------------------------------------------------------*
//PHF29P79 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.INTBPIGO.CARTERA.SUM,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.INTBPIGO.CARTERA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=140,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1,2),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMHMUV02),DISP=SHR
//*****************
//* FINAL  MUVCART
//*****************
//**********************************************************************
//*     COPIA DEL ARCHIVO DE SALDOS PARA USO DE CASA DE BOLSA          *
//*                                                                    *
//**********************************************************************
//PHF29P78 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.SALDOMER.F&FECHA,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.INTFAZ.CARTERA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//******************************
//* FINAL  CASA DE BOLSA MUVCART
//******************************
//*
//*****************
//* INICIA MUVACTI
//*****************
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4DU962                                                 *
//* LEE EL ARCHIVO DE POSICIONES, EMISORAS Y PLAZOS, PARA ARMAR        *
//* CATALOGO DE EMISORAS. ANTES ERA EL PROGRAMA ZM4CEMI1               *
//*--------------------------------------------------------------------*
//PHF29P76 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDQQ0E1 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMDT610.PZOSB.SORT,
//            DISP=SHR
//ZMDQQ0E2 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CARTERA.POSIB.SORT,
//            DISP=SHR
//ZMDQQ0E3 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.EMISCON,
//            DISP=SHR
//ZMDQQ0E4 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..APLIDER.OPZAS.SORT,
//            DISP=SHR
//ZMDQQ0S1 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..INTFAZEM.FIDEICOM,
//            DISP=(NEW,CATLG,DELETE),
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=175,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=180,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(30,15),RLSE)
//ZMDQQ0S2 DD DSN=MXCP.ZM.FIX.MDC.E&EMP..ZMHFPD09.FIDEICOM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=244,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(30,15),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF29C76),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ICEMAN         ===   SORT   ===                          *
//*                                                                    *
//* OBJETIVO : CLASIFICA EL ARCHIVO DE OPERACIONES DE FIDEICOMISOS     *
//*            POR EMISORA, SERIE, CUPON                               *
//*                                                                    *
//**********************************************************************
//PHF29P74 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZM4DU904.A.FIDEIN,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.ECO.E&EMP..ZM4DU905.FIDEIN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T11),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ICEMAN         ===   SORT   ===                          *
//*                                                                    *
//* OBJETIVO : CLASIFICA EL ARCHIVO DE ACTIVOS DE FIDEICOMISOS         *
//*            POR EMISORA, SERIE, CUPON                               *
//*                                                                    *
//**********************************************************************
//PHF29P72 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN  DD DSN=MXC&AMB..ZM.FIX.MDC.E&EMP..INTFAZEM.FIDEICOM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.MDC.E&EMP..INTFAZEM.ACTIVOS,
//            DISP=(NEW,CATLG,DELETE),
//*           DCB=(LRECL=175,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=180,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(30,15),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T12),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DU915 ===                          *
//*                                                                    *
//* OBJETIVO : IGUALAR ARCHIVOS DE OPERACIONES VS ACTIVOS              *
//*            POR EMISORA, SERIE, CUPON                               *
//*                                                                    *
//**********************************************************************
//PHF29P70 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMU915T1 DD DSN=MXC&AMB..ZM.WKF.ECO.E&EMP..ZM4DU905.FIDEIN,DISP=SHR
//ZMU915T2 DD DSN=MXC&AMB..ZM.WKF.MDC.E&EMP..INTFAZEM.ACTIVOS,DISP=SHR
//ZMU915T3 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZM4DU915.ACTIVOS,
//            DISP=(NEW,CATLG,DELETE),
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=175,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=180,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(30,15),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF09T13),DISP=SHR
//*
//**********************************************************************
//*     COPIA DEL ARCHIVO DE EMISORAS PARA USO DE BPIGO                *
//*                                                                    *
//**********************************************************************
//PHF29P68 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZM4DU915.ACTIVOS,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.INTBPIGO.ACTIVOS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=175,BLKSIZE=0),
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=180,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(30,15),RLSE)
//SYSIN    DD DUMMY
//*
//***************
//* FINAL MUVACTI
//***************
//*
//**********************************************************************
//*     COPIA DEL ARCHIVO DE SALDOS PARA USO DE CASA DE BOLSA          *
//*                                                                    *
//**********************************************************************
//PHF29P66 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZM4DU915.ACTIVOS,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.INTFAZ.ACTIVOS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//*           DCB=(DSORG=PS,RECFM=FB,LRECL=175,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=180,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//******************************
//* FINAL  CASA DE BOLSA MUVACTI
//******************************
//*
//***************************************************
//*SE ADICIONA EL RESTO DEL PROCESO ZMHFPD09 ORIGINAL
//***************************************************
//*
//**********************************************************************
//*                          === ZM4DU916 === TEMPORAL                 *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO C/VALUACION OPERA DE TODOS LOS MERCADOS  *
//*                                                                    *
//**********************************************************************
//PHF29P62 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU916T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.OPERA.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//         SPACE=(CYL,(10,5),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF09T16),DISP=SHR
//*
//**********************************************************************
//*                          ===   SORT   ===   TEMPORAL               *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO CON INTERFAZ CON SALDOS DE MERCADOS      *
//*               MXC&AMB..ZM.FIX.ECO.INTFAZ.SALDOMER                  *
//*                                                                    *
//**********************************************************************
//PHF29P60 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.WKF.ECO.SORT.ZM4DU917.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.CARTERA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T15),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DU918 ===      TEMPORAL            *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO POR MERGE PARA VALUACION                 *
//*                                                                    *
//**********************************************************************
//PHF29P58 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU918E1 DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.CARTERA.F&FECHA,
//         DISP=SHR
//ZMU918E2 DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.OPERA.F&FECHA,
//         DISP=SHR
//ZMU918S1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.MERGE.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//         SPACE=(CYL,(10,5),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF09T18),DISP=SHR
//*
//**********************************************************************
//*                                            ||                      *
//*     PASOS DE PROCESO PARALELO   CUALQUIER  ||      TEMPORALES      *
//*     PASOS DE PROCESO PARALELO              ||      TEMPORALES      *
//*     PASOS DE PROCESO PARALELO   DUDA       ||      TEMPORALES      *
//*     PASOS DE PROCESO PARALELO              ||      TEMPORALES      *
//*     PASOS DE PROCESO PARALELO   VERLO      ||      TEMPORALES      *
//*     PASOS DE PROCESO PARALELO             _||_     TEMPORALES      *
//*     PASOS DE PROCESO PARALELO   CON      \    /    TEMPORALES      *
//*     PASOS DE PROCESO PARALELO             \  /     TEMPORALES      *
//*     PASOS DE PROCESO PARALELO   PPAAZZ     \/      TEMPORALES      *
//*                                                                    *
//*     SI ALGUNO DE LOS SIGUIENTES PASOS NO TERMINA CORRECTAMENTE     *
//*     FAVOR DE DAR POR BUENO ESTE PROCEDIMIENTO Y CONTINUAR CON      *
//*     LA CADENA DE PROCESOS.  GRACIAS ....   ATTE.  HECTOR PAZ       *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*--------------------------------------------------------------------*
//*   EJECUCION DEL PROGRAMA:  ZM4DU995  CLON  ZM4DU905                *
//*   GENERACION DE INTERFAZ PARA FIDEICOMISOS (MOVTOS).               *
//*--------------------------------------------------------------------*
//PHF29P56 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU995A1 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMHFPD09,DISP=SHR
//ZMU995A2 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZM4DU995.FIDEIN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF09P01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ICEMAN                SORT                               *
//* OBJETIVO: SELECCIONA REGISTROS DE MOVTOS MERCADO DE CAPITALES      *
//*--------------------------------------------------------------------*
//PHF29P54 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZM4DU995.FIDEIN,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.ECO.E&EMP..ZM4DU995.FIDMDC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T02),DISP=SHR
//*
//**********************************************************************
//* COPIA DEL ARCHIVO DE OPERACIONES DE CAPITALES PARA USO DE BPIGO    *
//*                                                                    *
//**********************************************************************
//PHF29P52 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXC&AMB..ZM.WKF.ECO.E&EMP..ZM4DU995.FIDMDC,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.INTBPIGO.PARALE.MDC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(50,25),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ICEMAN                SORT                               *
//* OBJETIVO: SELECCIONA REGISTROS DE MOVTOS MERCADO DE DINERO         *
//*--------------------------------------------------------------------*
//PHF29P50 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZM4DU995.FIDEIN,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.ECO.E&EMP..ZM4DU995.FIDMDD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T03),DISP=SHR
//*
//**********************************************************************
//* COPIA DEL ARCHIVO DE OPERACIONES DE DINERO PARA USO DE BPIGO       *
//*                                                                    *
//**********************************************************************
//PHF29P48 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXC&AMB..ZM.WKF.ECO.E&EMP..ZM4DU995.FIDMDD,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.INTBPIGO.PARALE.MDD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(50,25),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*                          === ZM4DU996 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO C/VALUACION DE CARTERA SOCIEDADES DE INV *
//*            PROGRAMA CLON DEL ZM4DU910                             *
//*                                                                    *
//**********************************************************************
//PHF29P46 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU996T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZM4DU996.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//         SPACE=(CYL,(10,5),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF09P02),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DU997 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO C/VALUACION DE CARTERA CAPITALES         *
//*            PROGRAMA CLON DEL ZM4DU911                             *
//*                                                                    *
//**********************************************************************
//PHF29P44 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU997T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZM4DU997.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//         SPACE=(CYL,(10,5),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF09P03),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DU998 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO C/VALUACION DE OPERDIN MERC DE DINERO    *
//*            PROGRAMA CLON DEL ZM4DU912                             *
//*                                                                    *
//**********************************************************************
//PHF29P42 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU998T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZM4DU998.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//         SPACE=(CYL,(10,5),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF09P04),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DU999 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO C/VALUACION DE CARTERA MERC DE DINERO    *
//*            PROGRAMA CLON DEL ZM4DU913                             *
//*                                                                    *
//**********************************************************************
//PHF29P40 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU999T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZM4DU999.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//         SPACE=(CYL,(10,5),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF09P05),DISP=SHR
//*
//**********************************************************************
//*                          === ZM4DU000 ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO C/VALUACION DE PLAZOS (ZMDT610)          *
//*            PROGRAMA CLON DEL ZM4DU914                             *
//*                                                                    *
//**********************************************************************
//PHF29P38 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU000T1 DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.ZM4DU000.F&FECHA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//         SPACE=(CYL,(10,5),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF09P06),DISP=SHR
//*
//**********************************************************************
//*                          ===   SORT   ===                          *
//*                                                                    *
//* OBJETIVO : GENERA ARCHIVO CON INTERFAZ CON SALDOS DE MERCADOS      *
//*               MXC&AMB..ZM.FIX.ECO.INTFAZ.SALDOMER                  *
//*                                                                    *
//**********************************************************************
//PHF29P36 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ZM4DU996.F&FECHA,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ZM4DU997.F&FECHA,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ZM4DU998.F&FECHA,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ZM4DU999.F&FECHA,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ZM4DU000.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.INTFAZ.SALDOPAR.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T08),DISP=SHR
//*
//**********************************************************************
//*     COPIA DEL ARCHIVO DE SALDOS PARA USO DE BPIGO                  *
//*                                                                    *
//**********************************************************************
//PHF29P34 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.SALDOPAR.F&FECHA,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.INTBPIGO.CARTPAR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//*********************************************************************
//***           TERMINA PROCESO  Z M H F P D 2 9                    ***
//*********************************************************************
