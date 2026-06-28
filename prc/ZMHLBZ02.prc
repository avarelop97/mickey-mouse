//ZMHLBZ02 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLBZ02 LO LLAMA BCHLPZ02.
//*                                                                    *
//*   OBJETIVO  :  CONCILIACION CUSTODIA GLOBAL BCM
//*                                                                    *
//*   DESPUES DE   :  SIVAXVA2                                         *
//*                                                                    *
//*   PERIODICIDAD :  A SOLICITUD DE USUARIO (OPCION 957 SUBOPC 8 )
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*INDRA |SEPT. 2013|       |SIVA2012|CONCILIACION PROPIA BANCO(M.S.G.)*
//**********************************************************************
//* PROGRAMA: ZM4EH004                                                *
//* FUNCION:  CLASIFICA LOS CONTRATOS DEL INDEVAL                     *
//* ACTUALIZA CCONIND                                                 *
//*-------------------------------------------------------------------*
//PHL02P16 EXEC PGM=IKJEFT01
//ZM4EH4A1 DD DSN=MXCP.ZM.FIX.O957.EBCM.SCTD.INDEVAL,
//            DISP=SHR
//ZM4EH4S1 DD DSN=MXCP.ZM.TMP.VAL.EBCM.SCTD.INDEVA8C,
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
//PHL02P15 EXEC PGM=ZM3EH001,COND=(4,LT)
//ZM3EH1A1 DD DSN=MXCP.ZM.TMP.VAL.EBCM.SCTD.OPCCN8,DISP=SHR
//ZM3EH1S1 DD DSN=MXCP.ZM.TMP.VAL.EBCM.SCTD.TCONCIL8,
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
//* FUNCION:  EXTRAER CUENTA, CONCEPT, TIPOTEN, FECHA, TITULOS, TPOS  *
//*           SOLO REGISTROS DEL DIA.                                 *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL02P14 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.EBCM.SCTD.INDEVA8C,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.EBCM.SCTD.INDEVA8C.MDD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=170,BLKSIZE=0)
//SYSIN    DD DSN=MXCP.ZM.TMP.VAL.EBCM.SCTD.TCONCIL8,DISP=SHR           00183716
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH003                                                *
//* FUNCION:  ACTUALIZA CCONIND CON LA POSICION DEL INDEVAL           *
//* ACTUALIZA CCONIND                                                 *
//*-------------------------------------------------------------------*
//PHL02P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.EBCM.SCTD.INDEVA8C.MDD,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.EBCM.SCTD.OPCCN8,
//            DISP=SHR
//ZM4EH0A3 DD DSN=MXCP.ZM.TMP.VAL.EBCM.SCTD.INDEMIS.MDD,
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
//*                                                                     00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH002                                                *
//* FUNCION:  ASIGNA EL TIPO DE MERCADO (MDD,CAP,SI1) A LAS EMISORAS  *
//*           DE CCONIND                                              *
//* ACTUALIZA CCONIND                                                 *
//*-------------------------------------------------------------------*
//PHL02P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.EBCM.SCTD.OPCCN8,
//            DISP=SHR
//ZM4EH0S1 DD DSN=MXCP.ZM.TMP.VAL.EBCM.SCTD.CONCON8,
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
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  EXTRAER REGISTROS DE CONICON SOLO DE MDD,MDC,SI1 Y      *
//*           SWITCH DE EXISTENCIA EN SIVA = 'S'.ORDENAR POR ITIPOEMI,*
//*           ITIPOVAL, IEMISORA, ISERIE, ICUPON.                     *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL02P11 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.EBCM.SCTD.CONCON8,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.EBCM.SCTD.CONSIVA8,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=90,BLKSIZE=0)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL01T04),DISP=SHR                   00183716
//*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4EH001                                                *
//* FUNCION:  GEN. REP. DE CONCILIACION CUSTODIA SIVA-INDEVAL         *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHL02P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4EH0A1 DD DSN=MXCP.ZM.TMP.VAL.EBCM.SCTD.CONSIVA8,
//            DISP=SHR
//ZM4EH0A2 DD DSN=MXCP.ZM.TMP.VAL.EBCM.SCTD.OPCCN8,DISP=SHR
//ZM4EH0A3 DD DSN=MXCP.ZM.FIX.VAL.EBCM.ZMHLBZ02.DIFCON.CUS,
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
//*
//*-------------------------------------------------------------------*
//*                    TERMINA ZMHLBZ02                               *
//*-------------------------------------------------------------------*
