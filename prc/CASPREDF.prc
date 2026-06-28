//CASPREDF PROC IEMI=,ISER=,ICUP=,INSER=,INCUP=,ICON=,                  00010000
//         IPROC=,FINI=,ITIPO=,FFIN=,COMP=,                             00020000
//         SALS=,SALU=,CICS=,                                           00030000
//         UPDR=,UPOL=,USAT=,UZPR=,UTIJ=,UCDJ=,UHER=,UMTY=,UTOR=,       00040000
//         UCHI=,UMAZ=,UKRO=,USLP=,UGUA=,UZAC=,UJER=,ULEO=,UMOR=,       00050000
//         UAGS=,UTAM=,UVER=,UJAL=,UMER=,UTOL=,UPUE=,                   00060000
//         UMMP=,USAN=,UZZZ=,UCUL=,UMMU=                                00070000
//*                                                                     00080000
//********************************************************************* 00090000
//*    RECIBE PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO  OSCT * 00100000
//********************************************************************* 00110000
//*                                                                     00120000
//PASO04  EXEC PGM=VOB942E,DYNAMNBR=20,REGION=4M,                       00130000
//        PARM=('&IEMI','&ISER','&ICUP','&INSER','&INCUP','&ICON',     -00140000
//         '&IPROC','&FINI','&ITIPO','&FFIN','&COMP')                   00150000
//STEPLIB DD DSN=SIVA.BIB.CARGA,DISP=SHR                                00160000
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                00170000
//SYSPRINT DD SYSOUT=&SALS                                              00180000
//SYSOUT   DD SYSOUT=&SALS                                              00190000
//SYSDBOUT DD SYSOUT=&SALS                                              00200000
//SYSABOUT DD DUMMY                                                     00210000
//SYSUDUMP DD DUMMY                                                     00220000
//*                                                                     00230000
//VOB942A1 DD DSN=&&ARCHPAR,                                            00240000
//           DISP=(NEW,PASS),                                           00250000
//           DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),                00260000
//           UNIT=SYSDA,                                                00270000
//           SPACE=(TRK,(1,1),RLSE)                                     00280000
//*                                                                     00290000
//*                                                                     00300000
//*--------------------------------------------------------------       00310000
//* EJECUCION DE PRELIMINAR DE CANJE/SPLIT/REVERSPLIT                   00320000
//* VOBA06E   VALORES MARZO 1990                                        00330000
//*--------------------------------------------------------------       00340000
//PASO03  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)           00350000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//VOBA06A1 DD DSN=&&ARCHPAR,DISP=(OLD,PASS)                             00370000
//VOBA06R1 DD SYSOUT=(O,&CICS,TV20)                                     00380000
//FOLCTRL  DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                          00390000
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                00400000
//SYSPRINT DD SYSOUT=&SALS                                              00410000
//SYSOUT   DD SYSOUT=&SALS                                              00420000
//SYSDBOUT DD SYSOUT=&SALS                                              00430000
//SYSABOUT DD SYSOUT=&SALS                                              00440000
//SYSUDUMP DD DUMMY                                                     00450000
//SYSTSIN  DD DSN=SIVA.CARDS(PARAMA3),DISP=SHR                          00460000
//*-------------------------------------------------------------------  00470000
//*                                                                     00480000
//*       MERCADO DE CAPITALES (15/JULIO/89)                            00490000
//*       REPORTE DE LAS ORDENES CANCELADAS POR CORTE DE CUPON          00500000
//*                                                                     00510000
//*-------------------------------------------------------------------  00520000
//PASO02   EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00530000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//VIB431A1 DD DSN=&&ARCHPAR,DISP=(OLD,PASS)                             00550000
//PDR431R1 DD SYSOUT=(O,&CICS,&UPDR)                                    00560000
//POL431R1 DD SYSOUT=(O,&CICS,&UPOL)                                    00570000
//SAT431R1 DD SYSOUT=(O,&CICS,&USAT)                                    00580000
//ZPR431R1 DD SYSOUT=(V,&CICS,&UZPR)                                    00590000
//TIJ431R1 DD SYSOUT=(O,&CICS,&UTIJ)                                    00600000
//CDJ431R1 DD SYSOUT=(O,&CICS,&UCDJ)                                    00610000
//HER431R1 DD SYSOUT=(O,&CICS,&UHER)                                    00620000
//MTY431R1 DD SYSOUT=(O,&CICS,&UMTY)                                    00630000
//TOR431R1 DD SYSOUT=(O,&CICS,&UTOR)                                    00640000
//CHI431R1 DD SYSOUT=(O,&CICS,&UCHI)                                    00650000
//MAZ431R1 DD SYSOUT=(O,&CICS,&UMAZ)                                    00660000
//KRO431R1 DD SYSOUT=(O,&CICS,&UKRO)                                    00670000
//SLP431R1 DD SYSOUT=(O,&CICS,&USLP)                                    00680000
//GUA431R1 DD SYSOUT=(O,&CICS,&UGUA)                                    00690000
//ZAC431R1 DD SYSOUT=(O,&CICS,&UZAC)                                    00700000
//JER431R1 DD SYSOUT=(O,&CICS,&UJER)                                    00710000
//LEO431R1 DD SYSOUT=(O,&CICS,&ULEO)                                    00720000
//MOR431R1 DD SYSOUT=(O,&CICS,&UMOR)                                    00730000
//AGS431R1 DD SYSOUT=(O,&CICS,&UAGS)                                    00740000
//TAM431R1 DD SYSOUT=(O,&CICS,&UTAM)                                    00750000
//VER431R1 DD SYSOUT=(O,&CICS,&UVER)                                    00760000
//JAL431R1 DD SYSOUT=(O,&CICS,&UJAL)                                    00770000
//MER431R1 DD SYSOUT=(O,&CICS,&UMER)                                    00780000
//TOL431R1 DD SYSOUT=(O,&CICS,&UTOL)                                    00790000
//PUE431R1 DD SYSOUT=(O,&CICS,&UPUE)                                    00800000
//MMP431R1 DD SYSOUT=(O,&CICS,&UMMP)                                    00810000
//SAN431R1 DD SYSOUT=(O,&CICS,&USAQ)                                    00820000
//ZZZ431R1 DD SYSOUT=(&SALU,&CICS,&UZZZ)                                00830000
//CUL431R1 DD SYSOUT=(O,&CICS,&UCUL)                                    00840000
//MMU431R1 DD SYSOUT=(O,&CICS,&UMMU)                                    00850000
//VAL431R2 DD SYSOUT=(O,&CICS,TP15)                                     00860000
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                00870000
//SYSPRINT DD SYSOUT=&SALS                                              00880000
//SYSOUT   DD SYSOUT=&SALS                                              00890000
//SYSDBOUT DD SYSOUT=&SALS                                              00900000
//SYSABOUT DD DUMMY                                                     00910000
//SYSUDUMP DD DUMMY                                                     00920000
//SYSTSIN  DD DSN=SIVA.CARDS(PARAM29),DISP=SHR                          00930000
//*-------------------------------------------------------------------- 00940000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          00950000
//*-------------------------------------------------------------------- 00960000
//PASO01   EXEC PGM=MAILOPER,COND=(4,GE,PASO03),                        00970000
//         PARM=('/ATENCION.AVISAR A PRODUCCION QUE PROCESO ',          00980000
//             'SIVAXCJ2(CASPREDF)TERMINO MAL.CONTESTAR SI',            00990000
//             'PARA TERMINAR')                                         01000000
