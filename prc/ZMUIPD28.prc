//ZMUIPD28 PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : ZM@ - ZIVA MULTIEMPRESA                              *
//* OBJETIVO    : GENERACION DE REPORTE MENSUAL DE CONSOLIDACION GLOBAL*
//*               DE CLIENTES FACTSET                                  *
//* PERIODICIDAD: MENSUAL                                              *
//* AUTOR       : AXITY MEXICO                                         *
//* FECHA       : MARZO  2022                                          *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*  @MEX00-I  ......... ....... ..................................... *
//*--------------------------------------------------------------------*
//* UTILERIA   : ADUUMAIN.                                             *
//* OBJETIVO   : DESCARGA DE LA TABLA ZMDT800                          *
//*--------------------------------------------------------------------*
//ZM28PD03 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMUIPD28,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.FCT.BCUIND28.DESCARGA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(500,050),RLSE),
//            DCB=(BLKSIZE=0,RECFM=FB,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//SYSOUT   DD  SYSOUT=*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZM28PT02),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* UTILERIA   : IKJEFT01/ZM4DHA28                                     *
//* OBJETIVO   : REPORTE MENSUAL DE CONSOLIDACION DE CLIENTES FACTSET. *
//*--------------------------------------------------------------------*
//ZM28PD02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.FCT.BCUIND28.DESCARGA,
//            DISP=SHR
//SALIDA01 DD DSN=MXCP.ZM.FIX.FCT.BCUIND28.REPORT,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(100,050),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=221)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZM28PT01),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO BCUIND28 SIVA MULTIEMPRESA                  *
//**********************************************************************
