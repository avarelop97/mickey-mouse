//ZMHFPM15 PROC
//**********************************************************************
//*RESPALDO PAQUETE ZM@16868 3-DIC-2019                                *
//* SISTEMA        :  ESTADOS DE CUENTA CASA DE BOLSA                  *
//*                                                                    *
//* PROCESO        :  ZMHFPM15                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  GENERACION DE ARCHIVOS INTERFAS EDOS DE CUENTA   *
//*                   ARCHIVO DE COSTOS PROMEDIOS                      *
//*                   ARCHIVO DE INTERES CORRIDO                       *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* DESPUES DE     :  CIERRE DE FIN DE MES                             *
//*                                                                    *
//* REALIZACION    :  RICARDO ZAMBRANO MOLINA        04/SEP/2018       *
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//*   PHF15P08   XMY0609 18/10/03 PASO PARA ELIMINAR DUPLICADOS------- *
//*--------------------------------------------------------------------*
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          === ZM3DG001 ===                          *
//*                                                                    *
//* OBJETIVO : RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO FIJO A 96 CHAR *
//*                                                                    *
//**********************************************************************
//PHF15P10 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','&FECHA','     ')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMHFPM15,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*--------------------------------------------------------------------*
//* PASO     : PHF15P08                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT932 PARA COSTOS PROMEDIOS      *
//*--------------------------------------------------------------------*
//PHF15P09 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMLCPD50,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMDT932.CPROM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC50T55),DISP=SHR
//*                                                                    *
//*--------------------------------------------------------------------*
//* PROGRAMA: SORT SUMA LOS TITULOS Y DEJA UN SOLO REGISTRO LLAVE      *
//*--------------------------------------------------------------------*
//PHF15P08 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMDT932.CPROM,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMDT932.CPSUMA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=119,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF15T16),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM3DU957 , AHORA ZM4DU956                                *
//* LEE EL ARCHIVO BAJADO DE LA TABLA ZMDT932 Y GENERA EL              *
//* ARCHIVO CON TODOS LOS DATOS DE COSTOS PROMEDIOS                    *
//* DE ACUERDO A LA FECHA TOMADA DE FECHA (ODATE) DEL ARCHIVO          *
//*--------------------------------------------------------------------*
//PHF15P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMU915T1 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMDT932.CPSUMA,
//            DISP=SHR
//ZMU905A1 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMHFPM15,
//            DISP=SHR
//ZMU915T3 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..CP.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=290,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF09T45),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT610 PARA INTERES CORRIDO       *
//*--------------------------------------------------------------------*
//PHF15P06 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMLCPD50,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMDT610.INTEC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,50),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC50T54),DISP=SHR
//SYSIN    DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: SORT ORDENA LA DESCARGA DE LA 610 POR CUENTA PARA MATCH  *
//*--------------------------------------------------------------------*
//PHF15P05 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMDT610.INTEC,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMDT610.INC.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=83,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T48),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA ZMDT609 PARA INTERES CORRIDO      *
//*--------------------------------------------------------------------*
//PHF15P04 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMLCPD50,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMDT609.INC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLC50T56),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: SORT ORDENA LA DESCARGA POR CUENTA MUV                   *
//*--------------------------------------------------------------------*
//PHF15P03 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMDT609.INC,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMDT609.INC.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=16,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T48),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4DU957                                                 *
//* LEE EL ARCHIVO BAJADO DE LA TABLA ZMDT610 Y GENERA EL              *
//* ARCHIVO CON TODOS LOS DATOS DE INTERES CORRIDO                     *
//* DE ACUERDO A LA FECHA TOMADA DE P05 DE LA PARAM                    *
//* MATCH CON LA DESCARGA DE LA ZMDT609 PARA PLAZA,MONEDA Y CTA BPIGO  *
//*--------------------------------------------------------------------*
//PHF15P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMU915T1 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMDT610.INC.SORT,
//            DISP=SHR
//ZMU915T2 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMDT609.INC.SORT,
//            DISP=SHR
//ZMU905A1 DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..ZMHFPM15,
//            DISP=SHR
//ZMU915T3 DD DSN=MXCP.ZM.FIX.ECO.E&EMP..IT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=290,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF09T60),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* JUNTA Y ORDENA ARCHS DE COSTO PROM E INTERES CORRIDO X DESMOD+CTA
//*--------------------------------------------------------------------*
//PHF15P01 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..CP.F&FECHA,
//            DISP=SHR
//         DD DSN=MXC&AMB..ZM.FIX.ECO.E&EMP..IT.F&FECHA,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ECO.E&EMP..ZMHFPM15.ITFAS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=290,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(50,25),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHF09T49),DISP=SHR
//*
//**********************************************************************
//*                          FIN DEL JOB                               *
