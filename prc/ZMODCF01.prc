//ZMODCF01 PROC
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - REPORTE DE ORDENES                             *
//* PROCESO      : ZMODCF01.                                           *
//* PERIODICIDAD : DIARIO.                                             *
//* OBJETIVO     : REPORTES DE CONFIRMACION                            *
//* FECHA        : JUNIO 2016.                                         *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*   @DGCM01    XMZ8533  05FEB19 SE INHIBE EL USO DEL ARCHIVO DE      *
//*                               SUITABILITY.                         *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PASO       : ZFM01T90.                                             *
//* UTILERIA   : IKJEFT01/ZM4OC100                                     *
//* OBJETIVO   : OBTIENE ORDENES VIVAS                                 *
//*--------------------------------------------------------------------*
//ZOC01T90 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ091S1 DD DSN=MXCP.ZM.FIX.OCO.VIVAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=194,BLKSIZE=0,DSORG=PS)
//*
//ZMJ091S2 DD DSN=MXCP.ZM.FIX.OCO.ZM4OC100.INC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZOC01T90),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZFM01T95.                                             *
//* UTILERIA   : IKJEFT01/ZM4OC101                                     *
//* OBJETIVO   : OBTIENE ORDENES LIBERADAS                             *
//*--------------------------------------------------------------------*
//ZOC01T85 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ091S1 DD DSN=MXCP.ZM.FIX.OCO.LIBE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=194,BLKSIZE=0,DSORG=PS)
//*
//ZMJ091S2 DD DSN=MXCP.ZM.FIX.OCO.ZM4OC101.INC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZOC01T85),DISP=SHR
//*
//*BTRPRO1Q24-I
//**********************************************************************
//*  GENERA UN SE GENERA UN SOLO ARCHIVO DE ORDENES                    *
//**********************************************************************
//ZOC01T84 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.OCO.LIBE,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.OCO.LIBE.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=194,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZOC01T84),DISP=SHR
//*
//*BTRPRO1Q24-F
//*--------------------------------------------------------------------*
//* PASO       : ZFM01T95.                                             *
//* UTILERIA   : IKJEFT01/ZM4OC102                                     *
//* OBJETIVO   : OBTIENE COMPRAS Y VENTAS                              *
//*--------------------------------------------------------------------*
//ZOC01T80 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ091S1 DD DSN=MXCP.ZM.FIX.OCO.CV,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=194,BLKSIZE=0,DSORG=PS)
//*
//ZMJ091S2 DD DSN=MXCP.ZM.FIX.OCO.ZM4OC102.INC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZOC01T80),DISP=SHR
//*BTRPRO1Q24-I
//**********************************************************************
//*  GENERA UN SE GENERA UN SOLO ARCHIVO DE ORDENES                    *
//**********************************************************************
//ZOC01T79 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.OCO.CV,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.OCO.CV.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=194,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZOC01T79),DISP=SHR
//*BTRPRO1Q24-F
//*
//**********************************************************************
//*  GENERA UN SE GENERA UN SOLO ARCHIVO DE ORDENES                    *
//**********************************************************************
//ZOC01T75 EXEC PGM=ICEMAN,COND=(0,NE)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.OCO.VIVAS,DISP=SHR
//*BTRPR1Q24-I
//*        DD DSN=MXCP.ZM.FIX.OCO.LIBE,DISP=SHR
//*        DD DSN=MXCP.ZM.FIX.OCO.CV,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.OCO.LIBE.SORT,DISP=SHR
//         DD DSN=MXCP.ZM.FIX.OCO.CV.SORT,DISP=SHR
//*BTRPR1Q24-F
//SORTOUT  DD DSN=MXCP.ZM.FIX.OCO.DATOS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=194,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZOC01T75),DISP=SHR
//*
//**********************************************************************
//*                        == ZM4OC103 ==                              *
//* OBJETIVO : SE OBTIENE DATOS COMPLEMENTARIOS NOMBRE, PROMOTOR, OFIC *
//**********************************************************************
//ZOC01T70 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.OCO.DATOS,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.OCO.ZM4OC103,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=437,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZOC01T70),DISP=SHR
//*
//**********************************************************************
//*  GENERA UN ARCHIVO ORDENADO X CUENTA                               *
//**********************************************************************
//ZOC01T65 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.OCO.ZM4OC103,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.OCO.ZM4OC103.CTA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=437,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZOC01T75),DISP=SHR
//*
//**********************************************************************
//*  SORTE  ARCHIVO DE SUITABILITY PARA OBTENER SI ES SOFITICADO O NO  *
//**********************************************************************
//ZOC01T60 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//*@DGCM01-I
//*SORTIN   DD DSN=MXCP.ZM.FIX.CTOSEDOS.PDVF2.REP,DISP=SHR
//SORTIN   DD DSN=NULLFILE,
//            DCB=(RECFM=FB,LRECL=322)
//*@DGCM01-F
//SORTOUT  DD DSN=MXCP.ZM.FIX.CTOSEDOS.PDVF2.REP.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=322,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZOC01T60),DISP=SHR
//*
//**********************************************************************
//*                        == ZM3OC104 ==                              *
//* OBJETIVO : PROGRAMA PARA SOFISTICADO O NO SOFISTICADO              *
//**********************************************************************
//ZOC01T59 EXEC PGM=ZM3OC104,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.CTOSEDOS.PDVF2.REP.SORT,DISP=SHR
//*
//ENTRADA2 DD DSN=MXCP.ZM.FIX.OCO.ZM4OC103.CTA,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.OCO.ZM3OC104,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=405,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*  GENERA UN ARCHIVO ORDENADO POR :                                  *
//*  OFICINA, PROMOTOR, CONTRATO,NO. DE ORDEN,COMPRA/VENTA             *
//**********************************************************************
//ZOC01T58 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.OCO.ZM3OC104,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.OCO.ZM3OC104.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=405,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZOC01T56),DISP=SHR
//*
//**********************************************************************
//*                        == ZM4OC105 ==                              *
//* OBJETIVO : PROGRAMA DE REPORTE DE ORDENES CONDICIONADAS            *
//**********************************************************************
//ZOC01T57 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.OCO.ZM3OC104.SORT,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.OCO.ZM4OC105,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=134,BLKSIZE=0,DSORG=PS)
//SALIDA2  DD DSN=MXCP.ZM.FIX.OCO.ZM4OC105.OPERACV.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=370,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZOC01T50),DISP=SHR
//*
//**********************************************************************
//*  GENERA UN ARCHIVO ORDENES CONDICIONADAS VENTAS                    *
//**********************************************************************
//ZOC01T54 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.OCO.ZM3OC104,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.OCO.ZM4OC107.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=405,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(50,25),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZOC01T57),DISP=SHR
//*
//**********************************************************************
//*                        == ZM4OC107 ==                              *
//* OBJETIVO : PROGRAMA DE REPORTE DE ORDENES CONDICIONADAS VENTAS     *
//**********************************************************************
//ZOC01T53 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ENTRADA  DD DSN=MXCP.ZM.FIX.OCO.ZM4OC107.SORT,DISP=SHR
//*
//SALIDA   DD DSN=MXCP.ZM.FIX.OCO.ZM4OC107,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=134,BLKSIZE=0,DSORG=PS)
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.OCO.ZM4OC107.OPERVTA.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=357,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZOC01T53),DISP=SHR
//*
//**********************************************************************
//*                        == ZM4DRCOC ==                              *
//* OBJETIVO : PROGRAMA DE REPORTE DE COMISIONES COBRADAS DE ORDENES   *
//*            CONDICIONADAS POR OFICINA-PROMOTOR                      *
//**********************************************************************
//ZOC01T49 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*@DGCM01-I
//*ZM4DRCOC DD DSN=MXCP.ZM.FIX.OCO.ZM4DRCOC,
//REPCOOC  DD DSN=MXCP.ZM.FIX.OCO.ZM4DRCOC,
//*@DGCM01-F
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS)
//*
//SALIDA2  DD DSN=MXCP.ZM.FIX.OCO.ZM4DRCOC.COMIS.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            DCB=(RECFM=FB,LRECL=130,BLKSIZE=0,DSORG=PS)
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZOC01T49),DISP=SHR
//*
//**********************************************************************
//* PASO    : PZOC01T45                                                *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE DE ORDENES CONDICIONADAS                         *
//**********************************************************************
//ZOC01T45 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.OCO.ZM4OC105,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : PZOC01T40                                                *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE DE COMISION DE ORDENES CONDICIOANDAS             *
//**********************************************************************
//*ZOC01T40 EXEC PGM=ICEGENER,COND=(4,LT)
//*SYSUT1   DD DSN=MXCP.ZM.FIX.OCO.ZM4DRCOC,DISP=SHR
//*SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSIN    DD DUMMY
//*
//**********************************************************************
//* PASO    : PZOC01T39                                                *
//* PROGRAMA: ICEGENER                                                 *
//* OBJETIVO: REPORTE DE ORDENES CONDICIONADAS VENTAS                  *
//**********************************************************************
//ZOC01T39 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSUT1   DD DSN=MXCP.ZM.FIX.OCO.ZM4OC107,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//****************** FIN DEL PROCESO ZMODCF01 **************************
