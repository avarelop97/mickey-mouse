//ZMVDPV06 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES (M.U.V.)                 *
//*                                                                    *
//* PROCESO        :  BCVDCV06                                         *
//*                   MIGRACION CLIENTES BPIGO A MUV EN PU             *
//*                                                                    *
//* OBJETIVO       :  CARGA MOVIMIENTOS DEL DIA DE MIGRACION A OPERA   *
//*                   Y REALIZA AFECTACIONES A CARTERA                 *
//* CORRE                                                              *
//* ANTES DE       :  NINGUNO                                          *
//*                                                                    *
//* DESPUES DE     :  BCVDCV05                                         *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//*                                                                    *
//* FECHA          :  MARZO 2005                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO DE FORMA EVENTUAL A SOLICITUD DEL   *
//*                   USUARIO Y CONFORME A LAS MIGRACIONES BPIGO-MUV   *
//*                                                                    *
//**********************************************************************
//*                           -- ZM4VVW07 --                           *
//* OBJETIVO    :  CARGAR MOVIMIENTOS DE BPIGO A OPERA EL DIA DE LA    *
//*                MIGRACION                                           *
//* AFECTA DB2  :  INSERTA  OPERA                                      *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD06P02 EXEC PGM=IKJEFT01
//*
//ZMVW07A1 DD DSN=MXCP.ZM.FIX.LOAD.BPIGO.OPERADM,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD06T02),DISP=SHR
//**********************************************************************
//*                           -- ZM4VVW08 --                           *
//* OBJETIVO    :  REALIZAR AFECTACIONES A CARTERA DE ACUERDO A LAS    *
//*                OPERACIONES DEL DIA DE LA MIGRACION                 *
//*                                                                    *
//* AFECTA DB2  :  INSERTA CARTERA                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD06P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD06T01),DISP=SHR
//*
