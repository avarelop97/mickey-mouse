//ZMHLPD83 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*  PASO:        GENERA ARCHIVO A NIVEL CONTRATO INDICANDO EL         *
//*  ZMP83055     PORCENTAJE DE CUOTA SIN EL TIPO DE BANCA ORDENADO X  *
//*               ICCOSTO                                              *
//*--------------------------------------------------------------------*
//ZMP83055 EXEC PGM=IKJEFT01                                            00070000
//ZMFH083E DD DSN=MXCP.ZM.FIX.ECO.NOIMPR.F&FECHA,DISP=SHR
//*                                                                     00090000
//ZMFH83A1 DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..SBNOIMP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=120,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE)
//*                                                                     00090000
//ZMFH83S1 DD DSN=MXCP.ZM.FIX.CBP.TOTGRAL.F&FECHA..NOIMP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=130,RECFM=FB,BLKSIZE=0,DSORG=PS),
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
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//*  PASO:        GENERA ARCHIVO A NIVEL FONDO SERIE INDICANDO         *
//*  ZMP83053     TOTALES PARA LA CONCILIACION (ZM3DH82B)              *
//*                                                                    *
//*--------------------------------------------------------------------*
//ZMP83053 EXEC PGM=ZM3DH82B,COND=(4,LT)                                00070000
//ZMFH083E DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..SBNOIMP,DISP=SHR
//*                                                                     00090000
//ZMFH83S1 DD DSN=MXCP.ZM.FIX.CBP.TOTFONDO.F&FECHA..NOIMP1,
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
//ZMP83052 EXEC PGM=ICEMAN,COND=(0,NE)                                  00070000
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.TOTFONDO.F&FECHA..NOIMP1,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.TOTFONDO.F&FECHA..NOIMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=130,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP83052),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMP83050                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: ORDENA ARCHIVO SIN BANCA POR CR                          *
//**********************************************************************
//ZMP83050 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..SBNOIMP,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..SBNOIMP.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=120,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP82050),DISP=SHR
//**********************************************************************
//* PASO    : ZMP83045                                                 *
//* PROGRAMA: ZM3DH83B                                                 *
//* OBJETIVO: INFORMA EL TIPO DE BANCA AL REPORTE POR CONTRATO         *
//**********************************************************************
//ZMP83045 EXEC PGM=ZM3DH83B,COND=(4,LT)
//ZMFH083E DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..SBNOIMP.ORD,
//            DISP=SHR
//ZMFH083I DD DSN=MXCP.ZM.FIX.UNLOAD.TCDT085.BANCA,DISP=SHR
//*
//ZMFH083O DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..CBNOIMP,
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
//* PASO    : ZMP83040                                                 *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, FONDO, SERIE               *
//**********************************************************************
//ZMP83040 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..CBNOIMP,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..TOTNOIMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=120,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP82040),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMP83035                                                 *
//* OBJETIVO: PONE ENCABEZADO AL ARCHIVO POR CONTRATO                  *
//**********************************************************************
//ZMP83035 EXEC PGM=ICEMAN,COND=(0,NE)
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..TOTNOIMP,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.CONTRATO.F&FECHA..NOIMP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=120,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP82035),DISP=SHR
//*
//**********************************************************************
//* PASO    : ZMP83030                                                 *
//* OBJETIVO: UNE ARCHIVO DE IMP Y NOIMP PARA REALIZAR LA CONCILIACION *
//**********************************************************************
//ZMP83030 EXEC PGM=ICEMAN,COND=(0,NE)
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.TOTFONDO.F&FECHA..IMP,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.CBP.TOTFONDO.F&FECHA..NOIMP,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.TOTFONDO.F&FECHA..UNION,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=128,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP83030),DISP=SHR
//**********************************************************************
//* PASO    : ZMP83025                                                 *
//* OBJETIVO: ORDENA EL ARCHIVO POR FONDO-SERIE PARA CONCILIACION      *
//**********************************************************************
//ZMP83025 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.TOTFONDO.F&FECHA..UNION,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.TOTFONDO.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=128,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP83025),DISP=SHR
//*--------------------------------------------------------------------*
//*                  F I N      D E     P R O C                        *
//*--------------------------------------------------------------------*
