//ZMVDPV12 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES  (M.U.V.)                *
//*                                                                    *
//* PROCESO        :  BCVDCV12                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  CARGA MOVIMIENTOS HISTORICOS EN OPERA.           *
//*                   NO INCLUYE MDC, MDD, PLAZOS. SOLO SOC. DE INV.   *
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
//* PASO 1                    -- ZM4VVW01 --                           *
//* OBJETIVO    :  CARGA DE MOVIMIENTOS EN OPERA                       *
//*                                                                    *
//* AFECTA DB2  :  INSERTA EN OPERA                                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD12P01 EXEC PGM=IKJEFT01
//*
//ZMVW01A1 DD DSN=MXCP.ZM.FIX.MOVHIS.BPIGO.OPERA,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD12T01),DISP=SHR
//*
