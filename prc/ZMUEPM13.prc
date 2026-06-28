//ZMUEPM13 PROC EMP=,SUC=,VER=0,INT1=,FECHA=
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM13                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERACION DE ARCHIVOS MUV   PARA HISTORICO E IMPRE.*
//*                DE ESTADOS DE CUENTA DE BANCA PATRIMONIAL Y CUSTODIA*
//*                INTERNACIONAL                                       *
//*                                                                    *
//*   CORRE ANTES DE  : CBUENM15                                       *
//*                                                                    *
//*   CORRE DESPUES DE: CBUENM01                                       *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*YYGO  | 10112015 |XM09724|PUE13P04|RENOMBRA ARCHIVOS F5             *
//**********************************************************************
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO         *
//**********************************************************************
//PUE13P18 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&FECHA',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.V&VER..ZMUEPM13,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES ANTERIOR  *
//*           POR NUMERO DE CUENTA (VERSION  0)                        *
//**********************************************************************
//PUE13P17 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF01(0),DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT0,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1754,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SORTWK01 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK02 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK03 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK04 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK05 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK06 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK07 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK08 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK09 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK10 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//*
//DFSPARM  DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13T01),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES ANTERIOR  *
//*           POR NUMERO DE CUENTA (VERSION -1)                        *
//**********************************************************************
//PUE13P16 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF01(-1),DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1754,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SORTWK01 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK02 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK03 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK04 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK05 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK06 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK07 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK08 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK09 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK10 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//*
//DFSPARM  DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13T01),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES ANTERIOR  *
//*           POR NUMERO DE CUENTA (VERSION -2)                        *
//**********************************************************************
//PUE13P15 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF01(-2),DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1754,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SORTWK01 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK02 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK03 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK04 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK05 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK06 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK07 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK08 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK09 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK10 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//*
//DFSPARM  DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13T01),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES ANTERIOR  *
//*           POR NUMERO DE CUENTA (VERSION -3)                        *
//**********************************************************************
//PUE13P14 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF01(-3),DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1754,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SORTWK01 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK02 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK03 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK04 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK05 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK06 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK07 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK08 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK09 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK10 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//*
//DFSPARM  DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13T01),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES ANTERIOR  *
//*           POR NUMERO DE CUENTA (VERSION -4)                        *
//**********************************************************************
//PUE13P13 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF01(-4),DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT4,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1754,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SORTWK01 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK02 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK03 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK04 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK05 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK06 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK07 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK08 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK09 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK10 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//*
//DFSPARM  DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13T01),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES ANTERIOR  *
//*           POR NUMERO DE CUENTA (VERSION -5)                        *
//**********************************************************************
//PUE13P12 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF01(-5),DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT5,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1754,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SORTWK01 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK02 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK03 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK04 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK05 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK06 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK07 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK08 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK09 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//SORTWK10 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//*
//DFSPARM  DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE13T01),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU270  --
//*  GENERA ARCHIVOS MUV   NECESARIOS PARA LA GENERACION DE LOS ESTADOS
//*  DE CUENTA DE BANCA PATRIMONIAL
//**********************************************************************
//PUE13P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU270T0 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT0,DISP=SHR
//ZMU270T1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT1,DISP=SHR
//ZMU270T2 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT2,DISP=SHR
//ZMU270T3 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT3,DISP=SHR
//ZMU270T4 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT4,DISP=SHR
//ZMU270T5 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT5,DISP=SHR
//ZMU270A0 DD DSN=MXCP.ZM.TMP.ECT.EBCM.V&VER..ZMUEPM13,DISP=SHR
//*
//ZMU270A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1754,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU270A2 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02.ACT.A,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=361,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU270A3 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03.ACT.A,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=297,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU270A5 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF05.ACT.A,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=232,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13T02),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU011  --
//*  GENERA ARCHIVOS PARA TARJETAS DE SORT REQUERIDOS EN LA GENERACION
//*  DE ESTADOS DE CUENTA DE BANCA PATRIMONIAL
//**********************************************************************
//PUE13P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU011A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.V&VER..ZMUEPM13,DISP=SHR
//*
//ZMU011F1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU011F2 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF02,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU011F3 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF03,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//ZMU011F5 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF05,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13T03),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU012  --                                 *
//*  SEPARA LOS ESTADOS DE CUENTA EN ARCHIVOS PARA EL HISTORICO DE E.C.*
//*  DE ACUERDO A LOS CRITERIOS DE SEPARACION PROPORCIONADOS EN LINEA  *
//*  MEDIANTE LA TABLA PRODUSVP.PARAM ('ESP') DE BANCA PATRIMONIAL     *
//*                                                                    *
//**********************************************************************
//PUE13P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU012A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.V&VER..ZMUEPM13,DISP=SHR
//ZMU012E1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ACT,DISP=SHR
//*
//ZMU012HS DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.HISTO.A,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1754,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU012IM DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMPRE.A,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1754,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13T04),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO HISTORICO DE DATOS ADMTIVOS. MES ACTUAL*
//*           DE ACUERDO A LOS PARAMETROS DE ORDENAMIENTO ('ESR')      *
//**********************************************************************
//PUE13P08 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.HISTO.A,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.HISTO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1754,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF01,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO DE IMPRESION DE DATOS ADM. MES ACTUAL  *
//*           DE ACUERDO A LOS PARAMETROS DE ORDENAMIENTO ('ESR')      *
//**********************************************************************
//PUE13P07 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMPRE.A,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMPRE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1754,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF01,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO DETALLADO DE POSICION MES ACTUAL       *
//*           POR: OFICINA, CUENTA, PLAZA                              *
//**********************************************************************
//PUE13P06 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02.ACT.A,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=361,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF02,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO DE MOVIMIENTOS DEL MES ACTUAL          *
//*           POR: OFICINA, CUENTA, PLAZA                              *
//**********************************************************************
//PUE13P05 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03.ACT.A,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=297,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF03,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO DE ISR DEL MES ACTUAL                  *
//*           POR: OFICINA, CUENTA, PLAZA                              *
//**********************************************************************
//PUE13P5A EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF05.ACT.A,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF05.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=232,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF05,DISP=SHR
//*
//**********************************************************************
//*                    -- ZM3MU010  --
//*  RECORTA LOS ARCHIVOS DE MUV   PARA DEJARLOS DE ACUERDO AL LAY-OUT
//*  DE BANCA PATRIMONIAL
//**********************************************************************
//PUE13P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU010A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.V&VER..ZMUEPM13,DISP=SHR
//ZMU010A2 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.HISTO,DISP=SHR
//ZMU010A3 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMPRE,DISP=SHR
//ZMU010A4 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02.ACT,DISP=SHR
//ZMU010A5 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03.ACT,DISP=SHR
//ZMU010AE DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF05.ACT,DISP=SHR
//*
//ZMU010A6 DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPIGO.PF01HST(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=1690,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010A7 DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPIGO.PF01IMP(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=1690,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010A8 DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPIGO.PF02IMP(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=214,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010A9 DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPIGO.PF03IMP(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=224,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*YYGO-I
//*ZMU010AF DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPIGO.PF05IMP,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=168,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(200,100),RLSE)
//ZMU010AF DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPIGO.PF05IMP(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=168,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*YYGO-F
//ZMU010AA DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPRIV.PF01HST(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=1690,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AB DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPRIV.PF01IMP(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=1690,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AC DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPRIV.PF02IMP(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=214,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMU010AD DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPRIV.PF03IMP(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=224,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*YYGO-I
//*ZMU010AG DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPRIV.PF05IMP,
//*           DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*           DCB=(DSORG=PS,LRECL=168,RECFM=FB,BLKSIZE=0),
//*           SPACE=(CYL,(200,100),RLSE)
//ZMU010AG DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPRIV.PF05IMP(+1),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BKUP.MODEL,DSORG=PS,LRECL=168,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*YYGO-F
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE13T05),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO DE IMPRESION DE DATOS ADM. MES ACTUAL  *
//*           DE ACUERDO A LOS PARAMETROS DE ORDENAMIENTO ('ESR')      *
//**********************************************************************
//PUE13P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ACT,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPIGO.PF01.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1754,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF01,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO DETALLADO DE POSICION MES ACTUAL       *
//*           POR: OFICINA, CUENTA, PLAZA                              *
//**********************************************************************
//PUE13P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02.ACT,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPIGO.PF02.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=361,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF02,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO DE MOVIMIENTOS DEL MES ACTUAL          *
//*           POR: OFICINA, CUENTA, PLAZA                              *
//**********************************************************************
//PUE13P01 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03.ACT,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPIGO.PF03.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=297,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF03,DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO DE ISR RETENIDO DEL MES ACTUAL         *
//*           POR: OFICINA, CUENTA, PLAZA                              *
//**********************************************************************
//PUE13P1A EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF05.ACT,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPIGO.PF05.ACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=232,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.SRTPF05,DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM13 SIVA MULTIEMPRESA                  *
//**********************************************************************
