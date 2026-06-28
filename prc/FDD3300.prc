//FDD3300   PROC                                                        00000100
//*******************************************************************   00000200
//*                                                                 *   00000300
//*     BBB  BBB  VV VV    PPPP RRRR OOOO BBB  U  U RRRR SSSS AAAA  *   00000400
//*     B BB B BB VV VV    P PP R RR O  O B BB U  U R RR S    A  A  *   00000500
//*     BBBB BBBB VV VV @@ PPPP RRRR O  O BBBB U  U RRRR SSSS AAAA  *   00000600
//*     B BB B BB  VVV     P    RR   O  O B BB U  U RR      S A  A  *   00000700
//*     BBB  BBB    V      P    R RR OOOO BBB  UUUU R RR SSSS A  A  *   00000800
//*                                                                 *   00000900
//*******************************************************************   00001000
//*******************************************************************   00001100
//*                                                                 *   00001200
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)        *   00001300
//*                                                                 *   00001400
//* PROCESO        :  PFDFDD33 FIN DE DIA DE CAPITALES.             *   00001500
//*                   REPORTES DE CAPITALES                         *   00001600
//*                                                                 *   00001700
//* OBJETIVO       :  GENERAR LA REPORTERIA DE FIN DE DIA CAPITALES *   00001800
//*                                                                 *   00001900
//* CORRE                                                           *   00002000
//* ANTES DE       :  ????????                                      *   00002100
//*                                                                 *   00002200
//* DESPUES DE     :  ????????                                      *   00002300
//*                                                                 *   00002400
//* REALIZO        :  RAFAEL ZULETA VARGAS                          *   00002500
//* FECHA          :  ABRIL DE 1997                                 *   00002600
//*                                                                 *   00002700
//* SE MODIFICO PARA ELIMINAR 14 CARDS LAS CUALES FUERON COPIADAS   *   00002800
//* AL FDD4000 PARA EL AREA DE REGULACION (MA. CARMEN SANJURJO)     *   00002900
//*                                                                 *   00003000
//* MODIFICO       :  GLORIA ALVAREZ                                *   00003100
//* FECHA          :  6 OCTUBRE DE 1998                             *   00003200
//*                                                                 *   00003300
//* MODIFICO       :  CAMBIAR EL PASO FDD3328 IDCAMS X IEBGENER     *   00003400
//* FECHA          :  18 NOV 2002                                   *   00003500
//*******************************************************************   00003600
//*                                                                     00003700
//*-------------------------------------------------------------------  00003800
//*                        -- VIBV23D --                               *00003900
//*                                                                    *00004000
//* OBJETIVO : REPORTE DE CONCILIACION DE POSTURAS SIVA VS BMV         *00004100
//*                                                                    *00004200
//*--------------------------------------------------------------------*00004300
//FDD3342  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00004400
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00004500
//SYSPRINT DD SYSOUT=X                                                  00004600
//SYSOUT   DD SYSOUT=X                                                  00004700
//VIBV23R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00004800
//SYSDBOUT DD SYSOUT=X                                                  00004900
//SYSABOUT DD DUMMY                                                     00005000
//SYSUDUMP DD DUMMY                                                     00005100
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3342),DISP=SHR                          00005200
//*-------------------------------------------------------------------  00005300
//*                        -- VIBU99D --                               *00005400
//*                                                                    *00005500
//* OBJETIVO : REPORTE DE ORDENES EXTRAORDINARIAS                      *00005600
//*                                                                    *00005700
//*--------------------------------------------------------------------*00005800
//FDD3341  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00005900
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00006000
//SYSPRINT DD SYSOUT=X                                                  00006100
//SYSOUT   DD SYSOUT=X                                                  00006200
//VIBU99R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00006300
//SYSDBOUT DD SYSOUT=X                                                  00006400
//SYSABOUT DD DUMMY                                                     00006500
//SYSUDUMP DD DUMMY                                                     00006600
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0119),DISP=SHR                          00006700
//*-------------------------------------------------------------------  00006800
//*                                                                    *00006900
//* OBJETIVO : REPORTE DE ORDENES EXTRAORDINARIAS                      *00007000
//*                        -- VIBU84D --                               *00007100
//* JFE --> REPORTE PARALELO DEL VIBU99D QUE CORRE EN EL CAD0119       *00007200
//*--------------------------------------------------------------------*00007300
//FDD3341A EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00007400
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00007500
//SYSPRINT DD SYSOUT=X                                                  00007600
//SYSOUT   DD SYSOUT=X                                                  00007700
//VIBU84R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00007800
//SYSDBOUT DD SYSOUT=X                                                  00007900
//SYSABOUT DD DUMMY                                                     00008000
//SYSUDUMP DD DUMMY                                                     00008100
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0119A),DISP=SHR                         00008200
//*-------------------------------------------------------------------  00008300
//*  REPORTE DE SOLICITUD DE ORDENES DE COMPRA/VENTA POR EMISORA        00008400
//*                          VIBV20D                                    00008500
//*-------------------------------------------------------------------  00008600
//FDD3340 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,          00008700
//        PARM='/DEBUG',TIME=100                                        00008800
//VIBV20R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00008900
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00009000
//SYSPRINT DD SYSOUT=X                                                  00009100
//SYSOUT   DD SYSOUT=X                                                  00009200
//SYSDBOUT DD SYSOUT=X                                                  00009300
//SYSABOUT DD DUMMY                                                     00009400
//SYSUDUMP DD DUMMY                                                     00009500
//SYSTSIN  DD DSN=SIVA.CARDS(CAD1602),DISP=SHR                          00009600
//*                                                                     00009700
//*-------------------------------------------------------------------  00009800
//*  REPORTE DE SOLICITUD DE CANCELACIONES                              00009900
//*-------------------------------------------------------------------  00010000
//FDD3339 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,          00010100
//        PARM='/DEBUG',TIME=100                                        00010200
//VIB455R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00010300
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00010400
//SYSPRINT DD SYSOUT=X                                                  00010500
//SYSOUT   DD SYSOUT=X                                                  00010600
//SYSDBOUT DD SYSOUT=X                                                  00010700
//SYSABOUT DD DUMMY                                                     00010800
//SYSUDUMP DD DUMMY                                                     00010900
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0105),DISP=SHR                          00011000
//*                                                                     00011100
//*-------------------------------------------------------------------  00011200
//*  REPORTE DE SOLICITUD DE CANCELACIONES                              00011300
//*                        -- VIBU88D --                               *00011400
//* JFE --> REPORTE PARALELO DEL VIB455D QUE CORRE EN EL CAD0105       *00011500
//*-------------------------------------------------------------------  00011600
//FDD3339A EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,         00011700
//         PARM='/DEBUG',TIME=100                                       00011800
//VIBU88R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00011900
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00012000
//SYSPRINT DD SYSOUT=X                                                  00012100
//SYSOUT   DD SYSOUT=X                                                  00012200
//SYSDBOUT DD SYSOUT=X                                                  00012300
//SYSABOUT DD DUMMY                                                     00012400
//SYSUDUMP DD DUMMY                                                     00012500
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0105A),DISP=SHR                         00012600
//*                                                                     00012700
//*-------------------------------------------------------------------  00012800
//*        REPORTES DE ORDENES SOLICITADAS Y CANCELADAS POR PROMOTOR    00012900
//*        SE AUMENTO REPORTE DE ORDENES NO REALIZADAS (R3) 26-MAY-95   00013000
//*-------------------------------------------------------------------  00013100
//FDD3338  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00013200
//PDR472R1 DD DSN=&&PDR472R1,DISP=(,PASS),UNIT=SYSDA,                   00013300
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00013400
//        SPACE=(TRK,(10,10),RLSE)                                      00013500
//POL472R1 DD DSN=&&POL472R1,DISP=(,PASS),UNIT=SYSDA,                   00013600
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00013700
//        SPACE=(TRK,(10,10),RLSE)                                      00013800
//SAT472R1 DD DSN=&&SAT472R1,DISP=(,PASS),UNIT=SYSDA,                   00013900
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00014000
//        SPACE=(TRK,(10,10),RLSE)                                      00014100
//TIJ472R1 DD DSN=&&TIJ472R1,DISP=(,PASS),UNIT=SYSDA,                   00014200
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00014300
//        SPACE=(TRK,(10,10),RLSE)                                      00014400
//CDJ472R1 DD DSN=&&CDJ472R1,DISP=(,PASS),UNIT=SYSDA,                   00014500
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00014600
//        SPACE=(TRK,(10,10),RLSE)                                      00014700
//HER472R1 DD DSN=&&HER472R1,DISP=(,PASS),UNIT=SYSDA,                   00014800
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00014900
//        SPACE=(TRK,(10,10),RLSE)                                      00015000
//MTY472R1 DD DSN=&&MTY472R1,DISP=(,PASS),UNIT=SYSDA,                   00015100
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00015200
//        SPACE=(TRK,(10,10),RLSE)                                      00015300
//TOR472R1 DD DSN=&&TOR472R1,DISP=(,PASS),UNIT=SYSDA,                   00015400
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00015500
//        SPACE=(TRK,(10,10),RLSE)                                      00015600
//CHI472R1 DD DSN=&&CHI472R1,DISP=(,PASS),UNIT=SYSDA,                   00015700
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00015800
//        SPACE=(TRK,(10,10),RLSE)                                      00015900
//MAZ472R1 DD DSN=&&MAZ472R1,DISP=(,PASS),UNIT=SYSDA,                   00016000
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00016100
//        SPACE=(TRK,(10,10),RLSE)                                      00016200
//KRO472R1 DD DSN=&&KRO472R1,DISP=(,PASS),UNIT=SYSDA,                   00016300
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00016400
//        SPACE=(TRK,(10,10),RLSE)                                      00016500
//SLP472R1 DD DSN=&&SLP472R1,DISP=(,PASS),UNIT=SYSDA,                   00016600
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00016700
//        SPACE=(TRK,(10,10),RLSE)                                      00016800
//GUA472R1 DD DSN=&&GUA472R1,DISP=(,PASS),UNIT=SYSDA,                   00016900
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00017000
//        SPACE=(TRK,(10,10),RLSE)                                      00017100
//ZAC472R1 DD DSN=&&ZAC472R1,DISP=(,PASS),UNIT=SYSDA,                   00017200
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00017300
//        SPACE=(TRK,(10,10),RLSE)                                      00017400
//JER472R1 DD DSN=&&JER472R1,DISP=(,PASS),UNIT=SYSDA,                   00017500
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00017600
//        SPACE=(TRK,(10,10),RLSE)                                      00017700
//LEO472R1 DD DSN=&&LEO472R1,DISP=(,PASS),UNIT=SYSDA,                   00017800
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00017900
//        SPACE=(TRK,(10,10),RLSE)                                      00018000
//MOR472R1 DD DSN=&&MOR472R1,DISP=(,PASS),UNIT=SYSDA,                   00018100
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00018200
//        SPACE=(TRK,(10,10),RLSE)                                      00018300
//AGS472R1 DD DSN=&&AGS472R1,DISP=(,PASS),UNIT=SYSDA,                   00018400
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00018500
//        SPACE=(TRK,(10,10),RLSE)                                      00018600
//TAM472R1 DD DSN=&&TAM472R1,DISP=(,PASS),UNIT=SYSDA,                   00018700
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00018800
//        SPACE=(TRK,(10,10),RLSE)                                      00018900
//VER472R1 DD DSN=&&VER472R1,DISP=(,PASS),UNIT=SYSDA,                   00019000
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00019100
//        SPACE=(TRK,(10,10),RLSE)                                      00019200
//JAL472R1 DD DSN=&&JAL472R1,DISP=(,PASS),UNIT=SYSDA,                   00019300
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00019400
//        SPACE=(TRK,(10,10),RLSE)                                      00019500
//MER472R1 DD DSN=&&MER472R1,DISP=(,PASS),UNIT=SYSDA,                   00019600
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00019700
//        SPACE=(TRK,(10,10),RLSE)                                      00019800
//TOL472R1 DD DSN=&&TOL472R1,DISP=(,PASS),UNIT=SYSDA,                   00019900
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00020000
//        SPACE=(TRK,(10,10),RLSE)                                      00020100
//PUE472R1 DD DSN=&&PUE472R1,DISP=(,PASS),UNIT=SYSDA,                   00020200
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00020300
//        SPACE=(TRK,(10,10),RLSE)                                      00020400
//MMP472R1 DD DSN=&&MMP472R1,DISP=(,PASS),UNIT=SYSDA,                   00020500
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00020600
//        SPACE=(TRK,(10,10),RLSE)                                      00020700
//SAN472R1 DD DSN=&&SAN472R1,DISP=(,PASS),UNIT=SYSDA,                   00020800
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00020900
//        SPACE=(TRK,(10,10),RLSE)                                      00021000
//CUL472R1 DD DSN=&&CUL472R1,DISP=(,PASS),UNIT=SYSDA,                   00021100
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00021200
//        SPACE=(TRK,(10,10),RLSE)                                      00021300
//MMU472R1 DD DSN=&&MMU472R1,DISP=(,PASS),UNIT=SYSDA,                   00021400
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00021500
//        SPACE=(TRK,(10,10),RLSE)                                      00021600
//PDR472R2 DD DSN=&&PDR472R2,DISP=(,PASS),UNIT=SYSDA,                   00021700
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00021800
//        SPACE=(TRK,(10,10),RLSE)                                      00021900
//POL472R2 DD DSN=&&POL472R2,DISP=(,PASS),UNIT=SYSDA,                   00022000
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00022100
//        SPACE=(TRK,(10,10),RLSE)                                      00022200
//SAT472R2 DD DSN=&&SAT472R2,DISP=(,PASS),UNIT=SYSDA,                   00022300
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00022400
//        SPACE=(TRK,(10,10),RLSE)                                      00022500
//TIJ472R2 DD DSN=&&TIJ472R2,DISP=(,PASS),UNIT=SYSDA,                   00022600
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00022700
//        SPACE=(TRK,(10,10),RLSE)                                      00022800
//CDJ472R2 DD DSN=&&CDJ472R2,DISP=(,PASS),UNIT=SYSDA,                   00022900
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00023000
//        SPACE=(TRK,(10,10),RLSE)                                      00023100
//HER472R2 DD DSN=&&HER472R2,DISP=(,PASS),UNIT=SYSDA,                   00023200
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00023300
//        SPACE=(TRK,(10,10),RLSE)                                      00023400
//MTY472R2 DD DSN=&&MTY472R2,DISP=(,PASS),UNIT=SYSDA,                   00023500
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00023600
//        SPACE=(TRK,(10,10),RLSE)                                      00023700
//TOR472R2 DD DSN=&&TOR472R2,DISP=(,PASS),UNIT=SYSDA,                   00023800
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00023900
//        SPACE=(TRK,(10,10),RLSE)                                      00024000
//CHI472R2 DD DSN=&&CHI472R2,DISP=(,PASS),UNIT=SYSDA,                   00024100
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00024200
//        SPACE=(TRK,(10,10),RLSE)                                      00024300
//MAZ472R2 DD DSN=&&MAZ472R2,DISP=(,PASS),UNIT=SYSDA,                   00024400
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00024500
//        SPACE=(TRK,(10,10),RLSE)                                      00024600
//KRO472R2 DD DSN=&&KRO472R2,DISP=(,PASS),UNIT=SYSDA,                   00024700
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00024800
//        SPACE=(TRK,(10,10),RLSE)                                      00024900
//SLP472R2 DD DSN=&&SLP472R2,DISP=(,PASS),UNIT=SYSDA,                   00025000
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00025100
//        SPACE=(TRK,(10,10),RLSE)                                      00025200
//GUA472R2 DD DSN=&&GUA472R2,DISP=(,PASS),UNIT=SYSDA,                   00025300
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00025400
//        SPACE=(TRK,(10,10),RLSE)                                      00025500
//ZAC472R2 DD DSN=&&ZAC472R2,DISP=(,PASS),UNIT=SYSDA,                   00025600
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00025700
//        SPACE=(TRK,(10,10),RLSE)                                      00025800
//JER472R2 DD DSN=&&JER472R2,DISP=(,PASS),UNIT=SYSDA,                   00025900
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00026000
//        SPACE=(TRK,(10,10),RLSE)                                      00026100
//LEO472R2 DD DSN=&&LEO472R2,DISP=(,PASS),UNIT=SYSDA,                   00026200
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00026300
//        SPACE=(TRK,(10,10),RLSE)                                      00026400
//MOR472R2 DD DSN=&&MOR472R2,DISP=(,PASS),UNIT=SYSDA,                   00026500
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00026600
//        SPACE=(TRK,(10,10),RLSE)                                      00026700
//AGS472R2 DD DSN=&&AGS472R2,DISP=(,PASS),UNIT=SYSDA,                   00026800
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00026900
//        SPACE=(TRK,(10,10),RLSE)                                      00027000
//TAM472R2 DD DSN=&&TAM472R2,DISP=(,PASS),UNIT=SYSDA,                   00027100
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00027200
//        SPACE=(TRK,(10,10),RLSE)                                      00027300
//VER472R2 DD DSN=&&VER472R2,DISP=(,PASS),UNIT=SYSDA,                   00027400
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00027500
//        SPACE=(TRK,(10,10),RLSE)                                      00027600
//JAL472R2 DD DSN=&&JAL472R2,DISP=(,PASS),UNIT=SYSDA,                   00027700
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00027800
//        SPACE=(TRK,(10,10),RLSE)                                      00027900
//MER472R2 DD DSN=&&MER472R2,DISP=(,PASS),UNIT=SYSDA,                   00028000
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00028100
//        SPACE=(TRK,(10,10),RLSE)                                      00028200
//TOL472R2 DD DSN=&&TOL472R2,DISP=(,PASS),UNIT=SYSDA,                   00028300
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00028400
//        SPACE=(TRK,(10,10),RLSE)                                      00028500
//PUE472R2 DD DSN=&&PUE472R2,DISP=(,PASS),UNIT=SYSDA,                   00028600
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00028700
//        SPACE=(TRK,(10,10),RLSE)                                      00028800
//MMP472R2 DD DSN=&&MMP472R2,DISP=(,PASS),UNIT=SYSDA,                   00028900
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00029000
//        SPACE=(TRK,(10,10),RLSE)                                      00029100
//SAN472R2 DD DSN=&&SAN472R2,DISP=(,PASS),UNIT=SYSDA,                   00029200
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00029300
//        SPACE=(TRK,(10,10),RLSE)                                      00029400
//CUL472R2 DD DSN=&&CUL472R2,DISP=(,PASS),UNIT=SYSDA,                   00029500
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00029600
//        SPACE=(TRK,(10,10),RLSE)                                      00029700
//MMU472R2 DD DSN=&&MMU472R2,DISP=(,PASS),UNIT=SYSDA,                   00029800
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00029900
//        SPACE=(TRK,(10,10),RLSE)                                      00030000
//PDR472R3 DD DSN=&&PDR472R3,DISP=(,PASS),UNIT=SYSDA,                   00030100
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00030200
//        SPACE=(TRK,(10,10),RLSE)                                      00030300
//POL472R3 DD DSN=&&POL472R3,DISP=(,PASS),UNIT=SYSDA,                   00030400
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00030500
//        SPACE=(TRK,(10,10),RLSE)                                      00030600
//SAT472R3 DD DSN=&&SAT472R3,DISP=(,PASS),UNIT=SYSDA,                   00030700
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00030800
//        SPACE=(TRK,(10,10),RLSE)                                      00030900
//TIJ472R3 DD DSN=&&TIJ472R3,DISP=(,PASS),UNIT=SYSDA,                   00031000
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00031100
//        SPACE=(TRK,(10,10),RLSE)                                      00031200
//CDJ472R3 DD DSN=&&CDJ472R3,DISP=(,PASS),UNIT=SYSDA,                   00031300
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00031400
//        SPACE=(TRK,(10,10),RLSE)                                      00031500
//HER472R3 DD DSN=&&HER472R3,DISP=(,PASS),UNIT=SYSDA,                   00031600
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00031700
//        SPACE=(TRK,(10,10),RLSE)                                      00031800
//MTY472R3 DD DSN=&&MTY472R3,DISP=(,PASS),UNIT=SYSDA,                   00031900
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00032000
//        SPACE=(TRK,(10,10),RLSE)                                      00032100
//TOR472R3 DD DSN=&&TOR472R3,DISP=(,PASS),UNIT=SYSDA,                   00032200
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00032300
//        SPACE=(TRK,(10,10),RLSE)                                      00032400
//CHI472R3 DD DSN=&&CHI472R3,DISP=(,PASS),UNIT=SYSDA,                   00032500
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00032600
//        SPACE=(TRK,(10,10),RLSE)                                      00032700
//MAZ472R3 DD DSN=&&MAZ472R3,DISP=(,PASS),UNIT=SYSDA,                   00032800
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00032900
//        SPACE=(TRK,(10,10),RLSE)                                      00033000
//KRO472R3 DD DSN=&&KRO472R3,DISP=(,PASS),UNIT=SYSDA,                   00033100
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00033200
//        SPACE=(TRK,(10,10),RLSE)                                      00033300
//SLP472R3 DD DSN=&&SLP472R3,DISP=(,PASS),UNIT=SYSDA,                   00033400
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00033500
//        SPACE=(TRK,(10,10),RLSE)                                      00033600
//GUA472R3 DD DSN=&&GUA472R3,DISP=(,PASS),UNIT=SYSDA,                   00033700
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00033800
//        SPACE=(TRK,(10,10),RLSE)                                      00033900
//ZAC472R3 DD DSN=&&ZAC472R3,DISP=(,PASS),UNIT=SYSDA,                   00034000
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00034100
//        SPACE=(TRK,(10,10),RLSE)                                      00034200
//JER472R3 DD DSN=&&JER472R3,DISP=(,PASS),UNIT=SYSDA,                   00034300
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00034400
//        SPACE=(TRK,(10,10),RLSE)                                      00034500
//LEO472R3 DD DSN=&&LEO472R3,DISP=(,PASS),UNIT=SYSDA,                   00034600
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00034700
//        SPACE=(TRK,(10,10),RLSE)                                      00034800
//MOR472R3 DD DSN=&&MOR472R3,DISP=(,PASS),UNIT=SYSDA,                   00034900
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00035000
//        SPACE=(TRK,(10,10),RLSE)                                      00035100
//AGS472R3 DD DSN=&&AGS472R3,DISP=(,PASS),UNIT=SYSDA,                   00035200
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00035300
//        SPACE=(TRK,(10,10),RLSE)                                      00035400
//TAM472R3 DD DSN=&&TAM472R3,DISP=(,PASS),UNIT=SYSDA,                   00035500
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00035600
//        SPACE=(TRK,(10,10),RLSE)                                      00035700
//VER472R3 DD DSN=&&VER472R3,DISP=(,PASS),UNIT=SYSDA,                   00035800
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00035900
//        SPACE=(TRK,(10,10),RLSE)                                      00036000
//JAL472R3 DD DSN=&&JAL472R3,DISP=(,PASS),UNIT=SYSDA,                   00036100
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00036200
//        SPACE=(TRK,(10,10),RLSE)                                      00036300
//MER472R3 DD DSN=&&MER472R3,DISP=(,PASS),UNIT=SYSDA,                   00036400
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00036500
//        SPACE=(TRK,(10,10),RLSE)                                      00036600
//TOL472R3 DD DSN=&&TOL472R3,DISP=(,PASS),UNIT=SYSDA,                   00036700
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00036800
//        SPACE=(TRK,(10,10),RLSE)                                      00036900
//PUE472R3 DD DSN=&&PUE472R3,DISP=(,PASS),UNIT=SYSDA,                   00037000
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00037100
//        SPACE=(TRK,(10,10),RLSE)                                      00037200
//MMP472R3 DD DSN=&&MMP472R3,DISP=(,PASS),UNIT=SYSDA,                   00037300
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00037400
//        SPACE=(TRK,(10,10),RLSE)                                      00037500
//SAN472R3 DD DSN=&&SAN472R3,DISP=(,PASS),UNIT=SYSDA,                   00037600
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00037700
//        SPACE=(TRK,(10,10),RLSE)                                      00037800
//CUL472R3 DD DSN=&&CUL472R3,DISP=(,PASS),UNIT=SYSDA,                   00037900
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00038000
//        SPACE=(TRK,(10,10),RLSE)                                      00038100
//MMU472R3 DD DSN=&&MMU472R3,DISP=(,PASS),UNIT=SYSDA,                   00038200
//        DCB=(RECFM=FBA,LRECL=132,BLKSIZE=0),                          00038300
//        SPACE=(TRK,(10,10),RLSE)                                      00038400
//ZZZ472R3 DD SYSOUT=(W,,ZZZ)                                           00038500
//ZZZ472R2 DD SYSOUT=(V,,ZZZ)                                           00038600
//ZZZ472R1 DD SYSOUT=(V,,ZZZ)                                           00038700
//*VIB472R4 DD SYSOUT=(V,,ZW33)                                         00038800
//VIB472R4 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00038900
//VIB472T1 DD DSN=&&CAD0103,                                            00039000
//        DISP=(NEW,PASS),                                              00039100
//        DCB=(LRECL=210,BLKSIZE=0,RECFM=FB),                           00039200
//        UNIT=SYSDA,                                                   00039300
//        SPACE=(TRK,(2,2))                                             00039400
//ZPR472R1 DD DSN=SIVA.OTR.FIX.OP02.CAD0100.ARCH1,                      00039500
//            DISP=(NEW,CATLG,DELETE),                                  00039600
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE),                        00039700
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0)                       00039800
//ZPR472R2 DD DSN=SIVA.OTR.FIX.OP02.CAD0100.ARCH2,                      00039900
//            DISP=(NEW,CATLG,DELETE),                                  00040000
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE),                        00040100
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0)                       00040200
//ZPR472R3 DD DSN=SIVA.OTR.FIX.OP02.CAD0100.ARCH3,                      00040300
//            DISP=(NEW,CATLG,DELETE),                                  00040400
//            UNIT=3390,SPACE=(CYL,(10,5),RLSE),                        00040500
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0)                       00040600
//SORTWORK DD UNIT=SYSDA,SPACE=(TRK,(10,5))                             00040700
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00040800
//SYSPRINT DD SYSOUT=X                                                  00040900
//SYSOUT   DD SYSOUT=X                                                  00041000
//SYSDBOUT DD SYSOUT=X                                                  00041100
//SYSABOUT DD DUMMY                                                     00041200
//SYSUDUMP DD DUMMY                                                     00041300
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0104),DISP=SHR                          00041400
//*-------------------------------------------------------------------  00041500
//*        REPORTES DE ORDENES SOLICITADAS Y CANCELADAS POR PROMOTOR    00041600
//*                        -- VIBU87D --                               *00041700
//* JFE --> REPORTE PARALELO DEL VIB472D QUE CORRE EN EL CAD0104       *00041800
//*-------------------------------------------------------------------  00041900
//FDD3338A EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00042000
//ZZZU87R3 DD SYSOUT=(W,,ZZZ)                                           00042100
//ZZZU87R2 DD SYSOUT=(V,,ZZZ)                                           00042200
//ZZZU87R1 DD SYSOUT=(V,,ZZZ)                                           00042300
//*VIBU87R4 DD SYSOUT=(V,,ZW33)                                         00042400
//VIBU87R4 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00042500
//VIBU87T1 DD DSN=&&CAD0103,                                            00042600
//        DISP=(NEW,PASS),                                              00042700
//        DCB=(LRECL=210,BLKSIZE=0,RECFM=FB),                           00042800
//        UNIT=SYSDA,                                                   00042900
//        SPACE=(TRK,(2,2))                                             00043000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00043100
//SYSPRINT DD SYSOUT=X                                                  00043200
//SYSOUT   DD SYSOUT=X                                                  00043300
//SYSDBOUT DD SYSOUT=X                                                  00043400
//SYSABOUT DD DUMMY                                                     00043500
//SYSUDUMP DD DUMMY                                                     00043600
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0104A),DISP=SHR                         00043700
//**********************************************************************00043800
//*                        * ICEGENER *                                 00043900
//*                                                                     00044000
//* OBJETIVO : MANDAR A SPOOL ARCHIVOS IMPRESIONES PASO ANTERIOR        00044100
//*                                                                     00044200
//* PASO REINICIBLE POR RESTART.                                        00044300
//**********************************************************************00044400
//*                                                                     00044500
//FDD3337  EXEC PGM=ICEGENER,REGION=4M,TIME=100,COND=(4,LT)             00044600
//SYSUT1   DD  DSN=SIVA.OTR.FIX.OP02.CAD0100.ARCH1,DISP=SHR             00044700
//         DD  DSN=SIVA.OTR.FIX.OP02.CAD0100.ARCH2,DISP=SHR             00044800
//         DD  DSN=SIVA.OTR.FIX.OP02.CAD0100.ARCH3,DISP=SHR             00044900
//SYSUT2   DD  SYSOUT=(M,,OP02)                                         00045000
//SYSPRINT DD  SYSOUT=X                                                 00045100
//SYSOUT   DD  SYSOUT=X                                                 00045200
//SYSDBOUT DD  SYSOUT=X                                                 00045300
//SYSIN    DD  DUMMY                                                    00045400
//*                                                                     00045500
//**********************************************************************00045600
//*                        -- ICEGENER --                              *00045700
//*                                                                    *00045800
//*   OBJETIVO: MANDA A COMPRIMIDO ARCHIVOS ANTERIORES PARA SU SEPARA  *00045900
//*             CION POR CTD                                           *00046000
//*                                                                    *00046100
//* ACTUALIZA TABLA : NINGUNA.                                         *00046200
//*                                                                    *00046300
//* PASO REINICIABLE POR RESTART.                                      *00046400
//**********************************************************************00046500
//FDD3336  EXEC PGM=ICEGENER,REGION=0M,COND=(4,LT)                      00046600
//SYSUT1   DD DSN=&&PDR472R1,DISP=(OLD,DELETE)                          00046700
//         DD DSN=&&POL472R1,DISP=(OLD,DELETE)                          00046800
//         DD DSN=&&SAT472R1,DISP=(OLD,DELETE)                          00046900
//         DD DSN=&&TIJ472R1,DISP=(OLD,DELETE)                          00047000
//         DD DSN=&&CDJ472R1,DISP=(OLD,DELETE)                          00047100
//         DD DSN=&&HER472R1,DISP=(OLD,DELETE)                          00047200
//         DD DSN=&&MTY472R1,DISP=(OLD,DELETE)                          00047300
//         DD DSN=&&TOR472R1,DISP=(OLD,DELETE)                          00047400
//         DD DSN=&&CHI472R1,DISP=(OLD,DELETE)                          00047500
//         DD DSN=&&MAZ472R1,DISP=(OLD,DELETE)                          00047600
//         DD DSN=&&KRO472R1,DISP=(OLD,DELETE)                          00047700
//         DD DSN=&&SLP472R1,DISP=(OLD,DELETE)                          00047800
//         DD DSN=&&GUA472R1,DISP=(OLD,DELETE)                          00047900
//         DD DSN=&&ZAC472R1,DISP=(OLD,DELETE)                          00048000
//         DD DSN=&&JER472R1,DISP=(OLD,DELETE)                          00048100
//         DD DSN=&&LEO472R1,DISP=(OLD,DELETE)                          00048200
//         DD DSN=&&MOR472R1,DISP=(OLD,DELETE)                          00048300
//         DD DSN=&&AGS472R1,DISP=(OLD,DELETE)                          00048400
//         DD DSN=&&TAM472R1,DISP=(OLD,DELETE)                          00048500
//         DD DSN=&&VER472R1,DISP=(OLD,DELETE)                          00048600
//         DD DSN=&&JAL472R1,DISP=(OLD,DELETE)                          00048700
//         DD DSN=&&MER472R1,DISP=(OLD,DELETE)                          00048800
//         DD DSN=&&TOL472R1,DISP=(OLD,DELETE)                          00048900
//         DD DSN=&&PUE472R1,DISP=(OLD,DELETE)                          00049000
//         DD DSN=&&MMP472R1,DISP=(OLD,DELETE)                          00049100
//         DD DSN=&&SAN472R1,DISP=(OLD,DELETE)                          00049200
//         DD DSN=&&CUL472R1,DISP=(OLD,DELETE)                          00049300
//         DD DSN=&&MMU472R1,DISP=(OLD,DELETE)                          00049400
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00049500
//SYSPRINT DD SYSOUT=*                                                  00049600
//SYSOUT   DD SYSOUT=*                                                  00049700
//SYSIN    DD DUMMY                                                     00049800
//*                                                                     00049900
//**********************************************************************00050000
//*                        -- ICEGENER --                              *00050100
//*                                                                    *00050200
//*   OBJETIVO: MANDA A COMPRIMIDO ARCHIVOS ANTERIORES PARA SU SEPARA  *00050300
//*             CION POR CTD                                           *00050400
//*                                                                    *00050500
//* ACTUALIZA TABLA : NINGUNA.                                         *00050600
//*                                                                    *00050700
//* PASO REINICIABLE POR RESTART.                                      *00050800
//**********************************************************************00050900
//FDD3335  EXEC PGM=ICEGENER,REGION=0M,COND=(4,LT)                      00051000
//SYSUT1   DD DSN=&&PDR472R2,DISP=(OLD,DELETE)                          00051100
//         DD DSN=&&POL472R2,DISP=(OLD,DELETE)                          00051200
//         DD DSN=&&SAT472R2,DISP=(OLD,DELETE)                          00051300
//         DD DSN=&&TIJ472R2,DISP=(OLD,DELETE)                          00051400
//         DD DSN=&&CDJ472R2,DISP=(OLD,DELETE)                          00051500
//         DD DSN=&&HER472R2,DISP=(OLD,DELETE)                          00051600
//         DD DSN=&&MTY472R2,DISP=(OLD,DELETE)                          00051700
//         DD DSN=&&TOR472R2,DISP=(OLD,DELETE)                          00051800
//         DD DSN=&&CHI472R2,DISP=(OLD,DELETE)                          00051900
//         DD DSN=&&MAZ472R2,DISP=(OLD,DELETE)                          00052000
//         DD DSN=&&KRO472R2,DISP=(OLD,DELETE)                          00052100
//         DD DSN=&&SLP472R2,DISP=(OLD,DELETE)                          00052200
//         DD DSN=&&GUA472R2,DISP=(OLD,DELETE)                          00052300
//         DD DSN=&&ZAC472R2,DISP=(OLD,DELETE)                          00052400
//         DD DSN=&&JER472R2,DISP=(OLD,DELETE)                          00052500
//         DD DSN=&&LEO472R2,DISP=(OLD,DELETE)                          00052600
//         DD DSN=&&MOR472R2,DISP=(OLD,DELETE)                          00052700
//         DD DSN=&&AGS472R2,DISP=(OLD,DELETE)                          00052800
//         DD DSN=&&TAM472R2,DISP=(OLD,DELETE)                          00052900
//         DD DSN=&&VER472R2,DISP=(OLD,DELETE)                          00053000
//         DD DSN=&&JAL472R2,DISP=(OLD,DELETE)                          00053100
//         DD DSN=&&MER472R2,DISP=(OLD,DELETE)                          00053200
//         DD DSN=&&TOL472R2,DISP=(OLD,DELETE)                          00053300
//         DD DSN=&&PUE472R2,DISP=(OLD,DELETE)                          00053400
//         DD DSN=&&MMP472R2,DISP=(OLD,DELETE)                          00053500
//         DD DSN=&&SAN472R2,DISP=(OLD,DELETE)                          00053600
//         DD DSN=&&CUL472R2,DISP=(OLD,DELETE)                          00053700
//         DD DSN=&&MMU472R2,DISP=(OLD,DELETE)                          00053800
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00053900
//SYSPRINT DD SYSOUT=*                                                  00054000
//SYSOUT   DD SYSOUT=*                                                  00054100
//SYSIN    DD DUMMY                                                     00054200
//*                                                                     00054300
//**********************************************************************00054400
//*                        -- ICEGENER --                              *00054500
//*                                                                    *00054600
//*   OBJETIVO: MANDA A COMPRIMIDO ARCHIVOS ANTERIORES PARA SU SEPARA  *00054700
//*             CION POR CTD                                           *00054800
//*                                                                    *00054900
//* ACTUALIZA TABLA : NINGUNA.                                         *00055000
//*                                                                    *00055100
//* PASO REINICIABLE POR RESTART.                                      *00055200
//**********************************************************************00055300
//FDD3334  EXEC PGM=ICEGENER,REGION=0M,COND=(4,LT)                      00055400
//SYSUT1   DD DSN=&&PDR472R3,DISP=(OLD,DELETE)                          00055500
//         DD DSN=&&POL472R3,DISP=(OLD,DELETE)                          00055600
//         DD DSN=&&SAT472R3,DISP=(OLD,DELETE)                          00055700
//         DD DSN=&&TIJ472R3,DISP=(OLD,DELETE)                          00055800
//         DD DSN=&&CDJ472R3,DISP=(OLD,DELETE)                          00055900
//         DD DSN=&&HER472R3,DISP=(OLD,DELETE)                          00056000
//         DD DSN=&&MTY472R3,DISP=(OLD,DELETE)                          00056100
//         DD DSN=&&TOR472R3,DISP=(OLD,DELETE)                          00056200
//         DD DSN=&&CHI472R3,DISP=(OLD,DELETE)                          00056300
//         DD DSN=&&MAZ472R3,DISP=(OLD,DELETE)                          00056400
//         DD DSN=&&KRO472R3,DISP=(OLD,DELETE)                          00056500
//         DD DSN=&&SLP472R3,DISP=(OLD,DELETE)                          00056600
//         DD DSN=&&GUA472R3,DISP=(OLD,DELETE)                          00056700
//         DD DSN=&&ZAC472R3,DISP=(OLD,DELETE)                          00056800
//         DD DSN=&&JER472R3,DISP=(OLD,DELETE)                          00056900
//         DD DSN=&&LEO472R3,DISP=(OLD,DELETE)                          00057000
//         DD DSN=&&MOR472R3,DISP=(OLD,DELETE)                          00057100
//         DD DSN=&&AGS472R3,DISP=(OLD,DELETE)                          00057200
//         DD DSN=&&TAM472R3,DISP=(OLD,DELETE)                          00057300
//         DD DSN=&&VER472R3,DISP=(OLD,DELETE)                          00057400
//         DD DSN=&&JAL472R3,DISP=(OLD,DELETE)                          00057500
//         DD DSN=&&MER472R3,DISP=(OLD,DELETE)                          00057600
//         DD DSN=&&TOL472R3,DISP=(OLD,DELETE)                          00057700
//         DD DSN=&&PUE472R3,DISP=(OLD,DELETE)                          00057800
//         DD DSN=&&MMP472R3,DISP=(OLD,DELETE)                          00057900
//         DD DSN=&&SAN472R3,DISP=(OLD,DELETE)                          00058000
//         DD DSN=&&CUL472R3,DISP=(OLD,DELETE)                          00058100
//         DD DSN=&&MMU472R3,DISP=(OLD,DELETE)                          00058200
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00058300
//SYSPRINT DD SYSOUT=*                                                  00058400
//SYSOUT   DD SYSOUT=*                                                  00058500
//SYSIN    DD DUMMY                                                     00058600
//*                                                                     00058700
//*-------------------------------------------------------------------  00058800
//*        REPORTES DE ORDENES SOLICITADAS Y CANCELADAS                 00058900
//*-------------------------------------------------------------------  00059000
//FDD3333  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00059100
//VIB466R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00059200
//VIB466R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00059300
//VIB466R3 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00059400
//VIB466A1 DD DSN=SIVA.MDC.FIX.VIB466A1,                                00059500
//        DISP=(NEW,CATLG,DELETE),UNIT=SYSDA,                           00059600
//        DCB=(RECFM=FBA,LRECL=133,BLKSIZE=0),                          00059700
//        SPACE=(TRK,(15,15),RLSE)                                      00059800
//VIB466A2 DD DSN=SIVA.MDC.FIX.VIB466A2,                                00059900
//        DISP=(NEW,CATLG,DELETE),UNIT=SYSDA,                           00060000
//        DCB=(RECFM=FB,LRECL=169,BLKSIZE=0),                           00060100
//        SPACE=(TRK,(15,15),RLSE)                                      00060200
//VIB466T1 DD DSN=SIVA.CARDS(CAD0112D),DISP=SHR                         00060300
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00060400
//SYSPRINT DD SYSOUT=X                                                  00060500
//SYSOUT   DD SYSOUT=X                                                  00060600
//SYSDBOUT DD SYSOUT=X                                                  00060700
//SYSABOUT DD DUMMY                                                     00060800
//SYSUDUMP DD DUMMY                                                     00060900
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0606),DISP=SHR                          00061000
//*                                                                     00061100
//*-------------------------------------------------------------------  00061200
//*        REPORTES DE ORDENES SOLICITADAS Y CANCELADAS                 00061300
//*                        -- VIBU86D --                               *00061400
//* JFE --> REPORTE PARALELO DEL VIB466D QUE CORRE EN EL CAD0606       *00061500
//*-------------------------------------------------------------------  00061600
//FDD3333A EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00061700
//VIBU86R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00061800
//VIBU86R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00061900
//VIBU86R3 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00062000
//VIBU86A1 DD DSN=SIVA.MDC.FIX.VIBU86A1,                                00062100
//        DISP=(NEW,CATLG,DELETE),UNIT=SYSDA,                           00062200
//        DCB=(RECFM=FBA,LRECL=133,BLKSIZE=0),                          00062300
//        SPACE=(TRK,(15,15),RLSE)                                      00062400
//VIBU86A2 DD DSN=SIVA.MDC.FIX.VIBU86A2,                                00062500
//        DISP=(NEW,CATLG,DELETE),UNIT=SYSDA,                           00062600
//        DCB=(RECFM=FB,LRECL=169,BLKSIZE=0),                           00062700
//        SPACE=(TRK,(15,15),RLSE)                                      00062800
//VIBU86T1 DD DSN=SIVA.CARDS(CAD0112D),DISP=SHR                         00062900
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00063000
//SYSPRINT DD SYSOUT=X                                                  00063100
//SYSOUT   DD SYSOUT=X                                                  00063200
//SYSDBOUT DD SYSOUT=X                                                  00063300
//SYSABOUT DD DUMMY                                                     00063400
//SYSUDUMP DD DUMMY                                                     00063500
//SYSTSIN  DD DSN=SIVA.CARDS(CAD0606A),DISP=SHR                         00063600
//*                                                                     00063700
//********************************************************************* 00063800
//* BORRADO DE ARCHIVOS                                                 00063900
//********************************************************************* 00064000
//*                                                                     00064100
//FDD3332      EXEC PGM=IDCAMS,COND=(4,LT)                              00064200
//SYSPRINT DD  SYSOUT=*                                                 00064300
//SYSIN    DD  DSN=SIVA.CARDS(FDD3332),DISP=SHR                         00064400
//*                                                                     00064500
//********************************************************************* 00064600
//*                          * VOBU08D *                                00064700
//* GENERACION DE INFORMACION MENSUAL ARCHIVO VOBU08D                   00064800
//********************************************************************* 00064900
//*                                                                     00065000
//FDD3331      EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),               00065100
//             REGION=4096K,                                            00065200
//             TIME=100                                                 00065300
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00065400
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00065500
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=1320                                00065600
//VOBU08DO DD  DSN=SIVA.OTR.WKF.VOBU08D,                                00065700
//             DISP=(NEW,CATLG,DELETE),                                 00065800
//             DCB=(RECFM=FBA,LRECL=141,BLKSIZE=0),                     00065900
//             UNIT=SYSDA,                                              00066000
//             SPACE=(CYL,(10,1),RLSE)                                  00066100
//VOBU08A1 DD  DSN=SIVA.OTR.FIX.VOBU08D.ANUAL,DISP=SHR                  00066200
//VOBU08T1 DD  DSN=SIVA.OTR.WKF.VOBU08D.T1,                             00066300
//             DISP=(NEW,CATLG,DELETE),                                 00066400
//             DCB=(RECFM=FBA,LRECL=141,BLKSIZE=0),                     00066500
//             UNIT=SYSDA,                                              00066600
//             SPACE=(CYL,(10,1),RLSE)                                  00066700
//SORTWK01 DD  DSN=SIVA.OTR.WKF.VOBU08D.S1,                             00066800
//             DISP=(NEW,CATLG,DELETE),                                 00066900
//             DCB=(RECFM=FBA,LRECL=141,BLKSIZE=0),                     00067000
//             UNIT=SYSDA,                                              00067100
//             SPACE=(CYL,(10,1),RLSE)                                  00067200
//VOBU08CC DD  DSN=SIVA.OTR.WKF.VOBU08D.CCO,                            00067300
//             DISP=(NEW,CATLG,DELETE),                                 00067400
//             UNIT=SYSDA,SPACE=(CYL,(10,1),RLSE),                      00067500
//             DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0)                      00067600
//SYSPRINT DD  SYSOUT=X                                                 00067700
//SYSINT   DD  SYSOUT=X                                                 00067800
//SYSOUT   DD  SYSOUT=X                                                 00067900
//PRINT    DD  SYSOUT=X                                                 00068000
//SYSDBOUT DD  SYSOUT=X                                                 00068100
//SYSABOUT DD  SYSOUT=X                                                 00068200
//SYSUDUMP DD  DUMMY                                                    00068300
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD3331),DISP=SHR                         00068400
//********************************************************************* 00068500
//*                          * FDD3330 *                                00068600
//* COPIA DE SEGURIDAD EN UN ARCHIVO TEMPORAL PARA CONCATENACION        00068700
//********************************************************************* 00068800
//*                                                                     00068900
//FDD3330  EXEC PGM=IDCAMS,REGION=0M,COND=(4,LT)                        00069000
//SYSOUT   DD  SYSOUT=*                                                 00069100
//SYSPRINT DD  SYSOUT=*                                                 00069200
//SYSUT1   DD  DSN=SIVA.OTR.FIX.VOBU08D.ANUAL,                          00069300
//             DISP=SHR                                                 00069400
//SYSUT2   DD  DSN=SIVA.OTR.WKF.VOBU08D.PASO,                           00069500
//             DISP=(NEW,CATLG,DELETE),                                 00069600
//             UNIT=SYSDA,SPACE=(CYL,(10,1),RLSE),                      00069700
//             DCB=(LRECL=141,RECFM=FBA,BLKSIZE=0)                      00069800
//SYSIN    DD  DSN=SIVA.CARDS(FDD3330),DISP=SHR                         00069900
//*                                                                     00070000
//********************************************************************* 00070100
//* BORRADO DE ARCHIVO ANUAL                                            00070200
//********************************************************************* 00070300
//*                                                                     00070400
//FDD3329      EXEC PGM=IDCAMS,COND=(4,LT)                              00070500
//SYSPRINT DD  SYSOUT=*                                                 00070600
//SYSIN    DD  DSN=SIVA.CARDS(FDD3329),DISP=SHR                         00070700
//*                                                                     00070800
//********************************************************************* 00070900
//*                          * FDD3328 *                                00071000
//* CONCATENACION DE 2 ARCHIVOS EN EL ARCHIVO ANUAL.                    00071100
//********************************************************************* 00071200
//FDD3328  EXEC PGM=ICEGENER,DYNAMNBR=20,REGION=0M,COND=(4,LT)          00071300
//SYSOUT   DD  SYSOUT=*                                                 00071400
//SYSPRINT DD  SYSOUT=*                                                 00071500
//SYSIN    DD  DUMMY                                                    00071600
//SYSUT1   DD  DSN=SIVA.OTR.WKF.VOBU08D,DISP=SHR                        00071700
//         DD  DSN=SIVA.OTR.WKF.VOBU08D.PASO,DISP=SHR                   00071800
//SYSUT2   DD  DSN=SIVA.OTR.FIX.VOBU08D.ANUAL,                          00071900
//             DISP=(NEW,CATLG,DELETE),                                 00072000
//             UNIT=SYSDA,SPACE=(CYL,(10,1),RLSE),                      00072100
//             DCB=(LRECL=141,RECFM=FBA,BLKSIZE=0)                      00072200
//*                                                                     00072300
//********************************************************************* 00072400
//*                          * FDD3327 *                                00072500
//* SORT DE ARCHIVO ANUAL PARA LA EMISION DE LOS REPORTES POR FECHA     00072600
//********************************************************************* 00072700
//*                                                                     00072800
//FDD3327  EXEC  PGM=SYNCSORT,REGION=0M,COND=(4,LT)                     00072900
//SORTIN   DD  DSN=SIVA.OTR.FIX.VOBU08D.ANUAL,DISP=SHR                  00073000
//SORTOUT  DD  DSN=SIVA.OTR.WKF.VOBU08D.SORT,                           00073100
//             DISP=(NEW,CATLG,DELETE),                                 00073200
//             UNIT=3390,                                               00073300
//             SPACE=(CYL,(15,15),RLSE),                                00073400
//             RECFM=FB,LRECL=141,BLKSIZE=0                             00073500
//SYSPRINT DD  SYSOUT=*                                                 00073600
//SYSOUT   DD  SYSOUT=*                                                 00073700
//SYSIN    DD  DSN=SIVA.CARDS(FDD3327),DISP=SHR                         00073800
//*                                                                     00073900
//********************************************************************* 00074000
//*                          * VIBU10D *                                00074100
//* GENERA LOS REPORTE DE OPERACIONES DOS VECES MAYORES AL CAPITAL CON  00074200
//********************************************************************* 00074300
//*   MM                                                                00074400
//FDD3326      EXEC PGM=IKJEFT01,                                       00074500
//             DYNAMNBR=20,COND=(4,LT),                                 00074600
//             REGION=4096K,                                            00074700
//             TIME=100                                                 00074800
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR                      00074900
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      00075000
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=1320                                00075100
//VIBU08MI DD  DSN=SIVA.OTR.WKF.VOBU08D.SORT,DISP=SHR                   00075200
//VIBU10CC DD  DSN=SIVA.OTR.WKF.VIBU10D.CCO,                            00075300
//             DISP=(NEW,CATLG,DELETE),                                 00075400
//             UNIT=SYSDA,SPACE=(CYL,(10,1),RLSE),                      00075500
//             DCB=(LRECL=133,RECFM=FBA,BLKSIZE=0)                      00075600
//*VIBU08R1 DD  SYSOUT=(V,,TB41)                                        00075700
//VIBU08R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00075800
//*VIBU08R2 DD  SYSOUT=(V,,TB42)                                        00075900
//VIBU08R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00076000
//SYSPRINT DD  SYSOUT=*                                                 00076100
//SYSINT   DD  SYSOUT=X                                                 00076200
//SYSOUT   DD  SYSOUT=*                                                 00076300
//PRINT    DD  SYSOUT=X                                                 00076400
//SYSDBOUT DD  SYSOUT=*                                                 00076500
//SYSABOUT DD  DUMMY                                                    00076600
//SYSUDUMP DD  DUMMY                                                    00076700
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3326),DISP=SHR                          00076800
//*------------------------------------------------------------------   00076900
//*                    = VOBU02D =                                      00077000
//*        ACTUALIZAR ICONCEPT'S EN AGPOCON PARA IMP DE TALONES         00077100
//*                                                  *** CAPITALES      00077200
//*------------------------------------------------------------------   00077300
//FDD3325  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00077400
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00077500
//SYSPRINT DD SYSOUT=*                                                  00077600
//SYSOUT   DD SYSOUT=*                                                  00077700
//SYSDBOUT DD SYSOUT=*                                                  00077800
//SYSABOUT DD DUMMY                                                     00077900
//SYSUDUMP DD DUMMY                                                     00078000
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3325),DISP=SHR                          00078100
//*------------------------------------------------------------------   00078200
//*                   = VIBT86M =                                       00078300
//*       REPORTE CON ALTA OPERACION DE CAPITALES                       00078400
//*                                                 *** CAPITALES     * 00078500
//*------------------------------------------------------------------   00078600
//FDD3323  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00078700
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00078800
//SYSPRINT DD SYSOUT=*                                                  00078900
//SYSOUT   DD SYSOUT=*                                                  00079000
//SYSDBOUT DD SYSOUT=*                                                  00079100
//VIBT86R  DD SYSOUT=V                                                  00079200
//SYSABOUT DD DUMMY                                                     00079300
//SYSUDUMP DD DUMMY                                                     00079400
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3323),DISP=SHR                          00079500
//*-------------------------------------------------------------------  00079600
//*                    = VIBT83M =                                      00079700
//*        REPORTE % PROMEDIO DE CARTERA > 10,000 DLLS                  00079800
//*                                                  *** CAPITALES     *00079900
//*-------------------------------------------------------------------  00080000
//FDD3322  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00080100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00080200
//SYSPRINT DD SYSOUT=*                                                  00080300
//SYSOUT   DD SYSOUT=*                                                  00080400
//SYSDBOUT DD SYSOUT=*                                                  00080500
//*VIBT83R1 DD SYSOUT=(V,,TB37)                                         00080600
//VIBT83R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00080700
//SYSABOUT DD DUMMY                                                     00080800
//SYSUDUMP DD DUMMY                                                     00080900
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3322),DISP=SHR                          00081000
//*-------------------------------------------------------------------  00081100
//*                    = VIBT81M =                                      00081200
//*        REPORTE DEPOSITOS POR LINEA                                  00081300
//*                                                  *** CAPITALES     *00081400
//*-------------------------------------------------------------------  00081500
//FDD3321  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00081600
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00081700
//SYSPRINT DD SYSOUT=*                                                  00081800
//SYSOUT   DD SYSOUT=*                                                  00081900
//SYSDBOUT DD SYSOUT=*                                                  00082000
//*VIBT81R1 DD SYSOUT=(V,,TB38)                                         00082100
//VIBT81R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00082200
//SYSABOUT DD DUMMY                                                     00082300
//SYSUDUMP DD DUMMY                                                     00082400
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3321),DISP=SHR                          00082500
//*-------------------------------------------------------------------  00082600
//*                    = VIBT78M =                                      00082700
//*        REPORTE DEPOSITOS POR FICHA UNICA                            00082800
//*                                                  *** CAPITALES     *00082900
//*-------------------------------------------------------------------  00083000
//FDD3320  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00083100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00083200
//SYSPRINT DD SYSOUT=*                                                  00083300
//SYSOUT   DD SYSOUT=*                                                  00083400
//SYSDBOUT DD SYSOUT=*                                                  00083500
//*VIBT78R1 DD SYSOUT=(V,,TB36)                                         00083600
//VIBT78R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00083700
//SYSABOUT DD DUMMY                                                     00083800
//SYSUDUMP DD DUMMY                                                     00083900
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3320),DISP=SHR                          00084000
//*-------------------------------------------------------------------  00084100
//*                    = VIBT79D =                                      00084200
//*        REPORTE  DE CTAS CON SOLICITUDES DE CARGO                    00084300
//*                                                  *** CAPITALES     *00084400
//*-------------------------------------------------------------------  00084500
//FDD3315  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00084600
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00084700
//SYSPRINT DD SYSOUT=*                                                  00084800
//SYSOUT   DD SYSOUT=*                                                  00084900
//SYSDBOUT DD SYSOUT=*                                                  00085000
//*VIBT79R  DD SYSOUT=(V,,TB26)                                         00085100
//VIBT79R DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                      00085200
//SYSABOUT DD DUMMY                                                     00085300
//SYSUDUMP DD DUMMY                                                     00085400
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3315),DISP=SHR                          00085500
//*-------------------------------------------------------------------  00085600
//*                    = VIBT64D =                                      00085700
//*        REPORTE  DE CAMBIOS A CONTRATOS                              00085800
//*                                                     *** CONTRATOS * 00085900
//*-------------------------------------------------------------------  00086000
//FDD3313  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00086100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00086200
//SYSPRINT DD SYSOUT=*                                                  00086300
//SYSOUT   DD SYSOUT=*                                                  00086400
//SYSDBOUT DD SYSOUT=*                                                  00086500
//*VIBT64R1 DD SYSOUT=(V,,TB24)                                         00086600
//VIBT64R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00086700
//SYSABOUT DD DUMMY                                                     00086800
//SYSUDUMP DD DUMMY                                                     00086900
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3313),DISP=SHR                          00087000
//*-------------------------------------------------------------------  00087100
//*                    = VIB436D =                        (WARRANTS)    00087200
//*        REPORTES DE OPERACIONES WARRANTS PARA SIVACTOS DERIVADOS     00087300
//*                                                     *** CAPITALES * 00087400
//*-------------------------------------------------------------------  00087500
//FDD3303  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00087600
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00087700
//SYSPRINT DD SYSOUT=*                                                  00087800
//SYSOUT   DD SYSOUT=*                                                  00087900
//SYSDBOUT DD SYSOUT=*                                                  00088000
//*VIB436R1 DD SYSOUT=(V,,TP23)                                         00088100
//VIB436R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00088200
//*VIB436R3 DD SYSOUT=(V,,TP24)                                         00088300
//VIB436R3 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00088400
//*VIB436R4 DD SYSOUT=(V,,TP25)                                         00088500
//VIB436R4 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00088600
//SYSABOUT DD DUMMY                                                     00088700
//SYSUDUMP DD DUMMY                                                     00088800
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3303),DISP=SHR                          00088900
//*-------------------------------------------------------------------  00089000
//*        REPORTES DE OPERACIONES WARRANTS PARA SIVACTOS DERIVADOS     00089100
//*                        -- VIBU89D --                               *00089200
//* JFE --> REPORTE PARALELO DEL VIB436D QUE CORRE EN EL FDD3303       *00089300
//*-------------------------------------------------------------------  00089400
//FDD3303A EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00089500
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00089600
//SYSPRINT DD SYSOUT=*                                                  00089700
//SYSOUT   DD SYSOUT=*                                                  00089800
//SYSDBOUT DD SYSOUT=*                                                  00089900
//*VIBU89R1 DD SYSOUT=(V,,TP23)                                         00090000
//VIBU89R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00090100
//*VIBU89R3 DD SYSOUT=(V,,TP24)                                         00090200
//VIBU89R3 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00090300
//*VIBU89R4 DD SYSOUT=(V,,TP25)                                         00090400
//VIBU89R4 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00090500
//SYSABOUT DD DUMMY                                                     00090600
//SYSUDUMP DD DUMMY                                                     00090700
//SYSTSIN  DD DSN=SIVA.CARDS(FDD3303A),DISP=SHR                         00090800
//**********************************************************************00090900
//*                         - VIBJ53D --                               *00091000
//* OBJETIVO :   REPORTE DE OPERACION PROPIA.                          *00091100
//*                                                                    *00091200
//*    ACTUALIZA : NINGUNA.                                            *00091300
//*                                                                    *00091400
//* PROCESO : CAPITALES/FINDIA.                                        *00091500
//*                                                                    *00091600
//* PASO REINICIABLE POR RESTART                                       *00091700
//*                                                     *** CAPITALES * 00091800
//**********************************************************************00091900
//FDD3301 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,                      00092000
//        TIME=100,COND=(4,LT)                                          00092100
//*VIBJ53R1 DD SYSOUT=(V,,TP16)                                         00092200
//VIBJ53R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00092300
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00092400
//SYSPRINT DD SYSOUT=X                                                  00092500
//SYSOUT   DD SYSOUT=X                                                  00092600
//SYSDBOUT DD SYSOUT=X                                                  00092700
//SYSABOUT DD DUMMY                                                     00092800
//SYSUDUMP DD DUMMY                                                     00092900
//SYSTSIN DD DSN=SIVA.CARDS(FDD3301),DISP=SHR                           00093000
//*                                                                     00093100
