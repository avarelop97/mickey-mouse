//FDD4000   PROC
//*******************************************************************   00710033
//*                                                                 *   00720033
//*     BBB  BBB  VV VV    PPPP RRRR OOOO BBB  U  U RRRR SSSS AAAA  *   00730033
//*     B BB B BB VV VV    P PP R RR O  O B BB U  U R RR S    A  A  *   00740033
//*     BBBB BBBB VV VV @@ PPPP RRRR O  O BBBB U  U RRRR SSSS AAAA  *   00750033
//*     B BB B BB  VVV     P    RR   O  O B BB U  U RR      S A  A  *   00760033
//*     BBB  BBB    V      P    R RR OOOO BBB  UUUU R RR SSSS A  A  *   00770033
//*                                                                 *   00780033
//*******************************************************************   00790033
//*******************************************************************   00800033
//*                                                                 *   00810033
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)        *   00820033
//*                                                                 *   00830033
//* PROCESO        :  PFDFDD40  (COPIA PARCIAL DEL FDD3300)         *   00840033
//*                   REPORTES DE EFICIENCIA Y CONTROL DE LA CARTERA*   00850033
//*                   AREA DE REGULACION (MA. CARMEN SANJURJO)      *   00860033
//*                                                                 *   00860033
//* OBJETIVO       :  GENERAR LA REPORTERIA DE FIN DE DIA CAPITALES *   00870033
//*                                                                 *   00880033
//* CORRE                                                           *   00890033
//* ANTES DE       :  ????????                                      *   00900033
//*                                                                 *   00910033
//* DESPUES DE     :  FDD3300                                       *   00920033
//*                                                                 *   00930033
//* REALIZO        :  GLORIA ALVAREZ                                *   00940033
//* FECHA          :  OCTUBRE DE 1998                               *   00950033
//* MODIFICACION   :  SE AGREGO EL REPORTE VISITAS A SUCURSALES     *   00960033
//* FECHA          :  NOVIEMBRE DE 1998                             *   00960033
//*
//* MODIFICACION   :  SE AGREGO PASO FDD4019 (SOFTTEK)              *   00960033
//* FECHA          :  AGOSTO DE 1999.                               *   00960033
//*******************************************************************   00970033
//*                                                                     00980033
//*-------------------------------------------------------------------  00221002
//*                         = VIBU59D =                                 00221002
//*     REPORTE DE OPERACIONES DE MERCADO DE DINERO DADAS DE BAJA       00222002
//*                                                  *** CAPITALES     *
//*-------------------------------------------------------------------  00223002
//FDD4019  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//VIBU59R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//SYSTSIN  DD DSN=SIVA.CARDS(FDD4019),DISP=SHR                          00232802
//*-------------------------------------------------------------------  00221002
//*                    = VIBT74M =                                      00221002
//*        REPORTE CUADRO COMPARATIVO EDOS DE CTA                       00222002
//*                                                  *** CAPITALES     *
//*-------------------------------------------------------------------  00223002
//FDD3318  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//VIBT74R1 DD SYSOUT=V                                                  00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3318),DISP=SHR                          00232802
//*-------------------------------------------------------------------  00221002
//*                    = VIBT71D =                                      00221002
//*        REPORTE  DE CORTOS/LARGOS                                    00222002
//*                                                  *** CAPITALES     *
//*-------------------------------------------------------------------  00223002
//FDD3317  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*VIBT71R1 DD SYSOUT=(V,,TB33)                                         00229003
//VIBT71R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3317),DISP=SHR                          00232802
//*-------------------------------------------------------------------  00221002
//*                    = VIBT65M =                                      00221002
//*        REPORTE  DE CLIENTES MAS PRODUCTIVOS                         00222002
//*                                                  *** CAPITALES     *
//*-------------------------------------------------------------------  00223002
//FDD3316  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//VIBT65R1 DD SYSOUT=V                                                  00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3316),DISP=SHR                          00232802
//*-------------------------------------------------------------------  00221002
//*                    = VIBT70S =                                      00221002
//*        REPORTE  DE MOVTOS EN TRASPASOS                              00222002
//*                                                  *** CAPITALES     *
//*-------------------------------------------------------------------  00223002
//FDD3314  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*VIBT70R1 DD SYSOUT=(V,,TB25)                                         00229003
//VIBT70R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3314),DISP=SHR                          00232802
//*-------------------------------------------------------------------  00221002
//*                    = VIBT63M =                                      00221002
//*        REPORTE  DE CTAS NO DISCRECIONALES                           00222002
//*                                                     *** CONTRATOS * 00223002
//*-------------------------------------------------------------------  00223002
//FDD3312  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*VIBT63R  DD SYSOUT=(V,,TB23)                                         00229003
//VIBT63R  DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3312),DISP=SHR                          00232802
//*-------------------------------------------------------------------  00221002
//*                    = VIBT62M =                                      00221002
//*        REPORTES DE PROMOTORES SIN CTAS ASOCIADAS                    00222002
//*                                                     *** CONTRATOS * 00223002
//*-------------------------------------------------------------------  00223002
//FDD3311  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*VIBT62R1 DD SYSOUT=(V,,TB22)                                         00229003
//VIBT62R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3311),DISP=SHR                          00232802
//*-------------------------------------------------------------------  00221002
//*                    = VIBT61M =                                      00221002
//*        REPORTES DE PROMOTORES VIGENTES                              00222002
//*                                                     *** VALORES   * 00223002
//*-------------------------------------------------------------------  00223002
//FDD3310  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*VIBT61R1 DD SYSOUT=(V,,TB21)                                         00229003
//VIBT61R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3310),DISP=SHR                          00232802
//*-------------------------------------------------------------------  00221002
//*                    = VIBT84M =                                      00221002
//*        REPORTES DE BONIFICACIONES                                   00222002
//*                                                     *** VALORES   * 00223002
//*-------------------------------------------------------------------  00223002
//FDD3309  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*VIBT84R1 DD SYSOUT=(V,,TB20)                                         00229003
//VIBT84R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3309),DISP=SHR                          00232802
//*-------------------------------------------------------------------  00221002
//*                    = VIBT60S =                                      00221002
//*        REPORTES DE CTES PF*                                         00222002
//*                                                     *** CONTRATOS * 00223002
//*-------------------------------------------------------------------  00223002
//FDD3308  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*VIBT60R1 DD SYSOUT=(V,,TB19)                                         00229003
//VIBT60R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3308),DISP=SHR                          00232802
//*-------------------------------------------------------------------  00221002
//*                    = VIBT59S =                                      00221002
//*        REPORTES DE CTAS CON COMISION MENOR AL 1.7%                  00222002
//*                                                     *** CONTRATOS * 00223002
//*-------------------------------------------------------------------  00223002
//FDD3307  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*VIBT59R1 DD SYSOUT=(V,,TB18)                                         00229003
//VIBT59R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3307),DISP=SHR                          00232802
//*-------------------------------------------------------------------  00221002
//*                    = VIBT58M =                                      00221002
//*        REPORTES DE CTES CON DOCUMENTACION INCOMPLETA                00222002
//*                                                     *** CONTRATOS * 00223002
//*-------------------------------------------------------------------  00223002
//FDD3306  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*VIBT58R  DD SYSOUT=(V,,TB17)                                         00229003
//VIBT58R  DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3306),DISP=SHR                          00232802
//*-------------------------------------------------------------------  00221002
//*                    = VIBT57D =                                      00221002
//*        REPORTES DE CPAS SIN POSICION MISMO DIA                      00222002
//*                                                     *** CAPITALES * 00223002
//*-------------------------------------------------------------------  00223002
//FDD3305  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*VIBT57R  DD SYSOUT=(V,,TB16)                                         00229003
//VIBT57R  DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3305),DISP=SHR                          00232802
//*-------------------------------------------------------------------  00221002
//*                    = VIBT56D =                                      00221002
//*        REPORTES DE CTAS SIN CHEQUERAS                               00222002
//*                                                     *** CONTRATOS * 00223002
//*-------------------------------------------------------------------  00223002
//FDD3304  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*VIBT56R  DD SYSOUT=(V,,TB15)                                         00229003
//VIBT56R  DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3304),DISP=SHR                          00232802
//*-------------------------------------------------------------------  00221002
//*                    = VIBT55M =                                      00221002
//*        REPORTES DE CTAS CONEXAS                                     00222002
//*                                                     *** CONTRATOS * 00223002
//*-------------------------------------------------------------------  00223002
//FDD3302  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*VIBT55R  DD SYSOUT=(V,,TB14)                                         00229003
//VIBT55R  DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00229003
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3302),DISP=SHR                          00232802
//*
//*-------------------------------------------------------------------  00221002
//*                    = VIBU29D =                                      00221002
//*        REPORTES DE VISITAS A SUCURSALES                             00222002
//*        GENERA 7 DIFERENTES TIPOS DE REPORTES                        00223002
//*-------------------------------------------------------------------  00223002
//FDD4001  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00224002
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00225002
//SYSPRINT DD SYSOUT=*                                                  00226002
//SYSOUT   DD SYSOUT=*                                                  00227002
//SYSDBOUT DD SYSOUT=*                                                  00228002
//*VIBU29R1 DD SYSOUT=(V,,ZW22),
//VIBU29R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0)
//*VIBU29R2 DD SYSOUT=(V,,ZW23),
//VIBU29R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0)
//*VIBU29R3 DD SYSOUT=(V,,ZW24),
//VIBU29R3 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0)
//*VIBU29R4 DD SYSOUT=(V,,ZW25),
//VIBU29R4 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0)
//*VIBU29R5 DD SYSOUT=(V,,ZW26),
//VIBU29R5 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0)
//*VIBU29R6 DD SYSOUT=(V,,ZW27),
//VIBU29R6 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0)
//*VIBU29R7 DD SYSOUT=(V,,ZW28),
//VIBU29R7 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*            DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0)
//SYSABOUT DD DUMMY                                                     00232602
//SYSUDUMP DD DUMMY                                                     00232702
//SYSTSIN  DD DSN=SIVA.CARDS(FDD4001),DISP=SHR                          00232802
//*
