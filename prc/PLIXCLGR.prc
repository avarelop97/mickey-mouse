//PLIXCLG  PROC LKLBDSN='PLI.V2R3M0.PLIBASE'                            00010000
//PLI      EXEC PGM=IEL0AA,PARM='OBJECT,NODECK',REGION=4M               00020000
//SYSPRINT DD  SYSOUT=X                                                 00030000
//SYSLIN   DD  DSN=&&LOADSET,DISP=(MOD,PASS),UNIT=SYSDA,                00040000
//             SPACE=(80,(250,100))                                     00050000
//SYSUT1   DD  DSN=&&SYSUT1,UNIT=SYSDA,                                 00060000
//             SPACE=(1024,(200,50),,CONTIG,ROUND),DCB=BLKSIZE=0        00070000
//LKED     EXEC PGM=IEWL,PARM='XREF,LIST',COND=(9,LT,PLI),REGION=4M     00080000
//SYSLIB   DD  DSN=&LKLBDSN,DISP=SHR                                    00109300
//         DD  DSN=PLI.V2R3M0.PLIBASE,DISP=SHR                          00109400
//         DD  DSN=PLI.V2R3M0.SIBMBASE,DISP=SHR                         00109500
//         DD  DSN=PLI.V2R3M0.SIBMLINK,DISP=SHR                         00109600
//         DD  DSN=PLI.V2R3M0.PLITASK,DISP=SHR                          00109700
//         DD  DSN=PLI.V2R3M0.PLILINK,DISP=SHR                          00109800
//         DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD  DSN=SYS1.DSN230.DSNLINK,DISP=SHR                         00110000
//         DD  DSN=ISP.SISPLOAD,DISP=SHR                                00110200
//SYSLMOD  DD  DSN=&&GOSET(GO),DISP=(MOD,PASS),UNIT=SYSDA,              00111000
//             SPACE=(1024,(50,20,1))                                   00120000
//SYSUT1   DD  DSN=&&SYSUT1,UNIT=SYSDA,SPACE=(1024,(200,20)),           00130000
//             DCB=BLKSIZE=0                                            00140000
//SYSPRINT DD  SYSOUT=X                                                 00150000
//SYSLIN   DD  DSN=&&LOADSET,DISP=(OLD,DELETE)                          00160000
//         DD  DDNAME=SYSIN                                             00170000
//SYSIN    DD  DUMMY                                                    00180000
//GO       EXEC PGM=*.LKED.SYSLMOD,COND=((9,LT,PLI),(9,LT,LKED)),       00190000
//             REGION=4M                                                00200000
//STEPLIB  DD  DSN=PLI.V2R3M0.SIBMLINK,DISP=SHR                         00201000
//SYSPRINT DD  SYSOUT=X                                                 00210000
