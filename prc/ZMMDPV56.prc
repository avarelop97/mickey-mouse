//ZMMDPV56 PROC                                                         00020300
//*---------------------------------------------------------------------00020400
//*                  PROC LO MANDA EJECUTAR BCMDCV56                    00020500
//*                          PGM  ZM4VMW56                              00020600
//*                       VALIDACION DE CAPAS                           00020700
//*---------------------------------------------------------------------00020800
//*                                                                     00020900
//PMD56P01 EXEC PGM=IKJEFT01                                            00021000
//*                                                                     00022000
//ZMMW56A1 DD DSN=MXCP.ZM.FIX.MIG.VALIDA.CAPAS,                         00024001
//            DISP=(NEW,CATLG,DELETE),                                  00025001
//            UNIT=3390,                                                00026001
//            SPACE=(CYL,(10,05),RLSE),                                 00027001
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS)               00028001
//*                                                                     00032000
//SYSTSPRT DD SYSOUT=*                                                  00034000
//SYSPRINT DD SYSOUT=*                                                  00035000
//SYSOUT   DD SYSOUT=*                                                  00036000
//SYSDBOUT DD SYSOUT=*                                                  00037000
//SYSABOUT DD DUMMY                                                     00038000
//SYSUDUMP DD DUMMY                                                     00039000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD56T01),DISP=SHR                   00039100
//*                                                                     00039600
