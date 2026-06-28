//CCUPRFDF PROC IEMI=,ISER=,ICUP=,INSER=,INCUP=,ICON=,                  00010000
//         IPROC=,FINI=,ITIPO=,FFIN=,COMP=,                             00020000
//         SALS=,SALU=,CICS=,                                           00030000
//         UPDR=,UPOL=,USAT=,UZPR=,UTIJ=,UCDJ=,UHER=,UMTY=,UTOR=,       00040000
//         UCHI=,UMAZ=,UKRO=,USLP=,UGUA=,UZAC=,UJER=,ULEO=,UMOR=,       00050000
//         UAGS=,UTAM=,UVER=,UJAL=,UMER=,UTOL=,UPUE=,                   00060000
//         UMMP=,USAN=,UZZZ=,UCUL=,UMMU=                                00070000
//*                                                                     00080000
//***************************************************************       00090000
//*                       -  VNBE11D -                                  00100000
//* OBJETIVO : INICIALIZA EVENTO 'JSH' PARA EVITAR PROBLEMAS DE         00110000
//*            CONTENSION CON EL JOB PAAMDD40.             OSCT         00120000
//***************************************************************       00130000
//PASO07  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4096K,TIME=100           00140000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420                                00160000
//SYSPRINT DD  SYSOUT=*                                                 00170000
//SYSOUT   DD  SYSOUT=*                                                 00180000
//SYSDBOUT DD  SYSOUT=*                                                 00190000
//SYSABOUT DD  DUMMY                                                    00200000
//SYSUDUMP DD  DUMMY                                                    00210000
//SYSTSIN  DD  DSN=SIVA.CARDS(PARAMB8),DISP=SHR                         00220000
//********************************************************************* 00230000
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO     00240000
//********************************************************************* 00250000
//*                                                                     00260000
//PASO06  EXEC PGM=VOB942E,DYNAMNBR=20,REGION=4M,                       00270000
//        PARM=('&IEMI','&ISER','&ICUP','&INSER','&INCUP','&ICON',     -00280000
//         '&IPROC','&FINI','&ITIPO','&FFIN','&COMP')                   00290000
//STEPLIB DD DSN=SIVA.BIB.CARGA,DISP=SHR                                00300000
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                00310000
//SYSPRINT DD SYSOUT=&SALS                                              00320000
//SYSOUT   DD SYSOUT=&SALS                                              00330000
//SYSDBOUT DD SYSOUT=&SALS                                              00340000
//SYSABOUT DD DUMMY                                                     00350000
//SYSUDUMP DD DUMMY                                                     00360000
//*                                                                     00370000
//VOB942A1 DD DSN=&&ARCHPAR,                                            00380000
//           DISP=(NEW,PASS),                                           00390000
//           DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),                00400000
//           UNIT=SYSDA,                                                00410000
//           SPACE=(TRK,(1,1),RLSE)                                     00420000
//*                                                                     00430000
//*                                                                     00440000
//*--------------------------------------------------------------       00450000
//* EJECUCION DE DEFINITIVO DE CORTE DE CUPON DE RENTA FIJA             00460000
//* VOB992E   VALORES MARZO 1990                                        00470000
//*--------------------------------------------------------------       00480000
//PASO05  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)           00490000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//VOB992A1 DD DSN=&&ARCHPAR,DISP=(OLD,PASS)                             00510000
//VOB992R1 DD SYSOUT=(O,&CICS,TV16)                                     00520000
//VOB992RX DD SYSOUT=(&SALU,&CICS,TV16)                                 00530000
//FOLCTRL  DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                          00540000
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                00550000
//SYSPRINT DD SYSOUT=&SALS                                              00560000
//SYSOUT   DD SYSOUT=&SALS                                              00570000
//SYSDBOUT DD SYSOUT=&SALS                                              00580000
//SYSABOUT DD SYSOUT=&SALS                                              00590000
//SYSUDUMP DD DUMMY                                                     00600000
//SYSTSIN  DD DSN=SIVA.CARDS(PARAMA6),DISP=SHR                          00610000
//*-------------------------------------------------------------------  00620000
//*           CREA ARCHIVO DE IMPRESION                                 00630000
//*-------------------------------------------------------------------  00640000
//*                                                                     00650000
//PASO04   EXEC PGM=IEFBR14,COND=(4,LT)                                 00660000
//SYSPRINT DD SYSOUT=&SALS                                              00670000
//ARCH     DD DSN=&&ARCHIMP,                                            00680000
//            DISP=(NEW,PASS),                                          00690000
//            UNIT=SYSDA,                                               00700000
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0),                      00710000
//            SPACE=(5940,(1000,300),RLSE)                              00720000
//*-------------------------------------------------------------------  00730000
//*                                                                     00740000
//*       VALORES (MARZO 1990)                                          00750000
//*       REPORTE DEFINITIVO DE CORTE DE CUPON DE RENTA FIJA PARA       00760000
//*       PROMOCION  VIB993E                                            00770000
//*-------------------------------------------------------------------  00780000
//PASO03   EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00790000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//VIB993A1 DD DSN=&&ARCHPAR,DISP=(OLD,PASS)                             00810000
//VTB798A1 DD DSN=&&ARCHIMP,                                            00820000
//            DISP=(OLD,PASS)                                           00830000
//*                                                                     00840000
//AGS798R1 DD SYSOUT=(O,&CICS,AV38),DCB=RECFM=FBA                       00850000
//CDJ798R1 DD SYSOUT=(O,&CICS,BV38),DCB=RECFM=FBA                       00860000
//CHI798R1 DD SYSOUT=(O,&CICS,CV38),DCB=RECFM=FBA                       00870000
//GUA798R1 DD SYSOUT=(O,&CICS,DV38),DCB=RECFM=FBA                       00880000
//HER798R1 DD SYSOUT=(O,&CICS,EV38),DCB=RECFM=FBA                       00890000
//JAL798R1 DD SYSOUT=(O,&CICS,FV38),DCB=RECFM=FBA                       00900000
//JER798R1 DD SYSOUT=(O,&CICS,GV38),DCB=RECFM=FBA                       00910000
//KRO798R1 DD SYSOUT=(O,&CICS,HV38),DCB=RECFM=FBA                       00920000
//LEO798R1 DD SYSOUT=(O,&CICS,IV38),DCB=RECFM=FBA                       00930000
//MAZ798R1 DD SYSOUT=(O,&CICS,JV38),DCB=RECFM=FBA                       00940000
//MER798R1 DD SYSOUT=(O,&CICS,KV38),DCB=RECFM=FBA                       00950000
//MOR798R1 DD SYSOUT=(O,&CICS,LV38),DCB=RECFM=FBA                       00960000
//MTY798R1 DD SYSOUT=(O,&CICS,MV38),DCB=RECFM=FBA                       00970000
//PDR798R1 DD SYSOUT=(O,&CICS,NV38),DCB=RECFM=FBA                       00980000
//POL798R1 DD SYSOUT=(O,&CICS,OV38),DCB=RECFM=FBA                       00990000
//PUE798R1 DD SYSOUT=(O,&CICS,PV38),DCB=RECFM=FBA                       01000000
//SAT798R1 DD SYSOUT=(O,&CICS,QV38),DCB=RECFM=FBA                       01010000
//SLP798R1 DD SYSOUT=(O,&CICS,RV38),DCB=RECFM=FBA,FCB=CD03              01020000
//TAM798R1 DD SYSOUT=(O,&CICS,SV38),DCB=RECFM=FBA                       01030000
//ZPR798R1 DD SYSOUT=(O,&CICS,TV38),DCB=RECFM=FBA                       01040000
//TIJ798R1 DD SYSOUT=(O,&CICS,UV38),DCB=RECFM=FBA                       01050000
//TOL798R1 DD SYSOUT=(O,&CICS,VV38),DCB=RECFM=FBA                       01060000
//TOR798R1 DD SYSOUT=(O,&CICS,WV38),DCB=RECFM=FBA,FCB=CD03              01070000
//VER798R1 DD SYSOUT=(O,&CICS,XV38),DCB=RECFM=FBA                       01080000
//ZAC798R1 DD SYSOUT=(O,&CICS,YV38),DCB=RECFM=FBA                       01090000
//MMU798R1 DD SYSOUT=(O,&CICS,1V38),DCB=RECFM=FBA                       01100000
//CUL798R1 DD SYSOUT=(O,&CICS,2V38),DCB=RECFM=FBA                       01110000
//MMP798R1 DD SYSOUT=(O,&CICS,3V38),DCB=RECFM=FBA                       01120000
//SAN798R1 DD SYSOUT=(O,&CICS,4V38),DCB=RECFM=FBA                       01130000
//ZZZ798R1 DD SYSOUT=(&SALU,&CICS,5V38),DCB=RECFM=FBA                   01140000
//*                                                                     01150000
//SYSTSPRT DD SYSOUT=&SALS,                                             01160000
//            DCB=BLKSIZE=0                                             01170000
//SYSPRINT DD SYSOUT=&SALS                                              01180000
//SYSOUT   DD SYSOUT=&SALS                                              01190000
//SYSDBOUT DD SYSOUT=&SALS                                              01200000
//SYSABOUT DD DUMMY                                                     01210000
//SYSUDUMP DD DUMMY                                                     01220000
//SYSTSIN  DD DSN=SIVA.CARDS(PARAMB6),DISP=SHR                          01230000
//*-------------------------------------------------------------------  01240000
//*                                                                     01250000
//*       MERCADO DE CAPITALES (15/JULIO/89)                            01260000
//*       REPORTE DE LAS ORDENES CANCELADAS POR CORTE DE CUPON          01270000
//*                                                                     01280000
//*-------------------------------------------------------------------  01290000
//PASO02   EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          01300000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//VIB431A1 DD DSN=&&ARCHPAR,DISP=(OLD,PASS)                             01320000
//PDR431R1 DD SYSOUT=(O,&CICS,&UPDR)                                    01330000
//POL431R1 DD SYSOUT=(O,&CICS,&UPOL)                                    01340000
//SAT431R1 DD SYSOUT=(O,&CICS,&USAT)                                    01350000
//ZPR431R1 DD SYSOUT=(V,&CICS,&UZPR)                                    01360000
//TIJ431R1 DD SYSOUT=(O,&CICS,&UTIJ)                                    01370000
//CDJ431R1 DD SYSOUT=(O,&CICS,&UCDJ)                                    01380000
//HER431R1 DD SYSOUT=(O,&CICS,&UHER)                                    01390000
//MTY431R1 DD SYSOUT=(O,&CICS,&UMTY)                                    01400000
//TOR431R1 DD SYSOUT=(O,&CICS,&UTOR),FCB=CD03                           01410000
//CHI431R1 DD SYSOUT=(O,&CICS,&UCHI)                                    01420000
//MAZ431R1 DD SYSOUT=(O,&CICS,&UMAZ)                                    01430000
//KRO431R1 DD SYSOUT=(O,&CICS,&UKRO)                                    01440000
//SLP431R1 DD SYSOUT=(O,&CICS,&USLP),FCB=CD03                           01450000
//GUA431R1 DD SYSOUT=(O,&CICS,&UGUA)                                    01460000
//ZAC431R1 DD SYSOUT=(O,&CICS,&UZAC)                                    01470000
//JER431R1 DD SYSOUT=(O,&CICS,&UJER)                                    01480000
//LEO431R1 DD SYSOUT=(O,&CICS,&ULEO)                                    01490000
//MOR431R1 DD SYSOUT=(O,&CICS,&UMOR)                                    01500000
//AGS431R1 DD SYSOUT=(O,&CICS,&UAGS)                                    01510000
//TAM431R1 DD SYSOUT=(O,&CICS,&UTAM)                                    01520000
//VER431R1 DD SYSOUT=(O,&CICS,&UVER)                                    01530000
//JAL431R1 DD SYSOUT=(O,&CICS,&UJAL)                                    01540000
//MER431R1 DD SYSOUT=(O,&CICS,&UMER)                                    01550000
//TOL431R1 DD SYSOUT=(O,&CICS,&UTOL)                                    01560000
//PUE431R1 DD SYSOUT=(O,&CICS,&UPUE)                                    01570000
//MMP431R1 DD SYSOUT=(O,&CICS,&UMMP)                                    01580000
//SAN431R1 DD SYSOUT=(O,&CICS,&USAQ)                                    01590000
//ZZZ431R1 DD SYSOUT=(&SALU,&CICS,&UZZZ)                                01600000
//CUL431R1 DD SYSOUT=(O,&CICS,&UCUL)                                    01610000
//MMU431R1 DD SYSOUT=(&SALU,&CICS,&UMMU)                                01620000
//VAL431R2 DD SYSOUT=(O,&CICS,TP15)                                     01630000
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                01640000
//SYSPRINT DD SYSOUT=&SALS                                              01650000
//SYSOUT   DD SYSOUT=&SALS                                              01660000
//SYSDBOUT DD SYSOUT=&SALS                                              01670000
//SYSABOUT DD DUMMY                                                     01680000
//SYSUDUMP DD DUMMY                                                     01690000
//SYSTSIN  DD DSN=SIVA.CARDS(PARAM29),DISP=SHR                          01700000
//***************************************************************       01710000
//*                      -  VNBE11D -                                   01720000
//* OBJETIVO : FINALIZA   EVENTO 'JSH' PARA EVITAR PROBLEMAS DE         01730000
//*            CONTENSION CON EL JOB PAAMDD40.      SOFTTEK AOD         01740000
//***************************************************************       01750000
//PASO07  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4096K,TIME=100           01760000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420                                01780000
//SYSPRINT DD  SYSOUT=*                                                 01790000
//SYSOUT   DD  SYSOUT=*                                                 01800000
//SYSDBOUT DD  SYSOUT=*                                                 01810000
//SYSABOUT DD  DUMMY                                                    01820000
//SYSUDUMP DD  DUMMY                                                    01830000
//SYSTSIN  DD  DSN=SIVA.CARDS(PARAMB9),DISP=SHR                         01840000
//*-------------------------------------------------------------------- 01850000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          01860000
//*-------------------------------------------------------------------- 01870000
//PASO01   EXEC PGM=MAILOPER,COND=(4,GE,PASO05),                        01880000
//         PARM=('/ATENCION.AVISAR A DESARROLLO QUE PROCESO ',          01890000
//             'SIVAXDRF(CCUPRFDF)TERMINO MAL.CONTESTAR SI',            01900000
//             'PARA TERMINAR')                                         01910000
