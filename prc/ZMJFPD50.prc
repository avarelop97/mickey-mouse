//ZMJFPD50 PROC
//*--------------------------------------------------------------------*
//* PROYECTO    :  ZM - GENERACION DE REPORTES CENIFOM                 *
//* PROCESO     :  ZMJFPD50                                            *
//* PERIODICIDAD:  DIARIO                                              *
//* OBJETIVO    :  OPCION NUEVA LINEA QUE ENVIA LA EJECUCION PARA LA   *
//*                GENERACION DEL REPORTE DE INTERES POR SALDO ACREEDOR*
//*                Y SALDO DEUDOR                                      *
//* REALIZO     :  CAPGEMINI                                           *
//* FECHA       :  21 MARZO 2013                                       *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//*        L O G    D E   M O D I F I C A C I O N E S                  *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA  DESCRIPCION                           *
//* -----------  ------- ------- ------------------------------------- *
//* FS-0.0.0-00  XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO     : PJI01P50                                                *
//* UTILERIA : IKJEFT01                                                *
//* OBJETIVO : GENERACION DEL REPORTE DE INTERES POR SALDO ACREEDOR    *
//*            Y SALDO DEUDOR.                                         *
//*--------------------------------------------------------------------*
//PJI01P50 EXEC PGM=IKJEFT01
//*
//ZMJ923R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI01T50),DISP=SHR
//*
//**********************************************************************
//*               FIN DEL PROCEDIMIENTO ZMJFPD50                       *
//**********************************************************************
