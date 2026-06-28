//ZMUFPM13 PROC
//**********************************************************************
//*                     - BBVA BANCOMER -                              *
//*                                                                    *
//*   APLICACION:  ZM REPORTE DE GESTION SIVA.                         *
//*                                                                    *
//*   PROCEDIM. :  ZMUFPM13                                            *
//*                                                                    *
//*   OBJETIVO  :  ACTUALIZA EN FORMA MENSUAL LOS DIFERENTES CORTES DE *
//*                LA TENENCIA DE BANCA PATRIMONIAL, ESTOS CORTES SON  *
//*                POR: CLIENTE, BANQUERO, UNIDAD GESTORA, DIVISION Y  *
//*                TIPO DE BANCA.                                      *
//*                                                                    *
//*   EJECUTAR DESPUES DE :                                            *
//*   EJECUTAR ANTES DE   :                                            *
//*   PERIODICIDAD        :  MENSUAL                                   *
//*                                                                    *
//*   ELABORADO POR: IVAN VILLAVICENCIO GLEZ ASP FECHA: 03-NOV-2009    *
//*--------------------------------------------------------------------*
//* MODIFICACION  USUARIO   FECHA              DESCRIPCION             *
//* ------------  -------  --------  --------------------------------  *
//* STF-20100705  XMA3079  05JUL10   EN PASOS PUF01P91 Y PUF01P92 SE   *
//*                                  CAMBIA LA LONGITUD DE REGISTRO DE *
//*                                  ARCHIVO DE SALIDA DE 169 A 207.   *
//*                                                                    *
//*--------------------------------------------------------------------*
//**********************************************************************
//* PASO    : PUF01P88                                                 *
//* PGM/UTIL: IDCAMS                                                   *
//* OBJETIVO: ELIMINA ARCHIVO                                          *
//* CONTROL :                                                          *
//**********************************************************************
//PUF01P88 EXEC PGM=IDCAMS
//SYSIN    DD DUMMY
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*                                                                    *
//**********************************************************************
//* PASO    : PUF01P89                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: SORTEA LA TENENCIA ACUMULADA DEL MUV.                    *
//* CONTROL : ZUF01T89                                                 *
//**********************************************************************
//PUF01P89 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*SORTIN   DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..ACUTENV2(0),
//SORTIN   DD DSN=MXCP.ZM.GDGD.SIE.E&EMP..TENENV2(0),
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.SIE.SALDOS.SORTTEN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=340,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF01T89),
//            DISP=SHR
//**********************************************************************
//* PASO    : PUF01P91                                                 *
//* PGM/UTIL: ZM4MU106 / IKJEFT01                                      *
//* OBJETIVO: TENENCIA MENSUAL POR CUENTA MUV MERCADOS, CAPITALES,     *
//*           DINERO, SDI RENTA FIJA, SóDIó RENTA VARIABLES.           *
//* CONTROL : ZUF01T91                                                 *
//**********************************************************************
//PUF01P91 EXEC PGM=IKJEFT01,COND=(4,LT)
//INTEACUM DD DSN=MXCP.ZM.FIX.SIE.SALDOS.SORTTEN,
//            DISP=SHR
//OUTTEMUV DD DSN=MXCP.ZM.FIX.UNLOAD.ACUMTEN.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE),
//* STF-20100705-INI
//*           DCB=(LRECL=169,RECFM=FB,BLKSIZE=0,DSORG=PS)
//            DCB=(LRECL=207,RECFM=FB,BLKSIZE=0,DSORG=PS)
//* STF-20100705-FIN
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
//* PASO    : PUF01P92                                                 *
//* PGM/UTIL: ICEMAN                                                   *
//* OBJETIVO: SORTEA LA TENENCIA MENSUAL POR CLIENTE, CUENTA Y TIPO DE *
//*           BANCA.                                                   *
//* CONTROL : ZUF01T92                                                 *
//**********************************************************************
//PUF01P92 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.UNLOAD.ACUMTEN.M&FECHA.,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.UNLOAD.ACUMTEN1.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//* STF-20100705-INI
//*           DCB=(LRECL=169,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=207,RECFM=FB,BLKSIZE=0,DSORG=PS),
//* STF-20100705-FIN
//            UNIT=3390,SPACE=(CYL,(200,100),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF01T92),DISP=SHR
//*
//**********************************************************************
//* PASO    : PUF01P93                                                 *
//* PGM/UTIL: ZM4MU107 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU107 QUE ACTUALIZA IMPORTES   *
//*           DE TENENCIA A NIVEL CLIENóTEó DEL PERIODO.               *
//* CONTROL : ZUF01T93                                                 *
//**********************************************************************
//PUF01P93 EXEC PGM=IKJEFT01,COND=(4,LT)
//ENTRADA1 DD DSN=MXCP.ZM.FIX.UNLOAD.ACUMTEN1.M&FECHA.,
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
//* PASO    : PUF01P94                                                 *
//* PGM/UTIL: ZM4MU108 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU108 QUE ACTUALIZA IMPORTES   *
//*           DE TENENCIA A NIVEL BANQUóERóO DEL PERIODO Y ANUAL DE    *
//*           BANCA PATRIMONIAL.       ó  ó                            *
//* CONTROL : ZUF01T94                                                 *
//**********************************************************************
//PUF01P94 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* PGM/UTIL: ZM4MU109 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU109 QUE ACTUALIZA IMPORTES   *
//*           DE TENENCIA A NIVEL UNIDAóD óDE GESTION DEL PERIODO Y    *
//*           ANUAL DE BANCA PATRIMONIAóL.ó                            *
//* CONTROL : ZUF01T95                                                 *
//**********************************************************************
//PUF01P95 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* PASO    : PUF01P96                                                 *
//* PGM/UTIL: ZM4MU110 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU110 QUE ACTUALIZA IMPORTES   *
//*           DE TENENCIA A NIVEL DIVISóIOóN Y TIPO DE BANCA DEL PERIO-*
//*           DO Y ANUAL DE BANCA PATRIóMOóNIAL.                       *
//* CONTROL : ZUF01T96                                                 *
//**********************************************************************
//PUF01P96 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* PGM/UTIL: ZM4MU111 / IKJEFT01                                      *
//* OBJETIVO: EJECUCION DEL PROGRAMA ZM4MU111 QUE ACTUALIZA IMPORTES   *
//*           MENSUALES DE TENENCIA TOTóALóES DEL PERIODO Y ANUAL DE   *
//*           BANCA PATRIMONIAL.       ó  ó                            *
//* CONTROL : ZUF01T97                                                 *
//**********************************************************************
//PUF01P97 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//*                        FINAL DE ZMUFPM13                           *
//**********************************************************************
