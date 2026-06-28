//ZMUFPM08 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM REPORTE GESTION SIVA                             *
//* PROCESO      : ZMUFPM08                                            *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : PROCESO QUE ACTUALIZA DE MANERA MENSUAL LA TABLA    *
//*                ZMDT768 QUE CONTIENE ACUMULADOS DE BONIFICACIONES   *
//*                DE BANCA PATRIMONIAL.                               *
//* REALIZO      : ASP (HRRSR)                                         *
//* FECHA        : 04 DICIEMBRE 2009                                   *
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
//* PASO     : PUF08P07                                                *
//* UTILERIA : IDCAMS                                                  *
//* OBJETIVO : ELIMINA ARCHIVOS QUE SERAN USADOS EN LA DESCARGA DE     *
//*            BONIFICACIONES DEL MES PROCESADO.                       *
//*--------------------------------------------------------------------*
//PUF08P07 EXEC PGM=IDCAMS
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF08P06                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : REALIZAR DESCARGA DE BONIFICACIONES PROCESADAS POR MES Y*
//*            AÑO DE BANCA PRIVADA Y PATRIMONIAL.                     *
//*--------------------------------------------------------------------*
//PUF08P06 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PUF08P08,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC1  DD DSN=MXCP.ZM.FIX.ACTUALIZ.BONIFICA.UNLD.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=DUMMY
//*--------------------------------------------------------------------*
//* PASO     : PUF08P6A                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : AJUSTA A UNA POSICION XSEG (TIPO BANCA)                 *
//*--------------------------------------------------------------------*
//PUF08P6A EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ACTUALIZ.BONIFICA.UNLD.M&FECHA.,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ACTUALIZ.BONIFICA.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF08P05                                                *
//* UTILERIA : IKJEFT01/ZM4MU030                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU030 QUE ACTUALIZA SUMATORIA *
//*            DEL NUMERO DE BONIFICACIONES A NIVEL BANQUERO DEL       *
//*            PERIODO Y ANUAL DE BANCA PATRIMONIAL.                   *
//*--------------------------------------------------------------------*
//PUF08P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1ZMBONI DD DSN=MXCP.ZM.FIX.ACTUALIZ.BONIFICA.M&FECHA.,DISP=SHR
//*
//S1ZMCCTL DD DSN=MXCP.ZM.FIX.CONTROL.BONIFICA.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
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
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF08P04                                                *
//* UTILERIA : IKJEFT01/ZM4MU031                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU031 QUE ACTUALIZA SUMATORIA *
//*            DEL NUMERO DE BONIFICACIONES  Y MONTOS A NIVEL UNIDAD   *
//*            GESTORA DEL PERIODO Y ANUAL DE BANCA PATRIMONIAL.       *
//*--------------------------------------------------------------------*
//PUF08P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF08P03                                                *
//* UTILERIA : IKJEFT01/ZM4MU032                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU032 QUE ACTUALIZA SUMATORIA *
//*            DEL NUMERO DE BONIFICACIONES  Y MONTOS A NIVEL DIVISION *
//*            DEL PERIODO Y ANUAL DE BANCA PATRIMONIAL.               *
//*--------------------------------------------------------------------*
//PUF08P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF08P02                                                *
//* UTILERIA : IKJEFT01/ZM4MU033                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU033 QUE ACTUALIZA SUMATORIA *
//*            DEL NUMERO DE BONIFICACIONES  Y MONTOS A NIVEL BANCA DEL*
//*            PERIODO Y ANUAL DE BANCA PATRIMONIAL.                   *
//*--------------------------------------------------------------------*
//PUF08P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF08P01                                                *
//* UTILERIA : IDCAMS                                                  *
//* OBJETIVO : ELIMINA ARCHIVOS QUE SERAN USADOS EN LA DESCARGA DE     *
//*            APERTURAS Y BAJAS DEL MES PROCESADO.                    *
//*--------------------------------------------------------------------*
//*PUF08P01 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//*SYSOUT   DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*AMSDUMP  DD SYSOUT=*
//*
//*SYSIN    DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMUFPM08                        *
//*--------------------------------------------------------------------*
