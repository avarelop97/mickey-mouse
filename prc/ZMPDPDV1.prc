//ZMPDPDV1 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM YA9DPV (SIVA) PDV PRODUCTO 21.                   *
//* PROCESO      : ZMPDPDV1.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : GENERAR LOS PROCESOS DE LIMITES Y CONCENTRACION     *
//*                DEL PROYECTO PDV CON LA INFORMACION REFERENTE       *
//*                A LAS OPERACIONES DE LA BANCA PATRIMONIAL.          *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 04 DE ABRIL DE 2014.                                *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//*------------ --------- ------- ------------------------------------ *
//* FS-0.0.0-01  XMCH019  23JUL15 SE INCLUYEN LOS SIGUIENTES PASOS:    *
//*                               PPDV1P27,PPDV1P24,PPDV1P07 Y PPDV1P04*
//*--------------------------------------------------------------------*
//*   RRT        XM06657  28JUN18 SE INCLUYEN LA EJECUCION DEL PGM.    *
//*                               ZM4PDV22 ACTUALIZACION DE LIMITES    *
//*                               EN PARAM VDP                         *
//*--------------------------------------------------------------------*
//*  RMGH        XME0521  31OCT18 SE INCLUYEN PASOS PARA LAS SALIDAS   *
//*                               DEL PROGRAMA ZM4PDV02                *
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PPDV1P40.                                             *
//* UTILERIA   : IKJEFT01.                                             *
//* OBJETIVO   : COPIA ARCHIVO                                         *
//*                                                                    *
//*                                                                    *
//*                                                                    *
//*--------------------------------------------------------------------*
//PPDV1P40 EXEC PGM=ICEGENER
//*
//SYSUT1   DD DSN=MXB&AMB..YH.FIX.F&FECHA..MYHPPMU0.REPOTPMU,
//            DISP=SHR
//SYSUT2   DD DSN=MXC&AMB..ZM.FIX.MYHPPMU0.BCJDPDV1.COPIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(DSORG=PS,LRECL=80,BLKSIZE=0,RECFM=FB)
//*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : PPDV1P30.                                             *
//* UTILERIA   : IKJEFT01.                                             *
//* OBJETIVO   : COPIA ARCHIVO                                         *
//*                                                                    *
//*                                                                    *
//*                                                                    *
//*--------------------------------------------------------------------*
//PPDV1P30 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXB&AMB..YH.FIX.F&FECHA..MYHPPM10.REPOTPM1,
//            DISP=SHR
//SYSUT2   DD DSN=MXC&AMB..ZM.FIX.MYHPPM10.BCJDPDV1.COPIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(DSORG=PS,LRECL=80,BLKSIZE=0,RECFM=FB)
//*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*FS-0.0.0-01-INI
//*--------------------------------------------------------------------*
//* PASO       : PPDV1P27.                                             *
//* UTILERIA   : ICEGENER.                                             *
//* OBJETIVO   : COPIA ARCHIVO                                         *
//*--------------------------------------------------------------------*
//PPDV1P27 EXEC PGM=ICEGENER,COND=(4,LT)
//*
//SYSUT1   DD DSN=MXB&AMB..YH.FIX.F&FECHA..MYHPPREP.INTRMUV,
//            DISP=SHR
//SYSUT2   DD DSN=MXC&AMB..ZM.FIX.MYHPPREP.BCJDPDV1.COPIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(DSORG=PS,LRECL=80,BLKSIZE=0,RECFM=FB)
//*
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : PPDV1P24.                                             *
//* UTILERIA   : IKJEFT01(ZM4PDV11)                                    *
//* OBJETIVO   : GENERA UN ARCHIVO CON LAS MARCAS DE LOS CLIENTES DE   *
//*              MERCADO.                                              *
//*--------------------------------------------------------------------*
//PPDV1P24 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMPDV1S1 DD DSN=MXC&AMB..ZM.FIX.MDOSEC.BCJDPDV1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(DSORG=PS,LRECL=50,BLKSIZE=0,RECFM=FB)
//*
//QSRLSDB2 DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDV111),DISP=SHR
//*
//*FS-0.0.0-01-FIN
//*--------------------------------------------------------------------*
//* PASO       : PPDV1P20.                                             *
//* UTILERIA   : IKJEFT01.                                             *
//* OBJETIVO   : GENERAR LOS LIMITES DE CONCENTRACION EN LA TABLA PARAM*
//*              DE PRACTICAS DE VENTA DE LOS CLIENTES DE LA BANCA     *
//*              PATRIMONIAL.                                          *
//*                                                                    *
//*--------------------------------------------------------------------*
//PPDV1P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMPDV1E1 DD DSN=MXB&AMB..YH.FIX.F&FECHA..MYHPPMU0.REPOTPMU,
//            DISP=SHR
//*
//QSRLSDB2 DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDV101),DISP=SHR
//*
//*RRT-INI
//*--------------------------------------------------------------------*
//* PASO       : PPDV1P18.                                             *
//* PROGRAMA   : ZM4PDV22.                                             *
//* UTILERIA   : IKJEFT01.                                             *
//* OBJETIVO   : GENERAR LOS LIMITES EN LA TABLA PARAM (VDP)           *
//*              DE PRACTICAS DE VENTA DE LOS CLIENTES DE LA BANCA     *
//*              PATRIMONIAL.                                          *
//*                                                                    *
//*--------------------------------------------------------------------*
//PPDV1P18 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMPDV1E1 DD DSN=MXB&AMB..YH.FIX.F&FECHA..MYHPPMU0.REPOTPMU,
//            DISP=SHR
//*
//QSRLSDB2 DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDV118),DISP=SHR
//*
//*RRT-FIN
//*--------------------------------------------------------------------*
//* PASO       : PPDV1P15.                                             *
//* PROGRAMA   : ZM4PDV06.                                             *
//* UTILERIA   : IKJEFT01.                                             *
//* OBJETIVO   : TOMA COMO ENTRADA UN ARCHIVO CON LOS CRITERIOS DE     *
//*              CONCENTRACION PARA GENERAR LA TABLA ZMDT201 DEL       *
//*              PROYECTO PDV.                                         *
//*--------------------------------------------------------------------*
//PPDV1P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMPDV1E1 DD DSN=MXB&AMB..YH.FIX.F&FECHA..MYHPPM10.REPOTPM1,
//             DISP=SHR
//*
//ZMPDV1S1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..ZMDT201.ZM4PDV06,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(DSORG=PS,LRECL=80,BLKSIZE=0,RECFM=FB)
//*
//QSRLSDB2 DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDV103),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PPDV1P13.                                             *
//* PROGRAMA   : ZM4PDV09.                                             *
//* UTILERIA   : IKJEFT01.                                             *
//* OBJETIVO   : TOMA COMO ENTRADA UN ARCHIVO CON LOS CRITERIOS DE     *
//*              CONCENTRACION PARA GENERAR LA TABLA ZMDT201 DEL       *
//*              PROYECTO PDV.                                         *
//*--------------------------------------------------------------------*
//PPDV1P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMPDV1E1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..ZMDT201.ZM4PDV06,
//             DISP=SHR
//*
//ZMPDV1S1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..ZMDT201.BCJDPDV1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(DSORG=PS,LRECL=80,BLKSIZE=0,RECFM=FB)
//*
//QSRLSDB2 DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDV131),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PPDV1P10.                                             *
//* PROGRAMA   : ZM4PDV02.                                             *
//* UTILERIA   : IKJEFT01.                                             *
//* OBJETIVO   : TOMA COMO ENTRADA UN ARCHIVO CON LOS CRITERIOS DE     *
//*              CONCENTRACION DEL PASO ANTERIOR A PARA ACTUALIZAR     *
//*              LA TABLA ZMDT201 DEL  PROYECTO PDV.                   *
//*--------------------------------------------------------------------*
//PPDV1P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMPDV1E1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..ZMDT201.BCJDPDV1,
//             DISP=SHR
//*
//*RMGH-INI
//ZMPDV1S1 DD DSN=MXC&AMB..ZM.FIX.ZMPDV1S1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,20),RLSE),
//            DCB=(DSORG=PS,LRECL=80,BLKSIZE=0,RECFM=FB)
//ZMPDV1S2 DD DSN=MXC&AMB..ZM.FIX.ZMPDV1S2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,20),RLSE),
//            DCB=(DSORG=PS,LRECL=80,BLKSIZE=0,RECFM=FB)
//ZMPDV1S3 DD DSN=MXC&AMB..ZM.FIX.ZMPDV1S3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,20),RLSE),
//            DCB=(DSORG=PS,LRECL=80,BLKSIZE=0,RECFM=FB)
//*
//*ZMPDV1S1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//*ZMPDV1S2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//*ZMPDV1S3 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//*RMGH-FIN
//*
//QSRLSDB2 DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDV102),DISP=SHR
//*
//*FS-0.0.0-01-INI
//*--------------------------------------------------------------------*
//* PASO       : PPDV1P07.                                             *
//* PROGRAMA   : IKJEFT01(ZM4PDV12).                                   *
//* OBJETIVO   : TOMA COMO ENTRADA UN ARCHIVO CON LAS MARCAS DEL       *
//*              MERCADO SECUNDARIO.                                   *
//*--------------------------------------------------------------------*
//PPDV1P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMPDV1E1 DD DSN=MXC&AMB..ZM.FIX.MDOSEC.BCJDPDV1,
//             DISP=SHR
//*
//ZMPDV1S1 DD DSN=MXC&AMB..ZM.FIX.MS-NOACT.BCJDPDV1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,20),RLSE),
//            DCB=(DSORG=PS,LRECL=50,BLKSIZE=0,RECFM=FB)
//*
//QSRLSDB2 DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDV112),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PPDV1P04.                                             *
//* PROGRAMA   : IKJEFT01(ZM4PDV19).                                   *
//* OBJETIVO   : TOMA COMO ENTRADA UN ARCHIVO CON LOS CALIFICACION DE  *
//*              CLIENTES.                                             *
//*--------------------------------------------------------------------*
//PPDV1P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMPDV1E1 DD DSN=MXB&AMB..YH.FIX.F&FECHA..MYHPPREP.INTRMUV,
//             DISP=SHR
//*
//QSRLSDB2 DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDV119),DISP=SHR
//*
//*FS-0.0.0-01-FIN
//*RMGH-INI
//**********************************************************************
//* PASO    : PPDV1P03                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: SALIDA MXC&AMB..ZM.FIX.ZMPDV1S1                          *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493 LO USA SUPERVAL
//**********************************************************************00006000
//*PPDV1P03 EXEC PGM=ICEGENER,COND=(4,LT)
//*SYSUT1   DD DSN=MXC&AMB..ZM.FIX.ZMPDV1S1,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSIN    DD DUMMY
//**
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493 LO USA SUPERVAL
//**********************************************************************00006000
//**********************************************************************
//* PASO    : PPDV1P02                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: SALIDA MXC&AMB..ZM.FIX.ZMPDV1S2                          *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493 LO USA SUPERVAL
//**********************************************************************00006000
//*PPDV1P02 EXEC PGM=ICEGENER,COND=(4,LT)
//*SYSUT1   DD DSN=MXC&AMB..ZM.FIX.ZMPDV1S2,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSIN    DD DUMMY
//**********************************************************************00006000
//* FIN JLJH SEP/2021 SE BORRA CDAM HGO 24493 LO USA SUPERVAL
//**********************************************************************00006000
//*
//**********************************************************************
//* PASO    : PPDV1P01                                                 *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: SALIDA MXC&AMB..ZM.FIX.ZMPDV1S3                          *
//**********************************************************************
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493 LO USA SUPERVAL
//**********************************************************************00006000
//*PPDV1P01 EXEC PGM=ICEGENER,COND=(4,LT)
//*SYSUT1   DD DSN=MXC&AMB..ZM.FIX.ZMPDV1S3,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSIN    DD DUMMY
//*
//**********************************************************************00006000
//* INI JLJH SEP/2021 SE BORRA CDAM HGO 24493 LO USA SUPERVAL
//**********************************************************************00006000
//*
//*RMGH-FIN
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMPDPDV1                        *
//*--------------------------------------------------------------------*
