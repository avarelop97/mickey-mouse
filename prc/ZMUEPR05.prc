//ZMUEPR05 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - BCUENR05.                                      *
//* PROCESO      : ZMUEPR05.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : GENERACION DE RENDIMIENTOS.                         *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 22 DE AGOSTO DE 2013.                               *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : ZUE05T01.                                             *
//* UTILERIA   : ZM3DG001.                                             *
//* OBJETIVO   : RECIBE LOS PARAMETROS A PROCESAR Y LOS GRABA EN       *
//*              ARCHIVO                                               *
//*--------------------------------------------------------------------*
//ZUE05T01 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&FECHA',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.REC.EBCM.ZMUEPR05,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE05T02.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU533                                     *
//* OBJETIVO   : GENERA ARCHIVOS MUV NECESARIOS PARA LA GENERACION     *
//*              DE CUENTA DE BANCA PATRIMONIAL                        *
//*--------------------------------------------------------------------*
//PUE05T02 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ZMU500A1 DD DSN=MXCP.ZM.FIX.REC.EBCM.ZMUEPR05,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PUE05T02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE05T03.                                             *
//* UTILERIA   : IKJEFT01/ZM4MU507                                     *
//* OBJETIVO   : PROGRAMA PARA EL CALCULO DE RENDIMIENTOS ANUAL.       *
//*--------------------------------------------------------------------*
//PUE05T03 EXEC PGM=IKJEFT01,COND=(4,LT)
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(PUE05T03),DISP=SHR
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMUEPR05                        *
//*--------------------------------------------------------------------*
