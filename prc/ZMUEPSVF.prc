//ZMUEPSVF PROC
//*
//*--------------------------------------------------------------------*
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPSVF                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZA LA SUBEVALUACION Y SOBREVALUACIÓN DE FONDOS *
//*                DE INVERSION                                        *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE:                                                *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   AUTOR           :  FSW-INDRA                                     *
//*                                                                    *
//*   FECHA           :  DICIENBRE 2017                                *
//*--------------------------------------------------------------------*
//*  UTILERIA   : ZM3MUCSV                                             *
//*  DESCRIPCION: GENERA LAS TARJETAS DE CONTROL PARA LAS DESCARGAS DE *
//*               LOS PASOS 6 Y 5                                      *
//*--------------------------------------------------------------------*
//ZMPSVF08 EXEC PGM=ZM3MUCSV,
//         PARM=('&AMB,&FECHA')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMSVFQS1 DD DSN=MXCP.ZM.FIX.SVF.EBCM.ZMSVFQS1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//ZMSVFQS2 DD DSN=MXCP.ZM.FIX.SVF.EBCM.ZMSVFQS2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//ZMSVFQS3 DD DSN=MXCP.ZM.FIX.SVF.EBCM.ZMSVFQS3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*--------------------------------------------------------------------*
//*  UTILERIA   : ADUUMAIN                                             *
//*  DESCRIPCION: REALIZA LA DESCARGA POR JOIN DE LA TABLAS EDVALCA,   *
//*               CONCEPT, PRECIO PARA OBTENER LS POSICIONES AL CIERRE *
//*               DE MES                                               *
//*--------------------------------------------------------------------*
//ZMPSVF07 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMPSVF07,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//SYSCNTL  DD DUMMY
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCUENSVF.DESPOSIC.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.SVF.EBCM.ZMSVFQS1,DISP=SHR
//*--------------------------------------------------------------------*
//*  UTILERIA   : ADUUMAIN                                             *
//*  DESCRIPCION: REALIZA LA DESCARGA POR JOIN DE LAS TABLAS EDMOVED,  *
//*               OPERA, CONCEPT Y PRECIO                              *
//*               PARA DESCARGA LAS OPERACIONES CON SUBSOBREVALUACION  *
//*               DE FONDOS                                            *
//*--------------------------------------------------------------------*
//ZMPSVF06 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMPSVF06,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//SYSCNTL  DD DUMMY
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.BCUENSVF.DESOPERA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.SVF.EBCM.ZMSVFQS2,DISP=SHR
//*--------------------------------------------------------------------*
//*  UTILERIA   : ICEMAN                                               *
//*  DESCRIPCION: SE FILTRA EL ARCHIVO DE OPERACIONES POR LA FECHA DE  *
//*               PROCESO.                                             *
//*--------------------------------------------------------------------*
//ZMPSVF05 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.BCUENSVF.DESOPERA.F&FECHA,
//            DISP=SHR
//*
//SORTOUT1 DD DSN=MXCP.ZM.FIX.BCUENSVF.DESOPERA.SRT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=274,RECFM=FB,BLKSIZE=0,
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.SVF.EBCM.ZMSVFQS3,DISP=SHR
//*--------------------------------------------------------------------*
//*  UTILERIA   : ICEMAN                                               *
//*  DESCRIPCION: REALIZA MATCH ENTRE EL ARCHIVO DE OPERACION Y  DE    *
//*               POSICION.                                            *
//*--------------------------------------------------------------------*
//*
//ZMPSVF04 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.BCUENSVF.DESPOSIC.F&FECHA,
//            DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.BCUENSVF.DESOPERA.SRT.F&FECHA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.BCUENSVF.MATCH.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=274,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPSVF03),DISP=SHR
//*--------------------------------------------------------------------*
//*  UTILERIA   : ICEMAN                                               *
//*  DESCRIPCION: ELIMINA REGISTROS DUPLICADOS                         *
//*--------------------------------------------------------------------*
//ZMPSVF03 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.BCUENSVF.MATCH.F&FECHA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.BCUENSVF.MATCH.SRT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=274,RECFM=FB,BLKSIZE=0,
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPSVF02),DISP=SHR
//*--------------------------------------------------------------------*
//*  UTILERIA   : ICEMAN                                               *
//*  DESCRIPCION: UNION DE LAS DESCARGAS DE LAS TABLAS DE FONDOS DE    *
//*               INVERSION.                                           *
//*--------------------------------------------------------------------*
//ZMPSVF02 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.BCUENSVF.MATCH.SRT.F&FECHA,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.BCUENSVF.DESOPERA.F&FECHA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.BCUENSVF.UNIONSVF.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            LRECL=274,RECFM=FB,BLKSIZE=0,
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMNSVF02),DISP=SHR
//*--------------------------------------------------------------------*
//*  PROGRAMA   : ZM4MUSVF                                             *
//*  DESCRIPCION: SE INVOCA AL PROGRAMA ZM4MUSVF PARA DAR DE ALTA LAS  *
//*               OPERACIONES DE FONDO DE INVERSION EN LA TABLA ZMDTSVF*
//*--------------------------------------------------------------------*
//ZMPSVF01 EXEC PGM=IKJEFT01,COND=(0,NE)
//ZMUSVTE0 DD DSN=MXCP.ZM.FIX.BCUENSVF.UNIONSVF.F&FECHA,
//            DISP=SHR
//*
//ZMUSVTS0 DD DSN=MXCP.ZM.FIX.BCUENSVF.ZM4DCSVF.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMNSVF01),DISP=SHR
//SYSIN    DD DUMMY
//*
