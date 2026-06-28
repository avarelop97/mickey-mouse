//ZMUEPS43 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  ZMUEPS43 (DENTRO DEL CBUENM43)                   *
//*                                                                    *
//* OBJETIVO       :  COPIA TABLA EDCUENTA A LA TABLA ESPEJO ZMDTMG9   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4MU355 ==                            *
//* OBJETIVO : COPIA LA TABLA EDCUENTA EN LA TABLA ESPEJO ZMDTMG9      *
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE43T08),DISP=SHR
//*                                                                    *
//**********************************************************************
//*            TERMINA ZMUEPS43                                        *
//**********************************************************************
