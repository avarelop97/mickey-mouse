//ZMPDUSUA PROC
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*                   C A S A   D E  B O L S A                         *00050001
//*                   ========================                         *00060001
//*        <<  M E R C A D O   D E   C A P I T A L E S  >>             *00070001
//*                                                                    *00070001
//* PROYECTO     : ZM AUDITORIA MUV-FONDOS DE INVERSION.               *
//*                                                                    *00070001
//* PROCESO      : ZMPDUSUA.                                           *
//*                                                                    *00070001
//* PERIODICIDAD : MENSUAL (ULTIMO DI HABIL DEL MES).                  *
//*                                                                    *00070001
//* OBJETIVO     : GENERAR ARCHIVOS   CON LOS USAURIOS ACTIVOS DE      *
//*                OPERCAION CENTRAL Y ASSET MANAGEMENT.               *
//*                                                                    *00070001
//* REALIZO      : SERGIO RAMIREZ GUERRERO (CAPGEMINI MEXICO).         *
//*                                                                    *00070001
//* FECHA        : 14 DE FEBRERO DEL 2019.                             *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : ZMPDUS01.                                             *
//* UTILERIA   : IKJEFT01/ZM4UOA01.                                    *
//* OBJETIVO   : GENERAR ARCHIVOS   CON LOS USAURIOS ACTIVOS DE MUV    *
//*              OPERACION CENTRAL Y ASSET MANAGEMENT.                 *
//*--------------------------------------------------------------------*
//ZMPDUS01 EXEC PGM=IKJEFT01
//*
//S1ZMUS1  DD DSN=MXC&AMB..ZM.FIX.BCJDUSOA.OPERCTRA.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=164,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//S1ZMUS2  DD DSN=MXC&AMB..ZM.FIX.BCJDUSOA.ASSETMAN.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=160,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//S1ZMUS3  DD DSN=MXC&AMB..ZM.FIX.BCJDUSOA.USUVIGEN.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=160,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//QSRLSDB2 DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDUS01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMPDUSUA                        *
//*--------------------------------------------------------------------*
