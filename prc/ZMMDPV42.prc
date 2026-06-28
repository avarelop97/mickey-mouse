//ZMMDPV42 PROC                                                         00020301
//*---------------------------------------------------------------------00020400
//*                  PROC LO MANDA EJECUTAR BCMDCV42                    00020501
//*                          PGM   ZM4VMW26                             00020601
//*  PROGRAMA QUE GRABA REGISTROS DE PLAZOS EN TABLA ZMDT610            00020701
//*---------------------------------------------------------------------00020800
//*                                                                     00020900
//PMD42P02 EXEC PGM=IKJEFT01                                            00021003
//*                                                                     00022000
//ZMMW26A1 DD DSN=MXCP.ZM.FIX.MIG.PLAZOS.CESC300,DISP=SHR               00025003
//ZMMW26A2 DD DSN=MXCP.ZM.FIX.MIG.PLAZOS.NOPROC,                        00026003
//            DISP=(NEW,CATLG,DELETE),                                  00027000
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),                       00028000
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS)               00029003
//ZMMW26A3 DD DSN=MXCP.ZM.FIX.MIG.PLAZOS.L152,                          00030003
//            DISP=(NEW,CATLG,DELETE),                                  00031001
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),                       00031101
//            DCB=(RECFM=FB,LRECL=152,BLKSIZE=0,DSORG=PS)               00031203
//*                                                                     00032000
//SYSTSPRT DD SYSOUT=*                                                  00034000
//SYSPRINT DD SYSOUT=*                                                  00035000
//SYSOUT   DD SYSOUT=*                                                  00036000
//SYSDBOUT DD SYSOUT=*                                                  00037000
//SYSABOUT DD DUMMY                                                     00038000
//SYSUDUMP DD DUMMY                                                     00039000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD42T02),DISP=SHR                   00039103
//*                                                                     00039600
//*---------------------------------------------------------------------00039700
//*  PROGRAMA ZM4VMW02 CARGA CARTERA Y REPORTO                          00039803
//*---------------------------------------------------------------------00039900
//PMD42P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040003
//*                                                                     00040100
//ZMMW02A1 DD DSN=MXCP.ZM.FIX.MIG.PLAZOS.CESC300,DISP=SHR               00040203
//ZMMW02A2 DD DSN=MXCP.ZM.FIX.MIG.PLAZOS.NOPROC,                        00040303
//            DISP=(NEW,CATLG,DELETE),                                  00040403
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),                       00040503
//            DCB=(RECFM=FB,LRECL=300,BLKSIZE=0,DSORG=PS)               00040603
//ZMMW02A3 DD DSN=MXCP.ZM.FIX.MIG.PLAZOS.SIPROC,                        00040703
//            DISP=(NEW,CATLG,DELETE),                                  00040803
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),                       00040903
//            DCB=(RECFM=FB,LRECL=166,BLKSIZE=0,DSORG=PS)               00041003
//*                                                                     00219500
//SYSTSPRT DD SYSOUT=*                                                  00330000
//SYSPRINT DD SYSOUT=*                                                  00340000
//SYSOUT   DD SYSOUT=*                                                  00350000
//SYSDBOUT DD SYSOUT=*                                                  00360000
//SYSABOUT DD DUMMY                                                     00370000
//SYSUDUMP DD DUMMY                                                     00380000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD42T01),DISP=SHR                   00390003
//*                                                                     00400000
