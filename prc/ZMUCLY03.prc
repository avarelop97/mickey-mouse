//ZMUCLY03 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO.     *
//* PROCESO      : ZMUCLY03.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : DEPURACION DE TABLAS DE OPERACION CALYPSO.          *
//* REALIZO      : CARLOS GLZ - XMBB157.                               *
//* FECHA        : 14 DE NOVIEMBRE DEL 2016.                           *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA       AUTOR    FECHA  DESCRIPCION                         *
//* ------------ --------- ------- ----------------------------------- *
//* FS-01.01.01   XMBB157  15ABR18 SE AGREGA LA DESCARGA DE LA TABLA   *
//*                        REPORTO PARA PRESERVAR REGISTROS UTILES EN  *
//*                        LAS TABLAS DE MENSAJERIA                    *
//*--------------------------------------------------------------------*
//* PASO       : ZPY03T40.                                             *
//* UTILERIA   : IKJEFT01/ZM4CLP07.                                    *
//* OBJETIVO   : CREA CONTROL DE DESCARGA DE LA TABLA DE CONTROL.      *
//*--------------------------------------------------------------------*
//ZPY03T40 EXEC PGM=IKJEFT01
//*
//S1DQ0001 DD DSN=MXC&AMB..ZM.TMP.F&FECHA..CONTROL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(01,01),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*FS-01.01.01-INI
//S2DQ0002 DD DSN=MXC&AMB..ZM.TMP.F&FECHA..CONTROL.REPORTO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(01,01),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//*FS-01.01.01-FIN
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPY03T40),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPY03T35.                                             *
//* UTILERIA   : ADUUMAIN.                                             *
//* OBJETIVO   : GENERA ARCHIVO DE LLABES DE LA TABLA ZMDT850.         *
//*--------------------------------------------------------------------*
//ZPY03T35 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZPY03T35,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.TMP.UNLOAD.ZMUCLY03.ZMDT850,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB,LRECL=3113),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD SYSOUT=*
//*
//SYSIN    DD DSN=MXC&AMB..ZM.TMP.F&FECHA..CONTROL,
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPY03T30.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : MODIFICA EL FORMATO DEL ARCHIVO PIBOTE.               *
//*--------------------------------------------------------------------*
//ZPY03T30 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.UNLOAD.ZMUCLY03.ZMDT850,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.SORT.ZMUCLY03.ZMDT850,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=3113,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPY03T30),
//            DISP=SHR
//*
//*FS-01.01.01-INI
//*--------------------------------------------------------------------*
//* PASO       : ZPY03T28.                                             *
//* UTILERIA   : ADUUMAIN.                                             *
//* OBJETIVO   : GENERA ARCHIVO DE REPORTOS VIVOS DE LA TABLA REPORTO. *
//*--------------------------------------------------------------------*
//ZPY03T28 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZPY03T28,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.TMP.UNLOAD.ZMUCLY03.REPORTO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BLKSIZE=0,DSORG=PS,RECFM=FB,LRECL=33),
//            SPACE=(CYL,(1000,500),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD SYSOUT=*
//*
//SYSIN    DD DSN=MXC&AMB..ZM.TMP.F&FECHA..CONTROL.REPORTO,
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPY03T26.                                             *
//* UTILERIA   : ICEMAN.                                               *
//* OBJETIVO   : MODIFICA EL FORMATO DEL ARCHIVO PIBOTE.               *
//*--------------------------------------------------------------------*
//ZPY03T26 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.UNLOAD.ZMUCLY03.REPORTO,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.SORT.ZMUCLY03.REPORTO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=33,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZPY03T26),
//            DISP=SHR
//*
//*FS-01.01.01-FIN
//*--------------------------------------------------------------------*
//* PASO       : ZPY03T25.                                             *
//* UTILERIA   : IKJEFT01/ZM4CLP06.                                    *
//* OBJETIVO   : DEPURACION DE MENSAJERIA CALYPSO ZMDT849/ZMDT850.     *
//*--------------------------------------------------------------------*
//ZPY03T25 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXC&AMB..ZM.TMP.SORT.ZMUCLY03.ZMDT850,
//            DISP=SHR
//*
//*FS-01.01.01-INI
//*
//E2DQ0002 DD DSN=MXC&AMB..ZM.TMP.SORT.ZMUCLY03.REPORTO,
//            DISP=SHR
//*
//*FS-01.01.01-FIN
//S1DQ0001 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..MENSAJES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=3418,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPY03T25),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZPY03T20.                                             *
//* UTILERIA   : IKJEFT01/ZM4CLP03.                                    *
//* OBJETIVO   : DEPURACION DE CORROS DE CALYPSO ZMDT844.              *
//*--------------------------------------------------------------------*
//ZPY03T20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//S1DQ0001 DD DSN=MXC&AMB..ZM.FIX.F&FECHA..CORROS.ZMDT844,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=130,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZPY03T20),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                      FIN PROCESO ZMUCLY03                          *
//*--------------------------------------------------------------------*
