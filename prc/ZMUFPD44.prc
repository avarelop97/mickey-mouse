//ZMUFPD44 PROC                                                         00010002
//**********************************************************************00020002
//*                                                                    *00030002
//* SISTEMA        :  BANCA PATRIMONIAL SUITABILITY                    *00040002
//*                                                                    *00050002
//* PROCESO        :  ZMUFPD44                                         *00060002
//*                                                                    *00080002
//* OBJETIVO       :  DESCARGA DE TABLAS  ZMDT692, ZMDT807             *00090002
//*                   Y ZMDT803 ZMDT809                                *00090002
//*                   PROCESA FILTROS DE FICHEROS MARKETING CARTERA    *00090002
//* CORRE                                                              *00110002
//* ANTES DE       :  NINGUNA                                          *00120002
//*                                                                    *00130002
//* DESPUES DE     :  NINGUNA                                          *00140002
//*                                                                    *00150002
//* REALIZACION    :  SOFTWARE FACTORY STEFANINI (PGR) 08/ENE/2010     *00160002
//*                                                                    *00170002
//**********************************************************************00240002
//*
//**********************************************************************00240002
//*                  LOG DE MODIFICACIONES                             *
//**********************************************************************
//* MODIFI       AUTOR     FECHA    DESCRIPCION                        *
//* ----------- --------- -------- ----------------------------------- *
//* FS-2.0.2-19 CAPGEMINI 03ENER12 SE AGREGAN LOS PASOS ZMUF44P6,      *
//*                                ZMUF44P7, ZMUF44P8, ZMUF44P9,       *
//*                                ZMUF44PA, ZMUF44PB, ZMUF44PC,       *
//*                                ZMUF44PD Y ZMUF44PE.                *
//* FS-2.0.2-20 CAPGEMINI 25MARR12 SE AGREGAN LOS PASOS ZMUF44PF,      *
//*                                ZMUF44PD Y ZMUF44PE.                *
//* FS-2.0.2-21 CAPGEMINI 23ABRI12 SE CAMBIA EL NOMBRE DE SALIDA DEL   *
//*                                PASO ZMUF44PF                       *
//* FS-2.1.0-03 CAPGEMINI 30JUN14  SE AGREGAN LOS PASOS ZMUF44PG,      *
//*                                ZMUF44PH Y ZMUF44PI.                *
//* FS-2.2.0-08 CAPGEMINI 09ENE15  SE ELIMINA EL PASO ZMUF44PH Y       *
//*                                ZMUF44PG Y SE AGREGA UN NUEVO PASO  *
//*                                ZMUF44PG.                           *
//* FS-2.3.0-02 CAPGEMINI 30JUN17  SE CAMBIA LONGITUD DE ARCHIVO.      *
//*                                                                    *
//* @JSM-01     XMY4584   14JUN18  SE CAMBIA LONGITUD DE ARCHIVOS POR  *
//*                                3 NUEVOS MERCADOS: PCA, GEF Y CRE.  *
//**********************************************************************
//**********************************************************************
//* PROGRAMA: ZM3DUA14
//* OBJETIVO: OBTIENE EL ODATE PARA LA DESCARGA DE LA TABLA ZMDT692
//*
//**********************************************************************
//*FS-2.0.2-19-INI
//*ZMUF44P1 EXEC PGM=ZM3DUA14,PARM=&FECHA
//ZMUF44P1 EXEC PGM=ZM3DUA14,PARM='&FECHA'
//*FS-2.0.2-19-FIN
//S1FEC692 DD DSN=MXCP.ZM.FIX.ZM3DUA14.OBTFECHA,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(RECFM=FB,LRECL=6,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*                                                                   *
//**********************************************************************
//* PROGRAMA: ZM4DUA13
//* OBJETIVO: SE REALIZA LA DESCARGA DE LA TABLA ZMDT692
//*
//**********************************************************************
//ZMUF44P2 EXEC PGM=IKJEFT1A,COND=(4,LT)
//E1FEC692 DD DSN=MXCP.ZM.FIX.ZM3DUA14.OBTFECHA,
//            DISP=SHR
//S1DES692 DD DSN=MXCP.ZM.FIX.ZM4DUA13.DESCA692,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=287,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF03T37),DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF03T37),DISP=SHR
//**********************************************************************
//* PROGRAMA: ADUUMAIN
//* OBJETIVO: REALIZA LA DESCARGA DE LA TABLA ZMDT807
//**********************************************************************
//ZMUF44P3  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMUF44P3,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZM4DUB01.DESCA807,
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),DISP=(NEW,CATLG,DELETE),
//*FS-2.3.0-02-INI
//*@JSM-01-I
//*           DCB=(RECFM=FB,LRECL=92,BLKSIZE=0,DSORG=PS)
//*           DCB=(RECFM=FB,LRECL=97,BLKSIZE=0,DSORG=PS)
//            BLKSIZE=0,DSORG=PS
//*@JSM-01-F
//*FS-2.3.0-02-FIN
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T17),DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T17),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ADUUMAIN
//* OBJETIVO: REALIZA LA DESCARGA DE LA TABLA ZMDT803
//**********************************************************************
//ZMUF44P4  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMUF44P4,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMUF44P4.DESCA803,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T14),DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T14),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA: ADUUMAIN
//* OBJETIVO: REALIZA LA DESCARGA DE LA TABLA ZMDT809
//**********************************************************************
//ZMUF44P5  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMUF44P5,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMUF44P5.ZMDT809,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),                               2),RLSE)
//            BLKSIZE=0,DSORG=PS
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T39),DISP=SHR
//*
//*FS-2.0.2-19-INI
//**********************************************************************
//* PROGRAMA: ZM3DUA20
//* OBJETIVO: SEPARA UG DEL SEGMENTO PATRIMONIAL DEL RESPALDO PMDT700
//*
//**********************************************************************
//ZMUF44P6 EXEC PGM=ZM3DUA20,COND=(4,LT)
//ZMDU20A1 DD DSN=MBVP.PM.FIX.PMJCDFPB.PMDT700,
//            DISP=SHR
//ZMDU20A2 DD DSN=MXCP.ZM.FIX.TAB700.F1,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(LRECL=192,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*                                                                   *
//**********************************************************************
//* PROGRAMA: ZM3DUA21
//* OBJETIVO: SEPARA CLIENTES TIPOGES=1, RESPALDO PMDT028
//*
//**********************************************************************
//ZMUF44P7 EXEC PGM=ZM3DUA21,COND=(4,LT)
//ZMDU21A1 DD DSN=MBVP.PM.FIX.UF0280,
//            DISP=SHR
//ZMDU21A2 DD DSN=MXCP.ZM.FIX.UF0280.F1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=101,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1000,600),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*                                                                   *
//**********************************************************************
//* PROGRAMA: ZM3DUA22
//* OBJETIVO: SEPARA CLIENTES PATRIMONIALES DE RESPALDO PMDT022
//*
//**********************************************************************
//ZMUF44P8 EXEC PGM=ZM3DUA22,COND=(4,LT)
//ZMDU22A1 DD DSN=MBVP.PM.FIX.UN022A,
//            DISP=SHR
//ZMDU22A2 DD DSN=MXCP.ZM.FIX.UN022A.F1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=274,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(500,200),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*                                                                   *
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO PMDT028 POR CLIENTE             *
//*                                                                    *
//**********************************************************************
//ZMUF44P9 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.UF0280.F1,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.UF0280.F1.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=101,BLKSIZE=0),
//            SPACE=(CYL,(1000,600),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T64),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO PMDT022 POR CLIENTE             *
//*                                                                    *
//**********************************************************************
//ZMUF44PA EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.UN022A.F1,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.UN022A.F1.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=274,BLKSIZE=0),
//            SPACE=(CYL,(500,90),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T65),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PROGRAMA: ZM3DUA23
//* OBJETIVO: MATCH POR CLIENTE,  ARCHIVOS PMDT028 VS PMDT022
//*
//**********************************************************************
//ZMUF44PB EXEC PGM=ZM3DUA23,COND=(4,LT)
//ZMDU23A1 DD DSN=MXCP.ZM.TMP.UN022A.F1.SORT,
//            DISP=SHR
//ZMDU23A2 DD DSN=MXCP.ZM.TMP.UF0280.F1.SORT,
//            DISP=SHR
//ZMDU23A3 DD DSN=MXCP.ZM.FIX.MATCH1.FUS2822,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=106,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*                                                                   *
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO PMDT700 POR UNIDAD GESTORA      *
//*                                                                    *
//**********************************************************************
//ZMUF44PC EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.TAB700.F1,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.TAB700.F1.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=192,BLKSIZE=0),
//            SPACE=(CYL,(500,200),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T66),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: ORDENAMIENTO DEL ARCHIVO DEL MATCH PMDT028 Y PMDT022 POR *
//*           UNIDAD GESTORA Y CLIENTE                                 *
//**********************************************************************
//ZMUF44PD EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.MATCH1.FUS2822,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.MATCH1.FUS2822.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=106,BLKSIZE=0),
//            SPACE=(CYL,(500,200),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T67),DISP=SHR
//SYSOUT   DD SYSOUT=*
//*
//**********************************************************************
//* PROGRAMA: ZM3DUA24
//* OBJETIVO: MATCH DE ARCHIVOS POR UNIDAD GESTORA  UNIFICANDO PMDT700,
//*           PMDT028 Y PMDT022
//**********************************************************************
//ZMUF44PE EXEC PGM=ZM3DUA24,COND=(4,LT)
//ZMDU24A1 DD DSN=MXCP.ZM.TMP.TAB700.F1.SORT,
//            DISP=SHR
//ZMDU24A2 DD DSN=MXCP.ZM.TMP.MATCH1.FUS2822.SORT,
//            DISP=SHR
//ZMDU24A3 DD DSN=MXCP.ZM.FIX.MATCH2.F2822700,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=118,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(500,200),RLSE)
//ZMDU24A4 DD DSN=MXCP.ZM.FIX.MATCH2.TOMI1RO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=034,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*                                                                   *
//*FS-2.0.2-19-FIN
//*FS-2.0.2-20-I
//**********************************************************************
//* PROGRAMA: ZM4DUA07
//* OBJETIVO: SE REALIZA LA DESCARGA DE LA TABLA ZMDT691
//**********************************************************************
//ZMUF44PF EXEC PGM=IKJEFT1A,COND=(4,LT)
//E1FEC691 DD DSN=MXCP.ZM.FIX.ZM3DUA14.OBTFECHA,
//            DISP=SHR
//*S1DES691 DD DSN=MXCP.ZM.FIX.ZM4DUA07.DESCA691,
//S1DES691 DD DSN=MXCP.ZM.FIX.ZM4DUA27.DESCA691,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=287,BLKSIZE=0,DSORG=PS)
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF03T78),DISP=SHR
//*FS-2.0.2-20-F
//*FS-2.2.0-08-INI
//*--------------------------------------------------------------------*
//* PASO       : ZMUF44PG.                                             *
//* UTILERIA   : ADUUMAIN.                                             *
//* OBJETIVO   : REALIZA LA DESCARGA DE LA TABLA ZMDTPDV.              *
//*--------------------------------------------------------------------*
//ZMUF44PG EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMUF44PG,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMUF44PH.DESCAPDV,
//             DISP=(NEW,CATLG,CATLG),UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//             BLKSIZE=0,DSORG=PS
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF03T82),DISP=SHR
//*FS-2.2.0-08-FIN
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMUF44PH.                                             *
//* UTILERIA   : IKJEFT1A / ZM4DUA20.                                  *
//* OBJETIVO   : ACTUALIZA LOS PERFILES Y PORCENTAJE EN LA TABLA       *
//*              ZMDT801 DE PDV.                                       *
//*--------------------------------------------------------------------*
//*FS-2.2.0-08-INI
//*ZMUF44PI EXEC PGM=IKJEFT1A,COND=(4,LT)
//ZMUF44PH EXEC PGM=IKJEFT1A,COND=(4,LT)
//*FS-2.2.0-08-FIN
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMUF44PI),DISP=SHR
//*FS-2.1.0-03-FIN
