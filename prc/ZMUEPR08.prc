//ZMUEPR08 PROC                                                         00010002
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - BCUENR08.                                      *
//* PROCESO      : ZMUEPR08.                                           *
//* PERIODICIDAD :                                                     *
//* OBJETIVO     :                                                     *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 30 DE SEPTIEMBRE 2013.                              *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : ZUR08T01.                                             *
//* UTILERIA   : ZM3DG001.                                             *
//* OBJETIVO   : RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN       *
//*              ARCHIVO                                               *
//*--------------------------------------------------------------------*
//ZUR08T01 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&FECHA',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.REC.EBCM.ZMUEPR08,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*--------------------------------------------------------------------*
//* PASO       : ZUR08T02.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU533                                     *
//* OBJETIVO   : GENERA ARCHIVOS MUV NECESARIOS PARA LA GENERACION     *
//*              DE CUENTA DE BANCA PATRIMONIAL                        *
//*--------------------------------------------------------------------*
//ZUR08T02 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU500A1 DD DSN=MXCP.ZM.FIX.REC.EBCM.ZMUEPR08,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUR08T02),DISP=SHR
//*
//*-------------------------------------------------------------------**
//* PASO       : ZUR08T03.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU530                                     *
//* OBJETIVO   : PROGRAMA QUE DESCARGA LA TABLA ZMDT934 PARA LAS CTAS.**
//*-------------------------------------------------------------------
//ZUR08T03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//S1DES934 DD DSN=MXCP.ZM.FIX.REC.ZMUEPR08.DESCA934,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=449,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUR08T03),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZUR08T04.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU506                                     *
//* OBJETIVO   : PROGRAMA MUEVE LOS SALDOS DE LOS MESES ANTERIORES.    *
//*--------------------------------------------------------------------*
//ZUR08T04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD  DSN=MXCP.ZM.FIX.REC.ZMUEPR08.DESCA934,
//             DISP=SHR
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUR08T04),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : ZUR08T05.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU507                                     *
//* OBJETIVO   : PROGRAMA PARA EL CALCULO DE RENDIMIENTOS ANUAL.       *
//*--------------------------------------------------------------------*
//ZUR08T05 EXEC PGM=IKJEFT01,COND=(4,LT)
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUR08T05),DISP=SHR
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMUEPR08                        *
//*--------------------------------------------------------------------*
