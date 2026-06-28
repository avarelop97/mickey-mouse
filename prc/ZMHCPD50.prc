//ZMHCPD50 PROC
//*--------------------------------------------------------------------*
//* SISTEMA  : ZM - CASA DE BOLSA.                                     *00003000
//* PROCESO  : ZMHCPD50.                                               *
//* OBJETIVO : REPROCESO DE CALCULO DE COSTO PROMEDIO PARA LA EJECUCION*
//*            DESDE UN DIA EN ESPECIFICO PARA UNA CUENTA Y CONCEPT    *
//*            CAPTURADOS (SOC. INV.).                                 *
//* REALIZO  : SOFTTEK(ERDD1).                                         *
//* FECHA    : MAYO DE 2014.                                           *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-0.0.0-01  XMZ2596 26DIC14 SE RENUMERAN LOS PASOS DEL PROCESO    *
//*                              ACTUAL.                               *
//*                              SE AGREGAN DOS SALIDAS MAS AL PASO    *
//*                              PHC01P04.                             *
//*                              SE AGREGAN DOS PASOS AL PROCESO.      *
//* FS-0.0.0-02  XMZ2596 08ENE15 SE RENUMERAN LOS PASOS DEL PROCESO    *
//*                              ACTUAL.                               *
//*                              SE CAMBIASN LOS ARCHIVOS DE ENTRADA.  *
//*  @DGCM01     FS-DGCM 04MZO15 SE AGREGA LA SALIDA ZMISR4A1 EN EL    *
//*                              PASO PHC50P01.                        *
//*--------------------------------------------------------------------*
//*---------------------------------------------------------------------
//* PASO    : PHC50P02                                                 *
//* PROGRAMA: IKJEFT01/ZM4ISR04                                        *
//* OBJETIVO: REPROCESO DE COSTO PROMEDIO/ISR SOCIEDADES INVERSION.    *
//*---------------------------------------------------------------------
//PHC50P02 EXEC PGM=IKJEFT01
//*
//ZMISR4R1 DD DSN=MXC&AMB..ZM.FIX.CTAREPS.COSANT.CBP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR4R2 DD DSN=MXC&AMB..ZM.FIX.CTAREPS.COSANT.BCM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR4R3 DD DSN=MXC&AMB..ZM.FIX.CTAREPS.COSNVO.CBP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR4R4 DD DSN=MXC&AMB..ZM.FIX.CTAREPS.COSNVO.BCM,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=186,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR4A1 DD DSN=MXC&AMB..ZM.FIX.CTAREPS.TRASPAS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=080,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR4A2 DD DSN=MXC&AMB..ZM.FIX.CTAREPS.ARCH.ORI,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=311,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//ZMISR4A3 DD DSN=MXC&AMB..ZM.FIX.CTAREPS.ARCH.NVO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=311,BLKSIZE=0),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC50T01),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PASO    : PHC50P01                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT DE REPORTES PARA CASA.                              *
//*---------------------------------------------------------------------
//PHC50P01 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.CTAREPS.COSANT.CBP,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.CTAREPS.COSNVO.CBP,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.CTAREPS.COSPROM.CBP.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=186,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC50T00),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PASO    : PHC50P00                                                 *
//* PROGRAMA: ICEMAN                                                   *
//* OBJETIVO: SORT DE REPORTES PARA BANCA.                             *
//*---------------------------------------------------------------------
//PHC50P00 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.CTAREPS.COSANT.BCM,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.CTAREPS.COSNVO.BCM,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.CTAREPS.COSPROM.BCM.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=186,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(40,20),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHC50T00),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO    : PHC39P00                                                 *
//* PROGRAMA: ZM4MAT01                                                 *
//* OBJETIVO: LEE LOS ARCHIVOS DE ANTES Y DESPUES DEL REPROCESO ORDENA *
//*           LAS SALIDAS DE TAL MANERA QUE LAS SALIDAS QUEDEN JUNTAS  *
//*--------------------------------------------------------------------*
//PHC39P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMMATCA1 DD DSN=MXC&AMB..ZM.FIX.CTAREPS.ARCH.ORI,
//            DISP=SHR
//*
//ZMMATCA2 DD DSN=MXC&AMB..ZM.FIX.CTAREPS.ARCH.NVO,
//            DISP=SHR
//*
//ZMMATCA3 DD DSN=MXC&AMB..ZM.FIX.CTAREPS.INICIAL.ARCHIVO,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(40,20),RLSE),
//            DCB=(LRECL=311,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHC37T37),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     FIN PRC                                        *
//*--------------------------------------------------------------------*
