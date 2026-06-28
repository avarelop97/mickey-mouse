//ZMUFPM06 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM REPORTE GESTION SIVA                             *
//* PROCESO      : ZMUFPM06                                            *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : PROCESO QUE ACTUALIZA DE MANERA MENSUAL LA TABLA    *
//*                ZMDT768 QUE CONTIENE ACUMULADOS DE APERTURAS Y      *
//*                BAJAS DE BANCA PATRIMONIAL.                         *
//* REALIZO      : FABRICA DE SOFTWARE (XM010DG)                       *
//* FECHA        : 09 NOVIEMBRE 2009                                   *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-0.0.0-00  XXXXXXX DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF06P09                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ELIMINA ARCHIVOS QUE SERÁN USADOS EN LA DESCARGA DE     *
//*            APERTURAS Y BAJAS DEL MES PROCESADO.                    *
//*--------------------------------------------------------------------*
//PUF06P09 EXEC PGM=IDCAMS
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF06P08                                                *
//* UTILERIA : IKJEFT01/ZM4MU119                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU119 QUE REALIZA DESCARGA DE *
//*            ALTAS DEL MES EN CURSO.                                 *
//*--------------------------------------------------------------------*
//PUF06P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//S1ALTASM DD DSN=MXCP.ZM.FIX.ACTUALIZ.APERTUR.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0)
//SYSTSIN  DD DSN=DUMMY
//*--------------------------------------------------------------------*
//* PASO     : PUF06P07                                                *
//* UTILERIA : IKJEFT01/ZM4MU118                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU118 QUE REALIZA DESCARGA DE *
//*            BAJAS DEL MES EN CURSO.                                 *
//*--------------------------------------------------------------------*
//PUF06P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//S1BAJASM DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(LRECL=032,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSTSIN  DD DSN=DUMMY
//*--------------------------------------------------------------------*
//* PASO     : PUF06P10                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ORDENA DESCARGA DE BAJAS POR TIPO DE BANCA, PROMOTOR    *
//*            Y CLIENTE.                                              *
//*--------------------------------------------------------------------*
// IF (PUF06P07.RC = 0) THEN
//PUF06P10 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.M&FECHA.,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.SORT.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(020,010),RLSE),
//            DCB=(LRECL=032,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF06T10),DISP=SHR                   01130000
// ELSE
//PUF06P11 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//DD01     DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.SORT.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(020,010),RLSE),
//            DCB=(LRECL=032,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
// ENDIF
//*--------------------------------------------------------------------*
//* PASO     : PUF06P06                                                *
//* UTILERIA : IKJEFT01/ZM4MU113                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU113 QUE ACTUALIZA SUMATORIA *
//*            DEL NUMERO DE APERTURAS Y MONTOS A NIVEL BANQUERO DEL   *
//*            PERIODO Y ANUAL DE BANCA PATRIMONIAL.                   *
//*--------------------------------------------------------------------*
//PUF06P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.ACTUALIZ.APERTUR.M&FECHA.,DISP=SHR
//SALIDA1  DD DSN=MXCP.ZM.FIX.CTASDUPL.TABL776.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=DUMMY
//*--------------------------------------------------------------------*
//* PASO     : PUF06P05                                                *
//* UTILERIA : IKJEFT01/ZM4MU117                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU117 QUE ACTUALIZA SUMATORIA *
//*            DEL NUMERO DE BAJAS Y MONTOS A NIVEL BANQUERO DEL       *
//*            PERIODO Y ANUAL DE BANCA PATRIMONIAL.                   *
//*--------------------------------------------------------------------*
//PUF06P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1ZMBAJA DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.SORT.M&FECHA.,DISP=SHR
//*
//S1ZMCCTL DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJACTRL.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(020,10),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=DUMMY
//*--------------------------------------------------------------------*
//* PASO     : PUF06P04                                                *
//* UTILERIA : IKJEFT01/ZM4MU114                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU114 QUE ACTUALIZA SUMATORIA *
//*            DEL NUMERO DE APERTURAS/BAJAS Y MONTOS A NIVEL UNIDAD   *
//*            GESTORA DEL PERIODO Y ANUAL DE BANCA PATRIMONIAL.       *
//*--------------------------------------------------------------------*
//PUF06P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=DUMMY
//*--------------------------------------------------------------------*
//* PASO     : PUF06P03                                                *
//* UTILERIA : IKJEFT01/ZM4MU115                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU115 QUE ACTUALIZA SUMATORIA *
//*            DEL NUMERO DE APERTURAS/BAJAS Y MONTOS A NIVEL DIVISION *
//*            DEL PERIODO Y ANUAL DE BANCA PATRIMONIAL.               *
//*--------------------------------------------------------------------*
//PUF06P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=DUMMY
//*--------------------------------------------------------------------*
//* PASO     : PUF06P02                                                *
//* UTILERIA : IKJEFT01/ZM4MU116                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU116 QUE ACTUALIZA SUMATORIA *
//*            DEL NUMERO DE APERTURAS/BAJAS Y MONTOS A NIVEL BANCA DEL*
//*            PERIODO Y ANUAL DE BANCA PATRIMONIAL.                   *
//*--------------------------------------------------------------------*
//PUF06P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=DUMMY
//*--------------------------------------------------------------------*
//* PASO     : PUF06P01                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ELIMINA ARCHIVOS QUE SERÁN USADOS EN LA DESCARGA DE     *
//*            APERTURAS Y BAJAS DEL MES PROCESADO.                    *
//*--------------------------------------------------------------------*
//PUF06P01 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMUFPM06                        *
//*--------------------------------------------------------------------*
