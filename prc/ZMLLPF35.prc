//ZMLLPF35 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM CASA DE BOLSA, MERCADO DE DINERO                 *
//* PROCESO      : ZMLLPF35                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : REPORTE DE EMISORAS VIGENTES MERCADO DE DINERO      *
//* REALIZO      : SOFTTEK (RODF)                                      *
//* FECHA        : 27 DE JULIO DE 2011                                 *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//* @STK-00      XXXXXXX DDMMMAA  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX*
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO     : PLC35P30                                                *
//* UTILERIA : IKJEFT01                                                *
//* OBJETIVO : ACTUALIZA EL FINAL DEL PROCESO DE LIQUIDACION EN LINEA  *
//*            DE CORTE DE CUPON. (ACT EN "F" EL EVENTO LIQ).          *
//*--------------------------------------------------------------------*
//*
//PLC35P30 EXEC PGM=IKJEFT01
//*
//ZMLE11A1 DD DSN=MXC&AMB..ZM.TMP.MDD.SIVA.MUV.ZXLLPE35,
//            DISP=SHR
//*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLL30T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMLLPF35                        *
//*--------------------------------------------------------------------*
