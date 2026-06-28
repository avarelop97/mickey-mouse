//ZMHLPZ01 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPZ01. CBHLPZ01.                                 *
//*   PROC ANT. :  ZMHLPE01.                                           *
//*                                                                    *
//*   OBJETIVO  :  REPORTES DE CONCILIACION CASA DE BOLSA - INDEVAL    *
//*                                                                    *
//*   CORRE DESPUES DE:  SIVAXVA1                                      *
//*                                                                    *
//*   PERIODICIDAD    :  A SOLICITUD DE USUARIO (OPC. 957)             *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*SOFTTE|2004-11-05|IDCEX68|P01     |CAMBIAR CONDICION                *
//*INDRA |SEPT. 2013|       |SIVA2012|CONCILIACION PROPIA BANCO(M.S.G.)*
//*--------------------------------------------------------------------*
//*MODIFICO: OSCAR URBANO F. (AZERTIA)                                 *
//*FECHA   : OCTUBRE 2008.   CONVERSION DE SUBMITIDORES.               *
//**********************************************************************
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH004                                                *
//* FUNCION:  CLASIFICA LOS CONTRATOS DEL INDEVAL                     *
//* ACTUALIZA CCONIND                                                 *
//*-------------------------------------------------------------------*
//PHL01P16 EXEC PGM=IKJEFT01
//ZM4EH4A1 DD DSN=MXCP.ZM.FIX.O957.ECBP.SZPR.INDEVAL,
//            DISP=SHR
//ZM4EH4S1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.INDEVA1C,
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
//ZM3EH1A1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.OPCCN1,DISP=SHR
//ZM3EH1S1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.TCONCIL1,
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
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.INDEVA1C,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.INDEVA1C.MDD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=170,BLKSIZE=0)
//SYSIN    DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.TCONCIL1,DISP=SHR           00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH003                                                *
//* FUNCION:  ACTUALIZA CCONIND CON LA POSICION DEL INDEVAL           *
//* ACTUALIZA CCONIND                                                 *
//*-------------------------------------------------------------------*
//PHL01P13 EXEC PGM=IKJEFT01,COND=(5,LT)
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.INDEVA1C.MDD,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.OPCCN1,
//            DISP=SHR
//ZM4EH0A3 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.INDEMIS.MDD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=60,BLKSIZE=0)
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
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.OPCCN1,
//            DISP=SHR
//ZM4EH0S1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.CONCON,
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
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.CONCON,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.CONSIVA,
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
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.CONCON,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.SINSIV,
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
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.CONSIVA,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.OPCCN1,DISP=SHR
//ZM4EH0A3 DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ01.DIFCON.CUS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
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
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.CONSIVA,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.OPCCN1,DISP=SHR
//ZM4EH0A3 DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ01.DIFCON.TER,
//            DISP=(OLD,KEEP,KEEP),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
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
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.CONSIVA,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.OPCCN1,DISP=SHR
//ZM4EH0A3 DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ01.DIFCON.GAR,
//            DISP=(OLD,KEEP,KEEP),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
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
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.CONSIVA,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.OPCCN1,DISP=SHR
//ZM4EH0A3 DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ01.DIFCON.PRO,
//            DISP=(OLD,KEEP,KEEP),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
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
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.CONSIVA,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.OPCCN1,DISP=SHR
//ZM4EH0A3 DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ01.DIFCON.EXT,
//            DISP=(OLD,KEEP,KEEP),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
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
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.CONSIVA,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.OPCCN1,DISP=SHR
//ZM4EH0A3 DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ01.DIFCON.GLO,
//            DISP=(OLD,KEEP,KEEP),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
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
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.SINSIV,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.ECBP.SZPR.OPCCN1,DISP=SHR
//ZM4EH0A3 DD DSN=MXCP.ZM.FIX.VAL.ECBP.ZMHLPZ01.DIFCON.EMI,
//            DISP=(OLD,KEEP,KEEP),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
//ZM4EH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL01T07),DISP=SHR
//*-------------------------------------------------------------------- 00630000
//*                          FIN ZMHLPZ01                               00640000
//*-------------------------------------------------------------------- 00650000
