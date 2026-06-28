//ZMJPNZ22 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  SOCIEDADES DE INVERSION  <<<<              *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   DISPARADOR:  CBJPCZ22   (CTL-M)                                  *
//*   PROCEDIM. :  ZMJPNZ22   OPC. 533                                 *
//*                                                                    *
//*   OBJETIVO  :  GENERA LA CARGA DE LOS CLIENTES CON SUS IMPORTES    *
//*                CON VTC.                                            *
//*                                                                    *
//*   CORRE ANTES DE  : A PETICION DEL USUARIO                         *
//*                                                                    *
//*   CORRE DESPUES DE: A PETICION DEL USUARIO                         *
//*                                                                    *
//*   PERIODICIDAD    :  EVENTUAL                                      *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA         DESCRIPCION                   *
//* ----------- --------- -------  ------------------------------------*
//*  OUF-INI    OSCAR UF  FEB-25   SE GENERA PROGRAMA PARA EL BORRADO  *
//*                                DE TABLA ZMDT800 POR ALERTAMIENTO.  *
//**********************************************************************
//*OUF-INI
//*--------------------------------------------------------------------*
//* PASO       : PJP20P17                                              *
//* PROGRAMA   : ZM4MJ172                                              *
//* OBJETIVO   : ELIMINA REGISTROS DE LA TABLA ZMDT800                 *
//*--------------------------------------------------------------------*
//PJP20P17 EXEC PGM=IKJEFT1A
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE42T17),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P16                                              *
//* UTILERIA   : DELETE                                                *
//* OBJETIVO   : ELIMINA REGISTROS DE LA TABLA ZMDTPOS                 *
//*--------------------------------------------------------------------*
//PJP20P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE42T01),DISP=SHR
//SYSIN    DD DUMMY
//*--------------------------------------------------------------------*
//* PASO       : PJP20P15                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE TABLAS: PARAM                             *
//*--------------------------------------------------------------------*
//PJP20P15 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PJP20P15,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBJPCZ22.RECLAS.PARAM,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSPUNCH DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCNTL  DD DUMMY
//SYSCNTL1 DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP22T08),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P14                                              *
//* UTILERIA   : IKJEFT1A/ZM4MJ180                                     *
//* OBJETIVO   : INSERTAR REGISTROS EN TABLA ZMDTPOS, AQUELLOS MONTOS  *
//*              MINIMOS Y MAXIMOS DE LA PARAM.                        *
//*--------------------------------------------------------------------*
//PJP20P14 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//E1DQENT1 DD DSN=MXCP.ZM.FIX.CBJPCZ22.RECLAS.PARAM,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP22T07),
//            DISP=SHR
//*
//**********************************************************************
//*  SORT AL AMCP PARA OBTENER UNICAMENTE PROD. 21. Y DOM. DE ENVIO    *
//**********************************************************************
//PJP20P13 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD DUMMY
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MBVP.PE.FIX.MATCH.MATCSPER,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBJPCZ22.RECLAS.CLIENTE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE),UNIT=3390
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP22T13),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P12                                              *
//* UTILERIA   : IKJEFT1A/ZM4CVTC0                                     *
//* OBJETIVO   : INSERTAR REGISTROS EN TABLA ZMDT800.                  *
//*--------------------------------------------------------------------*
//PJP20P12 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBJPCZ22.RECLAS.CLIENTE,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.CBJPCZ22.RECLAS.REP800,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=36,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP20T09),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P11                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : DESCARGA DE TABLAS:                                   *
//*              CUENTA, ZMDT608                                       *
//*--------------------------------------------------------------------*
//PJP20P11 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PJP20P11,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBJPCZ22.CUENTAS.NOEXISTE,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(100,50),RLSE)
//*
//SYSPUNCH DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//UTPRINT  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSCNTL  DD DUMMY
//SYSCNTL1 DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P10                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : REALIZA EL ORDENAMIENTO POR CLIENTE                   *
//*--------------------------------------------------------------------*
//PJP20P10 EXEC PGM=ICEMAN,COND=(4,LT)
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.CBJPCZ22.CUENTAS.NOEXISTE,DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.CBJPCZ22.CUENTAS.ORD,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=512,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(200,80),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZJP22T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P09                                              *
//* UTILERIA   : IKJEFT1A/ZM4CVTC0                                     *
//* OBJETIVO   : INSERTAR REGISTROS EN TABLA ZMDT800.                  *
//*--------------------------------------------------------------------*
//PJP20P09 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBJPCZ22.CUENTAS.ORD,
//            DISP=SHR
//*
//SALIDA01 DD DSN=MXCP.ZM.FIX.CBJPCZ22.RECLAS.REP2800,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=36,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP20T09),
//            DISP=SHR
//*@MARP-INI
//*
//*--------------------------------------------------------------------*
//* PASO       : PJP20P08                                              *
//* UTILERIA   : IKJEFT1A/ZM4CMCTE                                     *
//* OBJETIVO   : CALCULO E INSERCION DE MC EN TABLA ZMDT800            *
//*--------------------------------------------------------------------*
//PJP20P08 EXEC PGM=IKJEFT1A,COND=(4,LT)
//*
//*
//S1DQSAL1 DD DSN=MXCP.ZM.FIX.CBJPCZ22.ZM4CMCTE.REPORTE,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=117,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP20TA8),
//            DISP=SHR
//*@MARP-FIN
//*
