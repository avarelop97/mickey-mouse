//ZMVDPV15 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES  (M.U.V.)                *
//*                                                                    *
//* PROCESO        :  BCVDCV15                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  CARGA HISTORICO DE ISR SOC. DE INV. EN TABLA     *
//*                   RISRSOC                                          *
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
//* PASO 1                    -- ZM4VVW09 --                           *
//* OBJETIVO    :  CARGA HISTORICO ISR EN RISRSOC                      *
//*                                                                    *
//* AFECTA DB2  :  INSERTA EN RISRSOC                                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD15P01 EXEC PGM=IKJEFT01
//*
//ZMVW09A1 DD DSN=MXCP.ZM.FIX.ISRSDI.BPIGO.RISRSOC,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD15T01),DISP=SHR
//*
