//CAE1700 PROC                                                          00000100
//**********************************************************************00000200
//*  PROGRAMA:    SORT                                                  00000300
//*  OBJETIVO:    ORDENA EL ARCHIVO LOG POR FSIST,ITRANSS DESC.         00000400
//*  PASO    :    PASO02                                                00000500
//**********************************************************************00000600
//*                                                                     00000700
//CAE1702   EXEC PGM=SYNCSORT,COND=(0,NE)                               00000800
//SORTIN    DD DSN=SIVA.MDC.WKF.CAPITAL.CONTING,DISP=SHR                00000900
//SORTOUT   DD DSN=SIVA.MDC.WKF.CAPITAL.CONTING,DISP=SHR                00001000
//SYSPRINT  DD SYSOUT=*                                                 00001100
//SYSOUT    DD SYSOUT=*                                                 00001200
//SYSIN     DD DSN=SIVA.CARDS(CAE1702),DISP=SHR                         00001300
//**********************************************************************00001400
//*  PROGRAMA:    VOBT06E                                               00001500
//*  OBJETIVO:    LEE ARCHIVO LOG E INSERTA EN AMCLOG                   00001600
//*  PASO    :    PASO01                                                00001700
//**********************************************************************00001800
//CAE1701   EXEC PGM=IKJEFT01,DYNAMNBR=20,                              00001900
//          REGION=4M,COND=(0,NE)                                       00002000
//VOBT06A1  DD DSN=*.CAE1702.SORTOUT,                                   00002100
//          DISP=SHR                                                    00002200
//SYSTSPRT  DD SYSOUT=X,DCB=BLKSIZE=0                                   00002300
//SYSPRINT  DD SYSOUT=X                                                 00002400
//SYSOUT    DD SYSOUT=X                                                 00002500
//SYSDBOUT  DD SYSOUT=X                                                 00002600
//SYSABOUT  DD DUMMY                                                    00002700
//SYSUDUMP  DD DUMMY                                                    00002800
//*                                                                     00002900
//SYSTSIN   DD DSN=SIVA.CARDS(CAE1701),DISP=SHR                         00003000
