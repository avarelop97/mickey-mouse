//ZMVDPV10 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES  (M.U.V.)                *
//*                                                                    *
//* PROCESO        :  BCVDCV10                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  CARGA MOVIMIENTOS 101, 1001, 1101 EN OPERA       *
//*                                                                    *
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
//* PASO 1                    -- ZM4VVW10 --                           *
//* OBJETIVO    :  CARGA DE  MOVIMIENTOS 101, 1001, 1101 EN OPERA      *
//*                                                                    *
//* AFECTA DB2  :  INSERTA EN OPERA                                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD10P01 EXEC PGM=IKJEFT01
//*
//ZMVW10A1 DD DSN=MXCP.ZM.FIX.MOVTOS.BPIGO.OPERA,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD10T01),DISP=SHR
//*
