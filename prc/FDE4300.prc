//FDE4300 PROC                                                          00000100
//*------------------------------------------------------------------*  00000200
//*                    SORT DEL ARCHIVO DE MOVTOS               OSCT *  00000300
//*------------------------------------------------------------------*  00000400
//FDE4302  EXEC PGM=SYNCSORT,COND=(4,LT)                                00000500
//SORTIN   DD  DSN=SIVA.SIN.FIX.F&FEC..FONDO3,DISP=SHR                  00000600
//SORTOUT  DD  DSN=SIVA.SIN.FIX.PROMEX.OPER.SORT,                       00000700
//             DISP=(NEW,CATLG,CATLG),                                  00000800
//             DCB=(DSORG=PS,LRECL=187,RECFM=FB),                       00000900
//             SPACE=(CYL,(1,5),RLSE),UNIT=3390                         00001000
//SYSOUT   DD  SYSOUT=*                                                 00001100
//SYSPRINT DD  SYSOUT=*                                                 00001200
//SYSTSPRT DD  SYSOUT=*                                                 00001300
//SYSDBOUT DD  SYSOUT=*                                                 00001400
//SYSABOUT DD  SYSOUT=*                                                 00001500
//SYSUDUMP DD  DUMMY                                                    00001600
//SYSIN    DD  DSN=SIVA.CARDS(FDE4302),DISP=SHR                         00001700
//*                                                                     00001800
//*------------------------------------------------------------------*  00001900
//*         GENERA MOVIMIENTOS DE SOC DE INV DE PROMEX               *  00002000
//*------------------------------------------------------------------*  00002100
//FDE4301  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00002200
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00002300
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00002400
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR                               00002500
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00002600
//SYSPRINT DD SYSOUT=*                                                  00002700
//FOLCTRL  DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                          00002800
//CPROMEX  DD DSN=SIVA.SIN.FIX.PROMEX.OPER.SORT,DISP=SHR                00002900
//SYSOUT   DD SYSOUT=*                                                  00003000
//SYSDBOUT DD SYSOUT=*                                                  00003100
//SYSABOUT DD DUMMY                                                     00003200
//SYSUDUMP DD DUMMY                                                     00003300
//SYSTSIN  DD DSN=SIVA.CARDS(FDE4301),DISP=SHR                          00003400
//*                                                                     00003500
