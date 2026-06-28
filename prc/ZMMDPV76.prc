//ZMMDPV76 PROC                                                         00020301
//*---------------------------------------------------------------------00020400
//*                  PROC LO MANDA EJECUTAR BCMDCV76                    00020501
//*                          PGM   ZM4VMW76                             00020601
//*  PROGRAMA PASA DE ZMDTMG3 A REPORTO                                 00020702
//*---------------------------------------------------------------------00020800
//*                                                                     00020900
//PMD76P01 EXEC PGM=IKJEFT01                                            00021001
//*                                                                     00032000
//SYSTSPRT DD SYSOUT=*                                                  00034000
//SYSPRINT DD SYSOUT=*                                                  00035000
//SYSOUT   DD SYSOUT=*                                                  00036000
//SYSDBOUT DD SYSOUT=*                                                  00037000
//SYSABOUT DD DUMMY                                                     00038000
//SYSUDUMP DD DUMMY                                                     00039000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD76T01),DISP=SHR                   00039101
//*                                                                     00039600
