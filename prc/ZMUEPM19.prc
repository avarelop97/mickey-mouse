//ZMUEPM19 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUEPM19                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERACION DE ESTADOS DE CUENTA DE LA EMPRESA BCM   *
//*                SE OBTIENE EL DIFERENCIAL                           *
//*                                                                    *
//*   CORRE ANTES DE  :  ZMUEPMXX                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  ZMUEPMXX                                      *
//*                                                                    *
//*   PERIODICIDAD    :  MENSUAL                                       *
//*                                                                    *
//*   DICIEMBRE 2016                                                   *
//**********************************************************************
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  ------------------------------------ *
//*--------------------------------------------------------------------*
//* MODIFICO:       PEDRO AXEL VALLE SANCHEZ (PAVS-INI - PAVS-FIN)     *
//* FECHA:          MAYO 2023                                          *
//* ASUNTO:         INCREMENTO FOLIO CONCEPT                           *
//* MARCA:          SDATOOL-41254-PAVS-INI                             *
//*                 SDATOOL-41254-PAVS-FIN                             *
//*                                                                    *
//*--------------------------------------------------------------------*
//**********************************************************************
//*                          --- ZM4MU600 ---                          *
//* LEE ARCHIVO CON INFORMACION DE EDVALCA Y SEPARA LA INFORMACION EN  *
//* REGISTROS DEL CIERRE DEL MES ANTERIOR Y REGISTROS DEL CIERRE DEL   *
//* MES ACTUAL.                                                        *
//**********************************************************************
//PUE19P99 EXEC PGM=IKJEFT01
//*
//ZM1999E1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.EDVALCA.DESC,DISP=SHR
//*
//ZM1999S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU600.MEN1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=203,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//ZM1999S2 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU600.MEN2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=203,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T99),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* ORDENA ARCHIVO CON INFORMACION DEL MES ANTERIOR,SE ORDENA POR      *
//* ORDENADO POR: EMPRESA, ICUENTA, IFOLADM, IEMISORA, ISERIE.         *
//**********************************************************************
//PUE19P97 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU600.MEN1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU600.SORTANT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=203,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE19T97),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* ORDENA ARCHIVO CON INFORMACION DEL MES ANTERIOR,SE ORDENA POR      *
//* ORDENADO POR: EMPRESA, ICUENTA, IFOLADM, IEMISORA, ISERIE.         *
//**********************************************************************
//PUE19P95 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU600.MEN2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU600.SORTACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=203,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE19T95),DISP=SHR
//*
//**********************************************************************
//*                          --- ZM4MU601 ---                          *
//* SE HACE MATCH DE LOS ARCHIVOS CON LA INFORMACION DEL MES ANTERIOR  *
//* Y ACTUAL                                                           *
//**********************************************************************
//PUE19P93 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1993E1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU600.SORTANT,DISP=SHR
//*
//ZM1993E2 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU600.SORTACT,DISP=SHR
//*
//ZM1993S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU601.ANTVSACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=187,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T93),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* ORDENA ARCHIVO CON INFORMACION DEL MES ANTERIOR Y ACTUAL SE ORDENA *
//* ORDENADO POR: EMPRESA, ICUENTA, IFOLADM, IEMISORA, ISERIE.         *
//**********************************************************************
//PUE19P91 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU601.ANTVSACT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU601.SORT1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=187,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE19T91),DISP=SHR
//*
//**********************************************************************
//*                          --- ZM4MU602 ---                          *
//* SE HACE MATCH DE LOS ARCHIVOS PARA OBTENER LOS REGISTROS NUEVOS EN *
//* EL ARCHIVO DE ACTUALES.                                            *
//**********************************************************************
//PUE19P89 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1989E1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU601.SORT1,DISP=SHR
//*
//ZM1989E2 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU600.SORTACT,DISP=SHR
//*
//ZM1989S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU602.ANTVSACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=187,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T89),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     * SORT   *                                     *
//* OBJETIVO : JUNTA LOS ARCHIVOS PARA TENER LA INFORMACION ACTUAL.    *
//*--------------------------------------------------------------------*
//*
//PUE19P87 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU602.ANTVSACT,DISP=SHR
//*
//         DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU601.SORT1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU602.ACTUAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=187,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE19T87),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* ORDENA ARCHIVO CON INFORMACION DEL MES ANTERIOR Y ACTUAL SE ORDENA *
//* ORDENADO POR: EMPRESA, ICUENTA, IEMISORA, ISERIE.                  *
//**********************************************************************
//PUE19P85 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU602.ACTUAL,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU601.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=187,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE19T85),DISP=SHR
//*
//**********************************************************************
//*   1                      --- ZM4MU603 ---                          *
//* OBTENER DEPOSITOS DEL MES PROCESADO SE TOMA LA FECHA DE LIQUIDACION*
//* PARA LOS DEPOSITOS DEL MES                                         *
//**********************************************************************
//PUE19P83 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1983S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU603.DEPOSITO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=259,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T83),DISP=SHR
//*
//**********************************************************************
//*   2                      --- ZM4MU604 ---                          *
//* OBTENER COMPRAS DEL MES PROCESADO SE TOMA LA FECHA DE OPERACION    *
//* PARA LAS COMPRAS DEL MES                                           *
//**********************************************************************
//PUE19P81 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1981S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU604.COMPRAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=259,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T81),DISP=SHR
//*
//**********************************************************************
//*   3                      --- ZM4MU605 ---                          *
//* OBTENER DEPOSITOS - DE LOS NUEVOS IOPERAS SE TOMA LA FECHA DE      *
//* LIQUIDACION PARA LOS DEPOSITOS DEL MES                             *
//**********************************************************************
//PUE19P79 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1979S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU605.DEPONVO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=259,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T79),DISP=SHR
//*
//**********************************************************************
//*   4                      --- ZM4MU606 ---                          *
//* OBTENER DEPOSITOS - DE LOS NUEVOS IOPERAS 180 Y 1801.              *
//* SE TOMA LA FECHA DE LIQUIDACION PARA LOS DEPOSITOS DEL MES         *
//**********************************************************************
//PUE19P77 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1977S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU606.DEPOESP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=259,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T77),DISP=SHR
//*
//**********************************************************************
//*   5 NO SE DEBE USAR      --- ZM4MU607 ---                          *
//* OBTENER RETIROS DEL MES PROCESADO SE TOMA LA FECHA DE LIQUIDACION  *
//* PARA LOS RETIROS DEL MES.                                          *
//**********************************************************************
//PUE19P75 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1975S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU607.DEPOESP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=259,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T75),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     * SORT   *                                     *
//* OBJETIVO : JUNTA LOS DEPOSITOS Y COMPRAS DEL MES ACTUAL.           *
//* ORDENADO POR: EMPRESA, CUENTA, IEMISORA, ISERIE, ITIPOEMI.         *
//*--------------------------------------------------------------------*
//*
//PUE19P73 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU603.DEPOSITO,DISP=SHR
//*
//         DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU604.COMPRAS,DISP=SHR
//*
//         DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU605.DEPONVO,DISP=SHR
//*
//         DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU606.DEPOESP,DISP=SHR
//*
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.DEPOSIT.COMPRA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=259,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE19T73),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* SUMA LOS TITULOS DE LAS COMPRAS-DEPOSITOS DEL MES ACTUAL.          *
//* ORDENADO POR: EMPRESA, CUENTA, IEMISORA, ISERIE.                   *
//**********************************************************************
//PUE19P71 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.DEPOSIT.COMPRA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.DEPCOMP.SUMAR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=259,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE19T71),DISP=SHR
//*
//**********************************************************************
//*                          --- ZM4MU608 ---                          *
//* MATCH DE LA POSICON ANTERIOR Y ACTUAL VS EL SUM DE COMPRAS PARA    *
//* OBTENER LOS REGISTROS QUE TUVIERON COMPRAS EN EL MES ACTUAL.       *
//**********************************************************************
//PUE19P69 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1969E1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU601.SORT,DISP=SHR
//*
//ZM1969E2 DD DSN=MXCP.ZM.FIX.ECT.EBCM.DEPCOMP.SUMAR,DISP=SHR
//*
//ZM1969S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU608.CMPSSORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=275,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T69),DISP=SHR
//*
//**********************************************************************
//*                          --- ZM4MU609 ---                          *
//* SE INSERTA REGISTRO DE TODAS LAS COMPRAS Y DEPOSITOS EN LA TABLA   *
//* ZMDT831 Y TODOS LOS REGISTROS QUE TIENEN POSICION ANTERIOR Y       *
//* POSICION ACTUAL Y NO TUVIERON COMPRAS DURANTE EL MES ACTUAL.       *
//**********************************************************************
//PUE19P67 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1967E1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU608.CMPSSORT,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T67),DISP=SHR
//*
//**********************************************************************
//*   6 NO SE DEBE USAR      --- ZM4MU610 ---                          *
//* OBTENER RETIROS DEL MES PROCESADO SE TOMA LA FECHA DE LIQUIDACION  *
//* PARA LOS RETIROS DEL MES.                                          *
//**********************************************************************
//PUE19P65 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1965S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU610.RETIROS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=259,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T65),DISP=SHR
//*
//**********************************************************************
//*   7                      --- ZM4MU611 ---                          *
//* OBTENER VENTAS DEL MES PROCESADO SE TOMA LA FECHA DE OPERACION PARA*
//* LAS VENTAS  DEL MES.                                               *
//**********************************************************************
//PUE19P63 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1963S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU611.VENTAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=259,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T63),DISP=SHR
//*
//**********************************************************************
//*   8                      --- ZM4MU612 ---                          *
//* OBTENER CANCELACIONES DE VENTAS DEL MES ACTUAL.                    *
//**********************************************************************
//PUE19P61 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1961S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU612.CANCELA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=259,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T61),DISP=SHR
//*
//**********************************************************************
//*   9                      --- ZM4MU613 ---                          *
//* OBTENER VENTAS DEL MES ACTUAL. ESPECIALES.                         *
//**********************************************************************
//PUE19P59 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1959S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU613.VTAFACT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=259,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T59),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     * SORT   *                                     *
//* OBJETIVO : JUNTA LOS RETIROS Y VENTAS DEL MES ACTUAL               *
//* ORDENADO POR: EMPRESA, CUENTA, IEMISORA, ISERIE, ITIPOEMI.         *
//*--------------------------------------------------------------------*
//*
//PUE19P57 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU611.VENTAS,DISP=SHR
//*
//         DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU612.CANCELA,DISP=SHR
//*
//         DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU613.VTAFACT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.RETIROS.VENTAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=259,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE19T57),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* SUMA LOS TITULOS DE LAS VENTAS/RETIROS DEL MES ACTUAL.             *
//* ORDENADO POR: EMPRESA, CUENTA, IEMISORA, ISERIE, ITIPOEMI.         *
//**********************************************************************
//PUE19P55 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.RETIROS.VENTAS,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.RETIROS.VENSRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=259,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE19T55),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* SUMA LOS TITULOS DE LAS VENTAS/RETIROS DEL MES ACTUAL.             *
//* ORDENADO POR: EMPRESA, CUENTA, IEMISORA, ISERIE, ITIPOEMI.         *
//**********************************************************************
//PUE19P53 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.RETIROS.VENTAS,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.RETVTAS.SUMAR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=259,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE19T53),DISP=SHR
//*
//**********************************************************************
//*                          --- ZM4MU614 ---                          *
//* MATCH ENTRE VENTAS VS SUM DE VENTAS PARA OBTENER EL PRECIO         *
//* PONDERADO DE LAS VENTAS.                                           *
//**********************************************************************
//PUE19P51 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1951E1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.RETVTAS.SUMAR,DISP=SHR
//*
//ZM1951E2 DD DSN=MXCP.ZM.FIX.ECT.EBCM.RETIROS.VENSRT,DISP=SHR
//*
//ZM1951S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.RETVTAS.FINAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=305,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T51),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* SUM PARA OBTENER EL COSTO PONDERADO FINAL.                         *
//* ORDENADO POR: EMPRESA, CUENTA, IEMISORA, ISIERIE                   *
//**********************************************************************
//PUE19P49 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.RETVTAS.FINAL,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.RETVTAS.PRECPOND,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=305,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE19T49),DISP=SHR
//*
//**********************************************************************
//*                          --- ZM4MU615 ---                          *
//* SE HACE EL REGISTRO DE TODAS LAS VENTAS Y RETIROS EN LA TABLA      *
//* ZMDT831                                                            *
//**********************************************************************
//PUE19P47 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1947E1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.RETVTAS.PRECPOND,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T47),DISP=SHR
//*
//**********************************************************************
//*  10                      --- ZM4MU616 ---                          *
//* OBTENER COMPRAS/INICIOS DE LOS REPORTOS                            *
//**********************************************************************
//PUE19P45 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1945S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU616.REPOCMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=271,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T45),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* COMPRA/INICIO DE REPORTOS                                          *
//* ORDENADO POR: EMPRESA, ICUENTA, ICONCEPT, ITIPOTEN, IFOLADM,       *
//*               ISUBFOL.                                             *
//**********************************************************************
//PUE19P43 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU616.REPOCMP,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU616.REPOSOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=271,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE19T43),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* ORDENA ARCHIVO CON INFORMACION DEL MES ANTERIOR Y ACTUAL           *
//* ORDENADO POR: EMPRESA, ICUENTA, ICONCEPT, ITIPOTEN, IFOLADM,       *
//*               ISUBFOL.                                             *
//**********************************************************************
//PUE19P41 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU602.ACTUAL,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU601.SORTREP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=187,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE19T41),DISP=SHR
//*
//**********************************************************************
//*                          --- ZM4MU617 ---                          *
//* MATCH DE LA POSICON ANTERIOR Y ACTUAL VS COMPRA/INICIO DE REPORTOS *
//**********************************************************************
//PUE19P39 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1939E1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU601.SORTREP,DISP=SHR
//*
//ZM1939E2 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU616.REPOSOR,DISP=SHR
//*
//ZM1939S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU617.REPOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=271,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T39),DISP=SHR
//*
//**********************************************************************
//*                          --- ZM4MU618 ---                          *
//* SE INSERTAN LOS REGISTROS CON LOS INICIOS/COMPRAS DE LOS REPORTOS  *
//* EN LA TABLA ZMDT831                                                *
//**********************************************************************
//PUE19P37 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1937E1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU617.REPOR,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T37),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* ORDENA ARCHIVO CON INFORMACION DEL MATCH DE REPORTOS               *
//* ORDENADO POR: EMPRESA, ICUENTA, ICONCEPT, ITIPOTEN, IFOLADM,       *
//*               ISUBFOL.                                             *
//**********************************************************************
//PUE19P35 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU617.REPOR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU617.REPORSRT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=271,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE19T35),DISP=SHR
//*
//**********************************************************************
//*                          --- ZM4MU619 ---                          *
//* MATCH DE LA POSICON ANTERIOR Y ACTUAL VS COMPRA/INICIO DE REPORTOS *
//* PARA OBTENER LOS REGISTROS QUE NO TUVIERON INICIOS DE REPORTOS PERO*
//* QUE SI DEBEN MOSTRARSE PORQUE PASAN DE MES.                        *
//**********************************************************************
//PUE19P33 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1933E1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU601.SORTREP,DISP=SHR
//*
//ZM1933E2 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU617.REPORSRT,DISP=SHR
//*
//ZM1933S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU619.REPORTOS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=271,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T33),DISP=SHR
//*
//**********************************************************************
//*                          --- ZM4MU620 ---                          *
//* SE HACE EL REGISTRO DE TODOS LOS REPORTOS OBETENIDOS EN LA TABLA   *
//* ZMDT831                                                            *
//**********************************************************************
//PUE19P31 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1931E1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU619.REPORTOS,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T31),DISP=SHR
//*
//**********************************************************************
//*  11                      --- ZM4MU621 ---                          *
//* OBTENER LOS VENCIMIENTOS DE REPORTOS.                              *
//**********************************************************************
//PUE19P29 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1929S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU621.REPOVNC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=287,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//ZM1925S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU622.REPOCMP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=271,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T29),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* VENTA/VENCIMIENTO DE REPORTOS                                      *
//* ORDENADO POR: EMPRESA, CUENTA, ICONCEPT, ITIPOTEN, IFOLADM, ISUBFOL*
//**********************************************************************
//PUE19P27 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU621.REPOVNC,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU621.VENCSOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=287,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE19T27),DISP=SHR
//*
//**********************************************************************
//*  12                      --- ZM4MU622 ---                          *
//* OBTENER LAS COMPRAS DE LOS REPORTOS DE 45 DIAS PARA HACER MATCH    *
//* CON LOS VENCIMIENTOS DE REPORTOS.                                  *
//**********************************************************************
//*PUE19P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//**
//*ZM1925S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU622.REPOCMP,
//*            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//*            DCB=(DSORG=PS,LRECL=271,RECFM=FB,BLKSIZE=0),
//*            SPACE=(CYL,(400,200),RLSE)
//**
//*SYSTSPRT DD SYSOUT=*
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD SYSOUT=*
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T25),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* OBTENER LAS COMPRAS DE LOS REPORTOS DE 45 DIAS PARA HACER MATCH    *
//* CON LOS VENCIMIENTOS DE REPORTOS.                                  *
//* ORDENADO POR: EMPRESA, CUENTA, ICONCEPT, ITIPOTEN, IFOLADM, ISUBFOL*
//**********************************************************************
//PUE19P23 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU622.REPOCMP,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU622.REPSORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=271,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE19T23),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* MATCH ENTRE ARCHIVO DE COMPRA/INICIO DE REPORTOS DE 45 DIAS VS     *
//* VENCIMIENTOS DE REPORTOS.                                          *
//* ORDENADO POR: EMPRESA, CUENTA, ICONCEPT, ITIPOTEN, IFOLADM, ISUBFOL*
//**********************************************************************
//*
//PUE19P21 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU621.VENCSOR,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU622.REPSORT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4MU622.VTAMATC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=287,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE19T21),DISP=SHR
//*
//**********************************************************************
//*                          --- ZM4MU623 ---                          *
//* SE INSERTAN LOS REGISTROS DE LOS VENCIMIENTOS DE REPORTOS EN LA    *
//* TABLA ZMDT831.                                                     *
//**********************************************************************
//PUE19P19 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM1919E1 DD DSN=MXCP.ZM.FIX.PPG.EBCM.ZM4MU622.VTAMATC,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE19T19),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM19 SIVA MULTIEMPRESA                  *
//**********************************************************************
