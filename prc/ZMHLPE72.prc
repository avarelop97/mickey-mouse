//ZMHLPE72 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPE72.                                           *
//*                                                                    *
//*   OBJETIVO  :  REPORTES DE CONCILIACION B A N C O    -    INDEVAL  *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *
//*                                                                    *
//*   ELABORADO POR   :  J. JAIME FLORES ESTRADA      GETRONICS        *
//*                                                                    *
//*   FECHA:  MARZO  2005.                                             *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH020                                                *
//* FUNCION:  GENERA INFORMACION DE CARTERA.                          *
//*-------------------------------------------------------------------*
//PHL72P17 EXEC PGM=IKJEFT01
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.INFOCART,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=089,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL72T16),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH021                                                *
//* FUNCION:  GENERA INFORMACION DE OPERACIONES.                      *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL72P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.INFOPERA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=137,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL72T15),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT ARCHIVO CARTERA                                    *
//* FUNCION:  ORDENAR POR CUENTA E ICONCEPT, ASI COMO SUMAR TENENCIA  *
//*           SOLO REGISTROS DEL DIA.                                 *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL72P15 EXEC PGM=ICEMAN,COND=(5,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.INFOCART,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.INFOCART.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=89,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL72T14),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT ARCHIVO OPERACIONES                                *
//* FUNCION:  ORDENAR POR CUENTA E ICONCEPT, ASI COMO SUMAR TENENCIA  *
//*           SOLO REGISTROS DEL DIA.                                 *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL72P14 EXEC PGM=ICEMAN,COND=(5,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.INFOPERA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.INFOPERA.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=137,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL72T13),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH022                                                *
//* FUNCION:  GENERA ARCHIVO DE OPERACIONES LIQUIDADAS.               *
//*-------------------------------------------------------------------*
//PHL72P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.INFOCART.SORT,DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.INFOPERA.SORT,DISP=SHR
//ZM4EH0S1 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.POSICION.HOY,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=088,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL72T12),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH024                                                *
//* FUNCION:  UTILIZAR ARCHIVO PROVENIENTE DE INDEVAL.                *
//*-------------------------------------------------------------------*
//PHL72P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH024A1 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.ARCH.INDEVAL,
//            DISP=SHR
//ZMH024S1 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.INDEVAL.CUSTODIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=172,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL72T11),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DE ARCHIVO INDEVAL-CUSTODIA           *
//*           ORDENAR POR CAJON, EMISORA, SERIE, CUPON.               *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL72P11 EXEC PGM=ICEMAN,COND=(5,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.INDEVAL.CUSTODIA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.INDCUST.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=172,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL72T10),DISP=SHR                   00183716
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DE ARCHIVO POSICION-HOY               *
//*           ORDENAR POR CAJON, EMISORA, SERIE, CUPON.               *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL72P10 EXEC PGM=ICEMAN,COND=(5,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.POSICION.HOY,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.POSIHOY.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=88,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL72T09),DISP=SHR                   00183716
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH025                                                *
//* FUNCION:  GENERA REPORTE PARA CONCILIACION DE CUSTODIA            *
//*           CON CORTE POR CAJON, EMISORA, SERIE, CUPON.             *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL72P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH025A1 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.INDCUST.SORT,
//            DISP=SHR
//ZMH025A2 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.POSIHOY.SORT,
//            DISP=SHR
//ZMH025R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL72T08),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DE ARCHIVO INDEVAL-CUSTODIA           *
//*           ORDENAR POR EMISORA, SERIE, CUPON.                      *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL72P08 EXEC PGM=ICEMAN,COND=(5,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.INDEVAL.CUSTODIA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.INDCUST.EMIS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=172,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL72T07),DISP=SHR                   00183716
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DE ARCHIVO POSICION-HOY               *
//*           ORDENAR POR EMISORA, SERIE, CUPON.                      *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL72P07 EXEC PGM=ICEMAN,COND=(5,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.POSICION.HOY,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.POSIHOY.EMIS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=88,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL72T06),DISP=SHR                   00183716
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH026                                                *
//* FUNCION:  GENERA REPORTE PARA CONCILIACION DE CUSTODIA            *
//*           CON CORTE EMISORA, SERIE, CUPON.                        *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL72P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH026A1 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.INDCUST.EMIS,
//            DISP=SHR
//ZMH026A2 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.POSIHOY.EMIS,
//            DISP=SHR
//ZMH026R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL72T05),DISP=SHR
//*                                                                     00630000
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH025                                                *
//* FUNCION:  GENERA REPORTE PARA CONCILIACION DE CUSTODIA            *
//*           CON CORTE POR CAJON, EMISORA, SERIE, CUPON.             *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL72P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH025A1 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.INDCUST.SORT,
//            DISP=SHR
//ZMH025A2 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.POSIHOY.SORT,
//            DISP=SHR
//ZMH025R1 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.ARCHAJON,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=133,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL72T04),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH026                                                *
//* FUNCION:  GENERA REPORTE PARA CONCILIACION DE CUSTODIA            *
//*           CON CORTE EMISORA, SERIE, CUPON.                        *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL72P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH026A1 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.INDCUST.EMIS,
//            DISP=SHR
//ZMH026A2 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.POSIHOY.EMIS,
//            DISP=SHR
//ZMH026R1 DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.ARCHEMIS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=133,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL72T03),DISP=SHR
//*                                                                     00630000
//*-------------------------------------------------------------------*
//* FUNCION:  REALIZA COPIA DEL ARCHIVO ARCHAJON TEMPORAL A FIX.      *
//*-------------------------------------------------------------------*
//PHL72P03 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//INPUT    DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.ARCHAJON,DISP=SHR
//OUTPUT   DD DSN=MXCP.ZM.FIX.VAL.BCM.CTD.ARCHAJON,
//             DISP=(NEW,CATLG,DELETE),                                 00004340
//             UNIT=3390,                                               00004350
//             SPACE=(CYL,(20,10),RLSE),                                00004350
//             DCB=(BLKSIZE=0,LRECL=133,RECFM=FB,DSORG=PS)              00004360
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL72T02),DISP=SHR
//*                                                                     00630000
//*-------------------------------------------------------------------*
//* FUNCION:  REALIZA COPIA DEL ARCHIVO ARCHEMIS TEMPORAL A FIX.      *
//*-------------------------------------------------------------------*
//PHL72P02 EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//INPUT    DD DSN=MXCP.ZM.TMP.VAL.BCM.CTD.ARCHEMIS,DISP=SHR
//OUTPUT   DD DSN=MXCP.ZM.FIX.VAL.BCM.CTD.ARCHEMIS,
//             DISP=(NEW,CATLG,DELETE),                                 00004340
//             UNIT=3390,                                               00004350
//             SPACE=(CYL,(20,10),RLSE),                                00004350
//             DCB=(BLKSIZE=0,LRECL=133,RECFM=FB,DSORG=PS)              00004360
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL72T02),DISP=SHR
//*                                                                     00630000
//*-------------------------------------------------------------------- 00630000
//*        AVISO EN CASO DE ERROR A LA CONSOLA         30/ABR/08        00640000
//*-------------------------------------------------------------------- 00650000
//* IF (PHL72P03.RC GE 4 & PHL72P04.RC GE 4 & PHL72P05.RC GE 4 &        00660000
//*     PHL72P06.RC GE 5 & PHL72P07.RC GE 5 & PHL72P08.RC GE 4 &        00660000
//*     PHL72P09.RC GE 5 & PHL72P10.RC GE 5 & PHL72P11.RC GE 4 &        00660000
//*     PHL72P12.RC GE 4 & PHL72P13.RC GE 5 & PHL72P14.RC GE 5 &        00660000
//*     PHL72P15.RC GE 4 & PHL72P16.RC GE 4)  THEN                      00660000
//*PHL72P01 EXEC PGM=MAILOPER,                                          00660000
//*         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',         00670000
//*             ' PROCESO CBHLNE72 TERMINO MAL.CONTESTAR SI',           00680000
//*             'PARA TERMINAR')                                        00690000
//* ENDIF                                                               00690000
//*                                                                     00700000
//**********************************************************************
//*                SE ADICIONA CONDICION                               *
//*                PARA QUE SEA TOMADA POR CTL-M                       *
//**********************************************************************
//PHL72P00 EXEC PGM=CTMCND,COND=(4,LT),
//         PARM='ADD COND CBHTND02_IN_PR_OK WDATE'
//STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//PRTDBG   DD SYSOUT=*
//SYSPRINT DD DUMMY
//SYSUDUMP DD DUMMY
//DAPRINT  DD SYSOUT=*
//DACNDIN  DD DDNAME=SYSIN
//*
