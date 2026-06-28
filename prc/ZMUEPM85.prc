//ZMUEPM85 PROC
//*                                                                   **
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CBUENM85.                                      *
//* PROCESO      : ZMUEPM85.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : GENERACION DE RENDIMIENTOS PARA CASA DE BOLSA.      *
//* REALIZO      : XXXXXXXXXXXXXXXXXXXXXXXXXXXXX.                      *
//* FECHA        : XX DE XXXXXX DE XXXX.                               *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*-------------------------------------------------------------------**
//* PASO       : ZUE85T50.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU160                                     *
//* OBJETIVO   : PROGRAMA QUE DESCARGA LA TABLA EDCUENTA SOLO CUENTAS  *
//*              CASA DE BOLSA (CBP).                                  *
//*--------------------------------------------------------------------*
//ZUE85T50 EXEC PGM=IKJEFT01
//*
//S1DES150 DD DSN=MXCP.ZM.FIX.REC.ZM4MU150.DESCA150,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=13,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUE85T50),DISP=SHR
//*-------------------------------------------------------------------**
//* PASO       : ZUE85T45.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU161                                     *
//* OBJETIVO   : PROGRAMA DESCARGA DEPOSITOS Y RETIROS DEL MES PROCE-  *
//*              SADO, SOLO CASA DE BOLSA (CBP).  EDDEPRE Y EDMOVED    *
//*------------------------------------------------------------------- *
//ZUE85T45 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//S1DED151 DD DSN=MXCP.ZM.FIX.REC.ZM4MU151.DEREMOVE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=33,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUE85T45),DISP=SHR
//*
//*-------------------------------------------------------------------
//* PASO       : ZUE85T40.
//* UTILERIA   : IKJEFT01/ZM4MU162
//* OBJETIVO   : CALCULA RENDIMIENTO BRUTO DEL MES EN CURSO (CBP)
//*-------------------------------------------------------------------
//ZUE85T40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU150.DESCA150,
//             DISP=SHR
//ENTRADA3 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU151.DEREMOVE,
//             DISP=SHR
//S1SALIDA DD  DSN=MXCP.ZM.FIX.REC.ZM4MU152.SAL.D,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//             DCB=(RECFM=FB,LRECL=163,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUE85T40),DISP=SHR
//*
//*-------------------------------------------------------------------
//* PASO       : ZUE85T35.
//* UTILERIA   : IKJEFT01/ZM4MU163
//* OBJETIVO   : CALCULA RENDIMIENTO NETO  DEL MES EN CURSO (CBP)
//*-------------------------------------------------------------------
//ZUE85T35 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU150.DESCA150,
//             DISP=SHR
//ENTRADA3 DD  DSN=MXCP.ZM.FIX.REC.ZM4MU151.DEREMOVE,
//             DISP=SHR
//S1SALIDA DD  DSN=MXCP.ZM.FIX.REC.ZM4MU153.SAL.D,
//             DISP=(NEW,CATLG,DELETE),UNIT=3390,
//             SPACE=(CYL,(200,100),RLSE),
//             DCB=(RECFM=FB,LRECL=163,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUE85T35),DISP=SHR
//*
//*-------------------------------------------------------------------
//* FIN PROCESO ZMUEPM85
//*-------------------------------------------------------------------
