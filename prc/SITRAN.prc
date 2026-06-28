//SITRAN  PROC
//*----                                                                 00010000
//*    TRANSFER MIEMBRO OBJETO A SEGUNDA ALF                            00030000
//*----                                                                 00060000
//TRANSFER EXEC PGM=DCGBINIT,REGION=4M
//STEPLIB  DD DSN=SYSC.CSP330.AELOAD,DISP=SHR                           00180009
//DCADZGD  DD DSN=SYSC.CSP330.DZGMSG,DISP=SHR                           00210010
//UTILALF  DD DSN=SYSC.CSP330.UTILALF.ALF,DISP=SHR                      00220010
//TRGTALF  DD DSN=&CGAORIG,DISP=SHR                                     00970000
//SECNALF  DD DSN=&CGADEST,DISP=SHR                                     00230002
//EZEPRINT DD SYSOUT=*,DCB=(RECFM=VBA,LRECL=650,BLKSIZE=0)              00370000
//SYSPRINT DD SYSOUT=*                                                  00380000
//SYSOUT   DD SYSOUT=*
//SYSCOUNT DD SYSOUT=*
//ALFL     DD SYSOUT=*,DCB=(RECFM=FBA,LRECL=121,BLKSIZE=0)              00390000
//DCAPARM  DD DUMMY                                                     00400000
//ALFC     DD DUMMY                                                     00410000
