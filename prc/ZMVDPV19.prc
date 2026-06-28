//ZMVDPV19 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES  (M.U.V.)                *
//*                                                                    *
//* PROCESO        :  BCVDCV19                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  CARGA MOVIMIENTOS DEL DIA EN OPERA.              *
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
//* PASO 1                    -- ZM4VVW07 --                           *
//* OBJETIVO    :  CARGA DE MOVIMIENTOS EN OPERA                       *
//*                                                                    *
//* AFECTA DB2  :  INSERTA EN OPERA                                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD19P01 EXEC PGM=IKJEFT01
//*
//ZMVW07A1 DD DSN=MXCP.ZM.FIX.MOVDIA.BPIGO.OPERA,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD19T01),DISP=SHR
//*
