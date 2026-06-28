//ZMUEPY43 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  ZMUEPY43 (DENTRO DEL CBUENM51) (REPROCESO)       *
//*                                                                    *
//* OBJETIVO       :  COPIA TABLA ESPEJO ZMDTMG9 A LA TABLA EDCUENTA   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4MU365 ==                            *
//* OBJETIVO : COPIA TABLA ESPEJO ZMDTMG9 A LA TABLA EDCUENTA          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PUE43P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE43T09),DISP=SHR
//*                                                                    *
//**********************************************************************
//*               TERMINA  ZMUEPY43                                    *
//**********************************************************************
