//CARGOPT PROC                                                          00001000
//********************************************************************  00040000
//* INFORMACION DE CARGOPT                                      OSCT *  00050000
//********************************************************************  00060000
//*                                                                     00050000
//PASO02  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M           00070000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//*                                                                     00181000
//FOLCTRL  DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                          00240000
//*                                                                     00181000
//VOBF59R1  DD SYSOUT=(&SALU,,&CICS)                                    00240000
//*                                                                     00181000
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                00230000
//SYSPRINT DD SYSOUT=&SALS                                              00240000
//SYSOUT   DD SYSOUT=&SALS                                              00250000
//SYSDBOUT DD SYSOUT=&SALS                                              00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=SIVA.CARDS(CARDF59D),DISP=SHR                         00300000
//*                                                                     00310000
