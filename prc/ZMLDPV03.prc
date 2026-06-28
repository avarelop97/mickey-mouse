//ZMLDPV03 PROC
//*
//*********************************************************************
//* SISTEMA  : ZM (GANANCIA ANUAL TOTALIZADA )                        *
//* PROCESO  : ZMLPROGA                                               *
//* OBJETIVO : INSERTA REGISTROS EN LA TABLA ZMDT812                  *
//*            (GANANCIA ANUAL TOTALIZADA)                            *
//* REALIZO  :                                                        *
//* FECHA    : 30/03/2011                                             *
//*********************************************************************
//PCTCO010 EXEC PGM=IKJEFT01
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLD03T01),DISP=SHR
//*
