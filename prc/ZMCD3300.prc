//ZMCD3300 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM RENDIMIENTOS DE INGRESOS SIVA                    *
//* PROCESO      : ZMCD3300                                            *
//* PERIODICIDAD : DIARIO                                              *
//* OBJETIVO     : REALIZAR EL REPROCESO DE POLIZAS ANTERIORES         *
//*                                                                    *
//* REALIZO      : FABRICA DE SOFTWARE (SOFTTEK)                       *
//* FECHA        : 18 DE MAYO DE 2010                                  *
//*                                                                    *
//*--------------------------------------------------------------------*
//*             L O G   D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR   FECHA   DESCRIPCION                          *
//* -----------  ------- -------  -------------------------------------*
//*                                                                    *
//*--------------------------------------------------------------------*
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF03P60                                                *
//* UTILERIA : IDCAMS                                                  *
//* OBJETIVO : BORRA LOS ARCHIVOS DE TRABAJO                           *
//*--------------------------------------------------------------------*
//ZLF03P60 EXEC PGM=IDCAMS
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//AMSDUMP  DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZLF03T60),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF03P55                                                *
//* UTILERIA : IKJEFT01/ZM4DL16D                                       *
//* OBJETIVO : DEPURACION DE ARCHIVOS REINICIABLE                      *
//*--------------------------------------------------------------------*
//ZLF03P55 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF03T55),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF03P50                                                *
//* UTILERIA : IKJEFT01/ZM4DL16D                                       *
//* OBJETIVO : OBTENCION DE OPERACIÓN REINICIABLE DESDE EL PTO ANT.    *
//*--------------------------------------------------------------------*
//ZLF03P50 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF03T50),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF03P45                                                *
//* UTILERIA : IKJEFT01/ZM4DL41D                                       *
//* OBJETIVO : OBTENCION DE MOVIMIENTOS CLIENTES BANCO                 *
//*--------------------------------------------------------------------*
//ZLF03P45 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF03T45),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF03P40                                                *
//* UTILERIA : IKJEFT01/ZM4DL11D                                       *
//* OBJETIVO : GENERACION DE MOVIMIENTOS CONTABLES REINICIABLE         *
//* ---------------------------                                        *
//* IMPORTANTE!!!!                                                     *
//* AL EJECUTAR ESTE PROCESO -EVENTUAL- ADECUAR LINEA INDICANDO        *
//* LA DISPOSICION DEL ARCHIVO "EOBM11T1" COMO O-L-D                   *
//* EOBM11T1 DD DSN=PROMIL.GLMV303.VCVMNT.G30029,DISP=OLD <<< OLD >>>  *
//* IMPORTANTE!!!!                                                     *
//* ---------------------------                                        *
//*--------------------------------------------------------------------*
//ZLF03P40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//EOBM11T1 DD DSN=PROMIL.GLMV303.VCVMNT.G30029,DISP=OLD
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF03T40),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF03P35                                                *
//* UTILERIA : IKJEFT01/ZM4DL14D                                       *
//* OBJETIVO : CONSOLIDACION DE ASIENTOS CONTABLES REINICIABLE         *
//* ---------------------------                                        *
//* IMPORTANTE!!!!                                                     *
//* AL EJECUTAR ESTE PROCESO -EVENTUAL- ADECUAR LINEAS INDICANDO       *
//* LA DISPOSICION DE LOS ARCHIVOS "SZMDL14H" Y "SZMDL14D" EN M-O-D.   *
//*SZMDL14H DD DSN=SIVA.GLMV303.ENCON.HEADER,DISP=MOD
//*SZMDL14D DD DSN=SIVA.GLMV303.ENCON.DETAIL,DISP=MOD
//* ---------------------------                                        *
//*--------------------------------------------------------------------*
//ZLF03P35 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SZMDL14H DD DSN=PROMIL.GLMV303.ENCON.HEADER,DISP=SHR
//SZMDL14D DD DSN=PROMIL.GLMV303.ENCON.DETAIL,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF03T35),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF03P30                                                *
//* UTILERIA : IKJEFT01/ZM4DL15D                                       *
//* OBJETIVO : REPORTE POLIZA AUTOMATICA REINICIABLE                   *
//*--------------------------------------------------------------------*
//ZLF03P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SZMDL15D DD SYSOUT=(O,,TG01)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF03T30),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF03P25                                                *
//* UTILERIA : IKJEFT01/ZM4DL29D                                       *
//* OBJETIVO : REPORTE DE CONCILIACION TESORERIA POLIZA REINICIABLE    *
//*--------------------------------------------------------------------*
//ZLF03P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM4DL29D DD SYSOUT=(O,,TG07)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF03T25),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF03P20                                                *
//* UTILERIA : IKJEFT01/ZM4DL17D                                       *
//* OBJETIVO : REPORTE DE MOVIMIENTOS RECHAZADOS REINICIABLE           *
//*--------------------------------------------------------------------*
//ZLF03P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SZMDL17D DD SYSOUT=(O,,TG02)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF03T20),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF03P15                                                *
//* UTILERIA : IKJEFT01/ZM4DL27D                                       *
//* OBJETIVO : REPORTE DE CONTROL DE MOVIMIENTOS REINICIABLE           *
//*--------------------------------------------------------------------*
//ZLF03P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SZMDL27D DD SYSOUT=(O,,TG06)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF03T15),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF03P10                                                *
//* UTILERIA : IKJEFT01/ZM4DL20D                                       *
//* OBJETIVO : ACTUALIZACION DE NUMERO DE POLIZA Y FECHA NO REINICIABLE*
//*--------------------------------------------------------------------*
//ZLF03P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF03T10),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : ZLF03P05                                                *
//* UTILERIA : MAILOPER                                                *
//* OBJETIVO : AVISO EN CASO DE ERROR                                  *
//*--------------------------------------------------------------------*
//ZLF03P05 EXEC PGM=MAILOPER,COND=(4,GE),                               00020500
//         PARM=('/ATENCION.AVISAR A PRODUCCION QUE PROCESO ',          00020600
//             'SIVAXPRO(ZMULPE14)TERMINO MAL.CONTESTAR SI',            00020700
//             'PARA TERMINAR')                                         00020800
//*
//*--------------------------------------------------------------------*
//*                    FIN DEL PROCESO ZMCD3300                        *
//*--------------------------------------------------------------------*
