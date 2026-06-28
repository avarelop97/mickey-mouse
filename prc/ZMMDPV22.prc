//ZMMDPV22 PROC                                                         00020301
//*                                                                     00032000
//*-------------------------------------------------------------------- 00040000
//* CORRE PGM:ZM4VMW27 (MOVHIS) CARGA OPERA                             00041001
//*-------------------------------------------------------------------- 00060000
//*                                                                     00061000
//PMD22P01 EXEC PGM=IKJEFT01                                            00070003
//*                                                                     00080000
//ZMMW27A1 DD DSN=MXCP.ZM.FIX.MIG.MOVHIS.L550PG28,DISP=SHR              00090001
//ZMMW27A2 DD DSN=MXCP.ZM.FIX.MIG.MOVHIS.GRACART,                       00100001
//            DISP=(NEW,CATLG,DELETE),                                  00110001
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),                       00111001
//            DCB=(RECFM=FB,LRECL=550,BLKSIZE=0,DSORG=PS)               00112001
//ZMMW27A3 DD DSN=MXCP.ZM.FIX.MIG.MOVHIS.L150,                          00113001
//            DISP=(NEW,CATLG,DELETE),                                  00114001
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),                       00115001
//            DCB=(RECFM=FB,LRECL=150,BLKSIZE=0,DSORG=PS)               00116001
//*                                                                     00119100
//SYSTSPRT DD SYSOUT=*                                                  00240000
//SYSPRINT DD SYSOUT=*                                                  00250000
//SYSOUT   DD SYSOUT=*                                                  00260000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD22T01),DISP=SHR                   00291001
//*                                                                     00340000
