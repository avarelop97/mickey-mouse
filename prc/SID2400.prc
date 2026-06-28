//SID2400 PROC                                                          00010001
//********************************************************************* 00020000
//* SISTEMA             : SOCIEDADES DE INVERSION/SEGURIDAD LOGICA    * 00030000
//*                                                                   * 00040000
//* PROCESO             : SID2400                                     * 00050001
//*                                                                   * 00060000
//* OBJETIVO            : ALTA AUTOMATICA DE USUARIOS DE BANCO        * 00070000
//*                       EN SIVA Y RACF                              * 00080000
//*                                                                   * 00090000
//* REALIZO             : ADRIAN DEL RIO SALDIVAR                     * 00100001
//*                                                                   * 00110000
//* FECHA               : SEPTIEMBRE DE 2000                          * 00120001
//********************************************************************* 00130000
//********   REALIZA LAS ALTAS Y BAJAS DE USUARIOS EN RACF   ********** 00140000
//********************************************************************* 00150000
//*                                                                   * 00160000
//SID2401 EXEC PGM=IKJEFT01,DYNAMNBR=60,REGION=4096K                    00170001
//SYSTSPRT DD SYSOUT=*                                                  00180000
//SYSLBC   DD DISP=SHR,DSN=SYS1.BRODCAST                                00190000
//SYSUADS  DD DISP=SHR,DSN=SYS1.UADS                                    00200000
//SYSPRINT DD SYSOUT=*                                                  00210000
//SYSTSIN  DD DISP=SHR,DSN=SIVA.SIN.FIX.USUARIOS.ARJC.BANCOMER          00220001
//*                                                                     00240000
