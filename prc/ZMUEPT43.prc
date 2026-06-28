//ZMUEPT43 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  ZMUEPT43 (DENTRO DEL CBUENM43)                   *
//*                                                                    *
//* OBJETIVO       :  COPIA TABLA EDSECIN  A LA TABLA ESPEJO ZMDTMGG   *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//**********************************************************************
//*                          == ZM4MU350 ==                            *
//* OBJETIVO : COPIA LA TABLA EDSECIN EN LA TABLA ESPEJO ZMDTMGG       *
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
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE43T06),DISP=SHR
//*                                                                    *
//**********************************************************************
//*            TERMINA ZMUEPT43                                        *
//**********************************************************************
