//ZMPDUS01 PROC
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*                   C A S A   D E  B O L S A                         *00050001
//*                   ========================                         *00060001
//*        <<  M E R C A D O   D E   C A P I T A L E S  >>             *00070001
//*                                                                    *00070001
//* PROYECTO     : ZM CERTIFICACION DE BANQUEROS.                      *
//*                                                                    *00070001
//* PROCESO      : ZMPDUS01.                                           *
//*                                                                    *00070001
//* PERIODICIDAD : DIARIO.                                             *
//*                                                                    *00070001
//* OBJETIVO     : GENERAR ARCHIVO CON LOS USUARIOS Y PROMOTORES       *
//*                ACTIVOS(BCM) CON CERTIFICACION AMIB DE BANQUERO.    *
//* REALIZO      : MI03469.                                            *
//*                                                                    *00070001
//* FECHA        : 04 DE JULIO DEL 2023.                               *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*                                                                    *
//**********************************************************************
//* PASO       : ZMPDUP04                                              *
//* OBJETIVO   : COPIA ARCHIVO DESCARGA DE TABLA YHDTBAN (PDV) PARA    *
//*              OBTENER FECHA DE VENCIMIENTO Y LO SORTEA POR          *
//*              CLAVE DE BANQUERO.                                    *
//**********************************************************************
//ZMPDUP04 EXEC PGM=ICEMAN
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXBP.YH.FIX.F&FECHA..MYHP0DBA.BANMUV,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.MYHP0DBA.BANMUV.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=096,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPDUSV9),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPDUP03.                                             *
//* UTILERIA   : IKJEFT01/ZM4UOA02.                                    *
//* OBJETIVO   : GENERAR ARCHIVO CON LOS USUARIOS Y PROMOTORES         *
//*              ACTIVOS(BCM).                                         *
//*--------------------------------------------------------------------*
//ZMPDUP03 EXEC PGM=IKJEFT01
//*
//S1ZMUS3  DD DSN=MXC&AMB..ZM.FIX.BCJDUS01.USUVIGEN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=218,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//QSRLSDB2 DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDUSV8),DISP=SHR
//*
//**********************************************************************
//* PASO       : ZMPDUP02                                              *
//* OBJETIVO   : SE REALIZA SORT POR USUARIO DE PROMOTOR.              *
//**********************************************************************
//ZMPDUP02 EXEC PGM=ICEMAN
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.BCJDUS01.USUVIGEN.F&FECHA,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.BCJDUS01.USUVIGEN.SORT,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            DCB=(RECFM=FB,LRECL=218,BLKSIZE=0),
//            SPACE=(CYL,(10,5),RLSE)
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPDUSV7),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPDUP01. ZM4EFA32                                    *
//* OBJETIVO   : REALIZA MATCH PARA INTEGRAR FECHA DE VIGENCIA DE      *
//*              CERTIFICACION DE LOS USUARIOS Y PROMOTORES            *
//*              ACTIVOS(BCM) CON CERTIFICACION AMIB DE BANQUERO.
//*--------------------------------------------------------------------*
//ZMPDUP01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4UOA01 DD DSN=MXCP.ZM.FIX.BCJDUS01.USUVIGEN.SORT,DISP=SHR
//ZM4UOA02 DD DSN=MXCP.ZM.FIX.MYHP0DBA.BANMUV.SORT,DISP=SHR
//FDSALIDA DD DSN=MXCP.ZM.FIX.BCJDUS01.USUVIGEN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=235,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(300,150),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDUSV6),DISP=SHR
//*
//*-------------- -----------------------------------------------------*
//*                    FIN DEL PROCESO ZMPDUS01                        *
//*--------------------------------------------------------------------*
