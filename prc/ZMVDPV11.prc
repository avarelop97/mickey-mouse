//ZMVDPV11 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES  (M.U.V.)                *
//*                                                                    *
//* PROCESO        :  BCVDCV11                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  CARGA POSICION EN CARTERA A PARTIR DE ARCHIVO    *
//*                   SECUENCIAL                                       *
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
//* PASO 1                    -- ZM4VVW00 --                           *
//* OBJETIVO    :  CARGA DE POSICION EN CARTERA                        *
//*                                                                    *
//* AFECTA DB2  :  INSERTA EN CARTERA                                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD11P01 EXEC PGM=IKJEFT01
//*
//ZMVW00A1 DD DSN=MXCP.ZM.FIX.POSINI.BPIGO.CARTERA,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD11T01),DISP=SHR
//*
