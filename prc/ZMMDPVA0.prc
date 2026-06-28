//ZMMDPVA0 PROC                                                         00010000
//*-------------------------------------------------------------------- 00020000
//*                 ***  LO MANDA EJECUTAR EL BCMDCVA0  ***             00030000
//* CORRE PGM: ZM4VMW50 BORRA TABLAS DE MIGRACION                       00040000
//*-------------------------------------------------------------------- 00050000
//PMDA0P01 EXEC PGM=IKJEFT01                                            00060000
//SYSTSPRT DD SYSOUT=*                                                  00070000
//SYSPRINT DD SYSOUT=*                                                  00080000
//SYSOUT   DD SYSOUT=*                                                  00090000
//SYSDBOUT DD SYSOUT=*                                                  00100000
//SYSABOUT DD DUMMY                                                     00110000
//SYSUDUMP DD DUMMY                                                     00120000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA0T01),DISP=SHR                   00130001
//*-------------------------------------------------------------------- 00140000
