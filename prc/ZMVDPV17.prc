//ZMVDPV17 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES  (M.U.V.)                *
//*                                                                    *
//* PROCESO        :  BCVDCV17                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  ACTUALIZA FECHAS PARAM-Z05, CARGA MOVIMIENTOS    *
//*                   HISTORICOS EN OPERA, CARGA SECART                *
//*                                                                    *
//* PERIODICIDAD   :  EVENTUAL                                         *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* DESPUES DE     :                                                   *
//*                                                                    *
//* REALIZO        :  SALVADOR PLASCENCIA H.                           *
//* FECHA          :  ABRIL 2005                                       *
//*                                                                    *
//* MODIFICO       :  ZZZZZZZZZZZZZZZZZZZZZ                            *
//* FECHA          :  ZZZZZ 2005                                       *
//*                                                                    *
//**********************************************************************
//* PASO 1                    -- ZM4VVW05 --                           *
//* OBJETIVO    :  ACTUALIZA FECHA ZO5-PARAM                           *
//*                                                                    *
//* AFECTA DB2  :  ACTUALIZA PARAM                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD17P03 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD17T03),DISP=SHR
//*
//**********************************************************************
//* PASO 2                    -- ZM4VVW07 --                           *
//* OBJETIVO    :  CARGA MOVIMIENTOS EN OPERA                          *
//*                                                                    *
//* AFECTA DB2  :  INSERTA OPERA                                       *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD17P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMVW01A1 DD DSN=MXCP.ZM.FIX.MOVTOS.BPIGO.OPERA,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD17T02),DISP=SHR
//*
//**********************************************************************
//* PASO 3                    -- ZM4VVW03 --                           *
//* OBJETIVO    :  CARGA POSICION DIARIA EN SECART                     *
//*                                                                    *
//* AFECTA DB2  :  INSERTA SECART, SEATRCA                             *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD17P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD17T01),DISP=SHR
//*
