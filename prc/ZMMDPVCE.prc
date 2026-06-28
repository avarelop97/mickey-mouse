//ZMMDPVCE PROC                                                         00010000
//*-------------------------------------------------------------------- 00420002
//* PGM ZM4VMWCE QUE GENERA EL ARCHIVO DE CONTROL DE EMISORAS           00420003
//*-------------------------------------------------------------------- 00420004
//PMDCEP01 EXEC PGM=IKJEFT01                                            00420005
//*                                                                     00420006
//ZMMWCEA1 DD DSN=MXCP.ZM.FIX.MIG.CNTL.MEMISOR,                         00420007
//            DISP=(NEW,CATLG,DELETE),                                  00420008
//            UNIT=3390,SPACE=(CYL,(4,2),RLSE),                         00420009
//            DCB=(RECFM=FB,DSORG=PS,LRECL=120,BLKSIZE=0)               00420010
//SYSTSPRT DD SYSOUT=*                                                  00420020
//SYSPRINT DD SYSOUT=*                                                  00420030
//SYSOUT   DD SYSOUT=*                                                  00420040
//SYSDBOUT DD SYSOUT=*                                                  00420050
//SYSABOUT DD DUMMY                                                     00420060
//SYSUDUMP DD DUMMY                                                     00420070
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMDC1T0E),DISP=SHR                   00420080
//*                                                                     01950000
//*-------------------------------------------------------------------- 00740000
