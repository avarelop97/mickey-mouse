//ZMUEPZ43 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  ZMUEPZ43 (DENTRO DEL CBUENM51) (REPROCESO)       *
//*                                                                    *
//* OBJETIVO       :  COPIA TABLA ESPEJO ZMDTMGG A LA TABLA EDSECIN    *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4MU360 ==                            *
//* OBJETIVO : COPIA TABLA ESPEJO ZMDTMGG A LA TABLA EDSECIN           *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PUE43P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE43T07),DISP=SHR
//*                                                                    *
//**********************************************************************
//*               TERMINA  ZMUEPZ43                                    *
//**********************************************************************
