//ZMUFPM15 PROC
//**********************************************************************
//*                     - BBVA BANCOMER -                              *
//*                                                                    *
//*   APLICACION:  ZM REPORTE DE GESTION SIVA.                         *
//*                                                                    *
//*   PROCEDIM. :  ZMUFPM15                                            *
//*                                                                    *
//*   OBJETIVO  :  ACTUALIZA EN FORMA MENSUAL LOS DIFERENTES CORTES DE *
//*                NUMERO DE CLIENTES DE BANCA PATRIMONIAL, ESTOS      *
//*                CORTES SON POR: BANQUERO, UNIDAD GESTORA,           *
//*                DIVISION Y TIPO DE BANCA.                           *
//*                                                                    *
//*   EJECUTAR DESPUES DE :                                            *
//*   EJECUTAR ANTES DE   :                                            *
//*   PERIODICIDAD        :  MENSUAL                                   *
//*                                                                    *
//*   ELABORADO POR: IVAN VILLAVICENCIO GLEZ ASP FECHA: 27-NOV-2009    *
//*--------------------------------------------------------------------*
//* MODIFICACION  USUARIO   FECHA              DESCRIPCION             *
//* ------------  -------  --------  --------------------------------  *
//* FS-0.0.0-00   XXXXXXX  DDMMMAA   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  *
//*--------------------------------------------------------------------*
//*
//**********************************************************************
//* PASO    : PUF01P92                                                 *
//* PGM/UTIL: IDCAMS                                                   *
//* OBJETIVO: ELIMINA ARCHIVO                                          *
//* CONTROL :                                                          *
//**********************************************************************
//PUF01P92 EXEC PGM=IDCAMS
//SYSIN    DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//**********************************************************************
//* PASO    : PUF01P93                                                 *
//* PGM/UTIL: ZM4MU121 / IKJEFT01                                      *
//* OBJETIVO: GENERA ARCHIVO DEL NUMERO DE CLIENTES ACTIVOS            *
//* CONTROL : ZUF01T93                                                 *
//**********************************************************************
//PUF01P93 EXEC PGM=IKJEFT01,COND=(4,LT)
//SALIDCTE DD DSN=MXCP.ZM.FIX.ARCHIV.CLIENTE,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSUDUMP DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T93),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF01P94                                                 *
//* PGM/UTIL: ZM4MU122 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU122 QUE ACTUALIZA EL NUMERO  *
//*           MENSUAL DE CLIENTES A NIVEL BANQUERO.                    *
//* CONTROL :                                                          *
//**********************************************************************
//PUF01P94 EXEC PGM=IKJEFT01,COND=(4,LT)
//ENTRADA1 DD DSN=MXCP.ZM.FIX.ARCHIV.CLIENTE,
//            DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//* PASO    : PUF01P95                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: SORTEA EL ARCHIVO DE CLIENTES ACTIVOS POR: CLIENTE ,     *
//*           CENTRO DE COSTOS Y TIPO DE BANCA                         *
//* CONTROL : ZUF01T94                                                 *
//**********************************************************************
//PUF01P95 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ARCHIV.CLIENTE,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ARCHIV.UGESTORA.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF01T94),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF01P96                                                 *
//* PGM/UTIL: ZM4MU123 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU123 QUE ACTUALIZA EL NUMERO  *
//*           MENSUAL DE CLIENTES A NIVEL CENTRO DE COSTOS (UNG).      *
//* CONTROL :                                                          *
//**********************************************************************
//PUF01P96 EXEC PGM=IKJEFT01,COND=(4,LT)
//ENTRADA2 DD DSN=MXCP.ZM.FIX.ARCHIV.UGESTORA.M&FECHA.,
//            DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//* PASO    : PUF01P97                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: SORTEA EL ARCHIVO DE CLIENTES ACTIVOS POR: CLIENTE ,     *
//*           DIVISION Y TIPO DE BANCA                                 *
//* CONTROL : ZUF01T95                                                 *
//**********************************************************************
//PUF01P97 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ARCHIV.CLIENTE,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ARCHIV.DIVISION.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF01T95),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF01P98                                                 *
//* PGM/UTIL: ZM4MU124 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU124 QUE ACTUALIZA EL NUMERO  *
//*           MENSUAL DE CLIENTES A NIVEL DIVISION.                    *
//* CONTROL :                                                          *
//**********************************************************************
//PUF01P98 EXEC PGM=IKJEFT01,COND=(4,LT)
//ENTRADA3 DD DSN=MXCP.ZM.FIX.ARCHIV.DIVISION.M&FECHA.,
//            DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//* PASO    : PUF01P99                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: SORTEA EL ARCHIVO DE CLIENTES ACTIVOS POR: CLIENTE ,     *
//*           Y TIPO DE BANCA                                          *
//* CONTROL : ZUF01T96                                                 *
//**********************************************************************
//PUF01P99 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ARCHIV.CLIENTE,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ARCHIV.TBANCA.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF01T96),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF01100                                                 *
//* PGM/UTIL: ZM4MU125 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU125 QUE ACTUALIZA EL NUMERO  *
//*           MENSUAL DE CLIENTES A NIVEL TIPO DE BANCA.               *
//* CONTROL :                                                          *
//**********************************************************************
//PUF01100 EXEC PGM=IKJEFT01,COND=(4,LT)
//ENTRADA4 DD DSN=MXCP.ZM.FIX.ARCHIV.TBANCA.M&FECHA.,
//            DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSTSIN  DD DUMMY
//*
//**********************************************************************
//*                        FINAL DE ZMUFPM15                           *
//**********************************************************************
