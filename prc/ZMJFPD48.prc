//ZMJFPD48 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA  : ZM                                                      *
//*                                                                    *
//* PROCESO  : ZMJFPD48                                                *
//*                                                                    *
//* OBJETIVO : ES EL PROCESO MENSUAL QUE CALCULA EL ISR Y LOS INTERESES*
//*            POR SALDO ACREEDOR, AFECTA LA CARTERA DEL CLIENTE Y     *
//*            REGISTRA LAS OPERACIONES EN EL HISTORICO DE MOVIMIENTOS.*
//*                                                                    *
//* REALIZO  : FSW-TECNOCOM                                            *
//*                                                                    *
//* FECHA    : 04-ABRIL-2013.                                          *
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*                       LOG DE MODIFICACIONES                        *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR     FECHA              DESCRIPCION              *
//* ----------- --------  -------  ------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//* PASO     : PJI01P48                                                *
//* PROGRAMA : IKJEFT01/ZM4DJ922                                       *
//* FUNCION  : ES EL PROCESO MENSUAL QUE CALCULA EL ISR Y LOS INTERESES*
//*            POR SALDO ACREEDOR, AFECTA LA CARTERA DEL CLIENTE Y     *
//*            REGISTRA LAS OPERACIONES EN EL HISTORICO DE MOVIMIENTOS.*
//*--------------------------------------------------------------------*
//PJI01P48 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI01T48),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                  FIN DE PROCESO ZMJFPD48                           *
//*--------------------------------------------------------------------*
