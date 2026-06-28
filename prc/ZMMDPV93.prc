//ZMMDPV93 PROC                                                         00020301
//*---------------------------------------------------------------------00020400
//*                  PROC LO MANDA EJECUTAR BCMDCV93                    00020501
//*                          PGM   ZM4VMW93                             00020601
//*  PROGRAMA QUE PASA INFORMACION DE LA TABLA ZMDTMG2 A CARTEA(REPORTO)00020700
//*---------------------------------------------------------------------00020800
//*                                                                     00020900
//PMD92P01 EXEC PGM=IKJEFT01                                            00021000
//*                                                                     00032000
//SYSTSPRT DD SYSOUT=*                                                  00034000
//SYSPRINT DD SYSOUT=*                                                  00035000
//SYSOUT   DD SYSOUT=*                                                  00036000
//SYSDBOUT DD SYSOUT=*                                                  00037000
//SYSABOUT DD DUMMY                                                     00038000
//SYSUDUMP DD DUMMY                                                     00039000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD93T01),DISP=SHR                   00039101
//*                                                                     00039600
