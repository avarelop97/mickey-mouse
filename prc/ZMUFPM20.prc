//ZMUFPM20 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM REPORTE GESTION SIVA                             *
//* PROCESO      : ZMUFPM20                                            *
//* PERIODICIDAD : MENSUAL                                             *
//* OBJETIVO     : PROCESO QUE ACTUALIZA LAS CTASMUV DE BQR, UNG,      *
//*                DIV, BCA PARA CTAS 5555555                          *
//* REALIZO      : ASP (XMBO008)                                       *
//* FECHA        : 09 DICIEMBRE 2009                                   *
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
//* PASO     : PUF06P04                                                *
//* UTILERIA : IDCAMS                                                  *
//* OBJETIVO : ELIMINA ARCHIVOS QUE SERAN USADOS EN LA DESCARGA        *
//*--------------------------------------------------------------------*
//PUF06P04 EXEC PGM=IDCAMS
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO     : PUF06P03                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : REALIZAR DESCARGA DE CTAS 5555555                       *
//*--------------------------------------------------------------------*
//PUF06P03 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PUF06P03,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC1  DD DSN=MXCP.ZM.FIX.CTASMUV5.INGRESO.M&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(10,5),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=DUMMY
//*--------------------------------------------------------------------*
//* PASO     : PUF06P02                                                *
//* UTILERIA : IKJEFT01/ZM4MU050                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU050 QUE ACTUALIZA PRODUC    *
//*            COMO AAAAA                                              *
//*--------------------------------------------------------------------*
//PUF06P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1ZMBONI DD DSN=MXCP.ZM.FIX.CTASMUV5.INGRESO.M&FECHA.,DISP=SHR
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
//* OBJETIVO : ELIMINA ARCHIVOS QUE SERAN USADOS EN LA DESCARGA DE     *
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
//*                    FIN DEL PROCESO ZMUFPM20                        *
//*--------------------------------------------------------------------*
