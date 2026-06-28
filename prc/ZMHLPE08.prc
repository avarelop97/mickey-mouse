//ZMHLPE08 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPE08.                                           *
//*                                                                    *
//*   OBJETIVO  :  REPORTES DE CONCILIACION OPERATIVOS Y CAPITAL       *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *
//*                                                                    *
//*   ELABORADO POR: SOFTTEK / ELIZABETH COLIN (ECV)                   *
//*                                                                    *
//*   FECHA:  SEPTIEMBRE 2002.                                         *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*MODXXX|2005-06-07|IDCEX75|PHL08P01|SE AGREGA PREFIJO (V605)         *
//*      |          |       |        |                                 *
//**********************************************************************
//* OBJETIVO : BORRA LOS ARCHIVOS DE TRABAJO                           *
//**********************************************************************
//PHL08P21 EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHL08T12),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3DG001                                                *
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR        *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P20 EXEC PGM=ZM3DG001,COND=(4,LT),
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH004                                                *
//* FUNCION:  CLASIFICA LOS CONTRATOS DEL INDEVAL                     *
//* ACTUALIZA CCONIND                                                 *
//*-------------------------------------------------------------------*
//PHL08P19 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZM4EH4A1 DD DSN=MXCP.ZM.FIX.O957.E&EMP..S&SUC..INDEVAL,
//            DISP=SHR
//ZM4EH4S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..INDEVA2C,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=170,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL08T01),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3EH001                                                *
//* FUNCION:  GENERA TARJETA DE SORT                                  *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P18 EXEC PGM=ZM3EH001,COND=(4,LT)
//PI601765 DD DUMMY
//ZM3EH1A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN2,DISP=SHR
//ZM3EH1S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..TCONCIL2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=80,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DEL INDEVAL DE LA POSICION A PROCESAR *
//*           ORDENADO POR EMISORA, SERIE CUPON, TIPOVAL, CTO. INDEV. *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P17 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..INDEVA2C,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..INDEVA2C.MDD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=170,BLKSIZE=0)
//SYSIN    DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..TCONCIL2,DISP=SHR       00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH009                                                *
//* FUNCION:  ARCHIVO DE TRASPASOS ANTICIPADOS ENTRE OPERATIVOS Y CAP.*
//*-------------------------------------------------------------------*
//PHL08P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZM4EH0S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..TRASANT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=140,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL08T02),DISP=SHR
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  CONCATENAR ARCHIVOS DE REPORTOS, OPERACIONES POR LIQUI- *
//*           DAR Y TRASPASOS ANTICIPADOS.                            *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P15 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..REPORTO(0),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..LIQNOHOY(0),DISP=SHR
//         DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..TRASANT,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..LIQNOHOY.OPERCAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=74,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL08T03),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENAR ARCHIVO CARTERA POR ICONCEPT, TENENCIA, POSICION*
//*           Y CUENTA.                                               *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P14 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CARTERA(0),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CARTERA.OPERCAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=70,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL08T04),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3EH002                                                *
//* FUNCION:  GENERA ARCHIVO CON POSICION DEL DIA ANTERIOR.           *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P13 EXEC PGM=ZM3EH002,COND=(4,LT)
//PI601765 DD DUMMY
//ZM3EH0A1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CONEMIS(0),DISP=SHR
//ZM3EH0A2 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CARTERA.OPERCAP,
//            DISP=SHR
//ZM3EH0S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..TITULOS.OPERCAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=80,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH006                                                *
//* FUNCION:  ARCHIVO DE OPERACIONES LIQUIDADAS Y POR LIQUIDAR.       *
//* NO ACTUALIZA TABLAS                                               *
//*-------------------------------------------------------------------*
//PHL08P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..TITULOS.OPERCAP,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..LIQNOHOY.OPERCAP,
//            DISP=SHR
//ZM4EH0S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CAPSI.OPERCAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=162,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL08T05),DISP=SHR
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENAR ARCHIVO CAPSI POR EMISORA, SERIE, CUPON, TIPO DE*
//*           VALOR Y CONTRATO. EXCLUIR TIPO VALOR 50                 *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P11 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CAPSI.OPERCAP,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..MOVTOS.OPERSORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=162,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL08T06),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3EH004                                                *
//* FUNCION:  ARCHIVO POSICION REAL DEL DIA.                          *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P10 EXEC PGM=ZM3EH004,COND=(4,LT)
//PI601765 DD DUMMY
//ZM3EH0A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..MOVTOS.OPERSORT,
//            DISP=SHR
//ZM3EH0S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..MOVTOS.OPERCAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=162,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH007                                                *
//* FUNCION:  ARCHIVO INDEVAL CON NOMBRES DE EMISORAS IGUAL A SIVA.   *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZM4EH7A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..INDEVA2C.MDD,
//            DISP=SHR
//ZM4EH7S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..EMISINDE.OPERCAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=90,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL08T07),DISP=SHR
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENAR ARCHIVO EMISINDE POR EMISORA, SERIE, CUPON, TIPO*
//*           VALOR Y CONTRATO.                                       *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P08 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..EMISINDE.OPERCAP,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..EMISINDE.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=90,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL08T08),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH008                                                *
//* FUNCION:  CONCILIACION SIVA-INDEVAL POR CONTRATO.                 *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZM4EH8A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..MOVTOS.OPERCAP,
//            DISP=SHR
//ZM4EH8A2 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..EMISINDE.SORT,
//            DISP=SHR
//ZM4EH8S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CONCIL.OPERCAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=120,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL08T09),DISP=SHR
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DE CONCIL SOLO MDD, SI1 Y MDC, CON    *
//*           SWITCH DE EXISTENCIA = 'S'. ORDERNAR POR E-S-C  CONTRATO*
//*           SIVA. INFORMACION CONTRATOS CAPITAL.                    *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P06 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CONCIL.OPERCAP,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CONSIVA.CAPITAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=120,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL08T10),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DE CONCIL SOLO MDD, SI1 Y MDC, CON    *
//*           SWITCH DE EXISTENCIA = 'S'. ORDERNAR POR CONTRATO SIVA, *
//*           MERCADI, TIPOVAL, E-S-C. OPERATIVOS.                    *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P05 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CONCIL.OPERCAP,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CONSIVA.OPERAT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=120,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL08T11),DISP=SHR                   00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3EH003                                                *
//* FUNCION:  REPORTE CONCILIACION CTOS. CAPITAL                      *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P04 EXEC PGM=ZM3EH003,COND=(4,LT)
//ZM3EH0A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CONSIVA.CAPITAL,
//            DISP=SHR
//ZM3EH0A2 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN2,DISP=SHR
//ZM3EH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3EH005                                                *
//* FUNCION:  REPORTE CONCILIACION CTOS. OPERATIVOS                   *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL08P03 EXEC PGM=ZM3EH005,COND=(4,LT)
//ZM3EH0A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CONSIVA.OPERAT,
//            DISP=SHR
//ZM3EH0A2 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN2,DISP=SHR
//ZM3EH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*                                                                     00183716
//*-------------------------------------------------------------------- 00630000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00640000
//*-------------------------------------------------------------------- 00650000
//PHL08P02 EXEC PGM=MAILOPER,COND=(4,GE,PHL08P03),                      00660000
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',          00670000
//             ' PROCESO SIVAXVA1 TERMINO MAL.CONTESTAR SI',            00680000
//             'PARA TERMINAR')                                         00690000
//*                                                                     00183716
//****************************************************************      00700000
//*                SE ADICIONA CONDICION                         *      00710000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00720000
//****************************************************************      00730000
//PHL08P01 EXEC PGM=CTMCND,PARM='ADD COND SIVAXZV1_IN_SEP_OK WDATE',    00740000
//         COND=(4,LT)                                                  00750000
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
