//ZMPCZ609 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MUV MODULO UNICO DE VALORES.                     *
//*                                                                    *
//* PROCESO        :  ZMPCZ609                                         *
//*                                                                    *
//* OBJETIVO       :  ACTUALIZAR DATOS DE FIDEICOMISOS EN TABLA        *
//*                   ZMDT609                                          *
//*                                                                    *
//* PROCESO EVENTUAL CORRE POR UNICA VEZ.                              *
//*                                                                    *
//**********************************************************************
//* EJECUCION DEL PROGRAMA:  ZM4C0001                                  *
//* ACTUALIZACION DE DATOS DE CUENTAS DE FIDEICOMISOS EN TABLA ZMDT609 *
//**********************************************************************
//PJC09P01 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHF69P01),DISP=SHR
//*
