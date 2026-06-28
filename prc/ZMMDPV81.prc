//ZMMDPV81 PROC                                                         00010000
//*-------------------------------------------------------------------- 00010100
//*                 ***  LO MANDA EJECUTAR EL BCMDCV81  ***             00010200
//* CORRE PGM: ZM4VMW81 BORRA TABLA MDDCST                              00010300
//*-------------------------------------------------------------------- 00010400
//PMD81P01 EXEC PGM=IKJEFT01                                            00010500
//SYSTSPRT DD SYSOUT=*                                                  00010600
//SYSPRINT DD SYSOUT=*                                                  00010700
//SYSOUT   DD SYSOUT=*                                                  00010800
//SYSDBOUT DD SYSOUT=*                                                  00010900
//SYSABOUT DD DUMMY                                                     00011000
//SYSUDUMP DD DUMMY                                                     00011100
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD81T01),DISP=SHR                   00011200
//*-------------------------------------------------------------------- 00011300
