//FDE4000 PROC                                                          00000100
//*---------------------------------------------------------------------00000200
//FDE4002  EXEC PGM=SYNCSORT,COND=(4,LT)                                00000300
//SORTIN   DD  DSN=SIVA.SIN.FIX.ALTAM.CLIENTES.D&FEC.,DISP=SHR          00000400
//SORTOUT  DD  DSN=SIVA.SIN.FIX.ALTAM.CLIENTES.SORT,                    00000500
//             DISP=(NEW,CATLG,CATLG),                                  00000600
//             DCB=(DSORG=PS,LRECL=355,RECFM=FB),                       00000700
//             SPACE=(CYL,(1,5),RLSE),UNIT=3390                         00000800
//SYSOUT   DD  SYSOUT=*                                                 00000900
//SYSPRINT DD  SYSOUT=*                                                 00001000
//SYSTSPRT DD  SYSOUT=*                                                 00001100
//SYSDBOUT DD  SYSOUT=*                                                 00001200
//SYSABOUT DD  SYSOUT=*                                                 00001300
//SYSUDUMP DD  DUMMY                                                    00001400
//SYSIN    DD  DSN=SIVA.CARDS(FDE4002),DISP=SHR                         00001500
//*******************************************************************   00001600
//*                  BAJA DE CONTRATOS                                  00001700
//********************************************************************* 00001800
//FDE4001 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00001900
//        TIME=100                                                      00002000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00002100
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00002200
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR                               00002300
//*                                                                     00002400
//VOB292R1 DD SYSOUT=X                                                  00002500
//CTEALTB  DD DSN=SIVA.SIN.FIX.ALTAM.CLIENTES.SORT,DISP=SHR             00002600
//*                                                                     00002700
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420                                 00002800
//SYSPRINT DD SYSOUT=X                                                  00002900
//SYSOUT   DD SYSOUT=X                                                  00003000
//SYSDBOUT DD SYSOUT=X                                                  00003100
//SYSABOUT DD DUMMY                                                     00003200
//SYSUDUMP DD DUMMY                                                     00003300
//SYSTSIN  DD DSN=SIVA.CARDS(FDE4001),DISP=SHR                          00003400
//*                                                                     00003500
