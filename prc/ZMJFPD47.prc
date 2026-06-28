//ZMJFPD47 PROC
//*--------------------------------------------------------------------*
//* PROYECTO    :  ZM - GENERACION DE REPORTES CENIFOM                 *
//* PROCESO     :  ZMJFPD47                                            *
//* PERIODICIDAD:  DIARIO                                              *
//* OBJETIVO    :  PROCESO DIARIO QUE CALCULA EL PAGO DE INTERESES POR *
//*                SALDO ACREEDOR Y QUE AFECTA DE FORMA INDICATIVA LA  *
//*                CARTERA DEL CLIENTE                                 *
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
//* PASO     : PJI01P47                                                *
//* UTILERIA : IKJEFT01                                                *
//* OBJETIVO : PROCESO DIARIO QUE CALCULA EL PAGO DE INTERESES POR     *
//*            SALDO ACREEDOR Y QUE AFECTA DE FORMA INDICATIVA LA      *
//*            CARTERA DEL CLIENTE.                                    *
//*--------------------------------------------------------------------*
//PJI01P47 EXEC PGM=IKJEFT01
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI01T47),DISP=SHR
//*
//**********************************************************************
//** OBJETIVO : DEPURAR INDICATIVOS DEL MES                            *
//**********************************************************************
//PJI02P47 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//QRLSDB2  DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJI02T47),DISP=SHR
//*
//**********************************************************************
//**              FIN DEL PROCEDIMIENTO ZMJFPD47                       *
//**********************************************************************
