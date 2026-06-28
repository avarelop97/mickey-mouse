//ZMUFPM61 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM INGRESOS Y RENDIMIENTOS                          *
//* PROCESO      : ZMUFPM61                                            *
//* PERIODICIDAD : EVENTUAL                                            *
//* OBJETIVO     : PROCESO QUE ACTUALIZA DE MANERA EVENTAL LA TABLA    *
//*                ZMDT768 QUE CONTIENE ACUMULADOS DE INGRESOS  Y      *
//*                EGESOS DE BANCA PATRIMONIAL.                        *
//* REALIZO      : ASP (HRRSR)                                         *
//* FECHA        : 17 DICIEMBRE 2009                                   *
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
//* PASO     : PUF61P18                                                *
//* UTILERIA : IDCAMS                                                  *
//* OBJETIVO : ELIMINA ARCHIVOS QUE SERAN USADOS EN LA DESCARGA DE     *
//*            INGRESOS Y RENDIMIENTOS.                                *
//*--------------------------------------------------------------------*
//PUF61P18 EXEC PGM=IDCAMS
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=DUMMY
//*--------------------------------------------------------------------*
//* PASO     : PUF61P17                                                *
//* UTILERIA : ADUUMAIN                                                *
//* OBJETIVO : REALIZAR DESCARGA DE APERTURAS DEL MES PROCESADO POR MES*
//*            AÑO DEL PROCESO Y SOLO BANCA PRIVADA Y PATRIMONIAL.     *
//*--------------------------------------------------------------------*
//PUF61P17 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PUF61P17,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC1  DD DSN=MXCP.ZM.TMP.UNLDT705,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,BUFNO=30,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0)
//*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=DUMMY
//*--------------------------------------------------------------------*
//* PASO     : PUF61P16                                                *
//* UTILERIA : IKJEFT01/ZM4MU901                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU901 DEPURADOR DE REGISTROS  *
//*--------------------------------------------------------------------*
//PUF61P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1ZMINGR DD DSN=MXCP.ZM.TMP.UNLDT705,DISP=SHR
//*
//S2ZMICTE DD DSN=MXCP.ZM.TMP.ZMV001.DEPURADO.CTE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=100,RECFM=FB,BLKSIZE=0)
//*
//S1ZMCCTL DD DSN=MXCP.ZM.TMP.ZMV001.CTRLU001,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=161,RECFM=FB,BLKSIZE=0)
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
//* PASO     : PUF61P15                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : EJECUCION DEL SORT PARA ORDENAR EL ARCH POR CTE Y CTA   *
//*--------------------------------------------------------------------*
//PUF61P15 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ZMV001.DEPURADO.CTE,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZMV002.SORT.CTE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=100,RECFM=FB,BLKSIZE=0)
//SYSIN    DD DSN=DUMMY
//*--------------------------------------------------------------------*
//* PASO     : PUF61P14                                                *
//* UTILERIA : IKJEFT01/ZM4MU902                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU902 QUE CALCULA ELL CORTE   *
//*            POR CLIENTE DE INGRESOS Y RENDIMIENTOS                  *
//*--------------------------------------------------------------------*
//PUF61P14 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DEPCTE DD DSN=MXCP.ZM.TMP.ZMV002.SORT.CTE,DISP=SHR
//*
//S1CRTCTE DD DSN=MXCP.ZM.TMP.ZMV002.CORTE.CTE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=323,RECFM=FB,BLKSIZE=0)
//*
//S2CONTRL DD DSN=MXCP.ZM.TMP.ZMV002.CTRLU002,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=161,RECFM=FB,BLKSIZE=0)
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
//* PASO     : PUF61P12                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : EJECUCION DEL SORT PARA ORDENAR EL ARCH POR BANQUERO    *
//*--------------------------------------------------------------------*
//PUF61P12 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ZMV002.CORTE.CTE,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZMV003.SORT.BQR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=323,RECFM=FB,BLKSIZE=0)
//SYSIN    DD DSN=DUMMY
//*--------------------------------------------------------------------*
//* PASO     : PUF61P11                                                *
//* UTILERIA : IKJEFT01/ZM4MU903                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU903 QUE CALCULA EL CORTE    *
//*            POR BANQUERO DE INGRESOS.                               *
//*--------------------------------------------------------------------*
//PUF61P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1ZMV003 DD DSN=MXCP.ZM.TMP.ZMV003.SORT.BQR,DISP=SHR
//*
//S1ZMV003 DD DSN=MXCP.ZM.TMP.ZMV003.CORTE.BQR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=323,RECFM=FB,BLKSIZE=0)
//*
//S2ZMV003 DD DSN=MXCP.ZM.TMP.ZMV003.CTRLU003,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=443,RECFM=FB,BLKSIZE=0)
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
//* PASO     : PUF61P10                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : EJECUCION DEL SORT PARA ORDENAR EL ARCH UNIDAD GESTORA  *
//*--------------------------------------------------------------------*
//PUF61P10 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.ZMV003.CORTE.BQR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZMV004.SORT.UNG,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=323,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD DSN=DUMMY
//*--------------------------------------------------------------------*
//* PASO     : PUF61P09                                                *
//* UTILERIA : IKJEFT01/ZM4MU904                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU904 QUE CALCULA EL CORTE    *
//*            POR UNIDAD GESTORA DE INGRESOS.                         *
//*--------------------------------------------------------------------*
//PUF61P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1ENTRAD DD DSN=MXCP.ZM.TMP.ZMV004.SORT.UNG,DISP=SHR
//*
//S1SALIDA DD DSN=MXCP.ZM.TMP.ZMV004.CORTE.UNG,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=323,RECFM=FB,BLKSIZE=0)
//*
//S2CIFRAS DD DSN=MXCP.ZM.TMP.ZMV004.CTRLU004,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=443,RECFM=FB,BLKSIZE=0)
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
//* PASO     : PUF61P08                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : EJECUCION DEL SORT PARA ORDENAR EL ARCH POR DIVISION    *
//*--------------------------------------------------------------------*
//PUF61P08 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.ZMV004.CORTE.UNG,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZMV005.SORT.DIV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=323,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD DSN=DUMMY
//*--------------------------------------------------------------------*
//* PASO     : PUF61P07                                                *
//* UTILERIA : IKJEFT01/ZM4MU905                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU905 QUE CALCULA EL CORTE    *
//*            POR DIVISION DE INGRESOS                                *
//*--------------------------------------------------------------------*
//PUF61P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.TMP.ZMV005.SORT.DIV,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.TMP.ZMV005.CORTE.DIV,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=323,RECFM=FB,BLKSIZE=0)
//*
//SALCTRL DD DSN=MXCP.ZM.TMP.ZMV005.CTRLU005,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=443,RECFM=FB,BLKSIZE=0)
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
//* PASO     : PUF61P06                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : EJECUCION DEL SORT PARA ORDENAR EL ARCHIVO POR BANCA    *
//*--------------------------------------------------------------------*
//PUF61P06 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.ZMV005.CORTE.DIV,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZMV006.SORT.BCA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=323,RECFM=FB,BLKSIZE=0)
//*
//SYSIN    DD DSN=DUMMY
//*--------------------------------------------------------------------*
//* PASO     : PUF61P05                                                *
//* UTILERIA : IKJEFT01/ZM4MU906                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU906 QUE CALCULA EL CORTE    *
//*            POR BANCA DE INGRESOS                                   *
//*--------------------------------------------------------------------*
//PUF61P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.TMP.ZMV006.SORT.BCA,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.TMP.ZMV006.CORTE.BCA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=323,RECFM=FB,BLKSIZE=0)
//*
//CONTROL1 DD DSN=MXCP.ZM.TMP.ZMV006.CTRLU006,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=443,RECFM=FB,BLKSIZE=0)
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
//* PASO     : PUF61P04                                                *
//* UTILERIA : ICEMAN                                                  *
//* OBJETIVO : EJECUCION DEL SORT PARA CONCATENAR ARCH DE CORTES       *
//*--------------------------------------------------------------------*
//PUF61P04 EXEC PGM=SORT,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.ZMV002.CORTE.CTE,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ZMV003.CORTE.BQR,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ZMV004.CORTE.UNG,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ZMV005.CORTE.DIV,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.ZMV006.CORTE.BCA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.ZMV00A.CARGA.Z768,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(200,100),RLSE),
//            UNIT=3390,
//            DCB=(DSORG=PS,LRECL=323,RECFM=FB,BLKSIZE=0)
//SYSIN    DD DSN=DUMMY
//*--------------------------------------------------------------------*
//* PASO     : PUF61P03                                                *
//* UTILERIA : IKJEFT01/ZM4MU034                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU034 QUE CARGA INGRESOS EN   *
//*            LA TABLA ZMDT768                                        *
//*--------------------------------------------------------------------*
//PUF61P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.TMP.ZMV00A.CARGA.Z768,DISP=SHR
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
//* PASO     : PUF61P02                                                *
//* UTILERIA : IKJEFT01/ZM4MU035                                       *
//* OBJETIVO : EJECUCION DEL PROGRAMA ZM4MU035 QUE DEPURA REGISTROS EN *
//*            LA TABLA ZMDT768 POR ULT_MOD                            *
//*--------------------------------------------------------------------*
//PUF61P02 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//* PASO     : PUF61P01                                                *
//* UTILERIA : IDCAMS                                                  *
//* OBJETIVO : ELIMINA ARCHIVOS QUE SE GENERARON DURANTE EL PROCESO    *
//*--------------------------------------------------------------------*
//PUF61P01 EXEC PGM=IDCAMS,COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=DUMMY
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMUFPM61                        *
//*--------------------------------------------------------------------*
