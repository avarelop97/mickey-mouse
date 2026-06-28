//ZMMDPVA6 PROC                                                         00010000
//*---------------------------------------------------------------------00020000
//*                 ***  LO MANDA EJECUTAR EL BCMDCVA6  ***             00030000
//* ZM4VMW12 - ACTUALIZA ARCHIVO DE PREAVISOS CON E-S-C Y CUENTA DEL MUV00040000
//*---------------------------------------------------------------------00050000
//PMDA6P02 EXEC PGM=IKJEFT01                                            00060000
//ZMMW12A1 DD DSN=MXCP.ZM.FIX.MIG061.PREVISOS,DISP=SHR                  00070001
//ZMMW12A2 DD DSN=MXCP.ZM.FIX.MIG1.PREVISOS.CESC210,                    00080001
//            DISP=(NEW,CATLG,DELETE),                                  00090000
//            SPACE=(CYL,(06,03),RLSE),                                 00100001
//            DCB=(LRECL=210,RECFM=FB,BLKSIZE=0,DSORG=PS),              00110000
//            UNIT=3390                                                 00120000
//ZMMW12A3 DD DSN=MXCP.ZM.FIX.MIG1.PREVISOS.CESC100,                    00130001
//            DISP=(NEW,CATLG,DELETE),                                  00140000
//            SPACE=(CYL,(06,03),RLSE),                                 00150001
//            DCB=(LRECL=100,RECFM=FB,BLKSIZE=0,DSORG=PS),              00160000
//            UNIT=3390                                                 00170000
//SYSTSPRT DD SYSOUT=*                                                  00180000
//SYSPRINT DD SYSOUT=*                                                  00190000
//SYSOUT   DD SYSOUT=*                                                  00200000
//SYSDBOUT DD SYSOUT=*                                                  00210000
//SYSABOUT DD DUMMY                                                     00220000
//SYSUDUMP DD DUMMY                                                     00230000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA6T02),DISP=SHR                   00240001
//*                                                                     00250000
//*---------------------------------------------------------------------00260000
//*                          PGM   ZM4VMW29                             00270000
//*   GRABA REGISTROS DE PREAVISOS EN LA TABLA OPERA                    00280000
//*---------------------------------------------------------------------00290000
//PMDA6P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00300000
//ZMMW29A1 DD DSN=MXCP.ZM.FIX.MIG1.PREVISOS.CESC210,DISP=SHR            00310001
//SYSTSPRT DD SYSOUT=*                                                  00320000
//SYSPRINT DD SYSOUT=*                                                  00330000
//SYSOUT   DD SYSOUT=*                                                  00340000
//SYSDBOUT DD SYSOUT=*                                                  00350000
//SYSABOUT DD DUMMY                                                     00360000
//SYSUDUMP DD DUMMY                                                     00370000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDA6T01),DISP=SHR                   00380001
//*---------------------------------------------------------------------00390000
