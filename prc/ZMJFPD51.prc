//ZMJFPD51 PROC
//*
//*--------------------------------------------------------------------*
//*                                                                    *
//* SISTEMA  : ZM                                                      *
//*                                                                    *
//* PROCESO  : ZMJFPD51                                                *
//*                                                                    *
//* OBJETIVO : PROCESO DE GENERACION DE REPORTE MENSUAL DE INTERESES   *
//*            POR SALDO DEUDOR Y SALDO ACREEDOR.                      *
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
//* PASO     : PJI01P51                                                *
//* PROGRAMA : IKJEFT01/ZM4DJ924                                       *
//* FUNCION  : GENERACION DE REPORTE MENSUAL DE INTERESES POR SALDO    *
//*            ACREEDOR Y SALDO DEUDOR.                                *
//*--------------------------------------------------------------------*
//PJI01P51 EXEC PGM=IKJEFT01
//*
//ZMJ924R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI01T51),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                  FIN DE PROCESO ZMJFPD51                           *
//*--------------------------------------------------------------------*
