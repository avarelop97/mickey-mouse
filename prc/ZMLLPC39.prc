//ZMLLPC39 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A).              *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPC39.                                           *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  PROCESO DE GENERACION DE REPORTE RESUMEN FISCAL     *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : MENSUAL                                        *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-1.1.0-01 CAPGEMINI 12FEB14 -SE MODIFICO LA LONGITUD DEL ARCHIVO *
//*                               DE SALIDA EN EL PASO ZMPC3905,       *
//*                               ZMPC3904, ZMPC3903, ZMPC3902,        *
//*                               ZMPC3901.                            *
//*                               -SE AGREGARON LOS PASO ZMPC390A Y    *
//*                               ZMPC390B.                            *
//* FS-1.1.0-02 FSW-DGCM  13ABR15 -SE MODIFICO EL PROCESO PARA EL PROY:*
//*                               ODT18 REFORMA FISCAL 2014 ISR FASE II*
//*--------------------------------------------------------------------*
//*                                                                    *
//*---------------------------------------------------------------------
//* PASO    : ZMPC3901
//* PROGRAMA: ZM4OJ089
//*---------------------------------------------------------------------
//ZMPC3906 EXEC PGM=IKJEFT01
//*
//ZMJ089S1 DD DSN=MXCP.ZM.FIX.REP.COSTFIS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=913,BLKSIZE=0,DSORG=PS)
//*
//ZMJ089S2 DD DSN=MXCP.ZM.FIX.INC.COSTFIS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMP39T01),DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SEPARA EL ENCABEZADO DEL ARCHIVO PARA PODER ORDENARLO    *
//**********************************************************************
//ZMPC3905 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.COSTFIS.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.COSTFIS.F&FECHA..ENC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP39T02),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           REGISTRO SOLO REGISTROS CBP.                             *
//**********************************************************************
//ZMPC3904 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.COSTFIS.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.COSTFIS.F&FECHA..SOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP39T09),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE   *
//*           REGISTRO SOLO REGISTROS BCM QUE NO SEAN SE SOCIEDADES DE *
//*           INVERSION.                                               *
//**********************************************************************
//ZMPC3903 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.COSTFIS.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.BCM.COSTFIS.F&FECHA..SOR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP39T05),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     : ZMPC39A3.                                               *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO : ELIMINA COLUMNAS AL ENCABEZADO DE REPORTE CBP ACCIONES  *
//*--------------------------------------------------------------------*
//ZMPC39A3 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.COSTFIS.F&FECHA..ENC,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REP.COSTFIS.F&FECHA..ENC2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=623,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP39T12),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC39A4.                                               *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO : ELIMINA COLUMNAS PARA EL REPORTE CBP ACCIONES           *
//*--------------------------------------------------------------------*
//ZMPC39A4 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.COSTFIS.F&FECHA..SOR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.COSTFIS.F&FECHA..SOR2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=623,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP39T11),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: COLOCA EL ENCABEZADO AL  REPORTE RESUMEN FISCAL CBP      *
//**********************************************************************
//ZMPC3902 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.COSTFIS.F&FECHA..ENC2,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.CBP.COSTFIS.F&FECHA..SOR2,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.COSTFIS.F&FECHA..DEF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=623,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP39T04),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   * CASA DE BOLSA                       *
//* OBJETIVO: COLOCA EL ENCABEZADO AL  REPORTE RESUMEN FISCAL BCM      *
//*           ACCIONES.                                                *
//**********************************************************************
//ZMPC3901 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.COSTFIS.F&FECHA..ENC,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.BCM.COSTFIS.F&FECHA..SOR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.BCM.COSTFIS.F&FECHA..DEF0,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP39T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC390A.                                               *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO : SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE  *
//*            REGISTRO SOLO REGISTROS BCM QUE SEAN SE SOCIEDADES DE   *
//*            INVERSION.                                              *
//*--------------------------------------------------------------------*
//ZMPC390A EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.COSTFIS.F&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.BCM.COSTFIS.F&FECHA..SI1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP39T06),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC390B.                                               *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO : COLOCA EL ENCABEZADO AL  REPORTE RESUMEN FISCAL BCM     *
//*            SOCIEDADES.                                             *
//*--------------------------------------------------------------------*
//ZMPC390B EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.COSTFIS.F&FECHA..ENC,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.BCM.COSTFIS.F&FECHA..SI1,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.BCM.COSTFIS.F&FECHA..SOC1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP39T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC390C.                                               *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO : SORTEA EL ARCHIVO POR CUENTA, EMISORA, SERIE, FECHA DE  *
//*            REGISTRO SOLO REGISTROS CBP QUE SEAN SE SOCIEDADES DE   *
//*            INVERSION.                                              *
//*--------------------------------------------------------------------*
//ZMPC390C EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.COSTFIS.F&FECHA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.COSTFIS.F&FECHA..SI1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP39T08),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC390D.                                               *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO : COLOCA EL ENCABEZADO AL REPORTE RESUMEN FISCAL CBP      *
//*            SOCIEDADES.                                             *
//*--------------------------------------------------------------------*
//ZMPC390D EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REP.COSTFIS.F&FECHA..ENC,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.CBP.COSTFIS.F&FECHA..SI1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.COSTFIS.F&FECHA..DEF1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP39T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC390E.                                               *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO : ELIMINA COLUMNAS A REPORTE RESUMEN FISCAL CBP           *
//*            SOCIEDADES.                                             *
//*--------------------------------------------------------------------*
//ZMPC390E EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBP.COSTFIS.F&FECHA..DEF1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBP.COSTFIS.F&FECHA..SOC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=623,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP39T04),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC390G.                                               *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO : SORTEA QUITANDO IMPORTE Y TITULOS ACUMULADOS            *
//*            SOCIEDADES.                                             *
//*--------------------------------------------------------------------*
//ZMPC390G EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.BCM.COSTFIS.F&FECHA..SOC1,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.BCM.COSTFIS.F&FECHA..SOC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=913,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP39T07),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZMPC390H.                                               *
//* PROGRAMA : ICEMAN.                                                 *
//* OBJETIVO : ELIMINA COLUMNA DE PRECIO FISCAL PARA REPORTE DE        *
//*            BANCA PATRIMONIAL - CAPITALES                           *
//*--------------------------------------------------------------------*
//ZMPC390H EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.BCM.COSTFIS.F&FECHA..DEF0,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.BCM.COSTFIS.F&FECHA..DEF,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=563,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSCOUNT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSABEND DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP39T13),DISP=SHR
//*
//**********************************************************************00003000
//*                          FINAL DEL PROCESO
//**********************************************************************00003000
