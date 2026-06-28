//CAS0800  PROC                                                         00010000
//**********************************************************************00020000
//*                                                                    *00030000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00040000
//*                                                                    *00050000
//* PROCESO        :  PSACAS08                                         *00060000
//*                   GENERACION DE REPORTES DEL SISTEMA DE ALARMAS    *00070000
//*                   LOS REPORTES GENERADOS SON LOS SIGUIENTES :      *00071000
//*                   VOBJ47O - REPORTE DE MENSAJES Y RESPUESTAS QUE   *00072000
//*                             SE HAN ENVIADO A LO LARGO DEL PERIODO  *00073000
//*                   VOBJ48O - REPORTE DEL IMPACTO EN LA OPERACION    *00074000
//*                             DIARIA DE LA CASA A PARTIR DE LOS MEN- *00075000
//*                             SAJES QUE LA MESA DE CAPITALES ENVIA   *00076000
//*                                                                    *00080000
//* OBJETIVO       :  GENERACION DE AMBOS REPORTES EN LA FORMA DE      *00090000
//*                   CONTROL - D CORRESPONDIENTES (TX02, TX03)        *00100000
//*                                                                    *00110000
//* CORRE                                                              *00120000
//* ANTES DE       :  FINDIA (PFDFDD01)                                *00130000
//*                                                                    *00140000
//* DESPUES DE     :  PCICAD07 (CIERRE DE CAPITALES 3RA. ULTIMA PARTE).*00150000
//*                                                                    *00160000
//* REALIZO        :  RICARDO ARGUETA - HECTOR RIVERA                  *00170000
//* FECHA          :  NOVIEMBRE  1992                                  *00180000
//*                                                                    *00190000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA UNICAMENTE LOS DIAS*00200000
//*                   VIERNES, DESPUES DEL CIERRE DE CAPITALES.        *00201000
//*                                                                    *00210000
//**********************************************************************00220000
//*-------------------------------------------------------------------- 00230000
//*        GENERA EL REPORTE DE MENSAJES Y RESPUESTAS QUE SE HAN        00240000
//*        ENVIADO A LO LARGO DE LA SEMANA. (UTILIZA ARCHIVOS VSAM)     00250000
//*        NO ACTUALIZA TABLAS, SOLO LEE (MENSAJE, MENDETA, RESPTAS,    00260000
//*        RESTEXT, MENTEXT)                                            00260100
//*        REINICIABLE POR RESTART                                      00260200
//*-------------------------------------------------------------------- 00261000
//CAS0802  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00270000
//* DEFINICION DE ARCHIVO VSAM PARA VOBJ47O                             00290000
//*                                                                     00300000
//*VOBJ47R1 DD SYSOUT=(O,,TX06)                                         00310000
//VOBJ47R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')                     00311000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00320000
//SYSPRINT DD SYSOUT=*                                                  00330000
//SYSOUT   DD SYSOUT=*                                                  00340000
//SYSDBOUT DD SYSOUT=*                                                  00350000
//SYSABOUT DD DUMMY                                                     00360000
//SYSUDUMP DD DUMMY                                                     00370000
//SYSTSIN  DD DSN=SIVA.CARDS(CAS0802),DISP=SHR                          00380002
//*-------------------------------------------------------------------  00390000
//*        REPORTES DEL IMPACTO DE LOS MENSAJES EN LA OPERACION DIARIA  00400000
//*        DE LA CASA.                                                  00401000
//*        NO ACTUALIZA TABLAS, SOLO LEE (ORDENES, AHECHOR, HECHOS,     00402000
//*        MENSAJE, MENDETA, RESPTAS, RESTEXT, MENTEXT)                 00403000
//*        REINICIABLE POR RESTART                                      00404000
//*-------------------------------------------------------------------  00410000
//*CAS0801  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)         00420000
//*VOBJ48T1 DD DSN=&&ARCHT1,                                            00430000
//*           DISP=(NEW,PASS),                                          00440000
//*           DCB=(RECFM=FB,LRECL=132,BLKSIZE=0),                       00450000
//*           UNIT=SYSDA,                                               00460000
//*           SPACE=(TRK,(100,100),RLSE)                                00461000
//**VOBJ48R1 DD SYSOUT=(O,,TX07)                                        00470000
//*VOBJ48R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')                    00480000
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(5))                               00800000
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(5))                               00810000
//*SORTWK03 DD UNIT=SYSDA,SPACE=(CYL,(5))                               00820000
//*SYSABOUT DD DUMMY                                                    00830000
//*SYSUDUMP DD DUMMY                                                    00840000
//*SYSTSPRT DD SYSOUT=*                                                 00841000
//*SYSPRINT DD SYSOUT=*                                                 00842000
//*SYSOUT   DD SYSOUT=*                                                 00843000
//*SYSDBOUT DD SYSOUT=*                                                 00844000
//*SYSTSIN  DD DSN=SIVA.CARDS(CAS0801),DISP=SHR                         00850002
