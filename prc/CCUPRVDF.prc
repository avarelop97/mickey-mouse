//CCUPRVDF PROC IEMI=,ISER=,ICUP=,INSER=,INCUP=,ICON=,                  00010000
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
//PASO06  EXEC PGM=VOB942E,DYNAMNBR=20,REGION=4M,                       00130000
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
//* EJECUCION DE DEFINITIVO DE CORTE DE CUPON DE RENTA VARIABLE         00320000
//* VOB926E   VALORES MARZO 1990                                        00330000
//*--------------------------------------------------------------       00340000
//PASO05  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)           00350000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//VOB926A1 DD DSN=&&ARCHPAR,DISP=(OLD,PASS)                             00370000
//VOB926R1 DD SYSOUT=(O,&CICS,TV06)                                     00380000
//VOB926RX DD SYSOUT=(&SALU,&CICS,TV06)                                 00390000
//FOLCTRL  DD DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                          00400000
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                00410000
//SYSPRINT DD SYSOUT=&SALS                                              00420000
//SYSOUT   DD SYSOUT=&SALS                                              00430000
//SYSDBOUT DD SYSOUT=&SALS                                              00440000
//SYSABOUT DD SYSOUT=&SALS                                              00450000
//SYSUDUMP DD DUMMY                                                     00460000
//SYSTSIN  DD DSN=SIVA.CARDS(PARAMA0),DISP=SHR                          00470000
//*-------------------------------------------------------------------  00480000
//*           CREA ARCHIVO DE IMPRESION                                 00490000
//*-------------------------------------------------------------------  00500000
//*                                                                     00510000
//PASO04   EXEC PGM=IEFBR14,COND=(4,LT)                                 00520000
//SYSPRINT DD SYSOUT=&SALS                                              00530000
//ARCH     DD DSN=&&ARCHIMP,                                            00540000
//            DISP=(NEW,PASS),                                          00550000
//            UNIT=SYSDA,                                               00560000
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0),                      00570000
//            SPACE=(5940,(1000,300),RLSE)                              00580000
//*-------------------------------------------------------------------  00590000
//*                                                                     00600000
//*       VALORES (MARZO 1990)                                          00610000
//*       REPORTE DEFINITIVO DE CORTE DE CUPON DE RENTA VARIABLE PARA   00620000
//*       PROMOCION                                                     00630000
//*-------------------------------------------------------------------  00640000
//PASO03   EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00650000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//VIB975A1 DD DSN=&&ARCHPAR,DISP=(OLD,PASS)                             00670000
//VTB798A1 DD DSN=&&ARCHIMP,                                            00680000
//            DISP=(OLD,PASS)                                           00690000
//*                                                                     00700000
//AGS798R1 DD SYSOUT=(O,&CICS,AV36),DCB=RECFM=FBA                       00710000
//CDJ798R1 DD SYSOUT=(O,&CICS,BV36),DCB=RECFM=FBA                       00720000
//CHI798R1 DD SYSOUT=(O,&CICS,CV36),DCB=RECFM=FBA                       00730000
//GUA798R1 DD SYSOUT=(O,&CICS,DV36),DCB=RECFM=FBA                       00740000
//HER798R1 DD SYSOUT=(O,&CICS,EV36),DCB=RECFM=FBA                       00750000
//JAL798R1 DD SYSOUT=(O,&CICS,FV36),DCB=RECFM=FBA                       00760000
//JER798R1 DD SYSOUT=(O,&CICS,GV36),DCB=RECFM=FBA                       00770000
//KRO798R1 DD SYSOUT=(O,&CICS,HV36),DCB=RECFM=FBA                       00780000
//LEO798R1 DD SYSOUT=(O,&CICS,IV36),DCB=RECFM=FBA                       00790000
//MAZ798R1 DD SYSOUT=(O,&CICS,JV36),DCB=RECFM=FBA                       00800000
//MER798R1 DD SYSOUT=(O,&CICS,KV36),DCB=RECFM=FBA                       00810000
//MOR798R1 DD SYSOUT=(O,&CICS,LV36),DCB=RECFM=FBA                       00820000
//MTY798R1 DD SYSOUT=(O,&CICS,MV36),DCB=RECFM=FBA                       00830000
//PDR798R1 DD SYSOUT=(O,&CICS,NV36),DCB=RECFM=FBA                       00840000
//POL798R1 DD SYSOUT=(O,&CICS,OV36),DCB=RECFM=FBA                       00850000
//PUE798R1 DD SYSOUT=(O,&CICS,PV36),DCB=RECFM=FBA                       00860000
//SAT798R1 DD SYSOUT=(O,&CICS,QV36),DCB=RECFM=FBA                       00870000
//SLP798R1 DD SYSOUT=(O,&CICS,RV36),DCB=RECFM=FBA,FCB=CD03              00880000
//TAM798R1 DD SYSOUT=(O,&CICS,SV36),DCB=RECFM=FBA                       00890000
//ZPR798R1 DD SYSOUT=(O,&CICS,TV36),DCB=RECFM=FBA                       00900000
//TIJ798R1 DD SYSOUT=(O,&CICS,UV36),DCB=RECFM=FBA                       00910000
//TOL798R1 DD SYSOUT=(O,&CICS,VV36),DCB=RECFM=FBA                       00920000
//TOR798R1 DD SYSOUT=(O,&CICS,WV36),DCB=RECFM=FBA,FCB=CD03              00930000
//VER798R1 DD SYSOUT=(O,&CICS,XV36),DCB=RECFM=FBA                       00940000
//ZAC798R1 DD SYSOUT=(O,&CICS,YV36),DCB=RECFM=FBA                       00950000
//MMU798R1 DD SYSOUT=(O,&CICS,1V36),DCB=RECFM=FBA                       00960000
//CUL798R1 DD SYSOUT=(O,&CICS,2V36),DCB=RECFM=FBA                       00970000
//MMP798R1 DD SYSOUT=(O,&CICS,3V36),DCB=RECFM=FBA                       00980000
//SAN798R1 DD SYSOUT=(O,&CICS,4V36),DCB=RECFM=FBA                       00990000
//ZZZ798R1 DD SYSOUT=(&SALU,&CICS,5V36),DCB=RECFM=FBA                   01000000
//*                                                                     01010000
//SYSTSPRT DD SYSOUT=&SALS,                                             01020000
//            DCB=BLKSIZE=0                                             01030000
//SYSPRINT DD SYSOUT=&SALS                                              01040000
//SYSOUT   DD SYSOUT=&SALS                                              01050000
//SYSDBOUT DD SYSOUT=&SALS                                              01060000
//SYSABOUT DD DUMMY                                                     01070000
//SYSUDUMP DD DUMMY                                                     01080000
//SYSTSIN  DD DSN=SIVA.CARDS(PARAMB4),DISP=SHR                          01090000
//*-------------------------------------------------------------------  01100000
//*                                                                     01110000
//*       MERCADO DE CAPITALES (15/JULIO/89)                            01120000
//*       REPORTE DE LAS ORDENES CANCELADAS POR CORTE DE CUPON          01130000
//*                                                                     01140000
//*-------------------------------------------------------------------  01150000
//PASO02   EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          01160000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//VIB431A1 DD DSN=&&ARCHPAR,DISP=(OLD,PASS)                             01180000
//PDR431R1 DD SYSOUT=(O,&CICS,&UPDR)                                    01190000
//POL431R1 DD SYSOUT=(O,&CICS,&UPOL)                                    01200000
//SAT431R1 DD SYSOUT=(O,&CICS,&USAT)                                    01210000
//ZPR431R1 DD SYSOUT=(V,&CICS,&UZPR)                                    01220000
//TIJ431R1 DD SYSOUT=(O,&CICS,&UTIJ)                                    01230000
//CDJ431R1 DD SYSOUT=(O,&CICS,&UCDJ)                                    01240000
//HER431R1 DD SYSOUT=(O,&CICS,&UHER)                                    01250000
//MTY431R1 DD SYSOUT=(O,&CICS,&UMTY)                                    01260000
//TOR431R1 DD SYSOUT=(O,&CICS,&UTOR),FCB=CD03                           01270000
//CHI431R1 DD SYSOUT=(O,&CICS,&UCHI)                                    01280000
//MAZ431R1 DD SYSOUT=(O,&CICS,&UMAZ)                                    01290000
//KRO431R1 DD SYSOUT=(O,&CICS,&UKRO)                                    01300000
//SLP431R1 DD SYSOUT=(O,&CICS,&USLP),FCB=CD03                           01310000
//GUA431R1 DD SYSOUT=(O,&CICS,&UGUA)                                    01320000
//ZAC431R1 DD SYSOUT=(O,&CICS,&UZAC)                                    01330000
//JER431R1 DD SYSOUT=(O,&CICS,&UJER)                                    01340000
//LEO431R1 DD SYSOUT=(O,&CICS,&ULEO)                                    01350000
//MOR431R1 DD SYSOUT=(O,&CICS,&UMOR)                                    01360000
//AGS431R1 DD SYSOUT=(O,&CICS,&UAGS)                                    01370000
//TAM431R1 DD SYSOUT=(O,&CICS,&UTAM)                                    01380000
//VER431R1 DD SYSOUT=(O,&CICS,&UVER)                                    01390000
//JAL431R1 DD SYSOUT=(O,&CICS,&UJAL)                                    01400000
//MER431R1 DD SYSOUT=(O,&CICS,&UMER)                                    01410000
//TOL431R1 DD SYSOUT=(O,&CICS,&UTOL)                                    01420000
//PUE431R1 DD SYSOUT=(O,&CICS,&UPUE)                                    01430000
//MMP431R1 DD SYSOUT=(O,&CICS,&UMMP)                                    01440000
//SAN431R1 DD SYSOUT=(O,&CICS,&USAQ)                                    01450000
//ZZZ431R1 DD SYSOUT=(&SALU,&CICS,&UZZZ)                                01460000
//CUL431R1 DD SYSOUT=(O,&CICS,&UCUL)                                    01470000
//MMU431R1 DD SYSOUT=(O,&CICS,&UMMU)                                    01480000
//VAL431R2 DD SYSOUT=(O,&CICS,TP15)                                     01490000
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                01500000
//SYSPRINT DD SYSOUT=&SALS                                              01510000
//SYSOUT   DD SYSOUT=&SALS                                              01520000
//SYSDBOUT DD SYSOUT=&SALS                                              01530000
//SYSABOUT DD DUMMY                                                     01540000
//SYSUDUMP DD DUMMY                                                     01550000
//SYSTSIN  DD DSN=SIVA.CARDS(PARAM29),DISP=SHR                          01560000
//*-------------------------------------------------------------------- 01570000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          01580000
//*-------------------------------------------------------------------- 01590000
//PASO01   EXEC PGM=MAILOPER,COND=(4,GE,PASO05),                        01600000
//         PARM=('/ATENCION.AVISAR A DESARROLLO QUE PROCESO ',          01610000
//             'SIVAXDRV(CCUPRVDF)TERMINO MAL.CONTESTAR SI',            01620000
//             'PARA TERMINAR')                                         01630000
