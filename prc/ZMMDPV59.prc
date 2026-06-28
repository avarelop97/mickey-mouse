//ZMMDPV59 PROC                                                         00020301
//*---------------------------------------------------------------------00020400
//*                  PROC LO MANDA EJECUTAR BCMDCV59                    00020501
//*                            PGM  ZM4VMW59                            00020601
//*                       VALIDACION DE PREAVISOS                       00020701
//*---------------------------------------------------------------------00020800
//*                                                                     00020900
//PMD59P01 EXEC PGM=IKJEFT01                                            00021001
//*                                                                     00022000
//ZMMW59A1 DD DSN=MXCP.ZM.FIX.VALIDA.PREVISOS,                          00024002
//            DISP=(NEW,CATLG,DELETE),                                  00025002
//            UNIT=3390,                                                00026002
//            SPACE=(CYL,(10,05),RLSE),                                 00027002
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS)               00028002
//*                                                                     00032000
//SYSTSPRT DD SYSOUT=*                                                  00034000
//SYSPRINT DD SYSOUT=*                                                  00035000
//SYSOUT   DD SYSOUT=*                                                  00036000
//SYSDBOUT DD SYSOUT=*                                                  00037000
//SYSABOUT DD DUMMY                                                     00038000
//SYSUDUMP DD DUMMY                                                     00039000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD59T01),DISP=SHR                   00039101
//*                                                                     00039600
