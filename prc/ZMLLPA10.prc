//ZMLLPA10 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM FATCA.                                           *
//* PROCESO      : ZMLLPA10.                                           *
//* OBJETIVO     : REALIZA CALCULO DE SALDOS DE LAS OPERACIONES        *
//*                GENERADAS EN EL MES                                 *
//* FECHA        : OCTUBRE 2017                                        *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR     FECHA DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*   PASO    : PHPA1013                                               *
//*   OBJETIVO: GENERA TARJETA  DE CONTROL DINAMICA  PARA REALIZAR     *
//*             LA DESCARGA DE LAS TABLAS DE SECART Y ZMDT109          *
//*                     -- ZM4DFA74 --                                 *
//*--------------------------------------------------------------------*
//PHPA1013 EXEC PGM=IKJEFT01
//*
//SSECART  DD DSN=MXCP.ZM.FIX.TARJETA.SSECART.UNLOAD,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SZMDT109 DD DSN=MXCP.ZM.FIX.TARJETA.SZMDT109.UNLOAD,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(500,250),RLSE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHPA1003),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHPA1012                                               *
//*   OBJETIVO: REALIZA DESCARGA DE LA TABLA DE SECART                 *
//*--------------------------------------------------------------------*
//PHPA1012 EXEC PGM=ADUUMAIN,COND=(04,LT),
//         PARM='MXP1,PHPA1009,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.SECART.UNLOAD.SALDOS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1500,500),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.TARJETA.SSECART.UNLOAD,DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHPA1011                                               *
//*   OBJETIVO: REALIZA LA DIVISION DE LA INFORMACION DE SECART        *
//*             CONFORME A LOS 4 MERCADOS QUE SE SE OPERAN             *
//*                     -- ZM4DFA79 --                                 *
//*--------------------------------------------------------------------*
//PHPA1011 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.SECART.UNLOAD.SALDOS,DISP=SHR
//*
//SECARTSI DD DSN=MXCP.ZM.FIX.SECARTSI.SALDOS.MES,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1500,500),RLSE),
//            DCB=(LRECL=45,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SECARTCA DD DSN=MXCP.ZM.FIX.SECARTCA.SALDOS.MES,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1500,500),RLSE),
//            DCB=(LRECL=45,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SECARTWA DD DSN=MXCP.ZM.FIX.SECARTWA.SALDOS.MES,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1500,500),RLSE),
//            DCB=(LRECL=45,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SECARTFC DD DSN=MXCP.ZM.FIX.SECARTFC.SALDOS.MES,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1500,500),RLSE),
//            DCB=(LRECL=65,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHPA1008),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHPA1010                                               *
//*   OBJETIVO: ORDENA ARCHIVO CORRESPONDIENTE A SOCIEDADES            *
//*--------------------------------------------------------------------*
//PHPA1010 EXEC PGM=ICEMAN,COND=(04,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.SECARTSI.SALDOS.MES,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.SECARTSI.SALDOS.ORD,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1500,500),RLSE),
//            DCB=(LRECL=45,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHPA1010),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHPA1009                                               *
//*   OBJETIVO: REALIZA CALCULO DE SALDOS DE CONTRATOS DE SOCIEDADES   *
//*             DE INVERSION                                           *
//*                     -- ZM4DFA71 --                                 *
//*--------------------------------------------------------------------*
//PHPA1009 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//SECARTSI DD DSN=MXCP.ZM.FIX.SECARTSI.SALDOS.ORD,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHPA1007),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHPA1008                                               *
//*   OBJETIVO: ORDENA ARCHIVO CORRESPONDIENTE A CAPITALES             *
//*--------------------------------------------------------------------*
//PHPA1008 EXEC PGM=ICEMAN,COND=(04,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.SECARTCA.SALDOS.MES,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.SECARTCA.SALDOS.ORD,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1500,500),RLSE),
//            DCB=(LRECL=45,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHPA1010),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHPA1007                                               *
//*   OBJETIVO: REALIZA CALCULO DE SALDOS DE CONTRATOS DE CAPITALES    *
//*                     -- ZM4DFA72 --                                 *
//*--------------------------------------------------------------------*
//PHPA1007 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//SECARTCA DD DSN=MXCP.ZM.FIX.SECARTCA.SALDOS.ORD,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHPA1006),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHPA1006                                               *
//*   OBJETIVO: ORDENA ARCHIVO CORRESPONDIENTE A WARRANTS              *
//*--------------------------------------------------------------------*
//PHPA1006 EXEC PGM=ICEMAN,COND=(04,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.SECARTWA.SALDOS.MES,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.SECARTWA.SALDOS.ORD,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1500,500),RLSE),
//            DCB=(LRECL=45,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHPA1010),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHPA1005                                               *
//*   OBJETIVO: REALIZA CALCULO DE SALDOS DE CONTRATOS DE WARRANTS     *
//*                     -- ZM4DFA73 --                                 *
//*--------------------------------------------------------------------*
//PHPA1005 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//SECARTWA DD DSN=MXCP.ZM.FIX.SECARTWA.SALDOS.ORD,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHPA1005),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHPA1004                                               *
//*   OBJETIVO: ORDENA ARCHIVO CORRESPONDIENTE A FIBRAS Y CKDS         *
//*--------------------------------------------------------------------*
//PHPA1004 EXEC PGM=ICEMAN,COND=(04,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.SECARTFC.SALDOS.MES,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.SECARTFC.SALDOS.ORD,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(1500,500),RLSE),
//            DCB=(LRECL=65,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHPA1009),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHPA1003                                               *
//*   OBJETIVO: REALIZA CALCULO DE SALDOS DE CONTRATOS DE FIBRAS Y CKD *
//*                     -- ZM4DFA75 --                                 *
//*--------------------------------------------------------------------*
//PHPA1003 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ZMFA75E1 DD DSN=MXCP.ZM.FIX.SECARTFC.SALDOS.ORD,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHPA1004),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHPA1002                                               *
//*   OBJETIVO: REALIZA DESCARGA DE LA TABLA DE ZMDT109                *
//*--------------------------------------------------------------------*
//PHPA1002 EXEC PGM=ADUUMAIN,COND=(04,LT),
//         PARM='MXP1,PHPA1004,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMDT109.UNLOAD.SALDOS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.TARJETA.SZMDT109.UNLOAD,DISP=SHR
//*
//*--------------------------------------------------------------------*
//*   PASO    : PHPA1001                                               *
//*   OBJETIVO: REALIZA CALCULO DE PAGO DE DIVIDENDOS                  *
//*                     -- ZM4DFA78 --                                 *
//*--------------------------------------------------------------------*
//PHPA1001 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ZMFA78E1 DD DSN=MXCP.ZM.FIX.ZMDT109.UNLOAD.SALDOS,DISP=SHR
//*
//ZMFA78E2 DD DSN=MXCP.ZM.FIX.ZM4CRX15.ADABPSAT,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHPA1001),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLLPA10                        *
//*--------------------------------------------------------------------*
//*
