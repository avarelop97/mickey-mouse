//ZMPMREPA PROC
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*                   C A S A   D E  B O L S A                         *00050001
//*                   ========================                         *00060001
//*        <<  S O C I E D A D E S  D E  I N V E R S I O N >>          *00070001
//*                                                                    *00070001
//* PROYECTO     : RECLASIFICACION MUV - DIFO.                         *
//*                                                                    *00070001
//* PROCESO      : ZMPMREPA.                                           *
//*                                                                    *00070001
//* PERIODICIDAD : PROCESO MENSUAL PARA LA RECLA DEFINITIVA            *
//*                                                                    *00070001
//* OBJETIVO     : GENERAR LOS REPORTES CON LA PARAMETRIA QUE SE CARGA *
//*                EN LAS SIGUIENTES OPCIONES LINEA.                   *
//*                OPC. 218==> MANTENIMIENTO DE SOCIEDADES DE INVERSION*
//*                            CONTROL RECLASIFICACION DE SERIES DE    *
//*                            FONDOS.                                 *
//*                OPC. 533==> MANTENIMIENTO DE SOCIEDADES DE INVERSION*
//*                            PARAMETROS DE OPERACION (RECLA).        *
//*                OPC. 534==> MANTENIMIENTO DE SOCIEDADES DE INVERSION*
//*                            AUTORIZACION DE CLIENTES A OPERAR(RECL).*
//*                                                                    *00070001
//* REALIZO      : SRG (CAPGEMINI MEXICO).                             *
//*                                                                    *00070001
//* FECHA        : 08 DE NOVIEMBRE DEL 2019.                           *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO       : ZMPDRE25.                                             *
//* UTILERIA   : ADUUMAIN/DB2.                                         *
//* OBJETIVO   : DESCARGA LA TABLA CONCEPT Y ZMDT622 PARA PREPAR LA    *
//*              INFORMACION PARA EL REPORTE DE LA OPC. 533.           *
//*--------------------------------------------------------------------*
//ZMPDRE25 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMPDRE25,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.FIX.BCJMREPA.DESCA622.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSPUNCH DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCNTL  DD DUMMY
//SYSCNTL1 DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPDRE25),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPDRE23.                                             *
//* UTILERIA   : ICEMAN/DESCARGA.                                      *
//* OBJETIVO   : ORDENA EL ARCHIVOS DE DESCARGA POR EMISORA,SERIE Y EMP*
//*              INFORMACION PARA EL REPORTE DE LA OPC. 218.           *
//*--------------------------------------------------------------------*
//ZMPDRE23 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.BCJMREPA.DESCA622.F&FECHA.,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.BCJMREPA.ORDEN622.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=210,DSORG=PS)
//*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPDRE23),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPDRE20.                                             *
//* UTILERIA   : IKJEFT01/ZM4MJ533.                                    *
//* OBJETIVO   : GENERAR REPORTE CON LOS PARAMETROS QUE PRESENTA LA    *
//*              OPCION 533 PARAMETROS DE OPERACION (RECLA).           *
//*              A PARTIR DEL ARCHIVO DE ENTRADA QUE SE GENERA EN EL   *
//*              PASO ANTERIOR ZMPDRE25.                               *
//*--------------------------------------------------------------------*
//ZMPDRE20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZME533E1 DD DSN=MXC&AMB..ZM.FIX.BCJMREPA.DESCA622.F&FECHA.,
//            DISP=SHR
//*
//ZME533S1 DD DSN=MXC&AMB..ZM.FIX.BCJMREPA.REPOP533,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=620,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//QSRLSDB2 DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDRE20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPDRE15.                                             *
//* UTILERIA   : ADUUMAIN/DB2.                                         *
//* OBJETIVO   : DESCARGA LA TABLA CONCEPT, SIMATRI, ESTZONE, PERJUR   *
//*              INFORMACION PARA EL REPORTE DE LA OPC. 534.           *
//*--------------------------------------------------------------------*
//ZMPDRE15 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMPDRE15,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.FIX.BCJMREPA.DESCASIM.F&FECHA.,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//SYSPUNCH DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCNTL  DD DUMMY
//SYSCNTL1 DD DUMMY
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMPDRE15),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPDRE10.                                             *
//* UTILERIA   : IKJEFT01/ZM4OP534.                                    *
//* OBJETIVO   : GENERAR REPORTE CON LOS PARAMETROS QUE PRESENTA LA    *
//*              OPCION 534 AUTORIZACION DE CLIENTES A OPERAR(RECLA).  *
//*--------------------------------------------------------------------*
//ZMPDRE10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZME533E1 DD DSN=MXC&AMB..ZM.FIX.BCJMREPA.DESCASIM.F&FECHA.,
//            DISP=SHR
//*
//ZME533S1 DD DSN=MXC&AMB..ZM.FIX.BCJMREPA.REPOP534,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=107,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//QSRLSDB2 DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDRE10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZMPDRE05.                                             *
//* UTILERIA   : IKJEFT01/ZM4OP218.                                    *
//* OBJETIVO   : GENERAR REPORTE CON LOS PARAMETROS QUE PRESENTA LA    *
//*              OPCION 218 DE LA RECLASIFICACION.                     *
//*--------------------------------------------------------------------*
//ZMPDRE05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E1ZM622  DD DSN=MXC&AMB..ZM.FIX.BCJMREPA.ORDEN622.F&FECHA.,
//            DISP=SHR
//*
//S1ZMUS1  DD DSN=MXC&AMB..ZM.FIX.BCJMREPA.REPOP218,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=135,BLKSIZE=0,RECFM=FB),
//            UNIT=3390,SPACE=(CYL,(100,50),RLSE)
//*
//QSRLSDB2 DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMPDRE05),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMPMREPA                        *
//*--------------------------------------------------------------------*
