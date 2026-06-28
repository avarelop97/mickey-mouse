//ZMJLPZ03 PROC
//*********************************************************************
//*                     C A S A   D E   B O L S A                     *
//*                     =========================                     *
//*                    << MERCADO DE CAPITALES >>                     *
//*                                                                   *
//*   APLICACION       :   MODULO UNICO DE VALORES BANCA PATRIMONIAL  *
//*                                                                   *
//*   JCL              :  CBJLPZ03                                    *
//*                                                                   *
//*   CADENA           :  OPCION 143 -> JCL SIVAXLBP -> PRC ZMJLPP03  *
//*                                                                   *
//*   OBJETIVO         :  GENERAR REPORTE DE  LIQUIDACIONES E INFORMA-*
//*                       CION RESULTANTE DEL PROCESO DE COMPRA/VEN-  *
//*                       TAS DEL MERCADO DE CAPITALES.               *
//*                                                                   *
//*   CORRE DESPUES DE :  SUBMITIDO DESDE LA OPCION 143 P/USUARIO     *
//*                                                                   *
//*   CORRE ANTES   DE :  NINGUNO                                     *
//*                                                                   *
//*   PERIODICIDAD     :  A PETICION DEL USUARIO                      *
//*                                                                   *
//*   ELABORADO POR    :  H. ABRAHAM JUAREZ PI#ON                     *
//*                                                                   *
//*   FECHA            :  OCTUBRE / 2004                              *
//*                                                                   *
//*********************************************************************
//*   MODIFICACION     :  06/MAR/2005                                 *
//*                                                                   *
//*   OBJETIVO         :  INSERTAR REPORTERIA PARA LA LIQUIDACION     *
//*                       24 Y 48 HRS.                                *
//*                                                                   *
//*   ELABORADO POR    :  H. ABRAHAM JUAREZ PI#ON                     *
//*                                                                   *
//*   FECHA            :  MARZO / 2005                                *
//*                                                                   *
//*   FECHA DE MODIFIC : 16/03/2005                                   *
//*                                                                   *
//*   REALIZO          : ERNESTO MANUEL CUAUTLE MARTINEZ              *
//*                                                                   *
//*   OBJETIVO         : SE ADICIONO EL PASO PJD03P00, QUE ACTIVA     *
//*                      LA CONDICION DE CONTROL-M.                   *
//*********************************************************************
//*   MODIFICACION     :  09/ENE/2007                                 *
//*                                                                   *
//*   OBJETIVO         :  INSERTAR REPORTERIA PARA LA LIQUIDACION     *
//*                       A FECHA DE OPERACION, TOMANDO COMO FECHA    *
//*                       DE OPERACION LA FECHA DEL DIA.              *
//*                                                                   *
//*   ELABORADO POR    :  H. ABRAHAM JUAREZ PI#ON                     *
//*                                                                   *
//*   OBJETIVO         :  GENERAR REPORTES A FECHA DE OPERACION(P05). *
//*                                                                   *
//*                         REPORTE     PASO                          *
//*                         --------    --------                      *
//*                      1) ZM4DHV24    PJD03P1C                      *
//*                      2) ZM4DHW51    PJD03P1B                      *
//*                      3) ZM4DHW52    PJD03P1A                      *
//*                                                                   *
//*********************************************************************
//*                                                                   *
//*  PASO: 23    RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *
//*              EN ARCHIVO SECUENCIAL                                *
//*                                                                   *
//*  SECUENCIA: 1                                           ZM3DG001  *
//*                                                                   *
//*********************************************************************
//*   MODIFICACION     :  FEBRERO / 2007 SE AGREGAN PROGRAMAS         *
//*                       PARA OPCION DE VENTA A 72 HORAS             *
//*********************************************************************
//*   MODIFICACION     :  06/ENE/2011                                 *
//*                                                                   *
//*   OBJETIVO         :  SE MODIFICA EL PASO PJD03P01 EN LA LONGITUD *
//*                       AL ARCHIVO DE SALIDA.                       *
//*                                                                   *
//*   ELABORADO POR    :  CAPGEMINI                                   *
//*                                                                   *
//*********************************************************************
//*   MODIFICACION     :  AGOSTO  / 2021 SE ACTUALIZA LONGITUD        *
//*                       PARA SALIDA ZM4V15A1 DE 210 A 215.          *
//*********************************************************************
//*  PASO: 22     CARGA DE LA TABLA ZMDT632, INFORMACION DE COMPRA-VEN-*
//*               TA DE MERCADO DE CAPITALES.                          *
//*  PJD03P22                                               ZM4DHW28   *
//**********************************************************************
//PJD03P22 EXEC PGM=IKJEFT01
//*
//ZM4DHW28 DD DSN=MXCP.ZM.FIX.EMP.SUC.ZM4DHW28,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=390,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T22),DISP=SHR
//*
//**********************************************************************
//*  PASO: 21     GENERAR REPORTE DE LIQUIDACION AGENTE  -  AGENTE     *
//*               48 HRS                                               *
//*  PJD03P21                                               ZM4DHW65   *
//**********************************************************************
//PJD03P21 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4D65A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZM4D65R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T21),DISP=SHR
//*
//**********************************************************************
//*  PASO: 20     GENERAR REPORTE DE LIQUIDACION AGENTE  -  AGENTE     *
//*               24HRS                                                *
//*  PJD03P20                                               ZM4DHW64   *
//**********************************************************************
//PJD03P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4D64A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZM4D64R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T20),DISP=SHR
//*
//**********************************************************************
//*  PASO: 19     GENERAR REPORTE DE LIQUIDACION AGENTE  -  AGENTE     *
//*               48 HRS.                                              *
//*  PJD03P19                                               ZM4DHW63   *
//**********************************************************************
//PJD03P19 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV63A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZMHV63C1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMHV63G1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T19),DISP=SHR
//*
//**********************************************************************
//*  PASO: 18     GENERAR REPORTE DE LIQUIDACION AGENTE  -  AGENTE     *
//*               24 HRS.                                              *
//*  PJD03P18                                               ZM4DHW62   *
//**********************************************************************
//PJD03P18 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV62A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZMHV62C1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMHV62G1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T18),DISP=SHR
//*
//**********************************************************************
//*  PASO: 17     GENERAR REPORTE DE LIQUIDACION CLIENTE -  AGENTE     *
//*               48 HRS.                                              *
//*  PJD03P17                                               ZM4DHW61   *
//**********************************************************************
//PJD03P17 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV61A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZM4V61R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T17),DISP=SHR
//*
//**********************************************************************
//*  PASO: 16     GENERAR REPORTE DE LIQUIDACION CLIENTE -  AGENTE     *
//*               24 HRS.                                              *
//*  PJD03P16                                               ZM4DHW60   *
//**********************************************************************
//PJD03P16 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV60A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZM4V60R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T16),DISP=SHR
//*
//**********************************************************************
//*  PASO: 15     GENERAR REPORTE DE TITULOS OPERADOS POR CASA DE      *
//*               BOLSA.                                               *
//*               48 HRS.                                              *
//*  PJD03P15                                               ZM4DHW59   *
//**********************************************************************
//PJD03P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW59A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZMHW59R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T15),DISP=SHR
//*
//**********************************************************************
//*  PASO: 14     GENERAR REPORTE DE TITULOS OPERADOS POR CASA DE      *
//*               BOLSA.                                               *
//*               24 HRS.                                              *
//*  PJD03P14                                               ZM4DHW58   *
//**********************************************************************
//PJD03P14 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW58A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZMHW58R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T14),DISP=SHR
//*
//**********************************************************************
//*  PASO: 13     GENERA REPORTE DE LIQUIDACION AGENTES/CLIENTES       *
//*               48 HRS.                                              *
//*  PJD03P13                                               ZM4DHW57   *
//**********************************************************************
//PJD03P13 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW57A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZMHW57R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T13),DISP=SHR
//*
//**********************************************************************
//*  PASO: 12     GENERA REPORTE DE LIQUIDACION AGENTES/CLIENTES       *
//*               24 HRS.                                              *
//*  PJD03P12                                               ZM4DHW56   *
//**********************************************************************
//PJD03P12 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW56A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZMHW56R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T12),DISP=SHR
//*
//**********************************************************************
//*  PASO: 11     GENERA REPORTE DE LIQUIDACION CENTROS REGIONALES     *
//*                                                                    *
//*  PJD03P11                                               ZM4DU506   *
//**********************************************************************
//PJD03P11 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMU506R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T11),DISP=SHR
//*
//**********************************************************************
//*  PASO: 10     GENERA REPORTE DE ASIGNACION                         *
//*                                                                    *
//*  PJD03P10                                               ZM4DU505   *
//**********************************************************************
//PJD03P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMU505R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMU505A1 DD DSN=MXCP.ZM.WKF.MDC.EBCM.S000.ARCH0,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=210,RECFM=FB,BLKSIZE=0,DSORG=PS),
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T10),DISP=SHR
//*
//**********************************************************************
//*  PASO:  9     GENERA REPORTE DE DETALLE DE COMPRA/VENTA            *
//*                                                                    *
//*  PJD03P09                                               ZM4DH022   *
//**********************************************************************
//PJD03P09 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DH221 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//ZM4DH222 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T09),DISP=SHR
//*
//**********************************************************************
//*  PASO:  8     GENERA REPORTE DE HECHOS LIQUIDACION VALOR HOY,      *
//*               24 Y 48 HS.                                          *
//*  PJD03P08                                               ZM4DH021   *
//**********************************************************************
//PJD03P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4DH211 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//ZM4DH212 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T08),DISP=SHR
//*
//**********************************************************************
//*  PASO:  7     GENERA REPORTE DE LIQUIDACION AGENTES/CLIENTES       *
//*                                                                    *
//*  PJD03P07  MODIFICADO                                   ZM4DHW50   *
//**********************************************************************
//PJD03P07 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW50A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZMHW50R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMHW50A2 DD DSN=MXCP.ZM.WKF.MDC.EBCM.S000.ARCH1,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=115,RECFM=FB,BLKSIZE=0,DSORG=PS),
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T07),DISP=SHR
//*
//**********************************************************************
//*  PASO:  6     GENERA REPORTE DE HECHOS PARA M.C., BCA PATRIMONIAL  *
//*                                                                    *
//*  PJD03P06                                               ZM4DHW49   *
//**********************************************************************
//PJD03P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW49A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZMHW49R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T06),DISP=SHR
//*
//**********************************************************************
//*  PASO:  5     GENERAR REPORTE DE TITULOS OPERADOS POR CASA DE      *
//*               BOLSA.                                               *
//*                                                                    *
//*  PJD03P05                                               ZM4DHW48   *
//**********************************************************************
//PJD03P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW48A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZMHW48R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T05),DISP=SHR
//*
//**********************************************************************
//*  PASO:  4     GENERAR REPORTE DE LIQUIDACION DE M. CAPITALES DE    *
//*               BANCA PATRIMONIAL.                                   *
//*                                                                    *
//*  PJD03P04 MODIFICADO                                    ZM4DHW47   *
//**********************************************************************
//PJD03P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW47A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZMHW47R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMHW47A2 DD DSN=MXCP.ZM.WKF.MDC.EBCM.S000.ARCH2,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=120,RECFM=FB,BLKSIZE=0,DSORG=PS),
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T04),DISP=SHR
//*
//**********************************************************************
//*  PASO:  3     GENERAR REPORTE DE LIQUIDACION CLIENTE -  AGENTE     *
//*                                                                    *
//*  PJD03P01 MODIFICADO                                    ZM4DHV15   *
//**********************************************************************
//PJD03P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4V15A1 DD DSN=MXCP.ZM.WKF.MDC.EBCM.S000.ARCH3,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=215,RECFM=FB,BLKSIZE=0,DSORG=PS),
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//ZM4V15R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T03),DISP=SHR
//*
//**********************************************************************
//*  PASO:  2     GENERAR REPORTE DE LIQUIDACION AGENTE  -  AGENTE     *
//*                                                                    *
//*  PJD03P02 MODIFICADO                                    ZM4DHV17   *
//**********************************************************************
//PJD03P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHV17A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZMHV17C1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMHV17C2 DD DSN=MXCP.ZM.WKF.MDC.EBCM.S000.ARCH4,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=150,RECFM=FB,BLKSIZE=0,DSORG=PS),
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//ZMHV17G1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZMHV17G2 DD DSN=MXCP.ZM.WKF.MDC.EBCM.S000.ARCH5,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=215,RECFM=FB,BLKSIZE=0,DSORG=PS),
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T02),DISP=SHR
//**********************************************************************
//*  PASO:  1     GENERAR REPORTE DE LIQUIDACION AGENTE  -  AGENTE     *
//*                                                                    *
//*  PJD03P01 MODIFICADO                                    ZM4DHV18   *
//**********************************************************************
//PJD03P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4D18A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZM4D18R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZM4D18R2 DD DSN=MXCP.ZM.WKF.MDC.EBCM.S000.ARCH6,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=225,RECFM=FB,BLKSIZE=0,DSORG=PS),
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T01),DISP=SHR
//*
//**********************************************************************
//*  PASO:  1C    GENERAR REPORTE DE LIQUIDACION MERCADO DE CAPITALES  *
//*               A FECHA DE OPERACION(P05)                            *
//*                                                                    *
//*  PJD03P1C                                               ZM4DHV24   *
//**********************************************************************
//PJD03P1C EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4D24A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZM4D24R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T1C),DISP=SHR
//*
//**********************************************************************
//*  PASO:  1B    GENERAR REPORTE DE TITULOS OPERADOS POR CASA DE      *
//*               BOLSA A FECHA DE OPERACION(P05)                      *
//*                                                                    *
//*  PJD03P1B                                               ZM4DHW51   *
//**********************************************************************
//PJD03P1B EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW51A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZMHW51R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T1B),DISP=SHR
//*
//**********************************************************************
//*  PASO:  1A    GENERA REPORTE DE HECHOS A FECHA DE OPERACION (P05). *
//*                                                                    *
//*  PJD03P1A                                               ZM4DHW52   *
//**********************************************************************
//PJD03P1A EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMHW52A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//*
//ZMHW52R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T1A),DISP=SHR
//*
//**********************************************************************
//* PASOS AGREGADOS PARA REPORTES DE LIQUIDACION A 72 HORAS. FEBRERO 07
//**********************************************************************
//*
//**********************************************************************
//*  PASO: 0R     GENERAR REPORTE DE LIQUIDACION AGENTE  -  AGENTE     *
//*               72 HORAS                                             *
//*  PJD03P0R                                               ZM4DHW10   *
//**********************************************************************
//PJD03P0R EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4D10A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//ZM4D10R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T0R),DISP=SHR
//**********************************************************************
//*  PASO: 0Q     GENERAR REPORTE DE LIQUIDACION AGENTE Y CLIENTES     *
//*               72 HORAS                                             *
//*  PJD03P0Q                                               ZM4DHW11   *
//**********************************************************************
//PJD03P0Q EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHV11A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//ZMHV11C1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//ZMHV11G1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T0Q),DISP=SHR
//**********************************************************************
//*  PASO: 0P     REPORTAR INFORMACION DE COMPRAS/VENTAS               *
//*               72 HRS, DE MERCADO DE CAPITALES:                     *
//*  PJD03P0P                                               ZM4DHW12   *
//**********************************************************************
//PJD03P0P EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHV12A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//ZM4V12R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T0P),DISP=SHR
//**********************************************************************
//*  PASO: 0N      REPORTE DE TITULOS OPERADOS POR CASA DE BOLSA       *
//*               72 HRS.                                              *
//*  PJD03P0N                                               ZM4DHW13   *
//**********************************************************************
//PJD03P0N EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHW13A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//ZMHW13R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T0N),DISP=SHR
//**********************************************************************
//*  PASO: 0F     REPORTE DE LIQUIDACION AGENTES/CLIENTES 72 HRS.      *
//*  PJD03P0F                                               ZM4DHW14   *
//**********************************************************************
//PJD03P0F EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHW14A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//ZMHW14R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T0F),DISP=SHR
//**********************************************************************
//*  PASO: 0E     SISTEMA EC ENLACE CONTABLE - REPORTE DE LIQUIDACION  *
//*               DE CENTROS REGIONALES (EFECTIVO)                     *
//*  PJD03P0E                                               ZM4DHW16   *
//**********************************************************************
//PJD03P0E EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4W16R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T0E),DISP=SHR
//**********************************************************************
//*  PASO: 0D     SISTEMA EC ENLACE CONTABLE - REPORTE DE ASIGNACION   *
//*               DEFINITIVA, A 72 HORAS                               *
//*  PJD03P0D MODIFICADO                                    ZM4DHW17   *
//**********************************************************************
//PJD03P0D EXEC PGM=IKJEFT01,COND=(4,LT)
//ZM4W17R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//ZM4W17A1 DD DSN=MXCP.ZM.WKF.MDC.EBCM.S000.ARCH7,
//         DISP=(NEW,CATLG,DELETE),
//         DCB=(LRECL=202,RECFM=FB,BLKSIZE=0,DSORG=PS),
//         UNIT=3390,SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T0D),DISP=SHR
//**********************************************************************
//*  PASO: 0A     REPORTE DE LIQUIDACION AGENTES/CLIENTES A            *
//*               72 HORAS                                             *
//*  PJD03P0A                                               ZM4DHW18   *
//**********************************************************************
//PJD03P0A EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMHW18A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRLBP,DISP=SHR
//ZMHW18R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJD03T0A),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJLPZ03 SIVA MULTIEMPRESA                  *
//**********************************************************************
