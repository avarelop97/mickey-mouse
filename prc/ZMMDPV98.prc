//ZMMDPV98 PROC                                                         00020301
//*                                                                     00032000
//*-------------------------------------------------------------------- 00040000
//* CORRE PGM: ZM4VMW98 RECORRE FECHA                                   00041001
//*-------------------------------------------------------------------- 00060000
//*                                                                     00061000
//PMD98P01 EXEC PGM=IKJEFT01                                            00070001
//*                                                                     00080000
//SYSTSPRT DD SYSOUT=*                                                  00240000
//SYSPRINT DD SYSOUT=*                                                  00250000
//SYSOUT   DD SYSOUT=*                                                  00260000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD98T01),DISP=SHR                   00291001
//*                                                                     00340000
