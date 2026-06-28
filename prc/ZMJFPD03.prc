//ZMJFPD03 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *
//*                                                                    *
//* PROCESO        :  CBJFND03   (DISPARADOR)                          *
//*                   ZMJFPD03   PROCEDIMIENTO                         *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVOS DE INFORMACION PARA AUDITORIA    *
//*                   DE LA C.N.B.V.                                   *
//*                                                                    *
//* REALIZO        :  AZERTIA                                          *
//*                                                                    *
//* OBSERVACIONES  :  ESTE PROCESO NO ACTUALIZA NINGUNA TABLA          *
//*                                                                    *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ003
//* OBJETIVO: GENERAR ARCHIVOS PARA AUDITORIA DE LA CNBV
//* PASO REINICIABLE POR RESTART        (MOVIMIENTOS)
//*---------------------------------------------------------------------
//PJF03P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//****************** ARCHIVO DE MOVIMIENTOS
//ZMJ003A1 DD DSN=MXCP.ZM.FIX.SIN.MOVTOS.CNBV,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=158,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(20,10),RLSE)
//ZMJ003A2 DD DUMMY
//ZMJ003A3 DD DUMMY
//ZMJ003A4 DD DUMMY
//ZMJ003A5 DD DUMMY
//ZMJ003A6 DD DUMMY
//ZMJ003A7 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF03T01),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ003
//* OBJETIVO: GENERAR ARCHIVOS PARA AUDITORIA DE LA CNBV
//* PASO REINICIABLE POR RESTART        (TESORERIA)
//*---------------------------------------------------------------------
//PJF03P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMJ003A1 DD DUMMY
//****************** ARCHIVO DE MOVIMIENTOS DE TESORERIA
//ZMJ003A2 DD DSN=MXCP.ZM.FIX.SIN.TESORE.CNBV,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=161,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(20,10),RLSE)
//ZMJ003A3 DD DUMMY
//ZMJ003A4 DD DUMMY
//ZMJ003A5 DD DUMMY
//ZMJ003A6 DD DUMMY
//ZMJ003A7 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF03T02),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ003
//* OBJETIVO: GENERAR ARCHIVOS PARA AUDITORIA DE LA CNBV
//* PASO REINICIABLE POR RESTART        (CLIENTES)
//*---------------------------------------------------------------------
//PJF03P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMJ003A1 DD DUMMY
//ZMJ003A2 DD DUMMY
//****************** ARCHIVO DE CLIENTES
//ZMJ003A3 DD DSN=MXCP.ZM.FIX.SIN.CLIENT.CNBV,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=613,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(20,10),RLSE)
//ZMJ003A4 DD DUMMY
//ZMJ003A5 DD DUMMY
//ZMJ003A6 DD DUMMY
//ZMJ003A7 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF03T03),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ003
//* OBJETIVO: GENERAR ARCHIVOS PARA AUDITORIA DE LA CNBV
//* PASO REINICIABLE POR RESTART        (EMISORA CLIENTE)
//*---------------------------------------------------------------------
//PJF03P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMJ003A1 DD DUMMY
//ZMJ003A2 DD DUMMY
//ZMJ003A3 DD DUMMY
//****************** ARCHIVO DE SALDOS EMISORA-CLIENTE
//ZMJ003A4 DD DSN=MXCP.ZM.FIX.SIN.EMICLI.CNBV,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(DSORG=PS,RECFM=FBA,LRECL=112,BLKSIZE=0),
//         UNIT=3390,
//         SPACE=(CYL,(50,25),RLSE)
//ZMJ003A5 DD DUMMY
//ZMJ003A6 DD DUMMY
//ZMJ003A7 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF03T04),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ003
//* OBJETIVO: GENERAR ARCHIVOS PARA AUDITORIA DE LA CNBV
//* PASO REINICIABLE POR RESTART        (EMISORAS)
//*---------------------------------------------------------------------
//PJF03P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMJ003A1 DD DUMMY
//ZMJ003A2 DD DUMMY
//ZMJ003A3 DD DUMMY
//ZMJ003A4 DD DUMMY
//****************** ARCHIVO DE EMISORAS
//ZMJ003A5 DD DSN=MXCP.ZM.FIX.SIN.EMISOR.CNBV,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=87,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(5,3),RLSE)
//ZMJ003A6 DD DUMMY
//ZMJ003A7 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF03T05),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ003
//* OBJETIVO: GENERAR ARCHIVOS PARA AUDITORIA DE LA CNBV
//* PASO REINICIABLE POR RESTART        (PROMOTORES)
//*---------------------------------------------------------------------
//PJF03P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMJ003A1 DD DUMMY
//ZMJ003A2 DD DUMMY
//ZMJ003A3 DD DUMMY
//ZMJ003A4 DD DUMMY
//ZMJ003A5 DD DUMMY
//****************** ARCHIVO DE PROMOTORES
//ZMJ003A6 DD DSN=MXCP.ZM.FIX.SIN.PROMOT.CNBV,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=154,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//ZMJ003A7 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF03T06),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ003
//* OBJETIVO: GENERAR ARCHIVOS PARA AUDITORIA DE LA CNBV
//* PASO REINICIABLE POR RESTART        (OPERACIOQ)
//*---------------------------------------------------------------------
//PJF03P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMJ003A1 DD DUMMY
//ZMJ003A2 DD DUMMY
//ZMJ003A3 DD DUMMY
//ZMJ003A4 DD DUMMY
//ZMJ003A5 DD DUMMY
//ZMJ003A6 DD DUMMY
//****************** ARCHIVO DE OPERACION
//ZMJ003A7 DD DSN=MXCP.ZM.FIX.SIN.OPERAC.CNBV,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=32,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF03T07),DISP=SHR
//**********************************************************************
//*               FIN DEL PROCEDIMIENTO ZMJFPD03                       *
//**********************************************************************
