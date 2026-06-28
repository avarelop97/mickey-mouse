//ZMPLPCRI PROC
//*--------------------------------------------------------------------*
//*           DESCARGA DE LA TABLA ZMDT108
//*--------------------------------------------------------------------*
//ZMPC1790 EXEC PGM=IKJEFT01
//*
//S1108SIV DD DSN=MXCP.ZM.FIX.DESCASIV.PRIM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=534,BLKSIZE=0,DSORG=PS)
//*
//S1108CUS DD DSN=MXCP.ZM.FIX.DESCACUS.PRIM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=226,BLKSIZE=0,DSORG=PS)
//*
//S1108MOV DD DSN=MXCP.ZM.FIX.DESCAMOV.PRIM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=534,BLKSIZE=0,DSORG=PS)
//*
//S1CTAVAC DD DSN=MXCP.ZM.FIX.CTAVACIA.CUST,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=18,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMPORV01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPC1780.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SORT POR CONTRATO-EMISORA-SERIE-FECHA OPERACION-IREF  *
//*              SALIDA KARDEX. (CUENTAS SIVA).                        *
//*--------------------------------------------------------------------*
//ZMPC1780 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.DESCASIV.PRIM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.DESCASIV.PRIM.ORD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=534,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,2),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPORV02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPC1770.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SORT POR CONTRATO-EMISORA-SERIE-ANIO-MES-DIA-E-IREF   *
//*              SALIDA CUSTODIA (CUENTAS CUSTODIA).                   *
//*--------------------------------------------------------------------*
//ZMPC1770 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.DESCACUS.PRIM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.DESCACUS.PRIM.ORD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=226,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,2),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPORVA2),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPC1760.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SORT POR CONTRATO-EMISORA-SERIE-ANIO-MES-DIA-E-IREF   *
//*              SALIDA CUSTODIA (CUENTAS CUSTODIA).                   *
//*--------------------------------------------------------------------*
//ZMPC1760 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.DESCAMOV.PRIM,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.DESCAMOV.PRIM.ORD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=534,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,2),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPORV03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : ZMCNC99A                                               *
//*   OBJETIVO: DESCARGA DE LA TABLA PARAM                             *
//*--------------------------------------------------------------------*
//ZMPC1750 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMPC1750,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESC.PARAM.POR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPORV12),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPC1750.                                             *
//* UTILERIA   : IKJ8FT01/ZM4ERR01.                                    *
//* OBJETIVO   : ELIMINA RETIROS Y RECEPCIONES                         *
//*--------------------------------------------------------------------*
//ZMPC1740 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//E1108SIV DD DSN=MXCP.ZM.FIX.DESCASIV.PRIM.ORD,DISP=SHR
//E2108CUS DD DSN=MXCP.ZM.FIX.DESCACUS.PRIM.ORD,DISP=SHR
//E3108PAR DD DSN=MXCP.ZM.FIX.DESC.PARAM.POR,DISP=SHR
//S2108SIV DD DSN=MXCP.ZM.FIX.RETRECE.SIVA.SAL1,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,1),RLSE),
//            DCB=(DSORG=PS,LRECL=534,RECFM=FB,BLKSIZE=0)
//S2108CUS DD DSN=MXCP.ZM.FIX.RETRECE.SIVA.SAL2,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(5,1),RLSE),
//            DCB=(DSORG=PS,LRECL=534,RECFM=FB,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPORV04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPC1730.                                             *
//* UTILERIA   : IKJEFT01/ZM4DIV02                                     *
//* OBJETIVO   : IDENTIFICA DIVIDENDOS, CANJE, SPLIT Y REVER SPLIT.    *
//*--------------------------------------------------------------------*
//ZMPC1730 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHX12A1 DD DSN=MXCP.ZM.FIX.DESCASIV.PRIM,DISP=SHR
//ZMHX12A2 DD DSN=MXCP.ZM.FIX.DESCAMOV.PRIM,DISP=SHR
//ZMHX12S2 DD DSN=MXCP.ZM.FIX.MOVCUS.SALDIV,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,1),RLSE),
//            DCB=(DSORG=PS,LRECL=534,RECFM=FB,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPORV05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC1720
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA POR CONTRATO-EMISORA-SERIE                       *
//*            KARDEX DE SIVA 2016 (SALIDA DE RETIROS RECEPCIONES)     *
//*--------------------------------------------------------------------*
//ZMPC1720 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.RETRECE.SIVA.SAL1,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.RETRECE.SIVA.SAL1.ORD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=534,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,2),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPORV06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPC1710.                                             *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : UNE REPORTES                                          *
//*--------------------------------------------------------------------*
//ZMPC1710 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.RETRECE.SIVA.SAL1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.MOVCUS.SALDIV,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.KARDEX.UNIONSD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=534,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,2),RLSE)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPORV10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPC1705.                                             *
//* UTILERIA   : IKJEFT01/ZM4IN108                                     *
//* OBJETIVO   : INSERTA REGISTROS CON ESTATUS 'P' DE PORVENIR A LAS   *
//*              TABLAS ZMDT108 Y ZMDT111.
//*--------------------------------------------------------------------*
//ZMPC1705 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHX13E1 DD DSN=MXCP.ZM.FIX.KARDEX.UNIONSD,DISP=SHR
//ZMHX14S1 DD DSN=MXCP.ZM.FIX.KARDEX.SALINSER,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(10,1),RLSE),
//            DCB=(DSORG=PS,LRECL=534,RECFM=FB,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPORV11),DISP=SHR
//
