//ZMUFPM32 PROC
//**********************************************************************
//*                     - BBVA BANCOMER -                              *
//*                                                                    *
//*   APLICACION:  ZM REPORTE DE GESTION SIVA.                         *
//*                                                                    *
//*   PROCEDIM. :  ZMUFPM32                                            *
//*                                                                    *
//*   OBJETIVO  :  ACTUALIZA EN FORMA MENSUAL LOS DIFERENTES CORTES DE *
//*                LA TENENCIA DE BANCA PATRIMONIAL, ESTOS CORTES SON  *
//*                POR: CLIENTE, BANQUERO, UNIDAD GESTORA, DIVISION Y  *
//*                TIPO DE BANCA.                                      *
//*                                                                    *
//*   EJECUTAR DESPUES DE :                                            *
//*   EJECUTAR ANTES DE   :                                            *
//*   PERIODICIDAD        :  EVENTUAL                                  *
//*                                                                    *
//*   ELABORADO POR: ASP (LMSE)                  FECHA: 24-FEB-2010    *
//*--------------------------------------------------------------------*
//* MODIFICACION  USUARIO   FECHA              DESCRIPCION             *
//* ------------  -------  --------  --------------------------------  *
//* FS-0.0.0-00   XXXXXXX  DDMMMAA   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  *
//*--------------------------------------------------------------------*
//*                                                                    *
//**********************************************************************
//* REPROCESO MES DE DICIEMBRE 2009                                    *
//**********************************************************************
//* PASO    : PUF32250                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: SORTEA LA TENENCIA ACUMULADA DEL MUV.                    *
//* CONTROL : ZUF32T01                                                 *
//**********************************************************************
//PUF32250 EXEC PGM=ICEMAN
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..ACUTENV2(-2),
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SIE.SALDOS.TENENC1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=340,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF32T01),
//            DISP=SHR
//**********************************************************************
//* PASO    : PUF32240                                                 *
//* PGM/UTIL: ZM4MU106 / IKJEFT01                                      *
//* OBJETIVO: TENENCIA MENSUAL POR CUENTA MUV MERCADOS, CAPITALES,     *
//*           DINERO, SDI RENTA FIJA, SóDIó RENTA VARIABLES.           *
//* CONTROL : ZUF01T91                                                 *
//**********************************************************************
//PUF32240 EXEC PGM=IKJEFT01,COND=(4,LT)
//INTEACUM DD DSN=MXCP.ZM.FIX.SIE.SALDOS.TENENC1,
//            DISP=SHR
//OUTTEMUV DD DSN=MXCP.ZM.FIX.LOAD.TENENC1.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE),
//            DCB=(LRECL=169,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSUDUMP DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T91),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF32230                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: SORTEA LA TENENCIA MENSUAL POR CLIENTE, CUENTA Y TIPO DE *
//*           BANCA.                                                   *
//* CONTROL : ZUF01T92                                                 *
//**********************************************************************
//PUF32230 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.LOAD.TENENC1.M&FECHA.,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.LOAD.TENENC1.SORT.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=169,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF01T92),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF32220                                                 *
//* PGM/UTIL: ZM4MU107 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU107 QUE ACTUALIZA IMPORTES   *
//*           DE TENENCIA A NIVEL CLIENóTEó DEL PERIODO.               *
//* CONTROL : ZUF01T93                                                 *
//**********************************************************************
//PUF32220 EXEC PGM=IKJEFT01,COND=(4,LT)
//ENTRADA1 DD DSN=MXCP.ZM.FIX.LOAD.TENENC1.SORT.M&FECHA.,
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
//* PASO    : PUF32210                                                 *
//* PGM/UTIL: ZM4MU108 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU108 QUE ACTUALIZA IMPORTES   *
//*           DE TENENCIA A NIVEL BANQUóERóO DEL PERIODO Y ANUAL DE    *
//*           BANCA PATRIMONIAL.       ó  ó                            *
//* CONTROL : ZUF01T94                                                 *
//**********************************************************************
//PUF32210 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* PASO    : PUF32200                                                 *
//* PGM/UTIL: ZM4MU109 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU109 QUE ACTUALIZA IMPORTES   *
//*           DE TENENCIA A NIVEL UNIDAóD óDE GESTION DEL PERIODO Y    *
//*           ANUAL DE BANCA PATRIMONIAóL.ó                            *
//* CONTROL : ZUF01T95                                                 *
//**********************************************************************
//PUF32200 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* PASO    : PUF32190                                                 *
//* PGM/UTIL: ZM4MU110 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU110 QUE ACTUALIZA IMPORTES   *
//*           DE TENENCIA A NIVEL DIVISóIOóN Y TIPO DE BANCA DEL PERIO-*
//*           DO Y ANUAL DE BANCA PATRIóMOóNIAL.                       *
//* CONTROL : ZUF01T96                                                 *
//**********************************************************************
//PUF32190 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* PASO    : PUF32180                                                 *
//* PGM/UTIL: ZM4MU111 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU111 QUE ACTUALIZA IMPORTES   *
//*           MENSUALES DE TENENCIA TOTóALóES DEL PERIODO Y ANUAL DE   *
//*           BANCA PATRIMONIAL.       ó  ó                            *
//* CONTROL : ZUF01T97                                                 *
//**********************************************************************
//PUF32180 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* REPROCESO MES DE ENERO 2010                                        *
//**********************************************************************
//* PASO    : PUF32170                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: SORTEA LA TENENCIA ACUMULADA DEL MUV.                    *
//* CONTROL : ZUF32T02                                                 *
//**********************************************************************
//PUF32170 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..ACUTENV2(-1),
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SIE.SALDOS.TENENC2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=340,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF32T02),
//            DISP=SHR
//**********************************************************************
//* PASO    : PUF32160                                                 *
//* PGM/UTIL: ZM4MU106 / IKJEFT01                                      *
//* OBJETIVO: TENENCIA MENSUAL POR CUENTA MUV MERCADOS, CAPITALES,     *
//*           DINERO, SDI RENTA FIJA, SóDIó RENTA VARIABLES.           *
//* CONTROL : ZUF01T91                                                 *
//**********************************************************************
//PUF32160 EXEC PGM=IKJEFT01,COND=(4,LT)
//INTEACUM DD DSN=MXCP.ZM.FIX.SIE.SALDOS.TENENC2,
//            DISP=SHR
//OUTTEMUV DD DSN=MXCP.ZM.FIX.LOAD.TENENC2.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE),
//            DCB=(LRECL=169,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSUDUMP DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T91),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF32150                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: SORTEA LA TENENCIA MENSUAL POR CLIENTE, CUENTA Y TIPO DE *
//*           BANCA.                                                   *
//* CONTROL : ZUF01T92                                                 *
//**********************************************************************
//PUF32150 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.LOAD.TENENC2.M&FECHA.,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.LOAD.TENENC2.SORT.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=169,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF01T92),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF32140                                                 *
//* PGM/UTIL: ZM4MU107 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU107 QUE ACTUALIZA IMPORTES   *
//*           DE TENENCIA A NIVEL CLIENóTEó DEL PERIODO.               *
//* CONTROL : ZUF01T93                                                 *
//**********************************************************************
//PUF32140 EXEC PGM=IKJEFT01,COND=(4,LT)
//ENTRADA1 DD DSN=MXCP.ZM.FIX.LOAD.TENENC2.SORT.M&FECHA.,
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
//* PASO    : PUF32130                                                 *
//* PGM/UTIL: ZM4MU108 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU108 QUE ACTUALIZA IMPORTES   *
//*           DE TENENCIA A NIVEL BANQUóERóO DEL PERIODO Y ANUAL DE    *
//*           BANCA PATRIMONIAL.       ó  ó                            *
//* CONTROL : ZUF01T94                                                 *
//**********************************************************************
//PUF32130 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* PASO    : PUF32120                                                 *
//* PGM/UTIL: ZM4MU109 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU109 QUE ACTUALIZA IMPORTES   *
//*           DE TENENCIA A NIVEL UNIDAóD óDE GESTION DEL PERIODO Y    *
//*           ANUAL DE BANCA PATRIMONIAóL.ó                            *
//* CONTROL : ZUF01T95                                                 *
//**********************************************************************
//PUF32120 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* PASO    : PUF32110                                                 *
//* PGM/UTIL: ZM4MU110 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU110 QUE ACTUALIZA IMPORTES   *
//*           DE TENENCIA A NIVEL DIVISóIOóN Y TIPO DE BANCA DEL PERIO-*
//*           DO Y ANUAL DE BANCA PATRIóMOóNIAL.                       *
//* CONTROL : ZUF01T96                                                 *
//**********************************************************************
//PUF32110 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* PASO    : PUF32100                                                 *
//* PGM/UTIL: ZM4MU111 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU111 QUE ACTUALIZA IMPORTES   *
//*           MENSUALES DE TENENCIA TOTóALóES DEL PERIODO Y ANUAL DE   *
//*           BANCA PATRIMONIAL.       ó  ó                            *
//* CONTROL : ZUF01T97                                                 *
//**********************************************************************
//PUF32100 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* REPROCESO MES DE FEBRERO 2010                                      *
//**********************************************************************
//* PASO    : PUF32090                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: SORTEA LA TENENCIA ACUMULADA DEL MUV.                    *
//* CONTROL : ZUF32T03                                                 *
//**********************************************************************
//PUF32090 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..ACUTENV2(0),
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SIE.SALDOS.TENENC3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=340,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF32T03),
//            DISP=SHR
//**********************************************************************
//* PASO    : PUF32080                                                 *
//* PGM/UTIL: ZM4MU106 / IKJEFT01                                      *
//* OBJETIVO: TENENCIA MENSUAL POR CUENTA MUV MERCADOS, CAPITALES,     *
//*           DINERO, SDI RENTA FIJA, SóDIó RENTA VARIABLES.           *
//* CONTROL : ZUF01T91                                                 *
//**********************************************************************
//PUF32080 EXEC PGM=IKJEFT01,COND=(4,LT)
//INTEACUM DD DSN=MXCP.ZM.FIX.SIE.SALDOS.TENENC3,
//            DISP=SHR
//OUTTEMUV DD DSN=MXCP.ZM.FIX.LOAD.TENENC3.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE),
//            DCB=(LRECL=169,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSUDUMP DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUF01T91),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF32070                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: SORTEA LA TENENCIA MENSUAL POR CLIENTE, CUENTA Y TIPO DE *
//*           BANCA.                                                   *
//* CONTROL : ZUF01T92                                                 *
//**********************************************************************
//PUF32070 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.LOAD.TENENC3.M&FECHA.,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.LOAD.TENENC3.SORT.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=169,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF01T92),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF32060                                                 *
//* PGM/UTIL: ZM4MU107 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU107 QUE ACTUALIZA IMPORTES   *
//*           DE TENENCIA A NIVEL CLIENóTEó DEL PERIODO.               *
//* CONTROL : ZUF01T93                                                 *
//**********************************************************************
//PUF32060 EXEC PGM=IKJEFT01,COND=(4,LT)
//ENTRADA1 DD DSN=MXCP.ZM.FIX.LOAD.TENENC3.SORT.M&FECHA.,
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
//* PASO    : PUF32050                                                 *
//* PGM/UTIL: ZM4MU108 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU108 QUE ACTUALIZA IMPORTES   *
//*           DE TENENCIA A NIVEL BANQUóERóO DEL PERIODO Y ANUAL DE    *
//*           BANCA PATRIMONIAL.       ó  ó                            *
//* CONTROL : ZUF01T94                                                 *
//**********************************************************************
//PUF32050 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* PASO    : PUF32040                                                 *
//* PGM/UTIL: ZM4MU109 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU109 QUE ACTUALIZA IMPORTES   *
//*           DE TENENCIA A NIVEL UNIDAóD óDE GESTION DEL PERIODO Y    *
//*           ANUAL DE BANCA PATRIMONIAóL.ó                            *
//* CONTROL : ZUF01T95                                                 *
//**********************************************************************
//PUF32040 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* PASO    : PUF32030                                                 *
//* PGM/UTIL: ZM4MU110 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU110 QUE ACTUALIZA IMPORTES   *
//*           DE TENENCIA A NIVEL DIVISóIOóN Y TIPO DE BANCA DEL PERIO-*
//*           DO Y ANUAL DE BANCA PATRIóMOóNIAL.                       *
//* CONTROL : ZUF01T96                                                 *
//**********************************************************************
//PUF32030 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* PASO    : PUF32020                                                 *
//* PGM/UTIL: ZM4MU111 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU111 QUE ACTUALIZA IMPORTES   *
//*           MENSUALES DE TENENCIA TOTóALóES DEL PERIODO Y ANUAL DE   *
//*           BANCA PATRIMONIAL.       ó  ó                            *
//* CONTROL : ZUF01T97                                                 *
//**********************************************************************
//PUF32020 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//*                        FINAL DE ZMUFPM32                           *
//**********************************************************************
