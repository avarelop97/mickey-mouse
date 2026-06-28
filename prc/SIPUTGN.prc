//SIPUTGN PROC
//* ----                                                                00010000
//*     PUT DE LA APLICACION                                            00030000
//* ----                                                                00060000
//PUT      EXEC PGM=DCGBINIT,REGION=4M,COND=(4,LT)                      00170000
//STEPLIB  DD DSN=CSP330.AELOAD,DISP=SHR                                00180009
//         DD DSN=CSP330.ADLOAD,DISP=SHR                                00190009
//DCAHECD  DD DSN=CSP330V.FZEMSG,DISP=SHR                               00200010
//DCADZGD  DD DSN=CSP330V.DZGMSG,DISP=SHR                               00210010
//UTILALF  DD DSN=CSP330V.UTILALF.ALF,DISP=SHR                          00220010
//TRGTALF  DD DSN=&BIBCGA,DISP=SHR                                      00230002
//*ALFA     DD DSN=SIVA.OTR.FIX.DB2P.ALFPT80,DISP=SHR                   00240000
//ALFA     DD DSN=&&CSPDB2P,                                            00290000
//            DISP=(NEW,PASS),                                          00300000
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS),               00310000
//            UNIT=SYSDA,                                               00320000
//            SPACE=(TRK,(10,5),RLSE)                                   00330000
//ALFP     DD DSN=&&PUTNORM,                                            00290000
//            DISP=(NEW,PASS),                                          00300000
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS),               00310000
//            UNIT=SYSDA,                                               00320000
//            SPACE=(TRK,(10,5),RLSE)                                   00330000
//EZECOUT  DD SYSOUT=*,DCB=(RECFM=FBA,LRECL=121,BLKSIZE=0)              00350000
//EZECIN   DD DUMMY                                                     00360000
//EZEPRINT DD SYSOUT=*,DCB=(RECFM=VBA,LRECL=133,BLKSIZE=0)              00370000
//SYSPRINT DD SYSOUT=*                                                  00380000
//ALFL     DD SYSOUT=*,DCB=(RECFM=FBA,LRECL=121,BLKSIZE=0)              00390000
//DCAPARM  DD DSN=SIVA.PARMXXN(PARAMPUT),DISP=SHR                       00400000
//ALFC     DD DUMMY                                                     00410000
//COPYPUT  EXEC PGM=ICEGENER,COND=(4,LT)                                00450000
//SYSPRINT DD SYSOUT=*                                                  00460000
//*SYSUT1   DD DSN=SIVA.OTR.FIX.DB2P.ALFPT80,DISP=SHR                   00470000
//SYSUT1   DD DSN=&&CSPDB2P,DISP=SHR                                    00470000
//SYSUT2   DD DSN=&&COPYCSP,                                            00480002
//            DISP=(NEW,PASS),                                          00300000
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS),               00310000
//            UNIT=SYSDA,                                               00320000
//            SPACE=(TRK,(10,5),RLSE)                                   00330000
//SYSIN    DD DUMMY                                                     00490000
//ASMH   EXEC  PGM=ASMA90,PARM='OBJECT,NOALIGN,LIST',REGION=4M,         00530000
//       COND=(4,LT)                                                    00540000
//SYSLIB   DD  DSN=SYS1.MACLIB,DISP=SHR                                 00550000
//         DD  DSN=CSP330.CSPDB2,DISP=SHR                               00560009
//SYSUT1   DD  UNIT=(SYSDA,SEP=SYSLIB),SPACE=(CYL,(10,5))               00570000
//SYSPUNCH DD  DUMMY                                                    00580000
//SYSPRINT DD  SYSOUT=*,DCB=(BLKSIZE=0)                                 00590000
//SYSOUT   DD  SYSOUT=*
//SYSCOUNT DD  SYSOUT=*
//SYSLIN   DD  DISP=(,PASS),UNIT=SYSDA,SPACE=(CYL,(5,5,0),RLSE),        00600000
//             DCB=(BLKSIZE=0),DSN=&&OBJSET                             00610000
//SYSIN    DD  DSN=&&COPYCSP,DISP=SHR                                   00620002
//PC      EXEC PGM=DSNHPC,PARM='HOST(ASM),NOSOURCE',COND=(4,LT),        00660000
//        REGION=4M                                                     00670000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//DBRMLIB  DD  DSN=&DBRMLIB(&APLICG.&AMB),DISP=SHR                      00690002
//SYSCIN   DD  DSN=&&FUENTE,                                            00700000
//             DISP=(,PASS),UNIT=SYSDA,SPACE=(CYL,(5,5,0),RLSE),        00710000
//             DCB=(BLKSIZE=0)                                          00720000
//SYSLIB   DD  DSN=CSP330.CSPDB2,DISP=SHR                               00730009
//SYSPRINT DD  SYSOUT=X                                                 00750000
//SYSTERM  DD  SYSOUT=X                                                 00760000
//SYSUDUMP DD DUMMY                                                     00770000
//SYSUT1   DD  SPACE=(800,(500,500),,,ROUND),UNIT=SYSDA                 00780000
//SYSIN   DD DSN=&&OBJSET,DISP=(OLD,DELETE)                             00790000
//ASM1   EXEC  PGM=ASMA90,PARM='OBJECT,NOALIGN,LIST',REGION=4M,         00830000
//           COND=(4,LT)                                                00840000
//SYSLIB   DD  DSN=SYS1.MACLIB,DISP=SHR                                 00850000
//         DD  DSN=CSP330.CSPDB2,DISP=SHR                               00860009
//SYSIN    DD  DSN=&&FUENTE,DISP=(OLD,DELETE)                           00870000
//SYSUT1   DD  UNIT=(SYSDA,SEP=SYSLIB),SPACE=(CYL,(10,5))               00880000
//SYSPUNCH DD  DUMMY                                                    00890000
//SYSPRINT DD  SYSOUT=*,DCB=(BLKSIZE=0)                                 00900000
//SYSLIN   DD  DISP=(,PASS),UNIT=SYSDA,SPACE=(CYL,(5,5,0)),             00910000
//             DCB=(BLKSIZE=0),DSN=&&LOADSET1                           00920000
//LKED    EXEC PGM=IEWL,PARM='LIST,XREF,LET',REGION=4M,                 00960000
//             COND=(4,LT)                                              00970000
//SYSLIB   DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD  DSN=CICSTS.V130.SYSCB.SDFHLOAD,DISP=SHR                  00980007
//SYSLIN   DD  DSN=&&LOADSET1,DISP=(OLD,DELETE)                         01000000
//         DD  DDNAME=SYSIN                                             01010000
//SYSLMOD  DD  DSN=&CARGA(&APLICG.&AMB),DISP=SHR                        01020002
//SYSPRINT DD  SYSOUT=*                                                 01030000
//SYSUDUMP DD DUMMY                                                     01040000
//SYSUT1   DD  SPACE=(1024,(50,50)),UNIT=SYSDA                          01050000
//SYSIN    DD  DSN=SIVA.CARDS(NPUTGENB),DISP=SHR                        01060002
