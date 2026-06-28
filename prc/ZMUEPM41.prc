//ZMUEPM41 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  CBUENM41                                         *
//*                   DEFINITIVO ESTADOS DE CUENTA - MENSUAL           *
//*                                                                    *
//* OBJETIVO       :  CARGA LA TABLA DE CUENTA A EDCUENTA              *
//*                                                                    *
//* CORRE                                                              *
//* ANTES DE       :                                                   *
//*                                                                    *
//* DESPUES DE     :  CIERRE DE CONTRATOS                              *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  JULIO 2004                                       *
//*                                                                    *
//* OBSERVACION    :  CORRE MENSUALMENTE                               *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4MU340 ==                            *
//* OBJETIVO : CARGA LA TABLA EDCUENTA DESDE CUENTA                    *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PUE41P01 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE41T01),DISP=SHR
