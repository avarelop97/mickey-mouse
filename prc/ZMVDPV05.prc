//ZMVDPV05 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES (M.U.V.)                 *
//*                                                                    *
//* PROCESO        :  BCVDCV05                                         *
//*                   MIGRACION CLIENTES BPIGO A MUV EN PU             *
//*                                                                    *
//* OBJETIVO       :  COPIAR LA TABLA CUENTA A TABLA EDCUENTA PARA     *
//*                   RESPALDAR LOS CLIENTES AL DIA ULTIMO DEL MES     *
//* CORRE                                                              *
//* ANTES DE       :  BCVDCV06                                         *
//*                                                                    *
//* DESPUES DE     :  BCVDCV04                                         *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//*                                                                    *
//* FECHA          :  MARZO 2005                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO DE FORMA EVENTUAL A SOLICITUD DEL   *
//*                   USUARIO Y CONFORME A LAS MIGRACIONES BPIGO-MUV   *
//*                                                                    *
//**********************************************************************
//*                           -- ZM4VVW20 --                           *
//* OBJETIVO    :  COPIAR TABLA CUENTA A EDCUENTA                      *
//*                                                                    *
//* ACTUALIZA   :  INSERTA EDCUENTA                                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD05P01 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD05T01),DISP=SHR
//*
