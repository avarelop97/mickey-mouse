//ZMHIPD01 PROC
//**********************************************************************
//**                    C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<<   V A L O R E S   >>>                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMHIPD01.                                           *
//*                                                                    *
//*   OBJETIVO  :  REPORTES DE CONCILIACION CASA DE BOLSA - INDEVAL    *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//* ACV  |19-JUN-03 |IDCEX30|        |ADECUACION A ESTANDARES DE P.U.  *
//* STK  |02-NOV-04 |IDCEX56|PHI01P21|COPIAR SECUENCIAL A GDG.         *
//* STK  |05-MAY-05 |IDCEX56|PHI01P21|CAMBIO POR PRESTAMO DE VALORES.  *
//* STK  |ABRIL,2006|IDCEX56|        |CAMBIAR ARCHIVO GDG.             *
//*  ITS |SEPT. 2013|       |SIVA2012|CONCILIACION PROPIA BANCO(M.S.G.)*
//**********************************************************************
//* PROGRAMA: IEBGENER                                                * 00004000
//* FUNCION:  COPIAR SECUENCIAL A GDG.                                * 00004100
//*-------------------------------------------------------------------* 00004300
//PHI01P37 EXEC PGM=ICEGENER                                            00004400
//SYSUT1   DD  DSN=MXCP.ZM.FIX.PLAZOS.SIN2907,DISP=SHR                  00004800
//SYSUT2   DD  DSN=MXCP.ZM.GDGD.VAL.PZODEP(+1),                         00004900
//             DISP=(NEW,CATLG,DELETE),                                 00005000
//             SPACE=(CYL,(8,4),RLSE),UNIT=3390,                        00005100
//             DCB=(BKUP.MODEL,RECFM=FB,LRECL=117,BLKSIZE=0,DSORG=PS)   00005200
//SYSIN    DD  DUMMY                                                    00005300
//SYSTSPRT DD SYSOUT=*                                                  00005900
//SYSPRINT DD SYSOUT=*                                                  00006000
//SYSOUT   DD SYSOUT=*                                                  00006100
//SYSDBOUT DD SYSOUT=*                                                  00006200
//SYSABOUT DD SYSOUT=*                                                  00006300
//SYSUDUMP DD DUMMY                                                     00006400
//**********************************************************************
//* PROGRAMA: IEBGENER                                                * 00004000
//* FUNCION:  COPIAR SECUENCIAL A GDG.                                * 00004100
//*-------------------------------------------------------------------* 00004300
//PHI01P36 EXEC PGM=ICEGENER,COND=(4,LT)                                00004400
//SYSUT1   DD  DSN=MXCP.ZM.FIX.VAL.PZO.PLADEP,DISP=SHR                  00004800
//SYSUT2   DD  DSN=MXCP.ZM.GDGD.VAL.MOVPLA(+1),                         00004900
//             DISP=(NEW,CATLG,DELETE),                                 00005000
//             SPACE=(CYL,(8,4),RLSE),UNIT=3390,                        00005100
//             DCB=(BKUP.MODEL,RECFM=FB,LRECL=195,BLKSIZE=0,DSORG=PS)   00005200
//SYSIN    DD  DUMMY                                                    00005300
//SYSTSPRT DD SYSOUT=*                                                  00005900
//SYSPRINT DD SYSOUT=*                                                  00006000
//SYSOUT   DD SYSOUT=*                                                  00006100
//SYSDBOUT DD SYSOUT=*                                                  00006200
//SYSABOUT DD SYSOUT=*                                                  00006300
//SYSUDUMP DD DUMMY                                                     00006400
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH001                                                *
//* FUNCION:  GENERA ARCHIVO CON INF. DE E-S-C PARA M. DE CAPITALES Y *
//*           SOCIEDADES DE INVERSION.                                *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P35 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DH0S1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CONEMIS(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(BKUP.MODEL,RECFM=FB,LRECL=50,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T35),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH002                                                *
//* FUNCION:  GENERA ARCHIVO CON MOVIMIENTOS EN SECART DEL DIA        *
//*           ANTERIOR.                                               *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P34 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DH0S1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CARTERA(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(BKUP.MODEL,RECFM=FB,LRECL=70,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T34),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENA ARCHIVO CARTERA POR ICONCEPT, ITIPOTEN Y TPOS    *
//*                                                                   *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P33 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CARTERA(+1),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CARTERA.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=70,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI01T33),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3DH001                                                *
//* FUNCION:  GENERA ARCHIVO POR E-S-C-TENENCIA CON LOS MOVIMIENTOS   *
//*           DEL DIA ANTERIOR.                                       *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P32 EXEC PGM=ZM3DH001,COND=(4,LT)
//ZM3DH0A1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CONEMIS(+1),DISP=SHR
//ZM3DH0A2 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..CARTERA.SORT,DISP=SHR
//ZM3DH0S1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..TITULOS(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(BKUP.MODEL,RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD SYSOUT=*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH005                                                *
//* FUNCION:  GENERA ARCHIVO DE OPERACIONES POR LIQUIDAR A 24, 48     *
//*           72 HORA, PARA M. DE CAPITALES Y SOCIEDADES DE INVERSION.*
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P31 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DH0S1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..LIQNOHOY(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(BKUP.MODEL,RECFM=FB,LRECL=140,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T31),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH006                                                *
//* FUNCION:  GENERA ARCHIVO DE OPERACIONES CON CORTE DE CUPON        *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DH0S1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..REPORTO(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(BKUP.MODEL,RECFM=FB,LRECL=140,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T30),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH003                                                *
//* FUNCION:  GENERA ARCHIVO DE PRESTAMOS Y GARANTIAS POR VENCER A    *
//*           24, 48 , 72 HORAS.                                      *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P29 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DH0S1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CARNOHOY(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(BKUP.MODEL,RECFM=FB,LRECL=120,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T29),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENA ARCHIVO LIQNOHOY POR ICONCEPT, ITIPOTEN, TPOS,   *
//*           FLIQUIDA. SUMA CANTIDAD DE TITULOS * IAFTITUL.          *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P28 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..LIQNOHOY(+1),DISP=SHR
//         DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..REPORTO(+1),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..LIQNOHOY.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=67,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI01T28),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENA ARCHIVO DE MOVIMIENTOS DEL DIA Y POR VENCER      *
//*           A 24, 48 Y 72 HORAS POR : POSICION, TIPOEMI, EMISORA,   *
//*           SERIE, CUPON,TENENCIA,ICONCEPT.                         *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P27 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CARNOHOY(+1),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..NOHOYS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=120,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI01T27),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENA ARCHIVO DE MOVIMIENTOS DEL DIA Y POR VENCER      *
//*           A 24, 48 Y 72 HORAS, EXTRAE SOLO MOVIMIENTOS GLOBALES   *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P26 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CARNOHOY(+1),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..A2GLO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=120,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI01T26),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENA ARCHIVO DE MOVIMIENTOS DEL DIA Y POR VENCER      *
//*           A 24, 48 Y 72 HORAS, EXTRAE SOLO MOVIMIENTOS CON @      *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P25 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CARNOHOY(+1),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..A2ARO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=120,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI01T25),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENA ARCHIVO DE MOVIMIENTOS DEL DIA Y POR VENCER      *
//*           A 24, 48 Y 72 HORAS, EXTRAE MOVIM. EXTRANJEROS          *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P24 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CARNOHOY(+1),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..A2EXT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=120,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI01T24),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENA ARCHIVO DE MOVIMIENTOS DEL DIA Y POR VENCER      *
//*           A 24, 48 Y 72 HORAS, EXTRAE MOVIM. GARANTIAS.           *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P23 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CARNOHOY(+1),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..A2GAR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=120,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI01T23),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENA ARCHIVO DE MOVIMIENTOS DEL DIA Y POR VENCER      *
//*           A 24, 48 Y 72 HORAS, EXTRAE MOVIM. INTERNACIONAL.       *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P22 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CARNOHOY(+1),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..A2INT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=120,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI01T22),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENA ARCHIVO DE MOVIMIENTOS DEL DIA Y POR VENCER      *
//*           A 24, 48 Y 72 HORAS, EXTRAE MOVIM. POSICION PROPIA.     *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P21 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CARNOHOY(+1),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..A2PRO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=120,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI01T21),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENA ARCHIVO DE MOVIMIENTOS DEL DIA Y POR VENCER      *
//*           A 24, 48 Y 72 HORAS, EXTRAE MOVIM. POSICION TERCEROS.   *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P20 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CARNOHOY(+1),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..A2TER,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=120,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI01T20),DISP=SHR                   00183716
//* SIVA-2012-I (MSG)
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENA ARCHIVO DE MOVIMIENTOS DEL DIA Y POR VENCER      *
//*           A 24, 48 Y 72 HORAS, EXTRAE MOVIM. POSICION PROPIA BANCO*
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI0120A EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CARNOHOY(+1),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..A2PPB,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=120,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI01T36),DISP=SHR                   00183716
//* SIVA-2012-F (MSG)
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH007                                                *
//* FUNCION:  GENERA ARCHIVO DE OPERACIONES LIQUIDADAS Y POR LIQUIDAR *
//*           A 24, 48, 72 Y 96 HORAS.                                *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P19 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DH0A1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..TITULOS(+1),DISP=SHR
//ZM4DH0A2 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..LIQNOHOY.SORT,DISP=SHR
//ZM4DH0S1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CAPSI(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(BKUP.MODEL,RECFM=FB,LRECL=155,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T19),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENA ARCHIVO DE MOVIMIENTOS DEL DIA Y POR VENCER      *
//*           A 24, 48 Y 72 HORAS POR : POSICION, TIPOEMI, EMISORA,   *
//*           SERIE, CUPON,TENENCIA,ICONCEPT.                         *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P18 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CAPSI(+1),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..MOVTOS,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=152,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI01T18),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3DH002                                                *
//* FUNCION:  GENERA         UN ARCHIVO DE MOVIMIENTOS PARA CADA      *
//*           TIPO DE POSICION SOLICITADA.                            *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P17 EXEC PGM=ZM3DH002,COND=(4,LT)
//ZM3DH0A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..MOVTOS,DISP=SHR
//ZM3DH0S1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..MOVGLO(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(BKUP.MODEL,RECFM=FB,LRECL=152,BLKSIZE=0,DSORG=PS)
//ZM3DH0S2 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..MOVPRO(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(BKUP.MODEL,RECFM=FB,LRECL=152,BLKSIZE=0,DSORG=PS)
//ZM3DH0S3 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..MOVINT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(BKUP.MODEL,RECFM=FB,LRECL=152,BLKSIZE=0,DSORG=PS)
//ZM3DH0S4 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..MOVTER(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(BKUP.MODEL,RECFM=FB,LRECL=152,BLKSIZE=0,DSORG=PS)
//ZM3DH0S5 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..MOVEXT(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(BKUP.MODEL,RECFM=FB,LRECL=152,BLKSIZE=0,DSORG=PS)
//ZM3DH0S6 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..MOVGAR(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(BKUP.MODEL,RECFM=FB,LRECL=152,BLKSIZE=0,DSORG=PS)
//ZM3DH0S7 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..MOVARO(+1),
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(BKUP.MODEL,RECFM=FB,LRECL=152,BLKSIZE=0,DSORG=PS)
//ZM3DH0S8 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..MOVPPBF,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,LRECL=152,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD SYSOUT=*
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH011   (PREPARA INFORMACION PARA ZM4DH004)          *
//* FUNCION:  GENERA ARCHIVO DE POSICION GLOBAL LIQUIDADA.            *
//*-------------------------------------------------------------------*
//PHI01P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DH0A1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..MOVGLO(+1),DISP=SHR
//ZM4DH0A2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..NOHOYS,DISP=SHR
//ZM4DH0S1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..POSHOYGL,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=152,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T16),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH011   (PREPARA INFORMACION PARA ZM4DH004)          *
//* FUNCION:  GENERA ARCHIVO DE POSICION PROPIA LIQUIDADA.            *
//*-------------------------------------------------------------------*
//PHI01P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DH0A1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..MOVPRO(+1),DISP=SHR
//ZM4DH0A2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..NOHOYS,DISP=SHR
//ZM4DH0S1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..POSHOYPR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=152,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T16),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH011   (PREPARA INFORMACION PARA ZM4DH004)          *
//* FUNCION:  GENERA ARCHIVO DE POSICION EXTRANJEROS LIQUIDADA.       *
//*-------------------------------------------------------------------*
//PHI01P14 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DH0A1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..MOVEXT(+1),DISP=SHR
//ZM4DH0A2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..NOHOYS,DISP=SHR
//ZM4DH0S1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..POSHOYEX,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=152,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T16),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH011   (PREPARA INFORMACION PARA ZM4DH004)          *
//* FUNCION:  GENERA ARCHIVO DE POSICION INTERNACIONAL LIQUIDADA.     *
//*-------------------------------------------------------------------*
//PHI01P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DH0A1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..MOVINT(+1),DISP=SHR
//ZM4DH0A2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..NOHOYS,DISP=SHR
//ZM4DH0S1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..POSHOYIN,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=152,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T16),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH011   (PREPARA INFORMACION PARA ZM4DH004)          *
//* FUNCION:  GENERA ARCHIVO DE POSICION TERCEROS LIQUIDADA.          *
//*-------------------------------------------------------------------*
//PHI01P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DH0A1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..MOVTER(+1),DISP=SHR
//ZM4DH0A2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..NOHOYS,DISP=SHR
//ZM4DH0S1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..POSHOYTR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=152,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T16),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH011   (PREPARA INFORMACION PARA ZM4DH004)          *
//* FUNCION:  GENERA ARCHIVO DE POSICION GARANTIAS LIQUIDADA.         *
//*-------------------------------------------------------------------*
//PHI01P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DH0A1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..MOVGAR(+1),DISP=SHR
//ZM4DH0A2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..NOHOYS,DISP=SHR
//ZM4DH0S1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..POSHOYGR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=152,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T16),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH011   (PREPARA INFORMACION PARA ZM4DH004)          *
//* FUNCION:  GENERA ARCHIVO DE POSICION  @ LIQUIDADA.                *
//*-------------------------------------------------------------------*
//PHI01P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DH0A1 DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..MOVARO(+1),DISP=SHR
//ZM4DH0A2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..NOHOYS,DISP=SHR
//ZM4DH0S1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..POSHOYAR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=152,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T16),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH011   (PREPARA INFORMACION PARA ZM4DH004)          *
//* FUNCION:  GENERA ARCHIVO DE POSICION  @ LIQUIDADA. POS.PROPIA BCO *
//*-------------------------------------------------------------------*
//PHI0110A EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DH0A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..MOVPPBF,DISP=SHR
//ZM4DH0A2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..NOHOYS,DISP=SHR
//ZM4DH0S1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..POSHOYPB,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=152,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T16),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH004   (ANTES ZM3DH003)                             *
//* FUNCION:  GENERA REPORTE DE POSICION POR FECHA DE LIQUIDACION     *
//*           POSICION GLOBAL.                                        *
//*-------------------------------------------------------------------*
//PHI01P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM3DH0A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..POSHOYGL,DISP=SHR
//ZM3DH0A2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..A2GLO,DISP=SHR
//ZM3DH0A3 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..NOHOYS,DISP=SHR
//ZM3DH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T04),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH004   (ANTES ZM3DH003)                             *
//* FUNCION:  GENERA REPORTE DE POSICION POR FECHA DE LIQUIDACION     *
//*           POSICION PROPIA.                                        *
//*-------------------------------------------------------------------*
//PHI01P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM3DH0A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..POSHOYPR,DISP=SHR
//ZM3DH0A2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..A2PRO,DISP=SHR
//ZM3DH0A3 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..NOHOYS,DISP=SHR
//ZM3DH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T04),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH004   (ANTES ZM3DH003)                             *
//* FUNCION:  GENERA REPORTE DE POSICION POR FECHA DE LIQUIDACION     *
//*           CLIENTES EXTRANJEROS                                    *
//*-------------------------------------------------------------------*
//PHI01P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM3DH0A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..POSHOYEX,DISP=SHR
//ZM3DH0A2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..A2EXT,DISP=SHR
//ZM3DH0A3 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..NOHOYS,DISP=SHR
//ZM3DH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T04),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH004   (ANTES ZM3DH003)                             *
//* FUNCION:  GENERA REPORTE DE POSICION POR FECHA DE LIQUIDACION     *
//*           CLIENTES INTERNACIONAL                                  *
//*-------------------------------------------------------------------*
//PHI01P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM3DH0A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..POSHOYIN,DISP=SHR
//ZM3DH0A2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..A2INT,DISP=SHR
//ZM3DH0A3 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..NOHOYS,DISP=SHR
//ZM3DH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T04),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH004   (ANTES ZM3DH003)                             *
//* FUNCION:  GENERA REPORTE DE POSICION POR FECHA DE LIQUIDACION     *
//*           POSICION TERCEROS                                       *
//*-------------------------------------------------------------------*
//PHI01P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM3DH0A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..POSHOYTR,DISP=SHR
//ZM3DH0A2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..A2TER,DISP=SHR
//ZM3DH0A3 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..NOHOYS,DISP=SHR
//ZM3DH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T04),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH004   (ANTES ZM3DH003)                             *
//* FUNCION:  GENERA REPORTE DE POSICION POR FECHA DE LIQUIDACION     *
//*           POSICION GARANTIAS.                                     *
//*-------------------------------------------------------------------*
//PHI01P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM3DH0A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..POSHOYGR,DISP=SHR
//ZM3DH0A2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..A2GAR,DISP=SHR
//ZM3DH0A3 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..NOHOYS,DISP=SHR
//ZM3DH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T04),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH004   (ANTES ZM3DH003)                             *
//* FUNCION:  GENERA REPORTE DE POSICION POR FECHA DE LIQUIDACION     *
//*           POSICION GLOBAL (SOLO ISERIE = @)                       *
//*-------------------------------------------------------------------*
//PHI01P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM3DH0A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..POSHOYAR,DISP=SHR
//ZM3DH0A2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..A2ARO,DISP=SHR
//ZM3DH0A3 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..NOHOYS,DISP=SHR
//ZM3DH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T04),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH004   (ANTES ZM3DH003)                             *
//* FUNCION:  GENERA REPORTE DE POSICION POR FECHA DE LIQUIDACION     *
//*           POSICION PROPIA BANCO                                   *
//*-------------------------------------------------------------------*
//PHI0103A EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM3DH0A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..POSHOYPB,DISP=SHR
//ZM3DH0A2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..A2PPB,DISP=SHR
//ZM3DH0A3 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..NOHOYS,DISP=SHR
//ZM3DH0R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T04),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: SORT                                                    *
//* FUNCION:  ORDENA ARCHIVO MOVTOS EMISORA, SERIE, CUPON, ITIPOVAL,  *
//*           TPOS                                                    *
//* NO ACTUALIZA TABLAS.                                              *
//*-------------------------------------------------------------------*
//PHI01P02 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.GDGD.VAL.E&EMP..S&SUC..CAPSI(+1),DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..MOVCCON,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=155,BLKSIZE=0),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHI01T02),DISP=SHR                   00183716
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM4DH008                                                *
//* FUNCION:  INSERTA EN CCONIND LA POSICION DE LA CASA DE BOLSA      *
//*                                                                   *
//* ACTUALIZA LA TABLA CCONIND                                        *
//*-------------------------------------------------------------------*
//PHI01P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DH0A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..MOVCCON,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHI01T01),DISP=SHR
//*-------------------------------------------------------------------*
//* PROGRAMA: ZM3EH008                                                *
//* FUNCION:  INICIALIZA ARCHIVOS DE DIFERENCIAS                      *
//*-------------------------------------------------------------------*
//PHI0101A EXEC PGM=ZM3EH008,COND=(4,LT)
//ZM3EH8A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPZ01.DIFCON.TER,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
//ZM3EH8A2 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPZ01.DIFCON.GAR,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
//ZM3EH8A3 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPZ01.DIFCON.PRO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
//ZM3EH8A4 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPZ01.DIFCON.EXT,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
//ZM3EH8A5 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPZ01.DIFCON.GLO,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
//ZM3EH8A6 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPZ02.DIFCON.PPB,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
//ZM3EH8A7 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPZ08.DIFCON.CAP,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
//ZM3EH8A8 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPZ08.DIFCON.OPE,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
//ZM3EH8A9 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..ZMHLPZ01.DIFCON.EMI,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(20,10),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,DSORG=PS,LRECL=105,BLKSIZE=0)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD SYSOUT=*
//*-------------------------------------------------------------------*
