//ZMUEPT44 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  ZMUEPT44 (DENTRO DEL CBUENM43)                   *
//*                                                                    *
//* OBJETIVO       :  COPIA TABLA EDOPERT1 A LA TABLA ESPEJO ZMDTMG1   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4MU370 ==                            *
//* OBJETIVO : COPIA TABLA EDOPERT1 A LA TABLA ESPEJO ZMDTMG1          *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                                       *
//**********************************************************************
//PUE44P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE44T06),DISP=SHR
//*                                                                    *
//**********************************************************************
//*            TERMINA ZMUEPT44                                        *
//**********************************************************************
