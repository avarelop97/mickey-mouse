//ZMPRC660 PROC
//**********************************************************************
//**********************************************************************
//*                                                                    *
//*                                                                    *
//**********************************************************************
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*                                                                    *
//**********************************************************************
//ZC660T11 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.CAM.ZMPRC660.PAR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA PROGRAMA ZM4MSATA                  *
//**********************************************************************
//ZC660T10 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZC660T10,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CAM.ZM4MSATA.CSRFEC,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNM66DA),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA   : IKJEFT01/ZM4MSATA                                     *
//* OBJETIVO   : CREA VARIABLES PARA CTC'S DINAMICAS                   *
//**********************************************************************
//ZC660T09 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMSATAE1 DD DSN=MXCP.ZM.FIX.CAM.ZM4MSATA.CSRFEC,DISP=SHR
//*
//ZMSATAS1 DD DSN=MXCP.ZM.FIX.CAM.DG05.PARMS.CTL,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM66PA),DISP=SHR
//*
//**********************************************************************
//* PROGRAMA   : ZM3DG005                                              *
//* OBJETIVO   : SUSTITUYE LAS VARIABLES DE LAS CTC'S DINAMICAS        *
//**********************************************************************
//ZC660T08 EXEC PGM=ZM3DG005,COND=(4,LT)
//*
//E1DQ0001 DD DUMMY
//*
//E2DQ0002 DD DSN=MXCP.ZM.FIX.CAM.DG05.PARMS.CTL,
//            DISP=SHR
//*
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZMNM66D0),DISP=SHR
//         DD DSN=ZIVA.ZME.CONTROL(ZMNM66D1),DISP=SHR
//         DD DSN=ZIVA.ZME.CONTROL(ZMNM66D2),DISP=SHR
//*
//S1DQ0001 DD DSN=MXCP.ZM.FIX.CAM.DG05.CONTROLS,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//**********************************************************************
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : SE HACE LA SEPARACION DE DESCARGAS.                   *
//**********************************************************************
//ZC660T07 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.CAM.DG05.CONTROLS,
//            DISP=SHR
//*
//OUT00    DD DSN=MXCP.ZM.FIX.CAM.CARTERA.DIA15.TMP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//OUT10    DD DSN=MXCP.ZM.FIX.CAM.SECART.DIA14.TMP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//OUT20    DD DSN=MXCP.ZM.FIX.CAM.SECART.DIA15.TMP,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=80,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNM66IA),DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA ARCHIVO CARTERA DIA 15             *
//**********************************************************************
//*ZC660T06 EXEC PGM=ADUUMAIN,
//*         PARM='MXP1,ZC660T06,NEW,,MSGLEVEL(1)',COND=(4,LT)
//**
//*STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//*         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//*         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//**
//*SYSREC   DD DSN=MXCP.ZM.FIX.CAM.CARTERA.DIA15,
//*            SPACE=(CYL,(100,20),RLSE),
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//**
//*SYSPRINT DD SYSOUT=*
//*SYSTSPRT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSIN    DD DSN=MXCP.ZM.FIX.CAM.CARTERA.DIA15.TMP,DISP=SHR
//*
//**********************************************************************
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : COPIA  ARCHIVO PONIENDO RECORD FORMAT EN FB EN LA SALIDA*
//**********************************************************************
//ZC660T06 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.CAM.CARTERA.FEC15,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CAM.CARTERA.DIA15,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=140,BLKSIZE=0),
//            SPACE=(CYL,(1000,200),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZFS99T30),DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA SECART DIA 14                      *
//**********************************************************************
//ZC660T05 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZC660T05,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CAM.SECART.DIA14,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.CAM.SECART.DIA14.TMP,DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA CURSOR PARA SECART DIA 15                      *
//**********************************************************************
//ZC660T04 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZC660T04,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CAM.SECART.DIA15,
//            SPACE=(CYL,(100,20),RLSE),
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.CAM.SECART.DIA15.TMP,DISP=SHR
//*
//**********************************************************************
//* PROGRAMA   : ZM3MT660                                              *
//* OBJETIVO   : REALIZA MATCH DE LOS DOS ARCHIVOS GENERANDO ARCHIVO   *
//*              DE SALIDA DE LOS REGISTROS COINCIDENTES               *
//**********************************************************************
//ZC660T03 EXEC PGM=ZM3MT660,COND=(4,LT)
//*
//ZMT660E1 DD DSN=MXCP.ZM.FIX.CAM.CARTERA.DIA15,DISP=SHR
//ZMT660E2 DD DSN=MXCP.ZM.FIX.CAM.SECART.DIA15,DISP=SHR
//*
//ZMT660S1 DD DSN=MXCP.ZM.FIX.CAM.CARTERA.DIA15.FALTANTE,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(100,20),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=140,DSORG=PS)
//*
//ZMT660S2 DD DSN=MXCP.ZM.FIX.CAM.SECART.DIA15.CORRECTO,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(100,20),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=210,DSORG=PS)
//*
//ZMT660S3 DD DSN=MXCP.ZM.FIX.CAM.LLAVES.DIA15.FALTANTE,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(100,20),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=050,DSORG=PS)
//*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//**********************************************************************
//* PROGRAMA:    ICEMAN                                                *
//* DESCRIPCION: REALIZAR SORT EXTRAYENDO CONTRATOS AFECTADOS          *
//**********************************************************************
//ZC660T02 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.CAM.LLAVES.DIA15.FALTANTE,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CAM.CUENTA.DIA15.AFECTADO,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(100,20),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=07,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNM66SA),DISP=SHR
//*                                                                    *
//**********************************************************************
//* UTILERIA   : IKJEFT01/ZM4MT660                                     *
//* OBJETIVO   : OBTIENE POSICION FALTANTE DE SECART DIA 15            *
//**********************************************************************
//ZC660T01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMT660E1 DD DSN=MXCP.ZM.FIX.CAM.CARTERA.DIA15.FALTANTE,DISP=SHR
//*
//ZMT660S1 DD DSN=MXCP.ZM.FIX.CAM.SECART.DIA15.FALTANTE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(RECFM=FB,LRECL=210,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNM66PB),DISP=SHR
//*
//**********************************************************************
//*                         TERMINA ZMPRC660                           *
//**********************************************************************
