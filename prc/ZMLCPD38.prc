//ZMLCPD38 PROC                                                         00001000
//*                                                                     00002000
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  CBLCCD38                                            *
//*                TRANSFERENCIA DE ARCHIVO PARA CVT                   *
//*                                                                    *
//*   OBJETIVO  :  GENERAR ARCHIVO QUE CONTENGA LAS OPERACIONES EN     *
//*                CUSTODIA REALIZADAS DURANTE EL DI EN EL SIVA        *
//*                PARA EL BANCO DE MEXICO.                            *
//*                                                                    *
//*                ARCHIVO QUE SE ENVIARA VIA NDM A CLIENTE SERVIDOR   *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  CBLCCD36  CIERRE DE MDD                       *
//*                                                                    *
//*   PERIODICIDAD    :  DIARIO                                        *
//*                                                                    *
//*   ELABORADO POR: SAJ.                                              *
//*                                                                    *
//*   FECHA:  FEBRERO 2003.                                            *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF      | FECHA  |USUARIO| PASO  |DESCRIPCION                 *
//*--------------------------------------------------------------------*
//*FS-1.0.0-01 220612   CAPGEMI PLC38P01  SE AGREGA PASO PLC38P00 PARA *
//*                                       REPORTE DIRECTO DE MDD BANCA *
//*                                       PATRIMONIAL Y PRIVADA.       *
//**********************************************************************00010000
//*  PASO:  1     CREA CASCARON PARA ARCHIVO DE MENSAJES               *00030000
//*  PLC38P15                                                          *00040000
//**********************************************************************00060000
//PLC38P15 EXEC PGM=ZM3DL010
//*
//ZML010A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD38,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=101,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*00030000
//*  PLC38P10     GRABA EN ARCHIVO SECUENCIAL.                         *00040000
//*                                                         ZM3DG001   *00020000
//**********************************************************************00060000
//PLC38P10 EXEC PGM=ZM3DG001,COND=(4,LT),
//        PARM=('&EMP','    ','     ','     ',)
//*
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..ZMLCPD38,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*********************************************************************
//*   GENERA REPORTE DE MOVIMIENTOS DE LA MIGRACION DESPUES           *
//*********************************************************************
//*
//PLC38P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMLX12R1 DD SYSOUT=*
//ZMLX12R2 DD SYSOUT=*
//ZMLX12R3 DD SYSOUT=*
//ZMLX12R4 DD SYSOUT=*
//ZMLX12R5 DD SYSOUT=*
//ZMLX12R6 DD SYSOUT=*
//ZMLX12R7 DD SYSOUT=*
//ZMLX12R8 DD SYSOUT=*
//*
//ZMLX12A5 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD38,DISP=MOD
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC38T08),DISP=SHR
//**********************************************************************00010000
//*                                                                    *00020000
//*  PASO:  2     PROGRAMA QUE REFLEJA OPERACIONES DE COMPRA Y VENTA   *00030000
//*  PLC38P02     DIARIA DEL SISTEMA SIVA EN UN ARCHIVO SECUENCIAL.    *00040000
//*                                                         ZM4DGR11   *00020000
//**********************************************************************00060000
//PLC38P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040000
//*
//ZMGR11A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..ZMLCPD38,DISP=SHR
//*
//ZMGR11A2 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..OPERCUST,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//             DCB=(LRECL=101,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//ZMGR11A5 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD38,DISP=MOD
//*
//SORTWK01  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK02  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK03  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK04  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//SORTWK05  DD UNIT=3390,SPACE=(CYL,(20,10),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC38T02),DISP=SHR                   00140000
//*
//********************************************************************* 00010000
//*                                                                   * 00020000
//* PASO:  3     GENERA EL REPORTE DE RESUMEN DE OPERACIONES EN       * 00030000
//* PLC38P01     DIRECTO DEL MERCADO DE DINERO Y EL DETALLE DE        * 00040000
//*              OPERACIONES.                              ZM4DGR13   * 00020000
//********************************************************************* 00060000
//PLC38P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGR13A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..ZMLCPD38,DISP=SHR
//*
//ZMGR13R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMGR13R2 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMGR13A5 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD38,DISP=MOD
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC38T01),DISP=SHR
//*
//**********************************************************************
//*   PASO          : PLC38P00                                         *
//*   FUNCION       : GENERAR EL REPORTE DE LAS OPERACIONES EN DIRECTO *
//*                   DE MDD DE BANCA PATRIMONIAL Y PRIVADA.
//**********************************************************************
//PLC38P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGR49A1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD38.OPERMSAL,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(LRECL=178,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLC38T03),DISP=SHR
//*
//**********************************************************************
//*   PASO          : PLC38P0A                                         *
//*   FUNCION       : DESCARGA DE LA TABLA ZMDT718                     *
//**********************************************************************
//PLC38P0A EXEC PGM=ADUUMAIN,COND=(4,LT),                               00022800
//         PARM='MXP1,PLC38P0A,NEW,,MSGLEVEL(1)'                        00022900
//*                                                                     00023000
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR                            00023100
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                       00023200
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                       00023300
//*                                                                     00023400
//SYSREC   DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD38.ZMDT718,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,                        00023600
//            SPACE=(CYL,(40,40),RLSE),                                 00023700
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)                         00023800
//*                                                                     00023900
//SYSCNTL  DD DUMMY                                                     00024000
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DUMMY
//*
//**********************************************************************
//*   PASO          : PLC38P0B                                         *
//*   FUNCION       : ORDENA EL ARCHIVO DE OPERACIONES POR:            *
//*                   FOPERA=FECHA DEL DIA, ICUENTA2 = CUENTA
//*                   EMISORA = EMISORA, CANT2   = TITULOS
//**********************************************************************
//PLC38P0B EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD38.OPERMSAL,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD38.SORTOPER,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(LRECL=178,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PLC38P0B),DISP=SHR
//*
//**********************************************************************
//*   PASO          : PLC38P0C                                         *
//*   FUNCION       : ORDENA EL ARCHIVO DE OPERACIONES POR:            *
//*                   FFOLIO=FECHA DEL DIA, NCUENTA  = CUENTA
//*                   INSTRUM = EMISORA, CTITULOS = TITULOS
//**********************************************************************
//PLC38P0C EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD38.ZMDT718,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD38.ORDE718,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(LRECL=36,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PLC38P0C),DISP=SHR
//*
//**********************************************************************
//*   PASO          : PLC38P0E                                         *
//*   FUNCION       : GENERAR EL REPORTE DE LAS OPERACIONES EN DIRECTO *
//*                   DE MDD DE BANCA PATRIMONIAL Y PRIVADA.
//**********************************************************************
//*
//PLC38P0E EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMGR50E1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD38.SORTOPER,
//            DISP=SHR
//ZMGR50E2 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD38.ORDE718,
//            DISP=SHR
//ZMGR50S1 DD DSN=MXC&AMB..ZM.FIX.MDD.E&EMP..ZMLCPD38.OPERMDDD,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,SPACE=(CYL,(20,10),RLSE),
//            DCB=(LRECL=218,RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PLC38P0E),DISP=SHR
//*
//**********************************************************************
//*          F I N      Z M L C P D 3 8                                *
//**********************************************************************
