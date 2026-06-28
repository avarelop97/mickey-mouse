//ZMMDPV32 PROC                                                         00020301
//*---------------------------------------------------------------------00020400
//*                  PROC LO MANDA EJECUTAR BCMDCV32                    00020501
//*                          PGM   ZM4VMW23                             00020601
//*  PROGRAMA QUE GRABA REGISTROS DE POSMUV EN TABLA ZMDTMG1 (OPERA)    00020701
//*---------------------------------------------------------------------00020800
//*                                                                     00020900
//PMD32P03 EXEC PGM=IKJEFT01                                            00021001
//*                                                                     00022000
//ZMMW23A1 DD DSN=MXCP.ZM.FIX.MIG.POSMUV.CESC550,DISP=SHR               00025001
//ZMMW23A2 DD DSN=MXCP.ZM.FIX.MIG.FALTAN.L550,                          00026001
//            DISP=(NEW,CATLG,DELETE),                                  00027000
//            UNIT=3390,SPACE=(CYL,(10,05),RLSE),                       00028000
//            DCB=(RECFM=FB,LRECL=550,BLKSIZE=0,DSORG=PS)               00029001
//*                                                                     00032000
//SYSTSPRT DD SYSOUT=*                                                  00034000
//SYSPRINT DD SYSOUT=*                                                  00035000
//SYSOUT   DD SYSOUT=*                                                  00036000
//SYSDBOUT DD SYSOUT=*                                                  00037000
//SYSABOUT DD DUMMY                                                     00038000
//SYSUDUMP DD DUMMY                                                     00039000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD32T03),DISP=SHR                   00039101
//*                                                                     00039600
//*---------------------------------------------------------------------00039700
//*  PROGRAMA ZM4VMW24 CARGA CARTERA                                    00039801
//*---------------------------------------------------------------------00039900
//PMD32P02 EXEC PGM=IKJEFT01,COND=(4,LT)                                00040001
//*                                                                     00040100
//SYSTSPRT DD SYSOUT=*                                                  00140000
//SYSPRINT DD SYSOUT=*                                                  00150000
//SYSOUT   DD SYSOUT=*                                                  00160000
//SYSDBOUT DD SYSOUT=*                                                  00170000
//SYSABOUT DD DUMMY                                                     00180000
//SYSUDUMP DD DUMMY                                                     00190000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD32T02),DISP=SHR                   00200001
//*                                                                     00210000
//*-------------------------------------------------------------------- 00211000
//* OBTIENE ARCHIVO DE TABLAS PARA COMPARAR CON LA INF. PGM ZM4VMW32    00212001
//*-------------------------------------------------------------------- 00213000
//PMD32P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                00214001
//*                                                                     00215000
//ZMMW32A1 DD DSN=MXCP.ZM.FIX.MIG.POSMUV.COMPARA,                       00219001
//            DISP=(NEW,CATLG,DELETE),                                  00219100
//            UNIT=3390,                                                00219200
//            SPACE=(CYL,(10,05),RLSE),                                 00219300
//            DCB=(RECFM=FB,LRECL=550,BLKSIZE=0,DSORG=PS)               00219401
//*                                                                     00219500
//SYSTSPRT DD SYSOUT=*                                                  00330000
//SYSPRINT DD SYSOUT=*                                                  00340000
//SYSOUT   DD SYSOUT=*                                                  00350000
//SYSDBOUT DD SYSOUT=*                                                  00360000
//SYSABOUT DD DUMMY                                                     00370000
//SYSUDUMP DD DUMMY                                                     00380000
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMD32T01),DISP=SHR                   00390001
//*                                                                     00400000
