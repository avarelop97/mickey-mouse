//ZMVDPV01 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES (M.U.V.)                 *
//*                                                                    *
//* PROCESO        :  BCVDCV01                                         *
//*                   MIGRACION CLIENTES BPIGO A MUV EN PU             *
//*                                                                    *
//* OBJETIVO       :  CARGA POSICION INICIAL E ISR HISTORICO AL MES    *
//*                   ANTERIOR DE CLIENTES                             *
//* CORRE                                                              *
//* ANTES DE       :  BCVDCV02                                         *
//*                                                                    *
//* DESPUES DE     :  NINGUNO                                          *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//*                                                                    *
//* FECHA          :  MARZO 2005                                       *
//*                                                                    *
//**********************************************************************
//* PASO 4                    -- ZM4VVW00 --                           *
//* OBJETIVO    :  CARGA LA POSICION INICIAL A INICIO DE MES ANTERIOR  *
//*                                                                    *
//* AFECTA DB2  :  INSERTA EN CARTERA                                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*
//PVD01P04 EXEC PGM=IKJEFT01
//ZMVW00A1 DD DSN=MXCP.ZM.FIX.POSINI.BPIGO.CARTERA,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD01T04),DISP=SHR
//**********************************************************************
//* PASO 3                    -- ZM4VVW01 --                           *
//* OBJETIVO    :  CARGA LOS MOVIMIENTOS DEL MES ANTERIOR Y LOS DEL MES*
//*                ACTUAL A LA FECHA                                   *
//* AFECTA DB2  :  INSERTA EN OPERA                                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*
//PVD01P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMVW01A1 DD DSN=MXCP.ZM.FIX.MOVTOS.BPIGO.OPERA,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD01T03),DISP=SHR
//**********************************************************************
//* PASO 2                    -- ZM4VVW03 --                           *
//* OBJETIVO    :  CARGA SECART DE LA POSICION FINAL DEL MES ANTERIOR  *
//*                                                                    *
//* AFECTA DB2  :  INSERTA EN SECART, SEATRCA                          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*
//PVD01P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD01T02),DISP=SHR
//**********************************************************************
//* PASO 1                    -- ZM4VVW09 --                           *
//* OBJETIVO    :  CARGA HISTORICO DE ISR A TABLA RISRSOC              *
//*                                                                    *
//* AFECTA DB2  :  INSERTA EN RISRSOC                                  *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//*
//PVD01P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMVW09A1 DD DSN=MXCP.ZM.FIX.ISRSDI.BPIGO.RISRSOC,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD01T01),DISP=SHR
