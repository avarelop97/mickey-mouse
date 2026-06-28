//ZMPC9001 PROC
//*--------------------------------------------------------------------*00000700
//*                     C A S A   D E  B O L S A                       *00000800
//*                     ========================                       *00000900
//*                     <<  D E S C A R G A   >>                       *00001000
//*   SISTEMA         :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *00001100
//*   APLICACION      :  MODULO DE CASA DE BOLSA                       *00001200
//*   OBJETIVO        :  BAJA LOS RESPALDOS MENSUALES DE 24 MESES      *00001300
//*                      ANTERIORES A SU EJECUCION A LA TABLA OPERA    *00001400
//*                      SELECCIONANDO SOLO LOS MOVIMIENTOS DE VENTA   *00001500
//*                      DE VENTA DE ACCIONES.                         *00001500
//*   CORRE ANTES DE  :                                                *00001600
//*   CORRE DESPUES DE:  A SOLICITUD DEL USUARIO                       *00001700
//*   PERIODICIDAD    :  EVENTUAL                                      *00001800
//**********************************************************************
//*--------------------------------------------------------------------*00001900
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-1.1.0-01  XM010DD 03DIC09 SE GENERA NUEVO PASO DESPUES DEL PASO *
//*                              ZMP00104 QUE RECUPERE RESPALDO DE     *
//*                              SEPTIEMBRE 2009.                      *
//*                              SE MODIFICA EL PASO ZMP00102.         *
//*                              SE CREA PASO ADICIONAL QUE INVOQUE AL *
//*                              PROGRAMA ZM4OEMI1.                    *
//*                              SE MODIFICA EL PASO ZMP00101 PARA QUE *
//*                              INVOQUE AL PROGRAMA ZM4OHI01.         *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: ADUUMAIN                                                 *00022600
//* OBJETIVO: RECUPERA RESPALDO DE ABRIL DEL 2010.                     *00022700
//*--------------------------------------------------------------------*00022800
//ZMP00126  EXEC PGM=ADUUMAIN,                                          00022900
//          PARM='MXP1,LRISR,NEW,,MSGLEVEL(1)'                          00023000
//*                                                                     00023400
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD                            00023400
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD                       00023400
//*                                                                     00023400
//ENTRADA  DD DSN=BKPP.ANUAL12.IC.SOPERA.D100430.P00.MEN,               00023500
//            DISP=SHR                                                  00023600
//*                                                                     00023700
//SYSREC   DD DSN=MXC&AMB..ZM.TMP.EVE.ISR.SOPERA.D1004,                 00023800
//            UNIT=3390,                                                00023900
//            SPACE=(CYL,(50,25),RLSE),DISP=(NEW,CATLG,DELETE),         00024000
//            DCB=(RECFM=FB,LRECL=47,BLKSIZE=0,DSORG=PS)                00024100
//*                                                                     00024200
//SYSCNTL  DD  DUMMY                                                    00024300
//*                                                                     00024400
//UTPRINT  DD SYSOUT=*                                                  00024500
//SYSPRINT DD SYSOUT=*                                                  00024600
//SYSUDUMP DD SYSOUT=*                                                  00024700
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP00126),DISP=SHR                   00024800
//*
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: ICEMAN                                                   *00022600
//* PASO    : ZMP00102                                                 *00022600
//* OBJETIVO: ORDENA LOS HISTORICOS POR ICONCEP2.                      *00022700
//*--------------------------------------------------------------------*00022800
//*
//ZMP00102 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.EVE.ISR.SOPERA.D1004,DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.EVE.ISR.SOPERA.SRTCTCON,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=47,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP00102),DISP=SHR                   00024800
//*
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: IKJEFT01                                                 *00022600
//* PASO    : ZMP001A2                                                 *00022600
//* OBJETIVO: ADICIONA IEMISORA DE CONCEPT POR ICONCEP2.               *00022700
//*--------------------------------------------------------------------*00022800
//ZMP001A2  EXEC PGM=IKJEFT01,COND=(0,NE)                               00022900
//*                                                                     00023400
//ENTRADA1 DD DSN=MXC&AMB..ZM.TMP.EVE.ISR.SOPERA.SRTCTCON,
//            DISP=SHR
//*                                                                     00023400
//SALIDA1  DD DSN=MXC&AMB..ZM.TMP.EVE.ISR.SOPERA.CTAEMI,
//            UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=60,BLKSIZE=0,DSORG=PS)
//*                                                                     00023400
//SALIDA2  DD DSN=MXC&AMB..ZM.FIX.EVE.ISR.ZMPISR01.ERROR.P01,
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=60,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZMP001A2),DISP=SHR
//*
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: ICEMAN                                                   *00022600
//* PASO    : ZMP001B2                                                 *00022600
//* OBJETIVO: ORDENA EL ARCHIVO POR CUENTA, IEMISORA Y FOPERA Y IREF.  *00022700
//*--------------------------------------------------------------------*00022800
//*
//ZMP001B2 EXEC PGM=ICEMAN,COND=(0,NE)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.EVE.ISR.SOPERA.CTAEMI,DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.EVE.ISR.SOPERA.SRTCTAEM,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=60,BLKSIZE=0)
//*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMP001B2),DISP=SHR
//*
//*--------------------------------------------------------------------*00075700
//* PROGRAMA: IKJEFT01                                                 *00022600
//* OBJETIVO: REALIZA EL ACUMULADO DE VENTAS POR CUENTA-EMISORA, CARGA *00022700
//*           INICIAL Y CARGA DE DETALLE DE VENTAS (ZMDTDMV).          *00022700
//*--------------------------------------------------------------------*00022800
//ZMP00101 EXEC PGM=IKJEFT01,COND=(0,NE)
//*
//ENTRADA1 DD DSN=MXC&AMB..ZM.TMP.EVE.ISR.SOPERA.SRTCTAEM,
//            DISP=SHR
//*
//SALIDA1  DD DSN=MXC&AMB..ZM.FIX.EVE.ISR.ZMPISR01.ERROR.P02,
//            UNIT=3390,
//            SPACE=(CYL,(50,25),RLSE),DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,LRECL=60,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMP00101),DISP=SHR
//*
//PASO01C  EXEC PGM=IEFBR14,COND=(0,NE)
//SYSRE01 DD DSN=MXC&AMB..ZM.TMP.EVE.ISR.SOPERA.D1004,
//           DISP=(OLD,DELETE,DELETE)
//*
