//ZMHLPE01 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPE01.                                           *
//*                                                                    *
//*   OBJETIVO  :  REPORTES DE CONCILIACION CASA DE BOLSA - INDEVAL    *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (POR PANTALLA)         *
//*                                                                    *
//*   ELABORADO POR: SOFTTEK / ELIZABETH COLIN (ECV) / JEAN PIZA (PJP) *
//*                                                                    *
//*   FECHA:  JUNIO  2002.                                             *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*SOFTTE|2004-11-05|IDCEX68|P01     |CAMBIAR CONDICION                *
//*      |          |       |        |                                 *
//**********************************************************************
//*-------------------------------------------------------------------*
//* OBJETIVO : BORRA LOS ARCHIVOS DE TRABAJO                          *
//*-------------------------------------------------------------------*
//PHL01P18 EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL01T08),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3DG001                                                *
//* FUNCION:  RECIBE LOS PARAMETROS ENVIADOS POR EL SUBMITIDOR        *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL01P17 EXEC PGM=ZM3DG001,COND=(4,LT),
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=96,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH004                                                *
//* FUNCION:  CLASIFICA LOS CONTRATOS DEL INDEVAL                     *
//* ACTUALIZA CCONIND                                                 *
//*-------------------------------------------------------------------*
//PHL01P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZM4EH4A1 DD DSN=MXCP.ZM.FIX.O957.E&EMP..S&SUC..INDEVAL,
//            DISP=SHR
//ZM4EH4S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..INDEVA1C,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=170,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL01T01),DISP=SHR
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3EH001                                                *
//* FUNCION:  GENERA TARJETA DE SORT                                  *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL01P15 EXEC PGM=ZM3EH001,COND=(4,LT)
//PI601765 DD DUMMY
//ZM3EH1A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN1,DISP=SHR
//ZM3EH1S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..TCONCIL1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=80,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER CUENTA, CONCEPT, TIPOTEN, FECHA, TITULOS, TPOS  *
//*           SOLO REGISTROS DEL DIA.                                 *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL01P14 EXEC PGM=ICEMAN,COND=(5,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..INDEVA1C,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..INDEVA1C.MDD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=170,BLKSIZE=0)
//SYSIN    DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..TCONCIL1,DISP=SHR       00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH003                                                *
//* FUNCION:  ACTUALIZA CCONIND CON LA POSICION DEL INDEVAL           *
//* ACTUALIZA CCONIND                                                 *
//*-------------------------------------------------------------------*
//PHL01P13 EXEC PGM=IKJEFT01,COND=(5,LT)
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..INDEVA1C.MDD,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN1,
//            DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL01T02),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH002                                                *
//* FUNCION:  ASIGNA EL TIPO DE MERCADO (MDD,CAP,SI1) A LAS EMISORAS  *
//*           DE CCONIND                                              *
//* ACTUALIZA CCONIND                                                 *
//*-------------------------------------------------------------------*
//PHL01P12 EXEC PGM=IKJEFT01,COND=(5,LT)
//PI601765 DD DUMMY
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN1,
//            DISP=SHR
//ZM4EH0S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CONCON,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=90,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL01T03),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DE CONICON SOLO DE MDD,MDC,SI1 Y      *
//*           SWITCH DE EXISTENCIA EN SIVA = 'S'.ORDENAR POR ITIPOEMI,*
//*           ITIPOVAL, IEMISORA, ISERIE, ICUPON.                     *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL01P11 EXEC PGM=ICEMAN,COND=(5,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CONCON,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CONSIVA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=90,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL01T04),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DE CONINCON SOLO    CON SWITCH DE     *
//*           EXISTENCIA EN SIVA = 'N'.ORDENAR POR ITIPOVAL, IEMISORA,*
//*           ISERIE, ICUPON.                                         *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL01P10 EXEC PGM=ICEMAN,COND=(5,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CONCON,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..SINSIV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=90,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL01T05),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH001                                                *
//* FUNCION:  GEN. REP. DE CONCILIACION CUSTODIA SIVA-INDEVAL         *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL01P09 EXEC PGM=IKJEFT01,COND=(5,NE,PHL01P15)
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CONSIVA,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN1,DISP=SHR
//ZM4EH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL01T06),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH001                                                *
//* FUNCION:  GEN. REP. DE CONCILIACION TERCEROS SIVA-INDEVAL         *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL01P08 EXEC PGM=IKJEFT01,COND=(0,NE,PHL01P15)
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CONSIVA,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN1,DISP=SHR
//ZM4EH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL01T06),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH001                                                *
//* FUNCION:  GEN. REP. DE CONCILIACION GARANTIAS SIVA-INDEVAL        *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL01P07 EXEC PGM=IKJEFT01,COND=(1,NE,PHL01P15)
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CONSIVA,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN1,DISP=SHR
//ZM4EH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL01T06),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH001                                                *
//* FUNCION:  GEN. REP. DE CONCILIACION POSICION PROPIA   SIVA-INDEVAL*
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL01P06 EXEC PGM=IKJEFT01,COND=(2,NE,PHL01P15)
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CONSIVA,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN1,DISP=SHR
//ZM4EH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL01T06),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH001                                                *
//* FUNCION:  GEN. REP. DE CONCILIACION EXTRANJEROS SIVA-INDEVAL      *
//*           REGISTRADAS EN EL SIVA.                                 *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL01P05 EXEC PGM=IKJEFT01,COND=(3,NE,PHL01P15)
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CONSIVA,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN1,DISP=SHR
//ZM4EH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL01T06),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH001                                                *
//* FUNCION:  GEN. REP. DE CONCILIACION GLOBAL   SIVA-INDEVAL         *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL01P04 EXEC PGM=IKJEFT01,COND=(4,NE,PHL01P15)
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CONSIVA,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN1,DISP=SHR
//ZM4EH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL01T06),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH005                                                *
//* FUNCION:  GENERA REPORTE DE EMISORAS DEL INDEVAL QUE NO ESTAN     *
//*           REGISTRADAS EN EL SIVA.                                 *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL01P03 EXEC PGM=IKJEFT01,COND=(4,NE,PHL01P15)
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..SINSIV,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..OPCCN1,DISP=SHR
//ZM4EH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL01T07),DISP=SHR
//*-------------------------------------------------------------------- 00630000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00640000
//*-------------------------------------------------------------------- 00650000
// IF (PHL01P03.RC GE 4 & PHL01P04.RC GE 4 & PHL01P05.RC GE 4 &         00660000
//     PHL01P06.RC GE 4 & PHL01P07.RC GE 4 &                            00660000
//     PHL01P08.RC GE 4 & PHL01P09.RC GE 5) THEN                        00660000
//PHL01P02 EXEC PGM=MAILOPER,                                           00660000
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',          00670000
//             ' PROCESO SIVAXVA1 TERMINO MAL.CONTESTAR SI',            00680000
//             'PARA TERMINAR')                                         00690000
// ENDIF                                                                00690000
//****************************************************************      00700000
//*                SE ADICIONA CONDICION                         *      00710000
//*                PARA QUE SEA TOMADA POR CTL-D                 *      00720000
//****************************************************************      00730000
//PHL01P01 EXEC  PGM=CTMCND,PARM='ADD COND SIVAXVA1_IN_SEP_OK WDATE',   00740000
//         COND=(5,LT)                                                  00750000
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
