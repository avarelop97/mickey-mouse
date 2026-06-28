//ZMVDPV13 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES  (M.U.V.)                *
//*                                                                    *
//* PROCESO        :  BCVDCV13                                         *
//*                                                                    *
//*                                                                    *
//* OBJETIVO       :  REALIZA AFECTACIONES A CARTERAS Y EFECTIVOS DE   *
//*                   ACUERDO A LAS OPERACIONES REGISTRADAS EN OPERA   *
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
//* PASO 1                    -- ZM4VVW02 --                           *
//* OBJETIVO    :  REALIZA AFECTACIONES A CARTERA Y EFECTIVO           *
//*                                                                    *
//* AFECTA DB2  :  INSERTA EN CARTERA                                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD13P01 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD13T01),DISP=SHR
//*
