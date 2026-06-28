//ZMHLPD82 PROC
//*--------------------------------------------------------------------*00075700
//* PASO    : ZMP82060                                                 *
//* PROGRAMA: ICEMAN                                                   *00022600
//* OBJETIVO: GENERA LA COPIA DEL TABLAS CORPORATIVAS QUE CONTIENEN EL *00022700
//*           TIPO DE BANCA                                            *
//*--------------------------------------------------------------------*00022800
//ZMP82060 EXEC PGM=ICEMAN
//*                                                                    *
//SORTIN   DD DSN=MBVP.AJ.FIX.UNLOAD.TCDT085.BANCA,
//            DISP=SHR
//*                                                                    *
//SORTOUT  DD DSN=MXCP.ZM.FIX.UNLOAD.TCDT085.BANCA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(LRECL=016,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*                                                                    *
//SYSOUT   DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP82060),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//*  PASO:        GENERA ARCHIVO A NIVEL CONTRATO INDICANDO EL         *
//*  ZMP82055     PORCENTAJE DE CUOTA SIN EL TIPO DE BANCA ORDENADO X  *
//*               ICCOSTO                                              *
//*--------------------------------------------------------------------*
//ZMP82055 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//ZMFH083E DD DSN=MXCP.ZM.FIX.ECO.VALCOM.F&FECHA,DISP=SHR
//*                                                                     00090000
//ZMFH83A1 DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..SBANCA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=120,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE)
//*                                                                     00090000
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00250000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSIN    DD DUMMY                                                     00310000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMP82055),DISP=SHR                   00300000
//*@FSW01-I
//*--------------------------------------------------------------------*
//*                                                                    *
//*  PASO:        GENERA ARCHIVO A NIVEL FONDO SERIE INDICANDO         *
//*  ZMP82053     TOTALES PARA LA CONCILIACION (ZM3DH82B)              *
//*                                                                    *
//*--------------------------------------------------------------------*
//ZMP82053 EXEC PGM=ZM3DH82B,COND=(4,LT)                                00070000
//ZMFH083E DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..SBANCA,DISP=SHR
//*                                                                     00090000
//ZMFH83S1 DD DSN=MXCP.ZM.FIX.CBP.TOTFONDO.F&FECHA..IMP1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=128,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE)
//*                                                                     00090000
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00250000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSIN    DD DUMMY                                                     00310000
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//*  PASO:        AGREGA INDICADOR A ARCHIVO DE TOTALES PARA LA CONC.  *
//*                                                                    *
//*--------------------------------------------------------------------*
//ZMP82052 EXEC PGM=ICEMAN,COND=(0,NE)                                  00070000
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.TOTFONDO.F&FECHA..IMP1,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.TOTFONDO.F&FECHA..IMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=130,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP82052),DISP=SHR
//*@FSW01-F
//**********************************************************************
//* PASO    : ZMP82050                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: ORDENA ARCHIVO SIN BANCA POR CR                          *
//**********************************************************************
//ZMP82050 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..SBANCA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..SBANCA.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=120,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP82050),DISP=SHR
//**********************************************************************
//* PASO    : ZMP82045                                                 *
//* PROGRAMA: ZM3DH83B                                                 *
//* OBJETIVO: INFORMA EL TIPO DE BANCA AL REPORTE POR CONTRATO         *
//**********************************************************************
//ZMP82045 EXEC PGM=ZM3DH83B,COND=(4,LT)
//ZMFH083E DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..SBANCA.ORD,DISP=SHR
//ZMFH083I DD DSN=MXCP.ZM.FIX.UNLOAD.TCDT085.BANCA,DISP=SHR
//*
//ZMFH083O DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..CBANCA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=120,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//* PASO    : ZMP82040                                                 *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, FONDO, SERIE               *
//**********************************************************************
//ZMP82040 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..CBANCA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..TOT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=120,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP82040),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMP82035                                                 *
//* OBJETIVO: PONE ENCABEZADO AL ARCHIVO POR CONTRATO                  *
//**********************************************************************
//ZMP82035 EXEC PGM=ICEMAN,COND=(0,NE)
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..TOT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=120,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP82035),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMP82030                                                 *
//* OBJETIVO: SORTEA EL ARCHIVO POR CR, FONDO, SERIE                   *
//**********************************************************************
//ZMP82030 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..TOT,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..CR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=120,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP82030),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMP82025                                                 *
//* OBJETIVO: SORTEA EL ARCHIVO POR BANCA, FONDO, SERIE                *
//**********************************************************************
//ZMP82025 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..TOT,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..BANCA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=120,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP82025),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMP82020                                                 *
//* PROGRAMA: ZM3DH84A                                                 *
//* OBJETIVO: REPORTE A NIVEL BANCA                                    *
//**********************************************************************
//ZMP82020 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMFH084E DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..BANCA,DISP=SHR
//*
//ZMFH084S DD DSN=MXCP.ZM.FIX.CBP.BANCA.F&FECHA..ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=145,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00250000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSIN    DD DUMMY                                                     00310000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMP82020),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMP82015                                                 *
//* OBJETIVO: PONE ENCABEZADO AL ARCHIVO POR BANCA                     *
//**********************************************************************
//ZMP82015 EXEC PGM=ICEMAN,COND=(0,NE)
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.BANCA.F&FECHA..ORD,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.BANCA.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=145,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP82015),DISP=SHR
