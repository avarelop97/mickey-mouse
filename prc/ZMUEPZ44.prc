//ZMUEPZ44 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  ZMUEPZ44 (DENTRO DEL CBUENM51) (REPROCESO)       *
//*                                                                    *
//* OBJETIVO       :  COPIA TABLA ESPEJO ZMDTMG1 A LA TABLA EDOPERT1   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4MU380 ==                            *
//* OBJETIVO : COPIA TABLA ESPEJO ZMDTMG1 A LA TABLA EDOPERT1          *
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE44T07),DISP=SHR
//*                                                                    *
//**********************************************************************
//*               TERMINA  ZMUEPZ44                                    *
//**********************************************************************
