//ZMMDPV12 PROC                                                         00020301
//*---------------------------------------------------------------------00020400
//*                  PROC LO MANDA EJECUTAR BCMDCV12                    00020501
//*                          PGM   ZM4VMW19                             00020601
//*  PROGRAMA QUE GRABA REGISTROS DE RSIRSOC  EN TABLA ZMDTMG5 (RISRSOC)00020701
//*---------------------------------------------------------------------00020800
//*                                                                     00020900
//PMD12P01 EXEC PGM=IKJEFT01                                            00021001
//*                                                                     00022000
//ZMMW19A1 DD DSN=MXCP.ZM.FIX.MIG.RISRSOC.CESC150,DISP=SHR              00025001
//*                                                                     00032000
//SYSTSPRT DD SYSOUT=*                                                  00034000
//SYSPRINT DD SYSOUT=*                                                  00035000
//SYSOUT   DD SYSOUT=*                                                  00036000
//SYSDBOUT DD SYSOUT=*                                                  00037000
//SYSABOUT DD DUMMY                                                     00038000
//SYSUDUMP DD DUMMY                                                     00039000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD12T01),DISP=SHR                   00039101
//*                                                                     00039600
