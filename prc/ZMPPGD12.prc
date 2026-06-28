//ZMPPGD12 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CASA DE BOLSA.                                 *
//* PROCESO      : BCPPGD12.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : CARGA MASIVA DE PARAMETRIA DE NOTAS ESTRUCTURADAS.  *
//* REALIZO      : INDRA.                                              *
//* FECHA        : 09 DE JUNIO DEL 2016.                               *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                               XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : ZPPG1230                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE NOTAS ESTRUCTURADAS EXISTENTES EN CONCEPT *
//*--------------------------------------------------------------------*
//ZPPG1230 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZPPG1230,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.WKF.UNLOAD.CONCEPT.NOTAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),
//            SPACE=(CYL,(1500,900),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPPG1230),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPPG1225.                                             *
//* UTILERIA   : IKJEFT01/ZM4OPG56                                     *
//* OBJETIVO   : CARGA MASIVA DE PARAMETRIA DE NOTAS ESTRUCTURADAS     *
//*--------------------------------------------------------------------*
//ZPPG1225 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXCP.ZM.WKF.UNLOAD.CONCEPT.NOTAS,
//            DISP=SHR
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPPG1225),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     FIN DEL PROCESO ZMPPGD12                       *
//*--------------------------------------------------------------------*
