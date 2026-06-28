//ZMPDRVA2 PROC                                                         00010002
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - CASA DE BOLSA.                                 *
//* PROCESO      : BCJDRVA2.                                           *
//* PERIODICIDAD : DIARIA.                                             *
//* OBJETIVO     : GENERACION DE INTERFACES DE CASA DE BOLSA           *
//*                A CONTABILIDAD MV5.                                 *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 15 DE DICIEMBRE DE 2015                             *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV200                                                 *00240002
//* UTIL/PGM: ZM4CVA00                                                 *00240002
//* OBJETIVO: GENERA TARJETAS DE CONTROL CON LA FECHA.                 *00240002
//*--------------------------------------------------------------------*
//ZMPRV200 EXEC PGM=IKJEFT01                                            00780700
//E1DQ0001 DD DSN=ZIVA.ZME.CONTROL(ZMVA2094),DISP=SHR
//E2DQ0002 DD DSN=ZIVA.ZME.CONTROL(ZMVA2092),DISP=SHR
//E3DQ0003 DD DSN=ZIVA.ZME.CONTROL(ZMVA2090),DISP=SHR
//E4DQ0004 DD DSN=ZIVA.ZME.CONTROL(ZMVA2088),DISP=SHR
//E5DQ0005 DD DSN=ZIVA.ZME.CONTROL(ZMVA2082),DISP=SHR
//E6DQ0006 DD DSN=ZIVA.ZME.CONTROL(ZMVA2086),DISP=SHR
//E7DQ0007 DD DSN=ZIVA.ZME.CONTROL(ZMVA2078),DISP=SHR
//S1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZM4RVA04.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//S2DQ0002 DD DSN=MXC&AMB..ZM.FIX.ZM4RVA05.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//S3DQ0003 DD DSN=MXC&AMB..ZM.FIX.ZM4RVA06.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//S4DQ0004 DD DSN=MXC&AMB..ZM.FIX.ZM4RVA07.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//S5DQ0005 DD DSN=MXC&AMB..ZM.FIX.ZM4RVA08.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//S6DQ0006 DD DSN=MXC&AMB..ZM.FIX.ZM4RVA09.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//S7DQ0007 DD DSN=MXC&AMB..ZM.FIX.ZM4RVA11.CTC,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMVA2101),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV190                                                 *00240002
//* UTIL/PGM: ICEMAN                                                   *00240002
//* OBJETIVO: ORDENA Y GENERA ARCHIVO DE OPERACIONES DIARIAS.          *00240002
//*--------------------------------------------------------------------*
//ZMPRV190 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVDIA,DISP=SHR
//SORTOUT1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..SORTDIA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTOUT2 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..CANASTA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTOUT3 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..DIAPRES,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMVA2100),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV180                                                 *00240002
//* UTIL/PGM: ICEMAN                                                   *00240002
//* OBJETIVO: ORDENA ARCHIVO DE OPERACIONES A FECHAS VALOR.            *00240002
//*--------------------------------------------------------------------*
//ZMPRV180 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVFECV,DISP=SHR
//SORTOUT1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..SORTFVAL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTOUT2 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..CANASTA.FVAL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTOUT3 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..FVAPRES,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMVA2102),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV170                                                 *00240002
//* UTIL/PGM: ICEMAN                                                   *00240002
//* OBJETIVO: ORDENA ARCHIVO DE MOVIMIENTOS DE PRESTAMOS.              *00240002
//*--------------------------------------------------------------------*
//ZMPRV170 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA1.F&FECHA..MOVPRES,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..DIAPRES,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..FVAPRES,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..SORTPRES,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMVA2096),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV160                                                 *00240002
//* UTIL/PGM: ICEMAN                                                   *00240002
//* OBJETIVO: ORDENA ARCHIVOS DE CANASTAS DIARIO Y FV.                 *00240002
//*--------------------------------------------------------------------*
//ZMPRV160 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..CANASTA,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..CANASTA.FVAL,       R
//            DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..CANASTA.COMP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMVA2096),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV150                                                 *00240002
//* UTIL/PGM: ICEMAN                                                   *00240002
//* OBJETIVO: ORDENA ARCHIVOS DE CANASTAS DIARIO Y FV.                 *00240002
//*--------------------------------------------------------------------*
//ZMPRV150 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..CANASTA.COMP,
//            DISP=SHR
//SORTOUT1 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..DEPOS101,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SORTOUT2 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..RETIR201,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMVA2098),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV140                                                 *00240002
//* UTIL/PGM: IKJEFT01/ZM4RVA09                                        *00240002
//* OBJETIVO: GENERA ARCHIVOS CON LA COMPOSICIóN DE LAS CANASTAS.      *00240002
//*--------------------------------------------------------------------*
//ZMPRV140 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780
//E1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..CANASTA.COMP,
//         DISP=SHR
//E2DQ0002 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..DEPOS101,DISP=SHR
//E3DQ0003 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..RETIR201,DISP=SHR
//S1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MAESCND,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//S2DQ0002 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..COMP101,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//S3DQ0003 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..COMP201,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=MXC&AMB..ZM.FIX.ZM4RVA09.CTC,DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV130                                                 *00240002
//* UTIL/PGM: IKJEFT01/ZM4RVA05                                        *00240002
//* OBJETIVO: GENERA MOVIMIENTOS CONTABLES DE CANASTAS.                *00240002
//*--------------------------------------------------------------------*
//ZMPRV130 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MAESCND,DISP=SHR
//E2DQ0002 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..COMP101,DISP=SHR
//E3DQ0003 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..COMP201,DISP=SHR
//S1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MV5CND,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=MXC&AMB..ZM.FIX.ZM4RVA05.CTC,DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV120                                                 *00240002
//* UTIL/PGM: ICEMAN                                                   *00240002
//* OBJETIVO: ORDENA ARCHIVOS DEL DIA CND SIN TRACS.                   *00240002
//*--------------------------------------------------------------------*
//ZMPRV120 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..SORTDIA,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..COMP101,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..COMP201,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MVDIARIO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMVA2096),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV110                                                 *00240002
//* UTIL/PGM: IKJEFT01/ZM4RVA04                                        *00240002
//* OBJETIVO: GENERA MOVIMIENTOS CONTABLES DEL DÍA INCLUYENDO OP MEXDER*00240002
//*--------------------------------------------------------------------*
//ZMPRV110 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MVDIARIO,DISP=SHR
//S1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MV5DIA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=MXC&AMB..ZM.FIX.ZM4RVA04.CTC,DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV100                                                 *00240002
//* UTIL/PGM: ICEMAN                                                   *00240002
//* OBJETIVO: ORDENA ARCHIVOS DEL DIA CND SIN TRACS.                   *00240002
//*--------------------------------------------------------------------*
//ZMPRV100 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..SORTFVAL,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..COMP101,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..COMP201,DISP=SHR
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MVFVALOR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=200,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMVA2096),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV090                                                 *00240002
//* UTIL/PGM: IKJEFT01/ZM4RVA06                                        *00240002
//* OBJETIVO: GENERA MOVIMIENTOS CONTABLES DE FECHAS VALOR.            *00240002
//*--------------------------------------------------------------------*
//ZMPRV090 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MVFVALOR,DISP=SHR
//S1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MV5FVA,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=MXC&AMB..ZM.FIX.ZM4RVA06.CTC,DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV080                                                 *00240002
//* UTIL/PGM: IKJEFT01/ZM4RVA07                                        *00240002
//* OBJETIVO: GENERA MOVIMIENTOS CONTABLES DE PRESTAMOS.               *00240002
//*--------------------------------------------------------------------*
//ZMPRV080 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..SORTPRES,DISP=SHR
//S1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MV5PRE,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=MXC&AMB..ZM.FIX.ZM4RVA07.CTC,DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV070                                                 *00240002
//* UTIL/PGM: IKJEFT01/ZM4RVA11                                        *00240002
//* OBJETIVO: GENERA MOVIMIENTOS CONTABLES DE PRESTAMOS (VALUACIONES). *00240002
//*--------------------------------------------------------------------*
//ZMPRV070 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//S1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MV5VAL,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=MXC&AMB..ZM.FIX.ZM4RVA11.CTC,DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV060                                                 *00240002
//* UTIL/PGM: IKJEFT01/ZM4RVA08                                        *00240002
//* OBJETIVO: GENERA INTERFAZ DE SALDOS MV5.                           *00240002
//*--------------------------------------------------------------------*
//ZMPRV060 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//S1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MV5SALD,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//S2DQ0002 DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MV5VAL2,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//         SPACE=(CYL,(100,50),RLSE),
//         UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=MXC&AMB..ZM.FIX.ZM4RVA08.CTC,DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV050                                                 *00240002
//* UTIL/PGM: ICEMAN                                                   *00240002
//* OBJETIVO: CONCATENA ARCHIVOS DE MOVIMIENTOS CONTABLES.             *00240002
//*--------------------------------------------------------------------*
//ZMPRV050 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MV5DIA,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MV5CND,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MV5FVA,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MV5PRE,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MV5VAL,DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MV5VAL2,DISP=SHR
//*ORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ACECMV5,
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.INTFAZ.ZMPDRVA2.F&FECHA..ACECMV5,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMVA2084),DISP=SHR
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV040                                                 *00240002
//* UTIL/PGM: ICEMAN                                                   *00240002
//* OBJETIVO: ORDENA ARCHIVO DE INTEFAZ DE SALDOS MV5.                 *00240002
//*--------------------------------------------------------------------*
//ZMPRV040 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ZMPDRVA2.F&FECHA..MV5SALD,DISP=SHR
//*ORTOUT  DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ACECMV5.SALDOS,
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.INTFAZ.ZMPDRVA2.F&FECHA..SALDMV5,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),
//            UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMVA2080),DISP=SHR
//*
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV030                                                 *00240002
//* UTIL/PGM: ZM4RVA16                                                 *00240002
//* OBJETIVO: GENERAR UNA CANCELACION Y REPROCESAR.                    *00240002
//*--------------------------------------------------------------------*
//ZMPRV030 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//E1DQ0001 DD DSN=MXC&AMB..ZM.FIX.INTFAZ.ZMPDRVA2.F&FECHA..ACECMV5,
//            DISP=SHR
//E2DQ0002 DD DSN=MXC&AMB..ZM.FIX.INTFAZ.ZMPDRVA2.F&FECHA..SALDMV5,
//            DISP=SHR
//E3DQ0003 DD DSN=MXC&AMB..ZM.GDGD.INTFAZ.RETROC.ACECMV5(0),
//            DISP=SHR
//E4DQ0004 DD DSN=MXC&AMB..ZM.GDGD.INTFAZ.RETROC.SALDMV5(0),
//            DISP=SHR
//S1DQ0001 DD DSN=MXC&AMB..ZM.GDGD.INTFAZ.RETROC.ACECMV5(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUP.MODEL,LRECL=408,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(1000,500),RLSE),
//            UNIT=3390
//S2DQ0002 DD DSN=MXC&AMB..ZM.GDGD.INTFAZ.RETROC.SALDMV5(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUP.MODEL,LRECL=1058,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(1000,500),RLSE),
//            UNIT=3390
//S3DQ0003 DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ACECMV5,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=400,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE),
//            UNIT=3390
//S4DQ0004 DD DSN=MXC&AMB..ZM.FIX.ECO.INTFAZ.ACECMV5.SALDOS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=1050,BLKSIZE=0),
//            SPACE=(CYL,(1000,500),RLSE),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPRV030),DISP=SHR
//*
// IF ZMPRV030.RC EQ 03 THEN
//*
//*--------------------------------------------------------------------*00240002
//* PASO    : ZMPRV020                                                 *00240002
//* UTIL/PGM: ZM4RVA25                                                 *00240002
//* OBJETIVO: DEPURACION DE ARCHIVO DE SALDOS Y MOVIMIENTOS C/60 DIAS. *00240002
//*--------------------------------------------------------------------*
//ZMPRV020 EXEC PGM=IKJEFT01,COND=(4,LT)                                00780700
//E3DQ0003 DD DSN=MXC&AMB..ZM.GDGD.INTFAZ.RETROC.ACECMV5(0),
//            DISP=SHR
//E4DQ0004 DD DSN=MXC&AMB..ZM.GDGD.INTFAZ.RETROC.SALDMV5(0),
//            DISP=SHR
//S1DQ0001 DD DSN=MXC&AMB..ZM.GDGD.INTFAZ.RETROC.ACECMV5(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUP.MODEL,LRECL=408,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(1000,500),RLSE),
//            UNIT=3390
//S2DQ0002 DD DSN=MXC&AMB..ZM.GDGD.INTFAZ.RETROC.SALDMV5(+1),
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(BKUP.MODEL,LRECL=1058,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(1000,500),RLSE),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPRV035),DISP=SHR
//*
// ENDIF
//*
//*--------------------------------------------------------------------*00240002
//*                 FIN DEL PROCESO ZMPDRVA2                           *00240002
//*--------------------------------------------------------------------*00240002
