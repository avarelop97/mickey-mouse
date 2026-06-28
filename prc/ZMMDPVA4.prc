//ZMMDPVA4 PROC                                                         00010002
//*-------------------------------------------------------------------  00020000
//*                 ***  LO MANDA EJECUTAR EL BCMDCVA4  ***             00030000
//* CORRE PGM: ZM4VMW98 RECORRE FECHA                                   00032000
//*-------------------------------------------------------------------- 00033000
//PMDA4P02 EXEC PGM=IKJEFT01                                            00034002
//SYSTSPRT DD SYSOUT=*                                                  00035000
//SYSPRINT DD SYSOUT=*                                                  00036000
//SYSOUT   DD SYSOUT=*                                                  00037000
//SYSDBOUT DD SYSOUT=*                                                  00038000
//SYSABOUT DD DUMMY                                                     00039000
//SYSUDUMP DD DUMMY                                                     00039100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA4T02),DISP=SHR                   00039201
//                                                                      00039202
//*SE ELIMINA ESTE PASO                                                 00039203
//*-------------------------------------------------------------------- 00039300
//* CORRE PGM:ZM4VMW45 (MOVHIS) CARGA CARTERA                           00040000
//*-------------------------------------------------------------------  00050000
//PMDA4P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00060002
//SYSTSPRT DD SYSOUT=*                                                  00070000
//SYSPRINT DD SYSOUT=*                                                  00080000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SYSDBOUT DD SYSOUT=*                                                  00100000
//SYSABOUT DD DUMMY                                                     00110000
//SYSUDUMP DD DUMMY                                                     00120000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA4T01),DISP=SHR                   00130001
//*-------------------------------------------------------------------- 00550000
