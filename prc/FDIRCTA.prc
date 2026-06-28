//FDD1800 PROC                                                          00010000
//*                                                                     00020000
//**********************************************************************00030000
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *00031000
//*                                                                    *00032000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00033000
//*                                                                    *00034000
//* PROCESO        :  PFDFDD18                                         *00035000
//*                   FIN DE DIA DEL SIVA.                             *00036000
//*                                                                    *00037000
//* OBJETIVO       :  RETORNAR EL IREF INVERTIDO DURANTE LA OPERACION  *00038000
//*                   ON-LINE DEL DIA AL NUMERO DE REFERENCIA ORIGINAL.*00039000
//*                                                                    *00040000
//*                   EN LAS TABLAS SIVATE, OPERTET Y SIVASI           *00050000
//*                                                                    *00060000
//* CORRE                                                              *00070000
//* ANTES DE       :  PFDFDD05, PFDFDD06, PFDFDD06, PFDFDD08, PFDFDD09 *00080000
//*                   PFDFDD10, PFDFDD11, PFDFDD12, PFDFDD13, PFDFDD14 *00090000
//*                                                                    *00100000
//* DESPUES DE     :  PFDFDD01, PFDFDD02, PFDFDD03, PFDFDD04           *00110000
//*                                                                    *00120000
//* REALIZO        :  JOEL GONZALEZ MARTINEZ / SAUL CONTRERAS TELLEZ   *00130000
//* FECHA          :  FEBRERO DE 1991                                  *00140000
//*                                                                    *00150000
//* MODIFICADO     :  JOEL GONZALEZ / VIRGILIO ELEAZAR RODRIGUEZ D.    *00160000
//* FECHA          :  ENERO   DE 1996                                  *00170000
//*                                                                    *00180000
//*                   SE LE AGREGARON 3 PASOS DEL 4 AL 2 REFERENTES    *00190000
//*                   A LA IMPRESION BATCH DE CREDITOS "T + 1"         *00200000
//*                                                                    *00210000
//**********************************************************************00220000
//********************************************************************* 00230000
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO     00240000
//********************************************************************* 00241000
//*                                                                     00242000
//FDD1804 EXEC PGM=VIB796O,DYNAMNBR=20,REGION=4M,                       00243000
// PARM=('&SUC','&CT1','&CT2','&CT3','&CTO','&LGO','&USU','&PRE',      -00244000
//       '&ENV','&RET','&CGB','&FOL','&FEC')                            00245000
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                00249000
//SYSPRINT DD SYSOUT=&SALS                                              00250000
//SYSOUT   DD SYSOUT=&SALS                                              00250100
//SYSDBOUT DD SYSOUT=&SALS                                              00250200
//SYSABOUT DD DUMMY                                                     00250300
//SYSUDUMP DD DUMMY                                                     00250400
//*                                                                     00250500
//VIB796A1 DD DSN=&&PARAMTES,                                           00250600
//           DISP=(NEW,PASS),                                           00250700
//           DCB=(DSORG=PS,RECFM=FB,LRECL=100,BLKSIZE=0),               00250800
//           UNIT=SYSDA,                                                00250900
//           SPACE=(TRK,(1,1))                                          00251000
//*                                                                     00251100
//********************************************************************  00251200
//*           CREA ARCHIVO DE IMPRESION                                 00251300
//********************************************************************  00251400
//*                                                                     00251500
//FDD1803  EXEC PGM=IDCAMS,COND=(4,LT)                                  00251600
//SYSPRINT DD SYSOUT=&SALS                                              00251700
//ARCH     DD DSN=&&ARCHIMPT,DISP=(NEW,PASS),UNIT=SYSDA,                00251800
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0),                      00251900
//            SPACE=(5940,(80,30),RLSE)                                 00252000
//SYSIN    DD DUMMY                                                     00252100
//*                                                                     00252200
//*******************************************************************   00252300
//*                    EMISION DE RECIBOS                               00252400
//*******************************************************************   00252500
//*                                                                     00252600
//FDD1802 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)           00252700
//*                                                                     00254000
//VIB753A1 DD DSN=&&PARAMTES,DISP=(OLD,PASS)                            00254100
//VIB753A2 DD DSN=&&ARCHPASO,DISP=(NEW,DELETE),UNIT=SYSDA,              00254200
//            DCB=(LRECL=274,RECFM=FB,BLKSIZE=0),                       00254300
//            SPACE=(CYL,(1,5),RLSE)                                    00254400
//*VTB798A1 DD DSN=&&ARCHIMPT,DISP=(OLD,PASS)                           00254500
//VTB798A1 DD SYSOUT=(O,,&SUC),                                         00254600
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0),                      00254700
//            SPACE=(5940,(80,30),RLSE)                                 00254800
//*                                                                     00254900
//AGS798R1 DD SYSOUT=(&SALU,&CICS,&UAGS),DCB=RECFM=FBA                  00255000
//CDJ798R1 DD SYSOUT=(&SALU,&CICS,&UCDJ),DCB=RECFM=FBA                  00255100
//CHI798R1 DD SYSOUT=(&SALU,&CICS,&UCHI),DCB=RECFM=FBA                  00255200
//GUA798R1 DD SYSOUT=(&SALU,&CICS,&UGUA),DCB=RECFM=FBA                  00255300
//HER798R1 DD SYSOUT=(&SALU,&CICS,&UHER),DCB=RECFM=FBA                  00255400
//JAL798R1 DD SYSOUT=(&SALU,&CICS,&UJAL),DCB=RECFM=FBA                  00255500
//JER798R1 DD SYSOUT=(&SALU,&CICS,&UJER),DCB=RECFM=FBA                  00255600
//KRO798R1 DD SYSOUT=(&SALU,&CICS,&UKRO),DCB=RECFM=FBA                  00255700
//LEO798R1 DD SYSOUT=(&SALU,&CICS,&ULEO),DCB=RECFM=FBA                  00255800
//MAZ798R1 DD SYSOUT=(&SALU,&CICS,&UMAZ),DCB=RECFM=FBA                  00255900
//MER798R1 DD SYSOUT=(&SALU,&CICS,&UMER),DCB=RECFM=FBA                  00256000
//MOR798R1 DD SYSOUT=(&SALU,&CICS,&UMOR),DCB=RECFM=FBA                  00256100
//MTY798R1 DD SYSOUT=(&SALU,&CICS,&UMTY),DCB=RECFM=FBA                  00256200
//PDR798R1 DD SYSOUT=(&SALU,&CICS,&UPDR),DCB=RECFM=FBA                  00256300
//POL798R1 DD SYSOUT=(&SALU,&CICS,&UPOL),DCB=RECFM=FBA                  00256400
//PUE798R1 DD SYSOUT=(&SALU,&CICS,&UPUE),DCB=RECFM=FBA                  00256500
//SAT798R1 DD SYSOUT=(&SALU,&CICS,&USAT),DCB=RECFM=FBA                  00256600
//SLP798R1 DD SYSOUT=(&SALU,&CICS,&USLP),DCB=RECFM=FBA                  00256700
//TAM798R1 DD SYSOUT=(&SALU,&CICS,&UTAM),DCB=RECFM=FBA                  00256800
//TIJ798R1 DD SYSOUT=(&SALU,&CICS,&UTIJ),DCB=RECFM=FBA                  00256900
//TOL798R1 DD SYSOUT=(&SALU,&CICS,&UTOL),DCB=RECFM=FBA                  00257000
//TOR798R1 DD SYSOUT=(&SALU,&CICS,&UTOR),DCB=RECFM=FBA                  00257100
//VER798R1 DD SYSOUT=(&SALU,&CICS,&UVER),DCB=RECFM=FBA                  00257200
//ZAC798R1 DD SYSOUT=(&SALU,&CICS,&UZAC),DCB=RECFM=FBA                  00257300
//ZPR798R1 DD SYSOUT=(&SALU,&CICS,&UZPR),DCB=RECFM=FBA                  00257400
//MMU798R1 DD SYSOUT=(&SALU,&CICS,&UMMU),DCB=RECFM=FBA                  00257500
//CUL798R1 DD SYSOUT=(&SALU,&CICS,&UCUL),DCB=RECFM=FBA                  00257600
//MMP798R1 DD SYSOUT=(&SALU,&CICS,&UMMP),DCB=RECFM=FBA                  00257700
//SAN798R1 DD SYSOUT=(&SALU,&CICS,&USAN),DCB=RECFM=FBA                  00257800
//ZZZ798R1 DD SYSOUT=(&SALU,&CICS,&UZZZ),DCB=RECFM=FBA                  00257900
//*                                                                     00258000
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                00258100
//SYSPRINT DD SYSOUT=&SALS                                              00258200
//SYSOUT   DD SYSOUT=&SALS                                              00258300
//SYSDBOUT DD SYSOUT=&SALS                                              00258400
//SYSABOUT DD SYSOUT=&SALS                                              00258500
//SYSUDUMP DD SYSOUT=&SALS                                              00258600
//*                                                                     00258700
//SYSTSIN  DD DSN=SIVA.CARDS(FDD01802),DISP=SHR                         00258802
//*                                                                     00258900
