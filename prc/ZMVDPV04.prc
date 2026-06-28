//ZMVDPV04 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES (M.U.V.)                 *
//*                                                                    *
//* PROCESO        :  BCVDCV04                                         *
//*                   MIGRACION CLIENTES BPIGO A MUV EN PU             *
//*                                                                    *
//* OBJETIVO       :  CAARGA  DE TABLAS EDDEPRE, EDVALCA, EDMOVED      *
//*                   A PARTIR DE ARCHIVO SECUENCIAL                   *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :  BCVDCV05                                         *
//*                                                                    *
//* DESPUES DE     :  BCVDCV03                                         *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//*                                                                    *
//* FECHA          :  MARZO 2005                                       *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCESO DE FORMA EVENTUAL A SOLICITUD DEL   *
//*                   USUARIO Y CONFORME A LAS MIGRACIONES BPIGO-MUV   *
//*                                                                    *
//**********************************************************************
//*                           -- ZM4VVW40 --                           *
//* OBJETIVO    :  CARGA  EDIMPUE A PARTIR DE ARCHIVO SECUENCIAL       *
//*                                                                    *
//* AFECTA DB2  :  INSERTA EDIMPUE                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD04P04 EXEC PGM=IKJEFT01
//*
//ZMVW40A1 DD DSN=MXCP.ZM.FIX.LOAD.BPIGO.EDIMPUE,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD04T04),DISP=SHR
//**********************************************************************
//*                           -- ZM4VVW43 --                           *
//* OBJETIVO    :  CARGA  EDDEPRE A PARTIR DE ARCHIVO SECUENCIAL       *
//*                                                                    *
//* AFECTA DB2  :  INSERTA EDDEPRE                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD04P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMVW43A1 DD DSN=MXCP.ZM.FIX.LOAD.BPIGO.EDDEPRE,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD04T03),DISP=SHR
//**********************************************************************
//*                           -- ZM4VVW44 --                           *
//* OBJETIVO    :  CARGA  EDVALCA A PARTIR DE ARCHIVO SECUENCIAL       *
//*                                                                    *
//* AFECTA DB2  :  INSERTA EDVALCA                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD04P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMVW44A1  DD DSN=MXCP.ZM.FIX.LOAD.BPIGO.EDVALCA,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD04T02),DISP=SHR
//**********************************************************************
//*                           -- ZM4VVW45 --                           *
//* OBJETIVO    :  CARGA  EDMOVED A PARTIR DE ARCHIVO SECUENCIAL       *
//*                                                                    *
//* AFECTA DB2  :  INSERTA EDMOVED                                     *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PVD04P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMVW45A1  DD DSN=MXCP.ZM.FIX.LOAD.BPIGO.EDMOVED,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZVD04T01),DISP=SHR
//*
