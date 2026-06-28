//ZMJCPD05 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                 <<  SOCIEDADES DE INVERSION   >>                   *
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                                                                    *
//* PROCESO        :  CBJCCD05 (DISPARADOR)                            *
//*                   ZMJCPD05 (PROCEDIMIENTO)                         *
//*                                                                    *
//* OBJETIVO       :  CIERRE DE OPERACIONES DE SOCIEDADES INVERSION    *
//*                   ENVIADO POR EL USUARIO                           *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  FIN DE DIA                                       *
//*                                                                    *
//* DESPUES DE     :  A PETICION DEL USUARIO                           *
//*                                                                    *
//* REALIZO        :  ROSARIO RAMIREZ        (JULIO DEL 2003)          *
//*                                                                    *
//* PERIODICIDAD   :  DIARIO                                           *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*GESFOR| 05-11-04 |       |        |SE RE-AGRUPO EL CIERRE DE S.I.   *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*
//**********************************************************************00040000
//*                        == ZM4DJ153 ==                              *05140000
//*                                                                    *
//* OBJETIVO : BLOQUEO AUTOMATICO DE FUNCIONES.                        *00070000
//* TABLAS QUE ACTUALIZA : AGPOCON.                                    *05140000
//* PASO REINICIABLE POR RESTART.                                      *05140000
//**********************************************************************00040000
//PJC05P05 EXEC PGM=IKJEFT01                                            00110000
//*
//SYSTSPRT DD SYSOUT=*                                                  00150000
//SYSPRINT DD SYSOUT=*                                                  00160000
//SYSOUT   DD SYSOUT=*                                                  00210002
//SYSCOUNT DD SYSOUT=*                                                  02480000
//SYSDBOUT DD SYSOUT=*                                                  00220002
//SYSABOUT DD DUMMY                                                     00230000
//SYSUDUMP DD DUMMY                                                     00240000
//SYSABEND DD DUMMY                                                     02440000
//*                                                                     00010000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC05T05),DISP=SHR                   00250003
//*                                                                     00010000
//**********************************************************************00040000
//*                        == ZM4DJ154 ==                              *05140000
//*                                                                    *
//* OBJETIVO : CANCELACIONES DE AUTORIZACIONES TEMPORALES DE SIMATRI.  *00070000
//* TABLAS QUE ACTUALIZA : SIMATRI.                                    *05140000
//* PASO REINICIABLE POR RESTART.                                      *05140000
//**********************************************************************00080000
//PJC05P04 EXEC PGM=IKJEFT01,COND=(4,LT)                                00110000
//*                                                                     00030000
//SYSTSPRT DD SYSOUT=*                                                  00142000
//SYSPRINT DD SYSOUT=*                                                  00143000
//SYSOUT   DD SYSOUT=*                                                  00145002
//SYSCOUNT DD SYSOUT=*                                                  00145002
//SYSDBOUT DD SYSOUT=*                                                  00145102
//SYSABOUT DD DUMMY                                                     00146000
//SYSUDUMP DD DUMMY                                                     00147000
//*                                                                     00030000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC05T04),DISP=SHR                   00148003
//**********************************************************************
//*                        == ZM4DS119 ==                              *
//* OBJETIVO: GENERA ARCHIVO TENDIAV3 PARA VALIDACION DE EMISORAS      *
//**********************************************************************
//PJC05P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMS119A1 DD DSN=MXCP.ZM.FIX.SIN.ECBP.TENDIAV2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=360,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//ZMS119A2 DD DSN=MXCP.ZM.FIX.SIN.ECBP.TENDIAV3,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=390,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC05T10),DISP=SHR
//*
//**********************************************************************
//*                        == ZM4DJ180 ==                              *
//*                                                                    *
//* OBJETIVO : REPORTAR OPERACIONES DADAS DE BAJA EN TESORERIA,        *
//*            REQUISICIONES DE CHEQUE EXPRESS.                        *
//**********************************************************************
//PJC05P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//*
//ZMJ180P1 DD DSN=MXCP.ZM.FIX.SIN.C1.ECBP.ZMJCPD04,DISP=SHR
//*ZMJ180A1 DD DSN=&&ARCHIVO,
//ZMJ180A1 DD DSN=MXCP.ZM.TMP.SIN.ECBP.ZMJCPD05,
//            DISP=(NEW,PASS),
//            DCB=(LRECL=87,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//ZMJ180R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC05T07),DISP=SHR
//*
//*                                                                     00030000
//**********************************************************************
//*                        == ZM4EUK76 ==                              *
//*                                                                    *
//* OBJETIVO: REPORTE DE DATOS DE PROSPECTO DE INFORMACION AL PUBLICO  *
//*           INVERSIONISTA (CNBV)                                     *
//**********************************************************************
//PJC05P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*                                                                     00030000
//ZMUK76P1 DD DSN=MXCP.ZM.FIX.SIN.C1.ECBP.ZMJCPD04,DISP=SHR
//ZMUK76R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*                                                                     00030000
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*                                                                     00030000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC05T03),DISP=SHR
//*
//**********************************************************************
//*                        == ZM4DJK77 ==                              *
//*                                                                    *
//* OBJETIVO: REPORTE INTERNO PARA CONTROL DE PROSPECTOS DE SOCIEDADES*
//*           DE INVERSION                                             *
//**********************************************************************
//PJC05P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*                                                                     00030000
//ZMJK77P1 DD DSN=MXCP.ZM.FIX.SIN.C1.ECBP.ZMJCPD04,DISP=SHR
//ZMJK77R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*                                                                     00030000
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*                                                                     00030000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC05T02),DISP=SHR
//*
//**********************************************************************
//*                        == ZM4DJ340 ==                              *
//*                                                                    *
//* OBJETIVO: REPORTE DE OPERACIONES ANULADAS POR PROBLEMAS CON LA     *
//*           CHEQUERA                                                 *
//**********************************************************************
//PJC05P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMJ340P1 DD DSN=MXCP.ZM.FIX.SIN.C1.ECBP.ZMJCPD04,DISP=SHR
//ZMJ340R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJC05T01),DISP=SHR
//*
//**********************************************************************
//*                           -- ZM4MU022 --                           *
//*  GENERA ARCHIVO  SECUENCIAL CON LOS CAMBIOS EFECTUADOS EN EL DIA A *
//*  LAS COMISIONES MEDIANTE LA OPCION 146 DE BANCA PATRIMONIAL        *
//**********************************************************************
//PJC05PAA EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMU022A1 DD DSN=MXCP.ZM.FIX.EBCM.MANT.COMIS.OPC146,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=473,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(100,50),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZTE00T01),DISP=SHR
//*
//**********************************************************************
//*** PEND        FIN DEL PROCEDIMIENTO ZMJCPD05                       *
//**********************************************************************
