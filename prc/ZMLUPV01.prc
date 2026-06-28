//ZMLUPV01 PROC
//*
//**********************************************************************
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *
//* SISTEMA        :  SISTEMA MERCADO DE DINERO (S.I.V.A.)             *
//*                                                                    *
//* PROCESO        :  CBLUNV01                                         *
//*                   PROCESO DE UNICA VEZ                             *
//*                                                                    *
//* OBJETIVO       :  REALIZAR LA CARGA INICIAL A LA TABLA TIPCAMB.    *
//*                   (TIPO DE CAMBIO PARA DL, UD E IP)                *
//*                                                                    *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                            --- ZM4DL991 ---                        *
//* OBJETIVO : CARGA INICIAL A LA TABLA TIPCAMB                        *
//*                                                                    *
//* PASO REINICIABLE POR RESTART                        ***            *
//**********************************************************************
//PJL01P01 EXEC PGM=IKJEFT01
//E1REGIS  DD DSN=SIVA.TES.WKF.COTIZA,DISP=SHR                          00140027
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLU01T01),DISP=SHR
//**********************************************************************
//*               FIN DEL PROCEDIMIENTO ZMLUPV01                       *
//**********************************************************************
