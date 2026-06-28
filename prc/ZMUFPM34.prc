//ZMUFPM34 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM REPORTE GESTION SIVA                             *
//* PROCESO      : ZMUFPM34                                            *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : REPROCESO DE BAJAS DE LOS MESES DE ENERO,FEBRER 2010*
//*                Y DICIEMBRE 2009.                                   *
//* REALIZO      : ASP                                                 *
//* FECHA        : MARZO 2010                                          *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* FS-0.0.0-00  XXXXXXX DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*
//*REPROCESO DICIEMBRE 2009
//*--------------------------------------------------------------------*
//* PASO     : PUF06P09                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ELIMINA ARCHIVOS QUE SERÁN USADOS EN LA DESCARGA DE     *
//*            APERTURAS Y BAJAS DEL MES PROCESADO.                    *
//*--------------------------------------------------------------------*
//PUF34P99 EXEC PGM=IDCAMS
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF06P07                                                *
//* UTILERIA : IKJEFT01/ZM4MU118                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU118 QUE REALIZA DESCARGA DE *
//*            BAJAS DEL MES EN CURSO.                                 *
//*--------------------------------------------------------------------*
//PUF34P97 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//S1BAJASM DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.M091231,
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
// IF (PUF34P97.RC = 0) THEN
//PUF34P95 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.M091231,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.SORT.M091231,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(020,010),RLSE),
//            DCB=(LRECL=032,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF06T10),DISP=SHR                   01130000
// ELSE
//PUF34P94 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//DD01     DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.SORT.M091231,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(020,010),RLSE),
//            DCB=(LRECL=032,RECFM=FB,BLKSIZE=0,DSORG=PS)
// ENDIF
//*--------------------------------------------------------------------*
//* PASO     : PUF06P05                                                *
//* UTILERIA : IKJEFT01/ZM4MU117                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU117 QUE ACTUALIZA SUMATORIA *
//*            DEL NUMERO DE BAJAS Y MONTOS A NIVEL BANQUERO DEL       *
//*            PERIODO Y ANUAL DE BANCA PATRIMONIAL.                   *
//*--------------------------------------------------------------------*
//PUF34P93 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1ZMBAJA DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.SORT.M091231,DISP=SHR
//*
//S1ZMCCTL DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJACTRL.M091231,
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
//PUF34P91 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//PUF34P89 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//PUF34P87 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//PUF34P85 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=DUMMY
//*
//*REPROCESO ENERO 2010
//*--------------------------------------------------------------------*
//* PASO     : PUF06P09                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ELIMINA ARCHIVOS QUE SERÁN USADOS EN LA DESCARGA DE     *
//*            APERTURAS Y BAJAS DEL MES PROCESADO.                    *
//*--------------------------------------------------------------------*
//PUF34P83 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF06P07                                                *
//* UTILERIA : IKJEFT01/ZM4MU118                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU118 QUE REALIZA DESCARGA DE *
//*            BAJAS DEL MES EN CURSO.                                 *
//*--------------------------------------------------------------------*
//PUF34P81 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//S1BAJASM DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.M100129,
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
// IF (PUF34P81.RC = 0) THEN
//PUF34P79 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.M100129,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.SORT.M100129,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(020,010),RLSE),
//            DCB=(LRECL=032,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF06T10),DISP=SHR                   01130000
// ELSE
//PUF34P78 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//DD01     DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.SORT.M100129,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(020,010),RLSE),
//            DCB=(LRECL=032,RECFM=FB,BLKSIZE=0,DSORG=PS)
// ENDIF
//*--------------------------------------------------------------------*
//* PASO     : PUF06P05                                                *
//* UTILERIA : IKJEFT01/ZM4MU117                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU117 QUE ACTUALIZA SUMATORIA *
//*            DEL NUMERO DE BAJAS Y MONTOS A NIVEL BANQUERO DEL       *
//*            PERIODO Y ANUAL DE BANCA PATRIMONIAL.                   *
//*--------------------------------------------------------------------*
//PUF34P77 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1ZMBAJA DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.SORT.M100129,DISP=SHR
//*
//S1ZMCCTL DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJACTRL.M100129,
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
//PUF34P75 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//PUF34P73 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//PUF34P71 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//PUF34P69 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=DUMMY
//*
//*REPROCESO FEBRERO 2010
//*--------------------------------------------------------------------*
//* PASO     : PUF06P09                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : ELIMINA ARCHIVOS QUE SERÁN USADOS EN LA DESCARGA DE     *
//*            APERTURAS Y BAJAS DEL MES PROCESADO.                    *
//*--------------------------------------------------------------------*
//PUF34P67 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF06P07                                                *
//* UTILERIA : IKJEFT01/ZM4MU118                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU118 QUE REALIZA DESCARGA DE *
//*            BAJAS DEL MES EN CURSO.                                 *
//*--------------------------------------------------------------------*
//PUF34P65 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//S1BAJASM DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.M100226,
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
// IF (PUF34P65.RC = 0) THEN
//PUF34P63 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.M100226,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.SORT.M100226,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(020,010),RLSE),
//            DCB=(LRECL=032,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUF06T10),DISP=SHR                   01130000
// ELSE
//PUF34P62 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//DD01     DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.SORT.M100226,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(020,010),RLSE),
//            DCB=(LRECL=032,RECFM=FB,BLKSIZE=0,DSORG=PS)
// ENDIF
//*--------------------------------------------------------------------*
//* PASO     : PUF06P05                                                *
//* UTILERIA : IKJEFT01/ZM4MU117                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU117 QUE ACTUALIZA SUMATORIA *
//*            DEL NUMERO DE BAJAS Y MONTOS A NIVEL BANQUERO DEL       *
//*            PERIODO Y ANUAL DE BANCA PATRIMONIAL.                   *
//*--------------------------------------------------------------------*
//PUF34P61 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1ZMBAJA DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJAS.SORT.M100226,DISP=SHR
//*
//S1ZMCCTL DD DSN=MXCP.ZM.FIX.ACTUALIZ.BAJACTRL.M100226,
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
//PUF34P59 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//PUF34P57 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//PUF34P55 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//PUF34P53 EXEC PGM=IDCAMS,COND=(4,LT)
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
