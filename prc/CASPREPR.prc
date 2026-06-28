//CASPREPR PROC IEMI=,ISER=,ICUP=,INSER=,INCUP=,ICON=,                  00010000
//         IPROC=,FINI=,ITIPO=,FFIN=,COMP=,                             00020000
//         SALS=,SALU=,CICS=,                                           00030000
//         UZPR=                                                        00040000
//*                                                                     00050000
//********************************************************************* 00060000
//*    RECIBE PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO  OSCT * 00070000
//********************************************************************* 00080000
//*                                                                     00090000
//PASO03  EXEC PGM=VOB942E,DYNAMNBR=20,REGION=4M,                       00100000
//        PARM=('&IEMI','&ISER','&ICUP','&INSER','&INCUP','&ICON',     -00110000
//         '&IPROC','&FINI','&ITIPO','&FFIN','&COMP')                   00120000
//STEPLIB DD DSN=SIVA.BIB.CARGA,DISP=SHR                                00130000
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                00140000
//SYSPRINT DD SYSOUT=&SALS                                              00150000
//SYSOUT   DD SYSOUT=&SALS                                              00160000
//SYSDBOUT DD SYSOUT=&SALS                                              00170000
//SYSABOUT DD DUMMY                                                     00180000
//SYSUDUMP DD DUMMY                                                     00190000
//*                                                                     00200000
//VOB942A1 DD DSN=&&ARCHPAR,                                            00210000
//           DISP=(NEW,PASS),                                           00220000
//           DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),                00230000
//           UNIT=SYSDA,                                                00240000
//           SPACE=(TRK,(1,1),RLSE)                                     00250000
//*                                                                     00260000
//*                                                                     00270000
//*--------------------------------------------------------------       00280000
//* EJECUCION DE PRELIMINAR DE CANJE/SPLIT/REVERSPLIT                   00290000
//* VOBA06E   VALORES MARZO 1990                                        00300000
//*--------------------------------------------------------------       00310000
//PASO02  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)           00320000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//VOBA06A1 DD DSN=&&ARCHPAR,DISP=(OLD,PASS)                             00340000
//VOBA06R1 DD SYSOUT=(O,&CICS,&UZPR)                                    00350000
//VOBA06RX DD SYSOUT=(&SALU,&CICS,&UZPR)                                00360000
//FOLCTRL  DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                          00370000
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                00380000
//SYSPRINT DD SYSOUT=&SALS                                              00390000
//SYSOUT   DD SYSOUT=&SALS                                              00400000
//SYSDBOUT DD SYSOUT=&SALS                                              00410000
//SYSABOUT DD SYSOUT=&SALS                                              00420000
//SYSUDUMP DD DUMMY                                                     00430000
//SYSTSIN  DD DSN=SIVA.CARDS(PARAMA3),DISP=SHR                          00440000
//*-------------------------------------------------------------------- 00450000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00460000
//*-------------------------------------------------------------------- 00470000
//PASO01   EXEC PGM=MAILOPER,COND=(4,GE,PASO02),                        00480000
//         PARM=('/ATENCION.AVISAR A PRODUCCION QUE PROCESO ',          00490000
//             'SIVAXCJ1(CASPREPR)TERMINO MAL.CONTESTAR SI',            00500000
//             'PARA TERMINAR')                                         00510000
