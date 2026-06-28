//ZMHLPD07 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHLPD07                                            *
//*                                                                    *
//*   OBJETIVO  :  GENERA ARCHIVO DE OPERACIONES DE COMPRA Y VENTA DIA-*
//*                RIAS  PARA BANXICO DIA OPERACION P04 - 4.           *
//*                                                                    *
//*   CORRE ANTES DE  :  CBHTNE59                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  SIVAXGXG                                      *
//*                                                                    *
//*   PERIODICIDAD    :  A PETICION DEL USUARIO                        *
//*                                                                    *
//*   ELABORADO POR: GETRONICS.                                        *
//*                                                                    *
//*   FECHA:  NOVIEMBRE DE 2004.                                       *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*SOFTTE|5-NOV-2004|IDCEX68|P01,P02 |ADICIONAR CONDICIONES DE CTL-D   *
//*STK   |ABRIL,2006|IDCEX56|        |SE REDISEñA PROCESO BANXICO      *
//*-------------------------------------------------------------------**
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *
//*  PHL07P29     EN ARCHIVO SECUENCIAL.                               *
//*                                                         ZM3DG001   *
//*-------------------------------------------------------------------**
//PHL07P29 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPD07,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************00010000
//*  PASO:  2     GENERA ARCHIVO CON OPERACIONES DE COMPRA Y VENTA DE  *00030000
//*  PHL07P28     MERCADO.                                             *00040000
//*                                                         ZM4DHB01   *00040000
//**********************************************************************00060000
//PHL07P28 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHB01A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPD07,DISP=SHR
//*
//ZMHB01S1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB01.MANUAL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMHB01S2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB01.INCID,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=165,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD07T28),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO:  3     GENERA ARCHIVO CON LAS OPERACIONES AUTOMATICAS DE    *00030000
//*  PHL07P27     COMPRAS Y VENTAS DE MERCADO DE DINERO.               *00040000
//*                                                         ZM4DHB02   *00040000
//**********************************************************************00060000
//PHL07P27 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHB02A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPD07,DISP=SHR
//*
//ZMHB02S1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB02.AUTOMAT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMHB02S2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB02.INCID,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=165,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD07T27),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO:  4     GENERA ARCHIVO DE OPERACIONES DE COMPRAS Y VENTAS.   *00030000
//*  PHL07P26     CONTRATOS DE SOCIEDADES DE INV.           ZM4DHB03   *00040000
//**********************************************************************00060000
//PHL07P26 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHB03A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPD07,DISP=SHR
//*
//ZMHB03S1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB03.CONTRAT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE)
//*
//ZMHB03S2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB03.INCID,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=165,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD07T26),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO: 5   SORT QUE REALIZA LA ELIMINACIóN DE LO ENCABEZADOS DEL   *00030000
//*            ARCHIVO DE OPERACIONES PENDIENTES A PLAZO             *
//*  PHL07P25                                                ICEMAN    *00040000
//**********************************************************************00060000
//PHL07P25 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.PZODEP(-4),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.PLAZOS.ANTSORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=82,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHD07T25),DISP=SHR                   00183716
//*
//**********************************************************************00010000
//*  PASO: 6   GENERA ARCHIVO DE BANXICO A PLAZOS                      *00030000
//*            ZM4DH019                                                *
//*  PHL07P24                                                          *00040000
//**********************************************************************00060000
//PHL07P24 EXEC PGM=IKJEFT01,COND=(4,LT)                                00070000
//ZM4DH0S1 DD DSN=MXCP.ZM.FIX.PLAZOS.ANTSORT,DISP=SHR                   00130000
//*                                                                     00130000
//ZM4DH0S2 DD DSN=MXCP.ZM.FIX.PLAZOS.CONTRAP,                           00110000
//            DISP=(NEW,CATLG,DELETE),                                  00120000
//            DCB=(LRECL=117,RECFM=FB,BLKSIZE=0,DSORG=PS),              00130000
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)                        00140027
//*                                                                     00230000
//ZM4DH0S3 DD DSN=MXCP.ZM.FIX.VAL.PZO.BANXIINC,                         00110000
//            DISP=(NEW,CATLG,DELETE),                                  00120000
//            DCB=(LRECL=122,RECFM=FB,BLKSIZE=0,DSORG=PS),              00130000
//            UNIT=3390,SPACE=(CYL,(6,3),RLSE)                          00140027
//*                                                                     00230000
//SYSTSPRT DD SYSOUT=*                                                  00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD07T24),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO:  7     DEPURA ARCHIVO DE OPERACIONES DE COMPRAS Y VENTAS, Y *00030000
//*  PHL07P23     ORDENA POR SERIE Y NO. TITULOS.           SORT       *00040000
//*                            ( CONCATENA ) ORDENA POR DEP            *00040000
//**********************************************************************00060000
//PHL07P23 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB01.MANUAL,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB02.AUTOMAT,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB03.CONTRAT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..DEPOSITO.RETIROS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*
//*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHD07T23),DISP=SHR
//*
//**********************************************************************
//*  PASO:  8     REALIZA FORMATEO DE ARCHIVO INDEVAL PARA LA COLUMNA  *
//*  PHL07P22     DE TITULOS.                               ZM3DHB01   *
//**********************************************************************
//PHL07P22 EXEC PGM=ZM3DHB01,COND=(4,LT)
//*
//ZMHB01A1 DD  DSN=MXCP.ZM.FIX.VAL.MOVTOS.INDEVAL,DISP=SHR
//*
//ZMHB01A2 DD  DSN=MXCP.ZM.FIX.VAL.MOVTOS1.INDEVAL,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//*
//**********************************************************************00010000
//*  PASO:  9     DEPURA ARCHIVO DE OPERACIONES DE COMPRAS Y VENTAS, Y *00030000
//*  PHL07P21     ORDENA POR SERIE Y NO. TITULOS.           ICEMAN     *00040000
//*                            ( CONCATENA )                           *00040000
//**********************************************************************00060000
//PHL07P21 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.MOVTOS1.INDEVAL,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVAL1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHD07T21),DISP=SHR
//*
//**********************************************************************
//*  PASO: 10     REALIZA FORMATEO DE ARCHIVO INDEVAL AGRUPANDO POR NO.*
//*  PHL07P20     DE TAREA(V) DEJANDO UN SOLO REGISTRO CON LA SUMARTORIA
//*                                                         ZM3DHB02   *
//**********************************************************************
//PHL07P20 EXEC PGM=ZM3DHB02,COND=(4,LT)
//*
//ZMHB02A1 DD  DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVAL1,DISP=SHR
//*
//ZMHB02A2 DD  DSN=MXCP.ZM.FIX.VAL.MOVTOS1.INDEVALX,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//*
//**********************************************************************00010000
//*  PASO: 11     DEPURA ARCHIVO DE OPERACIONES DE COMPRAS Y VENTAS, Y *00030000
//*  PHL07P19     ORDENA POR SERIE Y NO. TITULOS.            ICEMAN    *00040000
//*                            ( CONCATENA )                           *00040000
//**********************************************************************00060000
//PHL07P19 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.MOVTOS1.INDEVALX,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVALY,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHD07T19),DISP=SHR
//*
//**********************************************************************
//*  PASO:  12    REALIZA FORMATEO DE ARCHIVO INDEVAL PARA LOS CASOS X *
//*  PHL07P18     RALIZANDO SUMATORIA Y DEJANDOLA EN UN RGISTRO.       *
//*                                                         ZM3DHB03   *
//**********************************************************************
//PHL07P18 EXEC PGM=ZM3DHB03,COND=(4,LT)
//*
//ZMHB03A1 DD  DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVALY,DISP=SHR
//*
//ZMHB03A2 DD  DSN=MXCP.ZM.FIX.VAL.MOVTOS1.INDEVALZ,
//             DISP=(NEW,CATLG,DELETE),
//             DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//*
//**********************************************************************00010000
//*  PASO: 13     REALIZA ORDENAMIENTO DEL REPORTE POR SERIE Y NO. TI- *00030000
//*  PHL07P17     TULOS.                                     ICEMAN    *00040000
//*                         ( DEPOSITOS  INDEVAL )                     *00020000
//**********************************************************************00060000
//PHL07P17 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.MOVTOS1.INDEVALZ,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVAL.DEPOSITO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHD07T17),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO: 14     REALIZA MATCH ENTRE ARCHIVO DE INDEVAL Y ARCHIVO DE  *00030000
//*  PHL07P16     OPERACIONES.                              ZM4DHB04   *00040000
//*                               ( DEPOSITOS )                        *00020000
//**********************************************************************00060000
//PHL07P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHB04S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..DEPOSITO.RETIROS,DISP=SHR
//*
//ZMHB04S2 DD DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVAL.DEPOSITO,DISP=SHR
//*
//ZMHB04S3 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB04.DEPRET,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD07T16),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO: 15     REALIZA ORDENAMIENTO DEL REPORTE POR SERIE Y NO. TI- *00030000
//*  PHL07P15     TULOS.                                     ICEMAN    *00040000
//*                         ( DEPOSITOS  INDEVAL )                     *00020000
//**********************************************************************00060000
//PHL07P15 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB04.DEPRET,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZM4DHB04.DEPRET1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHD07T15),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO: 16     GENERA ARCHIVO CON REGISTROS QUE NO TIENEN CONTRAPAR-*00030000
//*  PHL07P14     TE, PARA INICIAR UNA NUEVA BUSQUEDA.       ICEMAN    *00040000
//*                               ( RETIROS )                          *00020000
//**********************************************************************00060000
//PHL07P14 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZM4DHB04.DEPRET1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB04.RETIROS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHD07T14),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO: 17     REALIZA ORDENAMIENTO DE ARCHIVO YA FORMATEADO PARA   *00030000
//*  PHL07P13     RETIROS.                                   ICEMAN    *00040000
//*                           ( RETIROS INDEVAL )                      *00020000
//**********************************************************************00060000
//PHL07P13 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.MOVTOS1.INDEVALZ,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVAL.RETIROS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD  DSN=ZIVA.ZME.CONTROL(ZHD07T13),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO: 18     REALIZA MATCH ENTRE ARCHIVO DE INDEVAL Y ARCHIVO DE  *00030000
//*  PHL07P12     OPERACIONES.                              ZM4DHB04   *00040000
//*                              ( RETIROS )                           *00020000
//**********************************************************************00060000
//PHL07P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHB04S1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB04.RETIROS,
//            DISP=SHR
//*
//ZMHB04S2 DD DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVAL.RETIROS,DISP=SHR
//*
//ZMHB04S3 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB04.RETIROS.S1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD07T12),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO: 19     GENERA ARCHIVO CON REGISTROS QUE NO TIENEN CONTRAPAR-*00030000
//*  PHL07P11     TE, PARA UNA SEGUNDA PASADA                ICEMAN    *00040000
//**********************************************************************00060000
//PHL07P11 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB04.RETIROS.S1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZM4DHB04.CONTRAP1.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHD07T11),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO: 20     REALIZA MATCH ENTRE ARCHIVO DE INDEVAL Y ARCHIVO DE  *00030000
//*  PHL07P10     OPERACIONES.                              ZM4DHB06   *00040000
//*                              ( DEPOSITOS )                         *00020000
//**********************************************************************00060000
//PHL07P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHB06S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZM4DHB04.CONTRAP1.SORT,
//            DISP=SHR
//*
//ZMHB06S2 DD DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVAL.DEPOSITO,DISP=SHR
//*
//ZMHB06S3 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB06.DEPOSITO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD07T10),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO: 21     GENERA ARCHIVO CON REGISTROS QUE SI TIENEN CONTRAPAR-*00030000
//*  PHL07P09     TE.                                                  *00040000
//*                                                          ICEMAN    *00020000
//**********************************************************************00060000
//PHL07P09 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB04.DEPRET,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB04.RETIROS.S1,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB06.DEPOSITO,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZM4DHB04.CONTRAP1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHD07T09),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO: 22     GENERA ARCHIVO CON REGISTROS QUE NO TIENEN CONTRAPAR-*00030000
//*  PHL07P08     TE, PARA UNA SEGUNDA PASADA                ICEMAN    *00040000
//*                            ( RETIROS )                             *00020000
//**********************************************************************00060000
//PHL07P08 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZM4DHB06.DEPOSITO,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZM4DHB06.RETIROS.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHD07T08),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO: 23     REALIZA MATCH ENTRE ARCHIVO DE INDEVAL Y ARCHIVO DE  *00030000
//*  PHL07P07     OPERACIONES.                              ZM4DHB06   *00040000
//*                              ( RETIROS )                           *00020000
//**********************************************************************00060000
//PHL07P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHB06S1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZM4DHB06.RETIROS.SORT,
//            DISP=SHR
//*
//ZMHB06S2 DD DSN=MXCP.ZM.TMP.VAL.MOVTOS1.INDEVAL.RETIROS,DISP=SHR
//*
//ZMHB06S3 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZM4DHB06.RETIROS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=135,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHD07T07),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO: 24     CONCATENA ARCHIVOS PARA ENVIAR A BANXICO.            *00030000
//*  PHL07P06                                                ICEMAN    *00040000
//**********************************************************************00060000
//PHL07P06 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZM4DHB04.CONTRAP1,DISP=SHR
//         DD DSN=MXCP.ZM.TMP.VAL.E&EMP..ZM4DHB06.RETIROS,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.E&EMP..BANXICO.PROC1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=117,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(8,4),RLSE)
//*
//*
//SYSOUT   DD  SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHD07T06),DISP=SHR
//*
//**********************************************************************00010000
//*  PASO: 25  CONCATENA ARCHIVOS PARA ENVIAR A BANXICO.               *00030000
//*  PHL07P05                                                          *00040000
//**********************************************************************00060000
//PHL07P05 EXEC PGM=IEBGENER,COND=(4,LT)                                00100800
//SYSPRINT DD  SYSOUT=*                                                 00100900
//SYSOUT   DD  SYSOUT=*                                                 00101000
//SYSUT1   DD  DSN=MXCP.ZM.FIX.VAL.E&EMP..BANXICO.PROC1,DISP=SHR        00101109
//         DD  DSN=MXCP.ZM.FIX.PLAZOS.CONTRAP,DISP=SHR
//SYSUT2   DD  DSN=MXCP.ZM.FIX.VAL.E&EMP..BANXICO,                      00101511
//             DISP=(NEW,CATLG,DELETE),                                 00101614
//             SPACE=(CYL,(20,10),RLSE),UNIT=3390,                      00101700
//             DCB=(RECFM=FB,LRECL=117,BLKSIZE=0,DSORG=PS)              00101812
//SYSIN    DD  DUMMY                                                    00106400
//*
//**********************************************************************00010000
//*  PASO: 26     INICIALIZA EL EVENTO PARA LIMITAR LAS COMPRAS Y VEN- *
//*  PHL07P04     TAS.                                                 *
//*                           BX2 = I                                  *
//* PASO REINICIABLE POR RESTART                            ZM4DLE11   *
//**********************************************************************00010000
//PHL07P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPD07,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHD07T04),DISP=SHR
//*
//*-------------------------------------------------------------------- 00630000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00640000
//*-------------------------------------------------------------------- 00650000
//PHL07P03 EXEC PGM=MAILOPER,COND=(4,GE),
//         PARM=('/ATENCION OPERADOR.AVISAR A PRODUCCION QUE',
//             ' PROCESO SIVAXBM4 TERMINO MAL.CONTESTAR SI',
//             'PARA TERMINAR')
//****************************************************************      00700000
//*                SE ADICIONA CONDICION                         *      00710000
//*          PARA EJECUTAR PROCESO CBHTNE59                      *      00720000
//****************************************************************      00730000
//PHL07P01 EXEC PGM=CTMCND,PARM='ADD COND CBHTNE59_IN_PR_OK WDATE',
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
//**********************************************************************00060000
//*                    F I N    Z M H L P E 7 1                        *00020000
//**********************************************************************00060000
