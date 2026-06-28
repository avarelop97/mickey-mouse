//ZMHFPD14 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MUV MODULO UNICO DE VALORES ANTES SIVA.          *
//*                                                                    *
//* PROCESO        :  ZMHFPD14 / (DISP. BCHFND14)                      *
//*                                                                    *
//* OBJETIVO       :  PROCESA INTERFAZ MUVOPE Y SE AGREGA LOS PROCESOS *
//*                   PARA OBTENER LA RECLASIFICACION.                 *
//**OBJETIVO       :  MODIFICACION DE LA INTERFAS (MUVOPE)             *
//**                  SE LE ADICIONAN LAS RECLASIFICACIONES EXTRAIDAS  *
//**                  DE LA TABLA OPERASI.                             *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* DESPUES DE     :  ZMHFPD09 / (DISP. BCHFND09)                      *
//*                                                                    *
//* REALIZACION    :  OSCAR SAUL CONTRERAS           03/ENE/2020       *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                   TIENE DOS FASES LA PRIMERA ACTUALIZA LAS CLAVES  *
//*                   DE OPERACION DEL MUVOPE (250,350) CON LA OPERA   *
//*                   LA SEGUNDA FASE ADICIONA LAS RECLASIFICACIONES DE*
//*                   LA OPERASI AL ARCHIVO MUVOPE.                    *
//* MODIFICACION   :  RICARDO ZAMBRANO MOLINA        16/NOV/2018       *
//*                   DCGM  GRUPO DEVANT                               *
//*                   SE ELIMINA LA PRIMERA FASE Y SOLO QUEDA          *
//*                   LA SEGUNDA FASE ADICIONA LAS RECLASIFICACIONES DE*
//*                   LA OPERASI AL ARCHIVO MUVOPE.                    *
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------- ------------------------------------ *
//* FS-00.00.01  XM07443 03012020 SE AGREGAN 3 PASOS PARA TRABAJAR EL  *
//*                               ARCHIVO ZMU904A2 DENTRO DEL PASO     *
//*                               PHF14P88                             *
//*                               1.SE CONVIERTE ARCHIVO DE VB A FB    *
//*                               2.SE REALIZA SORT DE DATOS           *
//*                               3.SE CONVIERTE ARCHIVO DE FB A VB    *
//*--------------------------------------------------------------------*
//**********************************************************************
//* MODIFICO: LAURA SANCHEZ ROSAS.                                     *
//* FECHA   : NOVIEMBRE 2023.                                          *
//* ASUNTO:   INCREMENTO FOLIO CONCEPT/ CTC'S SE DA ESPACIO DE 10 POS  *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//**********************************************************************
//*                          === ZM3DG001 ===                          *
//*                                                                    *
//* OBJETIVO : RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO FIJO A 96 CHAR *
//*                                                                    *
//**********************************************************************
//PHF14P96 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMHFPD14,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//***************
//*INICIA MUVOPE
//***************
//*FS-00.00.01-I
//*--------------------------------------------------------------------*
//* PROGRAMA: SORT                                                     *
//*                CONVIERTE ARCHIVO DE VARIABLE A FIJO                *
//*--------------------------------------------------------------------*
//PHF14P94 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.OPERA.SORT,
//            DISP=SHR
//FBOUT    DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.OPERA.SORT1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(25,15),RLSE),
//            DCB=(BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF0CT97),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ICEMAN                                                   *
//* PROGRAMA:      ORDENA ARCHIVO                                      *
//*--------------------------------------------------------------------*
//PHF14P92 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.OPERA.SORT1,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.OPERA.SORT2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=206,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(25,15),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF0CT96),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: SORT                                                     *
//*                CONVIERTE ARCHIVO DE FIJO A VARIABLE                *
//*--------------------------------------------------------------------*
//PHF14P90 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.OPERA.SORT2,
//            DISP=SHR
//VBOUT    DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.OPERA.SORT3,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(25,15),RLSE),
//            DCB=(BLKSIZE=0,DSORG=PS)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF0CT95),DISP=SHR
//*
//*FS-00.00.01-F
//*--------------------------------------------------------------------*
//*   EJECUCION DEL PROGRAMA:  ZM4DU904                                *
//*   GENERACION DE INTERFAZ PARA FIDEICOMISOS (MUVOPE).               *
//*--------------------------------------------------------------------*
//PHF14P88 EXEC PGM=IKJEFT01,COND=(4,LT)
//*FS-00.00.01-I
//***904A2 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.OPERA.SORT,DISP=SHR
//ZMU904A2 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.OPERA.SORT3,DISP=SHR
//*FS-00.00.01-F
//ZMU904A3 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.PLAZO.SORT,DISP=SHR
//ZMU905A1 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMHFPD14,DISP=SHR
//ZMU905A2 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZM4DU904.FIDPAS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF14C88),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   EJECUCION DEL PROGRAMA:  ZM4CCAF2                                *
//*   GENERACION DE INTERFAZ PARA XSEG = F                             *
//*--------------------------------------------------------------------*
//PHF14P86 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU905A1 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMHFPD14,DISP=SHR
//ZMU905A2 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZM4CCAF2.MOVMER,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF0CT01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ICEMAN  ARCHIVO DEL 904 CON XSEG (X Y T) FIDEICO Y TESTAM*
//*                   ARCHIVO DEL CAF2 CON XSEG (F) FIDEICOM PUROS     *
//*--------------------------------------------------------------------*
//PHF14P82 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZM4DU904.FIDPAS,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZM4CCAF2.MOVMER,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZM4DU904.A.FIDEIN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF0CT07),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ICEMAN        FILTRA LOS REGISTROS DE SU ARCHIVO DE EN-  *
//*                         TRADA, PARA QUE SOLO QUEDEN LOS REGISTROS  *
//*                         CON CLAVE DE OPERACION 390, 360 Y 320.     *
//*--------------------------------------------------------------------*
//PHF14P80 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZM4DU904.A.FIDEIN,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.ECO.E&EMP..ZM4DU904.FIDEIN.SRT1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPD0995),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ICEMAN        FILTRA LOS REGISTROS DE SU ARCHIVO DE EN-  *
//*                         TRADA, PARA QUE SOLO QUEDEN LOS REGISTROS  *
//*                         CON CLAVE DE OPERACION DIFERENTE DE 390,   *
//*                         360 Y 320.                                 *
//*--------------------------------------------------------------------*
//PHF14P78 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZM4DU904.A.FIDEIN,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.ECO.E&EMP..ZM4DU904.FIDEIN.SRT2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPD0990),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM3DU901      GENERA LA UNIFICACION DE REGISTROS 390,    *
//*                         360 Y 320, SIEMPRE QUE LAS LLAVES DE LOS   *
//*                         REGISTROS SEA IGUAL, EN CASO CONTRARIO     *
//*                         SOLO GRABA EL REGISTRO LEIDO.              *
//*--------------------------------------------------------------------*
//PHF14P76 EXEC PGM=ZM3DU901,COND=(4,LT)
//ENTRADA1 DD DSN=MXCP.ZM.WKF.ECO.E&EMP..ZM4DU904.FIDEIN.SRT1,
//            DISP=SHR
//SALIDAS1 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZM4DU904.FIDEIN.AMOR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=260,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ICEMAN        INTEGRA ARCHIVOS DE UNIFICACION 390, 360   *
//*                         Y 320, CON EL RESTO DE LOS REGISTROS DEL   *
//*                         ARCHIVO - ZM4DU904.A.FIDEIN -              *
//*--------------------------------------------------------------------*
//PHF14P74 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.WKF.ECO.E&EMP..ZM4DU904.FIDEIN.SRT2,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZM4DU904.FIDEIN.AMOR,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZM4DU904.FIDEIN.UNIF,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPD0980),DISP=SHR
//*
//*FIN ANEXO
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM3CCAF1      GENERA CONSECUTIVO DEL ARCHIVO             *
//*                         MXCP.ZM.FIX.ECO.E&EMP..ZM4DU904.A.FIDEIN *
//*--------------------------------------------------------------------*
//PHF14P72 EXEC PGM=ZM3CCAF1,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//ZMUCAFA1 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZM4DU904.FIDEIN.UNIF,
//            DISP=SHR
//ZMUCAFA2 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZM4DU904.FIDEIN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//*
//**********************************************************************
//*     COPIA DEL ARCHIVO DE SALDOS PARA USO DE CASA DE BOLSA          *
//*                                                                    *
//**********************************************************************
//PHF14P70 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZM4DU904.FIDEIN,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.INTFAZ.OPERACI.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=260,BLKSIZE=0),
//            SPACE=(CYL,(30,15),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*----- FIN    PASOS PARA FIDEICOMISOS / CUSTODIA         ------------*
//*--------------------------------------------------------------------*
//* PROGRAMA: ICEMAN                SORT                               *
//* OBJETIVO: SELECCIONA REGISTROS DE MOVTOS MERCADO DE CAPITALES      *
//*--------------------------------------------------------------------*
//PHF14P68 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZM4DU904.FIDEIN,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.ECO.E&EMP..ZM4DU904.FIDMDC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T02),DISP=SHR
//*
//**********************************************************************
//* COPIA DEL ARCHIVO DE OPERACIONES DE CAPITALES PARA USO DE BPIGO    *
//*                                                                    *
//**********************************************************************
//PHF14P64 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.WKF.ECO.E&EMP..ZM4DU904.FIDMDC,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.INTBPIGO.OPERAC.MDC,
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
//PHF14P62 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZM4DU904.FIDEIN,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.WKF.ECO.E&EMP..ZM4DU904.FIDMDD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF14T62),DISP=SHR
//*
//**********************************************************************
//* COPIA DEL ARCHIVO DE OPERACIONES DE DINERO PARA USO DE BPIGO       *
//*                                                                    *
//**********************************************************************
//PHF14P60 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.WKF.ECO.E&EMP..ZM4DU904.FIDMDD,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.INTBPIGO.OPERAC.MDD.PRECLA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(50,25),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//***************
//*TERMINA MUVOPE
//***************
//*--------------------------------------------------------------------*
//******************************************************
//*INICIA COMPLEMENTO MUVOPE RECLASIFICACIONES Y PAGARES
//******************************************************
//*--------------------------------------------------------------------*
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT609                           *
//*--------------------------------------------------------------------*
//PHF14P58 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMLCPD50,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMDT609.MDD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC50T56),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: SORT ORDENA LA DESCARGA POR CUENTA DE BPIGO              *
//*--------------------------------------------------------------------*
//PHF14P56 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMDT609.MDD,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMDT609.MDD.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=16,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T54),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA OPERA CON RECLASIFICACIONES        *
//*--------------------------------------------------------------------*
//PHF14P54 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMLCPD50,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..OPERASI.MDD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(10,10),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF14T54),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* ORDENA LA DESCARGA DE LA TABLA OPERASI POR CTA+ITRANS+CANT2        *
//*--------------------------------------------------------------------*
//PHF14P52 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..OPERASI.MDD,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..OPERASI.MDD.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=57,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T52),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ORDENA EL ARCHIVO (MUVOPE) MDD POR CUENTA, CVEOPE, CTITUL*
//*         : TOMANDO EL ARCHIVO QUE NOS DEJA EL PROCESO BCHFND09      *
//*         : SALIDA DEL PASO PHF09PD6                                 *
//*--------------------------------------------------------------------*
//PHF14P50 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.INTBPIGO.OPERAC.MDD.PRECLA,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.TRANSFER.OPERAC.MDD.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T53),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM3DU954                                                 *
//* HACE UN MATCH CON EL ARCHIVO DE MERCADO DE DINERO Y LA             *
//* DESCARGA DE LA TABLA ZMDT609 PARA OBTENER LA CUENTA                *
//* BPIGO Y PONERSELA AL ARCHIVO DE SALIDA EN LA PARTE FINAL           *
//*--------------------------------------------------------------------*
//PHF14P48 EXEC PGM=ZM3DU954,COND=(4,LT)
//ZMU915T1 DD DSN=MXC&AMB..ZM.FIX.TRANSFER.OPERAC.MDD.SORT,
//            DISP=SHR
//ZMU915T2 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMDT609.MDD.SORT,
//            DISP=SHR
//ZMU915T3 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZM3DU954.MDD.NCTA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=260,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ORDENA DE MERCADO DE DINERO POR LA NUEVA CUENTA (245,8)  *
//*--------------------------------------------------------------------*
//PHF14P46 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZM3DU954.MDD.NCTA,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZM3DU954.CLA.NCTA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T51),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM3DU953                                                 *
//* HACE UN MATCH CON EL ARCHIVO DE MERCADO DE DINERO QUE YA           *
//* TIENE LA NUEVA CUENTA DEL ZMDT609 Y LA DESCARGA DE LA              *
//* TABLA OPERASI, CAMBIA NUCVEO 250,350 A 251,351 PARA LAS            *
//* RECLASIFICACIONES
//*--------------------------------------------------------------------*
//PHF14P44 EXEC PGM=ZM3DU953,COND=(4,LT)
//ZMU915T1 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZM3DU954.CLA.NCTA,
//            DISP=SHR
//ZMU915T2 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..OPERASI.MDD.SORT,
//            DISP=SHR
//ZMU915T3 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZM3DU953.MDD.NCTA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=260,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ORDENA EL ARCHIVO (MUVOPE) MDD POR CUENTA, CVEOPE, CTITUL*
//*         : TOMANDO EL ARCHIVO QUE NOS DEJA EL PROCESO DE RECLASIFIC *
//*         : Y LE ADICIONA LAS RECLASIFICACIONES DE LA OPERA          *
//*--------------------------------------------------------------------*
//PHF14P42 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZM3DU953.MDD.NCTA,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.PONENP.OPERAC.MDD.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T53),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM3DU954                                                 *
//* HACE UN MATCH CON EL ARCHIVO DE MERCADO DE DINERO Y LA             *
//* DESCARGA DE LA TABLA ZMDT609 PARA OBTENER LA CUENTA                *
//* BPIGO Y PONERSELA AL ARCHIVO DE SALIDA EN LA PARTE FINAL           *
//*--------------------------------------------------------------------*
//PHF14P40 EXEC PGM=ZM3DU954,COND=(4,LT)
//ZMU915T1 DD DSN=MXC&AMB..ZM.FIX.PONENP.OPERAC.MDD.SORT,
//            DISP=SHR
//ZMU915T2 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMDT609.MDD.SORT,
//            DISP=SHR
//ZMU915T3 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZM3DU954.MD2.NCTA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=260,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT610
//*--------------------------------------------------------------------*
//PHF14P38 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMLCPD50,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMDT610.NOPAG,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF14T38),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*SORT ORDENA LA DESCARGA DE LA 610 POR CUENTA+FECHA-VENCI+MONTO (DES)*
//*--------------------------------------------------------------------*
//PHF14P36 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.EBCM.ZMDT610.NOPAG,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.EBCM.ZMDT610.PAG.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=77,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T47),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*SORT ORDENA EL (MUVOPE) POR CTA BPIGO 245,8+FECH-VENC+MONTO (DES)   *
//*--------------------------------------------------------------------*
//PHF14P34 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZM3DU954.MD2.NCTA,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.INTBPIGO.OPERAC.MD2.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T59),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ZM3DU952                                                 *
//* HACE UN MATCH CON EL ARCHIVO DE MERCADO DE DINERO MUVOPE           *
//* Y LA DESCARGA DE LA TABLA ZMDT610 PARA PONERLES A LAS              *
//* EMISORAS (PLCOMER) EL NUMERO DE PAGARE (NSEC) EN EL CAMPO          *
//* NSERIE Y CAMBIA ESTAS EMISORAS (PLCOMER) LES PONE (PAGARE)         *
//*--------------------------------------------------------------------*
//PHF14P32 EXEC PGM=ZM3DU952,COND=(4,LT)
//*
//ZMU915T1 DD DSN=MXC&AMB..ZM.FIX.INTBPIGO.OPERAC.MD2.SORT,
//            DISP=SHR
//ZMU915T2 DD DSN=MXC&AMB..ZM.FIX.ECO.EBCM.ZMDT610.PAG.SORT,
//            DISP=SHR
//ZMU915T3 DD DSN=MXC&AMB..ZM.FIX.ECO.EBCM.ZM3DU952.MOPAG,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=260,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* ORDENA MERCADO DE DINERO POR CUENTA MUV PARA INTERFASE PX   (33,12)*
//*--------------------------------------------------------------------*
//PHF14P30 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.EBCM.ZM3DU952.MOPAG,
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMHFPD14.SOR.NCTAEF,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T50),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   EJECUCION DEL PROGRAMA:  ZM3DU959 PARA MDD                       *
//*   ACTUALIZA LA EMISORA POR "EFECBUR", SERIE POR "*" , CUPON "000"  *
//*   Y PRECIO POR 0.01, PARA LOS MOVIMIENTOS DE EFECTIVO.             *
//*--------------------------------------------------------------------*
//PHF14P28 EXEC PGM=ZM3DU959,COND=(4,LT)
//ZMU915T1 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMHFPD14.SOR.NCTAEF,
//            DISP=SHR
//ZMU915T3 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMHFPD14.SOR.NCTA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* COPIA DEL ARCHIVO DE OPERACIONES DE DINERO PARA USO DE BPIGO       *
//* ESTE ARCHIVO ES EL QUE VA A OCUPAR EL PROCESO RDPDCOPM             *
//**********************************************************************
//PHF14P26 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMHFPD14.SOR.NCTA,
//            DISP=SHR
//SYSUT2   DD DSN=MXCP.ZM.FIX.INTBPIGO.OPERAC.MDD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=260,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(50,25),RLSE),
//            UNIT=3390
//SYSIN    DD DUMMY
//*
//*********************************************************************
//***           TERMINA PROCESO  Z M H F P D 1 4                    ***
//*********************************************************************
