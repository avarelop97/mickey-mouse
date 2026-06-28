//ZMHFPD09 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MUV MODULO UNICO DE VALORES ANTES SIVA.          *
//*                                                                    *
//* PROCESO        :  ZMHFPD09                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LAS DESCARGAS DE INFORMACION PARA LAS   *
//*                   INTERFACES MUVOPE, MUVCART Y MUVACTI.            *
//*                                                                    *
//**OBJETIVO       :  SE HACE LA SEPARACION DE INTERFACES MUVOPE,      *
//**                  MUVCART Y MUVACTI                                *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  PFDFDD01, PFDFDD02                               *
//*                                                                    *
//* DESPUES DE     :  CBLCCD02, CBHCND09, CBJCCD05, CBHCCD03           *
//*                                                                    *
//* REALIZACION    :  MARCIAL JAIME ROSALES RUIZ     06/SEP/2006       *
//*                                                                    *
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.0.0-05  XMY0609 01AGO18 SE CAMBIO LA SALIDA DEL PASO PHF09PD6 *
//*                              PARA QUE AHORA LO TOME EL BCHFND14 QUE*
//*                              CAMBIA LAS NUCVEOS DE RECLASIFICACION *
//*                              Y DEJA EL ARCHIVO PX ACTUALIZADO.     *
//*--------------------------------------------------------------------*
//**********************************************************************
//* MODIFICO: LAURA SANCHEZ ROSAS.                                     *
//* FECHA   : NOVIEMBRE 2023.                                          *
//* ASUNTO:   INCREMENTO FOLIO CONCEPT/ CTC'S SE DA ESPACIO DE 10 POS  *
//*                                                                    *
//*--------------------------------------------------------------------*
//**********************************************************************
//*                          === ZM3DG001 ===                          *
//*                                                                    *
//* OBJETIVO : RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO FIJO A 96 CHAR *
//*                                                                    *
//**********************************************************************
//PHF09P95 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMHFPD09,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM3DU966                                                 *
//* CREA LAS TARJETAS DE CONTROL PARA REALIZAR LAS DESCARGAS DE OPERA  *
//* Y ZMDT610 PARA PROCESO MUVOPE.                                     *
//*--------------------------------------------------------------------*
//PHF09P90 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMEQUER1 DD DSN=ZIVA.ZME.CONTROL(ZHF09C90),
//            DISP=SHR
//ZMEQUER2 DD DSN=ZIVA.ZME.CONTROL(ZHF09C89),
//            DISP=SHR
//ZMEQUER3 DD DSN=ZIVA.ZME.CONTROL(ZHF09C88),
//            DISP=SHR
//ZMEQUER4 DD DSN=ZIVA.ZME.CONTROL(ZHF09C87),
//            DISP=SHR
//*ARCHIVO 5 Y 6 DUMMY
//ZMEQUER5 DD DSN=ZIVA.ZME.CONTROL(ZHF09C87),
//            DISP=SHR
//ZMEQUER6 DD DSN=ZIVA.ZME.CONTROL(ZHF09C87),
//            DISP=SHR
//*
//ZMSVFQS1 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.OPERASA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,2),RLSE)
//*
//ZMSVFQS2 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.OPERASB,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,2),RLSE)
//*
//ZMSVFQS3 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.PLAZOSA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,2),RLSE)
//*
//ZMSVFQS4 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.PLAZOSB,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,2),RLSE)
//*
//*ARCHIVO 5 Y 6 DUMMY
//ZMSVFQS5 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.DUMMYA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,2),RLSE)
//*
//ZMSVFQS6 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.DUMMYB,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,2),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC17T10),DISP=SHR
//*--------------------------------------------------------------------*
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA FIDEICOMISOS OPERA Y OPERITAS PROCESO ACTUAL   *
//*--------------------------------------------------------------------*
//PHF09P85 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMLCPD50,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.OPERA.OLD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.OPERASA,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA FIDEICOMISOS OPERA Y OPERITAS PROCESO NUEVO    *
//*--------------------------------------------------------------------*
//PHF09P80 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMLCPD50,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.OPERA.NEW,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.OPERASB,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA PLAZO DE LA TABLA ZMDT610 PROCESO ACTUAL       *
//*--------------------------------------------------------------------*
//PHF09P75 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMLCPD50,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.PLAZO.OLD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.PLAZOSA,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA PLAZO DE LA TABLA ZMDT610 PROCESO NUEVO        *
//*--------------------------------------------------------------------*
//PHF09P70 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMLCPD50,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.PLAZO.NEW,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.PLAZOSB,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* CONCATENA LOS ARCHIVOS DE OPERAS, ELIMINANDO DUPLICADOS.           *
//*                                                                    *
//*--------------------------------------------------------------------*
//PHF09P65 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.OPERA.OLD,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.OPERA.NEW,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.OPERA.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=213,RECFM=VB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09C65),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* CONCATENA LOS ARCHIVOS DE PLAZOS, ELIMINANDO DUPLICADOS.           *
//*                                                                    *
//*--------------------------------------------------------------------*
//PHF09P60 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.PLAZO.OLD,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.PLAZO.NEW,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CURSOR.PLAZO.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=146,RECFM=VB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09C60),DISP=SHR
//******************************
//*TERMINA DESCARGAS MUVOPE
//******************************
//***********************************
//*INICIA DESCARGAS MUVCART Y MUVACTI
//***********************************
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM3DU966                                                 *
//* CREA LAS TARJETAS DE CONTROL PARA REALIZAR LAS DESCARGAS DE LAS    *
//* POSICIONES, EMISORAS, EFECTIVO Y NUEVAS PLAZAS.     MUVACTI        *
//*--------------------------------------------------------------------*
//PHF09P55 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMEQUER1 DD DSN=ZIVA.ZME.CONTROL(ZHF09C55),
//            DISP=SHR
//ZMEQUER2 DD DSN=ZIVA.ZME.CONTROL(ZLC17T07),
//            DISP=SHR
//*ARCHIVO 3, 4, 5 Y 6 DUMMY
//ZMEQUER3 DD DSN=ZIVA.ZME.CONTROL(ZLC17T07),
//            DISP=SHR
//ZMEQUER4 DD DSN=ZIVA.ZME.CONTROL(ZLC17T07),
//            DISP=SHR
//ZMEQUER5 DD DSN=ZIVA.ZME.CONTROL(ZLC17T07),
//            DISP=SHR
//ZMEQUER6 DD DSN=ZIVA.ZME.CONTROL(ZLC17T07),
//            DISP=SHR
//*
//ZMSVFQS1 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.POSICION,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,2),RLSE)
//*
//ZMSVFQS2 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.EMISORAS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,2),RLSE)
//*
//*ARCHIVO 3, 4, 5 Y 6 DUMMY
//ZMSVFQS3 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.DUMMY1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,2),RLSE)
//*
//ZMSVFQS4 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.DUMMY2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,2),RLSE)
//*
//ZMSVFQS5 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.DUMMY3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,2),RLSE)
//*
//ZMSVFQS6 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.DUMMY4,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,2),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC17T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PHF17P40                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA CONCEPT PARA EMISORAS              *
//*--------------------------------------------------------------------*
//PHF09P50 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMHFPM17,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.EMISCON,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(15,15),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.EMISORAS,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PHF17P35                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT610 PARA PLAZOS                *
//*--------------------------------------------------------------------*
//PHF09P45 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMHFPM17,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC1  DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMDT610.PZOSB,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(15,15),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSREC2  DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMDT610.PZOSA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(15,15),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09C45),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PHF17P30                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA CARTERA PARA POSICIONES            *
//*--------------------------------------------------------------------*
//PHF09P40 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMHFPM17,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC1  DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CARTERA.POSIB,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(15,15),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSREC2  DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CARTERA.POSIA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(15,15),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECO.E&EMP..INTFAZEM.POSICION,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PHF17P25                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA APLIDER PARA OBTENER LA FECHA ALTA *
//*--------------------------------------------------------------------*
//PHF09P35 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMHFPM17,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..APLIDER.OPZAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(15,15),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09C35),DISP=SHR
//*
//*MJ- TERMINA MUVCAR E INICIA MUVACTI
//*--------------------------------------------------------------------*
//* ORDENA LA DESCARGA DE LA TABLA APLIDER POR IOEMISOR, IOSERIE,      *
//* Y FSIST EN ORDEN DESCENDENTE.                                      *
//*--------------------------------------------------------------------*
//PHF09P30 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..APLIDER.OPZAS,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.E&EMP..APLIDER.OPZAS.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=43,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(05,10),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09C30),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* CONCATENA LOS ARCHIVOS DE LOS PLAZOS ELIMINANDO LOS DUPLICADOS.    *
//*                                                                    *
//*--------------------------------------------------------------------*
//PHF09P25 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMDT610.PZOSB,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMDT610.PZOSA,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMDT610.PZOSB.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=26,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09C25),DISP=SHR
//*--------------------------------------------------------------------*
//* CONCATENA LOS ARCHIVOS DE LAS POSICIONES ELIMINANDO LOS DUPLICADOS.*
//*                                                                    *
//*--------------------------------------------------------------------*
//PHF09P20 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CARTERA.POSIA,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CARTERA.POSIB,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CARTERA.POSIB.SORT,
//            DISP=(NEW,CATLG,DELETE),
//*           DCB=(LRECL=04,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            DCB=(LRECL=06,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09C20),DISP=SHR
//*
//*********************************************************************
//***           TERMINA PROCESO  Z M H F P D 0 9                    ***
//*********************************************************************
