//ZMUEPM10 PROC EMP=,EMP1=,SUC=,INT1=,INT2=,FECHA=
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*              >>>>  PREVIO DE ESTADOS DE CUENTA  <<<<               *
//*                                                                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM10                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERACION DE ESTADOS DE CUENTA PREVIOS DE LA       *
//*                EMPRESA PROPORCIONADA DE CASA DE BOLSA Y BPIGO      *
//*                                                                    *
//*   CORRE ANTES DE  :  ZMUEPM11                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMUEPM09                                      *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-1.0.0-01  INDRA   27NOV18 SE INCLUYE EL ARCHIVO DE RETENCIONES  *00320003
//*                              EN EL PROCESAMIENTO.                  *00320003
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO CBP     *
//**********************************************************************
//PUE10P13 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.ZMUEPM10,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                    -- ZM3MU260  --                                 *
//*                 GENERA ESTADOS DE CUENTA PREVIOS (CASA DE BOLSA)   *
//**********************************************************************
//PUE10P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU260A1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.ZMUEPM10,DISP=SHR
//*
//ZMU260EC DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDOSCTA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(400,200),RLSE),
//            LRECL=258,RECFM=FBA,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*
//ZMU260R1 DD DSN=MXCP.ZM.TMP.ECT.ECBP.EDOTEMP,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=258,RECFM=FBA,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//ZMU260R2 DD DSN=MXCP.ZM.TMP.ECT.ECBP.MAXHJA,
//            DISP=(NEW,DELETE,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=30,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE)
//ZMU260R3 DD DSN=MXCP.ZM.TMP.ECT.ECBP.CIFCTL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(6,3),RLSE)
//*
//ZMU260C1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDCUENTA.SRT(0),DISP=SHR
//ZMU260V1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDVALCA.SRT(0),DISP=SHR
//ZMU260D1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDDEPRE.SRT(0),DISP=SHR
//ZMU260I1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDIMPUE.SRT(0),DISP=SHR
//ZMU260M1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDMOVED.SRT(0),DISP=SHR
//ZMU260S1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDSECIN.SRT(0),DISP=SHR
//ZMU260O1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDOPERT1.SRT(0),DISP=SHR
//ZMU260P1 DD DSN=MXCP.ZM.GDGD.ECT.ECBP.EDPARAM.SRT(0),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE10T00),DISP=SHR
//*
//**********************************************************************
//*    RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN ARCHIVO BCM     *
//**********************************************************************
//PUE10P11 EXEC PGM=ZM3DG001,COND=(4,LT),
//         PARM=('&EMP1','&SUC','&INT1','&FECHA',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPM10,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO DE DATOS ADMINISTRATIVOS MES ANTERIOR  *
//*           POR NUMERO DE CUENTA                                     *
//**********************************************************************
//PUE10P10 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGR.ECT.EBCM.BPIGO.PF01(0),DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1754,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//*SORTWK01 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//*SORTWK02 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//*SORTWK03 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//*SORTWK04 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//*SORTWK05 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//*SORTWK06 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//*SORTWK07 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//*SORTWK08 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//*SORTWK09 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//*SORTWK10 DD  SPACE=(CYL,(0500,250),RLSE),UNIT=3390
//*DFSPARM  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE10T01),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU270  --
//*  GENERA ARCHIVOS BPIGO NECESARIOS PARA LA GENERACION DE LOS ESTADOS
//*  DE CUENTA DE BANCA PATRIMONIAL
//**********************************************************************
//PUE10P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU270T0 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT,DISP=SHR
//ZMU270T1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT,DISP=SHR
//ZMU270T2 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT,DISP=SHR
//ZMU270T3 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT,DISP=SHR
//ZMU270T4 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT,DISP=SHR
//ZMU270T5 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF01.ANT,DISP=SHR
//ZMU270A0 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPM10,DISP=SHR
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE10T02),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU011  --
//*  GENERA ARCHIVOS PARA TARJETAS DE SORT REQUERIDOS EN LA GENERACION
//*  DE ESTADOS DE CUENTA DE BANCA PATRIMONIAL
//**********************************************************************
//PUE10P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU011A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPM10,DISP=SHR
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE10T03),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU012  --                                 *
//*  SEPARA LOS ESTADOS DE CUENTA EN ARCHIVOS PARA EL HISTORICO DE E.C.*
//*  DE ACUERDO A LOS CRITERIOS DE SEPARACION PROPORCIONADOS EN LINEA  *
//*  MEDIANTE LA TABLA PRODUSVP.PARAM ('ESP') DE BANCA PATRIMONIAL     *
//*                                                                    *
//**********************************************************************
//PUE10P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU012A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPM10,DISP=SHR
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE10T04),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO: ORDENA EL ARCHIVO HISTORICO DE DATOS ADMTIVOS. MES ACTUAL*
//*           DE ACUERDO A LOS PARAMETROS DE ORDENAMIENTO ('ESR')      *
//**********************************************************************
//PUE10P06 EXEC PGM=ICEMAN,COND=(4,LT)
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
//PUE10P05 EXEC PGM=ICEMAN,COND=(4,LT)
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
//PUE10P04 EXEC PGM=ICEMAN,COND=(4,LT)
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
//PUE10P03 EXEC PGM=ICEMAN,COND=(4,LT)
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
//PUE10P3A EXEC PGM=ICEMAN,COND=(4,LT)
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
//*  RECORTA LOS ARCHIVOS DE BPIGO PARA DEJARLOS DE ACUERDO AL LAY-OUT
//*  DE BANCA PATRIMONIAL
//**********************************************************************
//PUE10P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU010A1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPM10,DISP=SHR
//ZMU010A2 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.HISTO,DISP=SHR
//ZMU010A3 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMPRE,DISP=SHR
//ZMU010A4 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02.ACT,DISP=SHR
//ZMU010A5 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03.ACT,DISP=SHR
//ZMU010AE DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF05.ACT,DISP=SHR
//*
//ZMU010A6 DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPIGO.PF01HST(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            LRECL=1690,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//ZMU010A7 DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPIGO.PF01IMP(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            LRECL=1690,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//ZMU010A8 DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPIGO.PF02IMP(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            LRECL=214,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//ZMU010A9 DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPIGO.PF03IMP(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            LRECL=224,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*YYGO-I
//*ZMU010AF DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPIGO.PF05IMP,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=168,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(200,100),RLSE)
//ZMU010AF DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPIGO.PF05IMP(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            LRECL=168,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*YYGO-F
//ZMU010AA DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPRIV.PF01HST(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            LRECL=1690,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//ZMU010AB DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPRIV.PF01IMP(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            LRECL=1690,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//ZMU010AC DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPRIV.PF02IMP(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            LRECL=214,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//ZMU010AD DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPRIV.PF03IMP(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            LRECL=224,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*YYGO-I
//*ZMU010AG DD DSN=MXCP.ZM.FIX.ECT.EBCM.BPRIV.PF05IMP,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=168,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(200,100),RLSE)
//ZMU010AG DD DSN=MXCP.ZM.GDGD.ECT.EBCM.BPRIV.PF05IMP(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            LRECL=168,RECFM=FB,BLKSIZE=0,
//            UNIT=3390,DCB=BKUP.MODEL
//*YYGO-F
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE10T05),DISP=SHR
//*
//*FS-1.0.0-01-INI
//*--------------------------------------------------------------------*
//* PASO       : PUE10P01                                              *
//* UTILERIA   : IKJEFT01/ZM4MU310                                     *
//* OBJETIVO   : REASIGNA EL NUMERO DE CONTRATO DE LA TABLA ZMDT609    *
//*              Y ZMDT608.                                            *
//*--------------------------------------------------------------------*
//PUE10P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXCP.ZM.FIX.CBUENM48.DETALLE.EDIMPUE.SORT,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXCP.ZM.WKF.CBUENM10.DETALLE.EDIMPUE,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=88,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE12P96),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE10P00                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SE ORDENA EL ARCHIVO DEL DETALLE DE RETENCIONES POR   *
//*              EL NUEVO CONTRATO, EMISORA, SERIE Y TIPO DE MERCADO.  *
//*--------------------------------------------------------------------*
//PUE10P00 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.WKF.CBUENM10.DETALLE.EDIMPUE,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.WKF.CBUENM10.DETALLE.EDIMPUE.SORT,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=88,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE12P95),
//            DISP=SHR
//*
//*FS-1.0.0-01-FIN
//*
//**********************************************************************
//*                    -- ZM4MU020  --
//*  ACTUALIZA LA BASE DE DATOS HISTORICA DE ESTADOS DE CUENTA DE
//*  ACUERDO AL LAYOUT DE LOS ARCHIVOS DE BANCA PATRIMONIAL
//**********************************************************************
//PUE10P0A EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMU020P1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPM10,DISP=SHR
//*
//*---- ARCHIVOS ENTRADA MUV       E.C. IMPRESOS SIN RECORTAR
//ZMU020M1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.F01.IMPRE,DISP=SHR
//ZMU020M2 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF02.ACT,DISP=SHR
//ZMU020M3 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF03.ACT,DISP=SHR
//ZMU020M5 DD DSN=MXCP.ZM.TMP.ECT.EBCM.BPIGO.PF05.ACT,DISP=SHR
//*
//*---- ARCHIVOS ENTRADA BPATR/BPRIV E.C. IMPRESOS RECORTADOS
//ZMU020B4 DD DUMMY
//ZMU020B8 DD DUMMY
//*FS-1.0.0-01-INI
//ZMU504FD DD DSN=MXCP.ZM.TMP.CBUENM10.ZMDT595,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=212,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//*FS-1.0.0-01-FIN
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE10T06),DISP=SHR
//*
//*FS-1.0.0-01-INI
//*
//**********************************************************************
//*  ORDENA ARCHIVO CON INFORMACION DE HISTORICOS                      *
//**********************************************************************
//*
//PUE10P0B EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD  DSN=MXCP.ZM.TMP.CBUENM10.ZMDT595,
//             DISP=SHR
//*
//SORTOUT  DD  DSN=MXCP.ZM.TMP.CBUENM10.ZMDT595.SORT,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=212,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(200,100),RLSE),UNIT=3390
//*
//SYSOUT   DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZUR02T70),DISP=SHR
//*
//**********************************************************************
//*                    -- ZM4MU026  --                                 *
//*  GENERA ACUMULADOS DE DERIVADOS Y FIBRAS DE HISTORICOS EN TABLA    *
//*  ZMDT935                                                           *
//**********************************************************************
//PUE10P0C EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.TMP.CBUENM10.ZMDT595.SORT,
//             DISP=SHR
//*
//ENTRADA2 DD DSN=MXCP.ZM.WKF.CBUENM10.DETALLE.EDIMPUE.SORT,
//             DISP=SHR
//*
//SALIDA   DD  DSN=MXCP.ZM.TMP.CBUENM10.ZMDT595.INSERT,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(LRECL=212,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             SPACE=(CYL,(200,100),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR03P65),DISP=SHR
//*
//*FS-1.0.0-01-FIN
//*--------------------------------------------------------------------*
//* PASO       : PUE10P0D                                              *
//* UTILERIA   : ZM4MU021 / IKJEFT01                                   *
//* OBJETIVO   : GENERA REPORTE DE MOVIMIENTOS CORRESPONDIENTES AL DIA *
//*              HABIL  ANTERIOR A LA FECHA DE OPERACION               *
//*--------------------------------------------------------------------*
//PUE10P0D EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMM021E1 DD DSN=MXCP.ZM.TMP.ECT.EBCM.ZMUEPM10,DISP=SHR
//*
//ZMM021S1 DD DSN=MXCP.ZM.FIX.MOV.UHNW.F&FECHA..REP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=208,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMM021S2 DD DSN=MXCP.ZM.FIX.MOV.UHNW.F&FECHA..INCI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE91T02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE10P0E                                              *
//* UTILERIA   : ZM4MU025 / IKJEFT01                                   *
//* OBJETIVO   : GENERA REPORTE 533                                    *
//*--------------------------------------------------------------------*
//PUE10P0E EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMM025S1 DD DSN=MXCP.ZM.FIX.R533.COMIS.F&FECHA..REP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=709,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//ZMM025S2 DD DSN=MXCP.ZM.FIX.R533.COMIS.F&FECHA..INCI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE91T03),DISP=SHR
//*                                                                    *
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM10 SIVA MULTIEMPRESA                  *
//**********************************************************************
