//ZMPDPDV5 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM YA9DPV (CB) PDV REPORTING.                       *
//* PROCESO      : ZMPDPDV5.                                           *
//* PERIODICIDAD : MENSUAL.                                            *
//* OBJETIVO     : GENERAR EL ARCHIVO DE LA POSICION (CARTERA)         *
//*                DE LOS CLIENTES DE BANCA PATRIMONIAL (MUV) PARA     *
//*                PDV.                                                *
//* REALIZO      : FABRICA DE SOFTWARE CAPGEMINI.                      *
//* FECHA        : 26 DE SEPTIEMBRE DE 2014.                           *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-01 CAPGEMINI 30ENE15 SE MODIFICA EL PASO PPDV5P10 Y SE    *
//*                               AGREGA EL PASO PPDV5P08              *
//* FS-0.0.0-02 FS-DGCM   03NOV17 SE AGREGA EL PASO PPDV5P09 PARA      *
//*                               CLASIFICAR EL ARCHIVO REPOTING.R01   *
//*--------------------------------------------------------------------*
//* FS-0.0.0-03 XMZ9332   17ENE19 SE AGREGA EL PASO PPDV5P07 Y SE      *
//*                               CAMBIA EL NOMBRE DE UN ARCHIVO.      *
//*--------------------------------------------------------------------*
//* XM020QD1-I  XM020QD   22ABR19 SE AGREGAN PASOS PARA REALIZAR CRUCE *
//* XM020QD1-F                    REPORTE CARTERA VS DESCARGA ZMDT201  *
//*--------------------------------------------------------------------*
//* @MEX001-I   MI13599   08JUN22 SE AGREGAN PASOS PARA REALIZAR CRUCE *
//* @MEX001-F                     REPORTE CARTERA VS DESCARGA ZMDT201  *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : PPDV5P10.                                             *
//* UTILERIA   : IKJEFT01.                                             *
//* OBJETIVO   : GENERAR EL ARCHIVO DE LA POSICION DE CARTERA          *
//*              (REPORTING) DE LOS CLIENTES DE LA BANCA               *
//*              PATRIMONIAL.                                          *
//*--------------------------------------------------------------------*
//PPDV5P10 EXEC PGM=IKJEFT01
//*
//*FS-0.0.0-01-INI
//*ZMPDV1S1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..BCJDPDV5.REPOTING,
//ZMPDV1S1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..BCJDPDV5.REPOTING.R01,
//*FS-0.0.0-01-FIN
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=123,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(500,100),RLSE)
//*
//*@MEX001-I
//ZMPDV1S2 DD DSN=MXC&AMB..ZM.FIX.BCJDPDV5.REPOTING.R02,
//            DISP=(NEW,CATLG,DELETE),
//*@MEX001-I
//*           DCB=(LRECL=148,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=152,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*@MEX001-F
//            UNIT=3390,SPACE=(CYL,(500,100),RLSE)
//*@MEX001-F
//QSRLSDB2 DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDV301),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PPDV5P09.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : CLASIFICAR EL ARCHIVO REPOTING POR CONTRATO, TIPO DE  *
//*              CONTRATO, EMISORA, SERIE, ISIN Y TIPO VALOR.          *
//*--------------------------------------------------------------------*
//PPDV5P09 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.F&FECHA..BCJDPDV5.REPOTING.R01,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.F&FECHA..BCJDPDV5.REPOTING.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=123,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(500,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPDS303),DISP=SHR
//*
//*FS-0.0.0-01-INI
//*--------------------------------------------------------------------*
//* PASO       : PPDV5P08.                                             *
//* UTILERIA   : IKJEFT01.                                             *
//* OBJETIVO   : GENERAR EL ARCHIVO REPOTING  CON EL CAMPO VALOR RAZO- *
//*              NABLE COMO NUMERICO CON SIGNO CON LA POSICION DE LOS  *
//*              CLIENTES PDV DE BANCA PATRIMONIAL.                    *
//*--------------------------------------------------------------------*
//PPDV5P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMPDV1E1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..BCJDPDV5.REPOTING.SORT,
//            DISP=SHR
//*
//*FS-0.0.0-03-I
//*ZMPDV1S1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..BCJDPDV5.REPOTING,
//ZMPDV1S1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..BCJDPDV5.REPOTING.PRE1,
//*FS-0.0.0-03-F
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=123,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(500,100),RLSE)
//*
//QSRLSDB2 DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDV302),DISP=SHR
//*
//*FS-0.0.0-01-FIN
//*XM020QD1-I
//*--------------------------------------------------------------------*
//* PASO       : PPDV5P07.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENAR ARCHIVO POR ISIN PARA CRUZAR CON DESCARGA 201 *
//*--------------------------------------------------------------------*
//PPDV5P07 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.F&FECHA..BCJDPDV5.REPOTING.PRE1,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.F&FECHA..BCJDPDV5.REPOTING.PRE2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=123,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(500,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPDS304),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PPDV5P06                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE TABLA EMISIONES VALMER ZMDT201.           *
//*--------------------------------------------------------------------*
//PPDV5P06 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PPDV5P06,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.FIX.BCJDPDV5.UNLOAD.ZMDT201,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB),
//            SPACE=(CYL,(500,250),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCDV120),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PPDV5P05.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : ORDENAR DESCARGA DE LA TABLA ZMDT201 POR ISIN,        *
//*              QUITANDO VALORES DUPLICADOS Y ORDENARLOS.             *
//*--------------------------------------------------------------------*
//PPDV5P05 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.BCJDPDV5.UNLOAD.ZMDT201,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.BCJDPDV5.ZMDT201.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=050,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(500,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMCDV110),DISP=SHR
//*
//*XM020QD1-F
//*FS-0.0.0-03-I
//*--------------------------------------------------------------------*
//* PASO       : PPDV5P04.                                             *
//* UTILERIA   : IKJEFT01/ZM4PDV23.                                    *
//* OBJETIVO   : VERIFICA LISTA DE EMISORAS PARA PODER IDENTIFICARLAS  *
//*              COMO DESLISTADAS EN ISIN.                             *
//*--------------------------------------------------------------------*
//PPDV5P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*XM020QD1-I
//E1ZMPDV1 DD DSN=MXC&AMB..ZM.FIX.BCJDPDV5.ZMDT201.SORT,
//            DISP=SHR
//*
//*E2ZMPDV1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..BCJDPDV5.REPOTING.PRE1,
//E2ZMPDV1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..BCJDPDV5.REPOTING.PRE2,
//            DISP=SHR
//*
//*S1ZMPDV1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..BCJDPDV5.REPOTING,
//S1ZMPDV1 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..BCJDPDV5.REPOTING.PRE3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=123,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(500,100),RLSE)
//*XM020QD1-F
//*
//QSRLSDB2 DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDV303),DISP=SHR
//*
//*FS-0.0.0-03-F
//*XM020QD1-I
//*--------------------------------------------------------------------*
//* PASO       : PPDV5P03.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : CLASIFICAR EL ARCHIVO REPOTING POR CONTRATO, TIPO DE  *
//*              CONTRATO, EMISORA, SERIE, ISIN Y TIPO VALOR.          *
//*--------------------------------------------------------------------*
//PPDV5P03 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.F&FECHA..BCJDPDV5.REPOTING.PRE3,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.F&FECHA..BCJDPDV5.REPOTING,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=123,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(500,100),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPDS305),DISP=SHR
//*
//*XM020QD1-F
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMPDPDV5                        *
//*--------------------------------------------------------------------*
