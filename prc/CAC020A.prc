//CAC0200  PROC                                                         00000100
//*                                                                     00000200
//**********************************************************************00000300
//*                                                                    *00000400
//*     BBB  BBB  VV VV    PPPP RRRR OOOO BBB  U  U RRRR SSSS AAAA     *00000500
//*     B BB B BB VV VV    P PP R RR O  O B BB U  U R RR S    A  A     *00000600
//*     BBBB BBBB VV VV @@ PPPP RRRR O  O BBBB U  U RRRR SSSS AAAA     *00000700
//*     B BB B BB  VVV     P    RR   O  O B BB U  U RR      S A  A     *00000800
//*     BBB  BBB    V      P    R RR OOOO BBB  UUUU R RR SSSS A  A     *00000900
//*                                                                    *00001000
//**********************************************************************00001100
//**********************************************************************00001200
//*                                                                    *00001300
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00001400
//*                   CAPITALES                                        *00001500
//*                                                                    *00001600
//* PROCESO        :  PCTCAC02                                         *00001700
//*                                                                    *00001800
//* OBJETIVO       :  GENERACION DE TALONES PARA EL PISO DE REMATES    *00001900
//*                   MERCADO DE CAPITALES                             *00002000
//*                                                                    *00002100
//* CORRE                                                              *00002200
//* ANTES DE       :  PCICAD01                                         *00002300
//*                                                                    *00002400
//* A PARTIR DE    :  8:00 HRS.                                        *00002500
//* HASTA          : 14:30 HSR.                                        *00002600
//*                                                                    *00002700
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *00002800
//* FECHA          :  MARZO      1992                                  *00002900
//*                                                                    *00003000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA DIARIO Y EN FORMA  *00003100
//*                   CICLICA A TRAVES DE CONTROL-M POR PERIDOS DE     *00003200
//*                   10 MINUTOS. (ANTES CONTALOQ)                     *00003300
//*                                                                    *00003400
//* MODIFICACION   :  EL PCTCAC02 SE DEJO EN UN SOLO JOB QUE           *00003500
//*                  CONSTA SOLO DE LOS PASOS PARA LA GENERACION DE    *00003600
//*                  LOS TALONES. (PCTCAC02).                          *00003700
//*                                                                    *00003800
//*             SE DIO DE ALTA EL DISPARADOR PCTCAC03 QUE SUBMITE AL   *00003900
//*             CAC0200 AL IGUAL QUE EL PCTCAC02. LA SECUENCIA DE      *00004000
//*             CORRIDA DE ESTOS JOBS EN FORMA CICLICA POR CTM ES:     *00004100
//*                                                                    *00004200
//*             ---- PCTCAC02                                          *00004300
//*             ---- PCTCAC03                                          *00004400
//*                                                                    *00004500
//* MODIFICACION   : SE AGREGARON DOS PASOS DE SORT PARA SEPARAR       *00004600
//*                  LAS ORDENES DE LOS CLIENTES NORMALES DE LA        *00004700
//*                  POSICION PROPIA      (21-ABR-98).                 *00004800
//*                                                                    *00004900
//*                                                                    *00005000
//* MODIFICACION   : SE AGREGARON 8 PASOS DE SORT PARA SEPARAR         *00005100
//*                  LAS ORDENES DE LAS OPERACINES A PRECIO DE         *00005200
//*                  CIERRE DE LAS OPERACIONDES NORMALES               *00005300
//*                                                                    *00005400
//**********************************************************************00005500
//*                                                                     00005600
//**********************************************************************00005700
//*                        -- VOB459E --                               *00005800
//*                                                                    *00005900
//* OBJETIVO  :   CREA ARCHIVO DE SALIDA CON ORDENES NO PROCESADAS     *00006000
//* ACTUALIZA :   ORDENES                                              *00006100
//*                                                                    *00006200
//* REGRESA CODIGO 0020 SI TERMINA MAL POR CONTENCION  (-911)          *00006300
//*                                                                    *00006400
//* PASO REINICIABLE POR RESTART                                       *00006500
//**********************************************************************00006600
//CAC0216  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,                     00006700
//         COND=(4,LT)                                                  00006800
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00006900
//SYSPRINT DD SYSOUT=*                                                  00007000
//VOB459A1 DD DSN=SIVA.MDC.WKF.VOB459A1.D&DATE..T&HORA,                 00007100
//         DISP=(NEW,CATLG,DELETE),                                     00007200
//*        DCB=(DSORG=PS,RECFM=FB,LRECL=64,BLKSIZE=0),                  00007300
//         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                  00007400
//         UNIT=SYSDA,                                                  00007500
//         SPACE=(5300,(1,1))                                           00007600
//SYSOUT   DD SYSOUT=*                                                  00007700
//SYSDBOUT DD SYSOUT=*                                                  00007800
//SYSABOUT DD DUMMY                                                     00007900
//SYSUDUMP DD DUMMY                                                     00008000
//SYSTSIN  DD DSN=SIVA.CARDS(CAC0214),DISP=SHR                          00008100
//**********************************************************************00008200
//*                        -- VOBT96E --                               *00008300
//*                                                                    *00008400
//* OBJETIVO  :   CREA ARCHIVO DE SALIDA CON ORDENES NO PROCESADAS     *00008500
//* ACTUALIZA :   ORDENES                                              *00008600
//*                                                                    *00008700
//* REGRESA CODIGO 0020 SI TERMINA MAL POR CONTENCION  (-911)          *00008800
//*                                                                    *00008900
//* PASO REINICIABLE POR RESTART                                       *00009000
//**********************************************************************00009100
//CAC0215  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,                     00009200
//         COND=(4,LT)                                                  00009300
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00009400
//SYSPRINT DD SYSOUT=*                                                  00009500
//VOBT96A1 DD DSN=SIVA.MDC.WKF.VOBT96A1.D&DATE..T&HORA,                 00009600
//         DISP=(NEW,CATLG,DELETE),                                     00009700
//         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                  00009800
//**       DCB=(DSORG=PS,RECFM=FB,LRECL=64,BLKSIZE=0),                  00009900
//         UNIT=SYSDA,                                                  00010000
//         SPACE=(5300,(1,1))                                           00010100
//SYSOUT   DD SYSOUT=*                                                  00010200
//SYSDBOUT DD SYSOUT=*                                                  00010300
//SYSABOUT DD DUMMY                                                     00010400
//SYSUDUMP DD DUMMY                                                     00010500
//SYSTSIN  DD DSN=SIVA.CARDS(CAC0213),DISP=SHR                          00010600
//**********************************************************************00010700
//*                        --  SORT   --                               *00010800
//*                                                                    *00010900
//* OBJETIVO  :   SORT DE LAS ORDENES A REPORTAR AL PISO               *00011000
//*                                                                    *00011100
//* PASO REINICIABLE POR RESTART                                       *00011200
//**********************************************************************00011300
//*CAC0231  EXEC PGM=SYNCSORT,COND=(4,LT)                               00011400
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00011500
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00011600
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOB459A1.D&DATE..T&HORA,DISP=SHR        00011700
//*SORTOUT  DD DSN=SIVA.MDC.WKF.ORDSORT.D&DATE..T&HORA,                 00011800
//*         DISP=(NEW,CATLG,DELETE),                                    00011900
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=64,BLKSIZE=0),                 00012000
//*         UNIT=SYSDA,                                                 00012100
//*         SPACE=(TRK,(10,3),RLSE)                                     00012200
//*SYSOUT   DD SYSOUT=*                                                 00012300
//*SYSPRINT DD SYSOUT=*                                                 00012400
//*SYSIN    DD DSN=SIVA.CARDS(CAC0211),DISP=SHR                         00012500
//**********************************************************************00012600
//*                        --  SORT   --                               *00012700
//*                          VOBT96E                                   *00012800
//* OBJETIVO  :   SORT DE LAS ORDENES A REPORTAR AL PISO               *00012900
//*                                                                    *00013000
//* PASO REINICIABLE POR RESTART                                       *00013100
//**********************************************************************00013200
//*CAC0230  EXEC PGM=SYNCSORT,COND=(4,LT)                               00013300
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00013400
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00013500
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOBT96A1.D&DATE..T&HORA,DISP=SHR        00013600
//*SORTOUT  DD DSN=SIVA.MDC.WKF.ORDSORT1.D&DATE..T&HORA,                00013700
//*         DISP=(NEW,CATLG,DELETE),                                    00013800
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=64,BLKSIZE=0),                 00013900
//*         UNIT=SYSDA,                                                 00014000
//*         SPACE=(TRK,(10,3),RLSE)                                     00014100
//*SYSOUT   DD SYSOUT=*                                                 00014200
//*SYSPRINT DD SYSOUT=*                                                 00014300
//*SYSIN    DD DSN=SIVA.CARDS(CAC0211),DISP=SHR                         00014400
//**********************************************************************00014500
//*                        -- VOB460E --                               *00014600
//*                                                                    *00014700
//* OBJETIVO  :   SUMARIZA LAS ORDENES NO REPORTADAS AL PISO           *00014800
//*                                                                    *00014900
//* PASO REINICIABLE POR RESTART                                       *00015000
//**********************************************************************00015100
//*CAC0229  EXEC PGM=VOB460E,REGION=4M,COND=(4,LT)                      00015200
//*VOB460A1 DD DSN=SIVA.MDC.WKF.ORDSORT.D&DATE..T&HORA,DISP=SHR         00015300
//*VOB460A2 DD DSN=SIVA.MDC.WKF.VOB460A2.D&DATE..T&HORA,                00015400
//*         DISP=(NEW,CATLG,DELETE),                                    00015500
//*         DCB=(RECFM=FB,BLKSIZE=0,LRECL=48),                          00015600
//*         UNIT=SYSDA,                                                 00015700
//*         SPACE=(TRK,(10,3),RLSE)                                     00015800
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                   00015900
//*SYSPRINT DD SYSOUT=*                                                 00016000
//*SYSOUT   DD SYSOUT=*                                                 00016100
//*SYSDBOUT DD SYSOUT=*                                                 00016200
//*SYSABOUT DD DUMMY                                                    00016300
//*SYSUDUMP DD DUMMY                                                    00016400
//**********************************************************************00016500
//*                        -- VOBT97E --                               *00016600
//*                                                                    *00016700
//* OBJETIVO  :   SUMARIZA LAS ORDENES NO REPORTADAS AL PISO           *00016800
//*                                                                    *00016900
//* PASO REINICIABLE POR RESTART                                       *00017000
//**********************************************************************00017100
//*CAC0228  EXEC PGM=VOBT97E,REGION=4M,COND=(4,LT)                      00017200
//*VOBT97A1 DD DSN=SIVA.MDC.WKF.ORDSORT1.D&DATE..T&HORA,DISP=SHR        00017300
//*VOBT97A2 DD DSN=SIVA.MDC.WKF.VOBT97A2.D&DATE..T&HORA,                00017400
//*         DISP=(NEW,CATLG,DELETE),                                    00017500
//*         DCB=(RECFM=FB,BLKSIZE=0,LRECL=48),                          00017600
//*         UNIT=SYSDA,                                                 00017700
//*         SPACE=(TRK,(10,3),RLSE)                                     00017800
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                   00017900
//*SYSPRINT DD SYSOUT=*                                                 00018000
//*SYSOUT   DD SYSOUT=*                                                 00018100
//*SYSDBOUT DD SYSOUT=*                                                 00018200
//*SYSABOUT DD DUMMY                                                    00018300
//*SYSUDUMP DD DUMMY                                                    00018400
//**********************************************************************00018500
//*                        -- VOB426E --                               *00018600
//*                                                                    *00018700
//* OBJETIVO  :   IDENTIFIC LAS ORDENES DE CRUCE                       *00018800
//*                                                                    *00018900
//* PASO REINICIABLE POR RESTART                                       *00019000
//**********************************************************************00019100
//*CAC0227  EXEC PGM=VOB426E,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00019200
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                   00019300
//*SYSPRINT DD SYSOUT=*                                                 00019400
//*VOB426A1 DD DSN=SIVA.MDC.WKF.VOB460A2.D&DATE..T&HORA,DISP=SHR        00019500
//*VOB426A2 DD DSN=SIVA.MDC.WKF.VOB426A2.D&DATE..T&HORA,                00019600
//*         DISP=(NEW,CATLG,DELETE),                                    00019700
//*         DCB=(RECFM=FB,LRECL=48,BLKSIZE=0),                          00019800
//*         UNIT=SYSDA,                                                 00019900
//*         SPACE=(TRK,(1,1),RLSE)                                      00020000
//*SYSOUT   DD SYSOUT=*                                                 00020100
//*SYSDBOUT DD SYSOUT=*                                                 00020200
//*SYSABOUT DD DUMMY                                                    00020300
//*SYSUDUMP DD DUMMY                                                    00020400
//**********************************************************************00020500
//*                        -- VOBT98E --                               *00020600
//*                                                                    *00020700
//* OBJETIVO  :   IDENTIFIC LAS ORDENES DE CRUCE                       *00020800
//*                                                                    *00020900
//* PASO REINICIABLE POR RESTART                                       *00021000
//**********************************************************************00021100
//*CAC0226  EXEC PGM=VOBT98E,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00021200
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                   00021300
//*SYSPRINT DD SYSOUT=*                                                 00021400
//*VOBT98A1 DD DSN=SIVA.MDC.WKF.VOBT97A2.D&DATE..T&HORA,DISP=SHR        00021500
//*VOBT98A2 DD DSN=SIVA.MDC.WKF.VOBT98A2.D&DATE..T&HORA,                00021600
//*         DISP=(NEW,CATLG,DELETE),                                    00021700
//*         DCB=(RECFM=FB,LRECL=48,BLKSIZE=0),                          00021800
//*         UNIT=SYSDA,                                                 00021900
//*         SPACE=(TRK,(1,1),RLSE)                                      00022000
//*SYSOUT   DD SYSOUT=*                                                 00022100
//*SYSDBOUT DD SYSOUT=*                                                 00022200
//*SYSABOUT DD DUMMY                                                    00022300
//*SYSUDUMP DD DUMMY                                                    00022400
//**********************************************************************00022500
//*                        --  SORT   --                               *00022600
//*                          VOB426E                                   *00022700
//* OBJETIVO  :   SORT INCLUDE DE LAS ORDENES NORMALES                 *00022800
//*               OPERACION NORMAL                                     *00022900
//* PASO REINICIABLE POR RESTART                                       *00023000
//**********************************************************************00023100
//*CAC0225  EXEC PGM=SYNCSORT,COND=(4,LT)                               00023200
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00023300
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00023400
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOB426A2.D&DATE..T&HORA,DISP=SHR        00023500
//*SORTOUT  DD DSN=SIVA.MDC.WKF.VOB426S1.D&DATE..T&HORA,                00023600
//*         DISP=(NEW,CATLG,DELETE),                                    00023700
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00023800
//*         UNIT=SYSDA,                                                 00023900
//*         SPACE=(TRK,(10,3),RLSE)                                     00024000
//*SYSOUT   DD SYSOUT=*                                                 00024100
//*SYSPRINT DD SYSOUT=*                                                 00024200
//*SYSIN    DD DSN=SIVA.CARDS(CAC0215),DISP=SHR                         00024300
//**********************************************************************00024400
//*                        --  SORT   --                               *00024500
//*                           VOBT98E                                  *00024600
//* OBJETIVO  :   SORT INCLUDE DE LAS ORDENES NORMALES                 *00024700
//*               OPERACION NORMAL                                     *00024800
//* PASO REINICIABLE POR RESTART                                       *00024900
//**********************************************************************00025000
//*CAC0224  EXEC PGM=SYNCSORT,COND=(4,LT)                               00025100
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00025200
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00025300
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOBT98A2.D&DATE..T&HORA,DISP=SHR        00025400
//*SORTOUT  DD DSN=SIVA.MDC.WKF.VOBT98S1.D&DATE..T&HORA,                00025500
//*         DISP=(NEW,CATLG,DELETE),                                    00025600
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00025700
//*         UNIT=SYSDA,                                                 00025800
//*         SPACE=(TRK,(10,3),RLSE)                                     00025900
//*SYSOUT   DD SYSOUT=*                                                 00026000
//*SYSPRINT DD SYSOUT=*                                                 00026100
//*SYSIN    DD DSN=SIVA.CARDS(CAC0215),DISP=SHR                         00026200
//**********************************************************************00026300
//*                        --  SORT   --                               *00026400
//*                          VOB426E                                   *00026500
//* OBJETIVO  :   SORT OMIT DE LAS ORDENES A PRECIO DE CIERRE          *00026600
//*               OPC                                                  *00026700
//* PASO REINICIABLE POR RESTART                                       *00026800
//**********************************************************************00026900
//*CAC0223  EXEC PGM=SYNCSORT,COND=(4,LT)                               00027000
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00027100
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00027200
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOB426A2.D&DATE..T&HORA,DISP=SHR        00027300
//*SORTOUT  DD DSN=SIVA.MDC.WKF.VOB426S2.D&DATE..T&HORA,                00027400
//*         DISP=(NEW,CATLG,DELETE),                                    00027500
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00027600
//*         UNIT=SYSDA,                                                 00027700
//*         SPACE=(TRK,(10,3),RLSE)                                     00027800
//*SYSOUT   DD SYSOUT=*                                                 00027900
//*SYSPRINT DD SYSOUT=*                                                 00028000
//*SYSIN    DD DSN=SIVA.CARDS(CAC0216),DISP=SHR                         00028100
//**********************************************************************00028200
//*                        --  SORT   --                               *00028300
//*                           VOBT98E                                  *00028400
//* OBJETIVO  :   SORT OMIT DE LAS ORDENES A PRECIO DE CIERRE          *00028500
//*               OPC                                                  *00028600
//* PASO REINICIABLE POR RESTART                                       *00028700
//**********************************************************************00028800
//*CAC0222  EXEC PGM=SYNCSORT,COND=(4,LT)                               00028900
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00029000
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00029100
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOBT98A2.D&DATE..T&HORA,DISP=SHR        00029200
//*SORTOUT  DD DSN=SIVA.MDC.WKF.VOBT98S2.D&DATE..T&HORA,                00029300
//*         DISP=(NEW,CATLG,DELETE),                                    00029400
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00029500
//*         UNIT=SYSDA,                                                 00029600
//*         SPACE=(TRK,(10,3),RLSE)                                     00029700
//*SYSOUT   DD SYSOUT=*                                                 00029800
//*SYSPRINT DD SYSOUT=*                                                 00029900
//*SYSIN    DD DSN=SIVA.CARDS(CAC0216),DISP=SHR                         00030000
//**********************************************************************00030100
//*                        --  SORT   --                               *00030200
//*                          VOB426E                                   *00030300
//* OBJETIVO  :   SORT INCLUDE DE LAS ORDENES DE CRUCE  P/PGM=VIB449E  *00030400
//*                                                                    *00030500
//* PASO REINICIABLE POR RESTART                                       *00030600
//**********************************************************************00030700
//*CAC0221  EXEC PGM=SYNCSORT,COND=(4,LT)                               00030800
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00030900
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00031000
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOB426S1.D&DATE..T&HORA,DISP=SHR        00031100
//*SORTOUT  DD DSN=SIVA.MDC.WKF.CRUSORT1.D&DATE..T&HORA,                00031200
//*         DISP=(NEW,CATLG,DELETE),                                    00031300
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00031400
//*         UNIT=SYSDA,                                                 00031500
//*         SPACE=(TRK,(10,3),RLSE)                                     00031600
//*SYSOUT   DD SYSOUT=*                                                 00031700
//*SYSPRINT DD SYSOUT=*                                                 00031800
//*SYSIN    DD DSN=SIVA.CARDS(CAC0206),DISP=SHR                         00031900
//**********************************************************************00032000
//*                        --  SORT   --                               *00032100
//*                          VOB426E                                   *00032200
//* OBJETIVO  :   SORT INCLUDE DE LAS ORDENES DE CRUCE P/PGM=VIB449E   *00032300
//*                                                                    *00032400
//* PASO REINICIABLE POR RESTART                                       *00032500
//**********************************************************************00032600
//*CAC0220  EXEC PGM=SYNCSORT,COND=(4,LT)                               00032700
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00032800
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00032900
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOB426S1.D&DATE..T&HORA,DISP=SHR        00033000
//*SORTOUT  DD DSN=SIVA.MDC.WKF.CRUSORT2.D&DATE..T&HORA,                00033100
//*         DISP=(NEW,CATLG,DELETE),                                    00033200
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00033300
//*         UNIT=SYSDA,                                                 00033400
//*         SPACE=(TRK,(10,3),RLSE)                                     00033500
//*SYSOUT   DD SYSOUT=*                                                 00033600
//*SYSPRINT DD SYSOUT=*                                                 00033700
//*SYSIN    DD DSN=SIVA.CARDS(CAC0212),DISP=SHR                         00033800
//**********************************************************************00033900
//*                        --  SORT   --                               *00034000
//*                          VOB426E                                   *00034100
//* OBJETIVO  :   SORT OMIT DE LAS ORDENES DE CRUCE P/PGM=VIB449E      *00034200
//*                                                                    *00034300
//* PASO REINICIABLE POR RESTART                                       *00034400
//**********************************************************************00034500
//*CAC0219  EXEC PGM=SYNCSORT,COND=(4,LT)                               00034600
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00034700
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00034800
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOB426S2.D&DATE..T&HORA,DISP=SHR        00034900
//*SORTOUT  DD DSN=SIVA.MDC.WKF.CRUSORT3.D&DATE..T&HORA,                00035000
//*         DISP=(NEW,CATLG,DELETE),                                    00035100
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00035200
//*         UNIT=SYSDA,                                                 00035300
//*         SPACE=(TRK,(10,3),RLSE)                                     00035400
//*SYSOUT   DD SYSOUT=*                                                 00035500
//*SYSPRINT DD SYSOUT=*                                                 00035600
//*SYSIN    DD DSN=SIVA.CARDS(CAC0206),DISP=SHR                         00035700
//**********************************************************************00035800
//*                        --  SORT   --                               *00035900
//*                           VOB426E                                  *00036000
//* OBJETIVO  :   SORT OMIT DE LAS ORDENES DE CRUCE P/PGM=VIB449E      *00036100
//*                                                                    *00036200
//* PASO REINICIABLE POR RESTART                                       *00036300
//**********************************************************************00036400
//*CAC0218  EXEC PGM=SYNCSORT,COND=(4,LT)                               00036500
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00036600
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00036700
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOB426S2.D&DATE..T&HORA,DISP=SHR        00036800
//*SORTOUT  DD DSN=SIVA.MDC.WKF.CRUSORT4.D&DATE..T&HORA,                00036900
//*         DISP=(NEW,CATLG,DELETE),                                    00037000
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00037100
//*         UNIT=SYSDA,                                                 00037200
//*         SPACE=(TRK,(10,3),RLSE)                                     00037300
//*SYSOUT   DD SYSOUT=*                                                 00037400
//*SYSPRINT DD SYSOUT=*                                                 00037500
//*SYSIN    DD DSN=SIVA.CARDS(CAC0212),DISP=SHR                         00037600
//**********************************************************************00037700
//*                        --  SORT   --                               *00037800
//*                          VOBT98E                                   *00037900
//* OBJETIVO  :   SORT INCLUDE DE LAS ORDENES DE CRUCE  P/PGM=VIBT99E  *00038000
//*                                                                    *00038100
//* PASO REINICIABLE POR RESTART                                       *00038200
//**********************************************************************00038300
//*CAC0217  EXEC PGM=SYNCSORT,COND=(4,LT)                               00038400
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00038500
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00038600
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOBT98S1.D&DATE..T&HORA,DISP=SHR        00038700
//*SORTOUT  DD DSN=SIVA.MDC.WKF.CRUSORT5.D&DATE..T&HORA,                00038800
//*         DISP=(NEW,CATLG,DELETE),                                    00038900
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00039000
//*         UNIT=SYSDA,                                                 00039100
//*         SPACE=(TRK,(10,3),RLSE)                                     00039200
//*SYSOUT   DD SYSOUT=*                                                 00039300
//*SYSPRINT DD SYSOUT=*                                                 00039400
//*SYSIN    DD DSN=SIVA.CARDS(CAC0206),DISP=SHR                         00039500
//**********************************************************************00039600
//*                        --  SORT   --                               *00039700
//*                          VOBT98E                                   *00039800
//* OBJETIVO  :   SORT INCLUDE DE LAS ORDENES DE CRUCE P/PGM=VIBT99E   *00039900
//*                                                                    *00040000
//* PASO REINICIABLE POR RESTART                                       *00040100
//**********************************************************************00040200
//*CAC0216  EXEC PGM=SYNCSORT,COND=(4,LT)                               00040300
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00040400
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00040500
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOBT98S1.D&DATE..T&HORA,DISP=SHR        00040600
//*SORTOUT  DD DSN=SIVA.MDC.WKF.CRUSORT6.D&DATE..T&HORA,                00040700
//*         DISP=(NEW,CATLG,DELETE),                                    00040800
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00040900
//*         UNIT=SYSDA,                                                 00041000
//*         SPACE=(TRK,(10,3),RLSE)                                     00041100
//*SYSOUT   DD SYSOUT=*                                                 00041200
//*SYSPRINT DD SYSOUT=*                                                 00041300
//*SYSIN    DD DSN=SIVA.CARDS(CAC0212),DISP=SHR                         00041400
//**********************************************************************00041500
//*                        --  SORT   --                               *00041600
//*                          VOBT98E                                   *00041700
//* OBJETIVO  :   SORT OMIT DE LAS ORDENES DE CRUCE P/PGM=VIBT99E      *00041800
//*                                                                    *00041900
//* PASO REINICIABLE POR RESTART                                       *00042000
//**********************************************************************00042100
//*CAC0215  EXEC PGM=SYNCSORT,COND=(4,LT)                               00042200
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00042300
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00042400
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOBT98S2.D&DATE..T&HORA,DISP=SHR        00042500
//*SORTOUT  DD DSN=SIVA.MDC.WKF.CRUSORT7.D&DATE..T&HORA,                00042600
//*         DISP=(NEW,CATLG,DELETE),                                    00042700
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00042800
//*         UNIT=SYSDA,                                                 00042900
//*         SPACE=(TRK,(10,3),RLSE)                                     00043000
//*SYSOUT   DD SYSOUT=*                                                 00043100
//*SYSPRINT DD SYSOUT=*                                                 00043200
//*SYSIN    DD DSN=SIVA.CARDS(CAC0206),DISP=SHR                         00043300
//**********************************************************************00043400
//*                        --  SORT   --                               *00043500
//*                           VOBT98E                                  *00043600
//* OBJETIVO  :   SORT OMIT DE LAS ORDENES DE CRUCE P/PGM=VIBT99E      *00043700
//*                                                                    *00043800
//* PASO REINICIABLE POR RESTART                                       *00043900
//**********************************************************************00044000
//*CAC0214  EXEC PGM=SYNCSORT,COND=(4,LT)                               00044100
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00044200
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00044300
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOBT98S2.D&DATE..T&HORA,DISP=SHR        00044400
//*SORTOUT  DD DSN=SIVA.MDC.WKF.CRUSORT8.D&DATE..T&HORA,                00044500
//*         DISP=(NEW,CATLG,DELETE),                                    00044600
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00044700
//*         UNIT=SYSDA,                                                 00044800
//*         SPACE=(TRK,(10,3),RLSE)                                     00044900
//*SYSOUT   DD SYSOUT=*                                                 00045000
//*SYSPRINT DD SYSOUT=*                                                 00045100
//*SYSIN    DD DSN=SIVA.CARDS(CAC0212),DISP=SHR                         00045200
//**********************************************************************00045300
//*                        -- VIB449E --                               *00045400
//*                                                                    *00045500
//* OBJETIVO  :   GENERACION DE LOS TALONES DE ORDENES PARA SU         *00045600
//*               OPERACION DEL PISO                                   *00045700
//* ACTUALIZA :   PARAM                                                *00045800
//*                                                                    *00045900
//* EN CASO DE CANCELAR POR CUALQUIER CODIGO REPROCESAR APARTE CON LOS *00046000
//* ARCHIVOS DE LA HORA Y EL DIA CORRESPONDIENTE                       *00046100
//*                                                                    *00046200
//* PASO NO REINICIABLE                                                *00046300
//**********************************************************************00046400
//CAC0214  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00046500
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00046600
//SYSPRINT DD SYSOUT=*                                                  00046700
//*VIB449A1 DD DSN=SIVA.MDC.WKF.CRUSORT1.D&DATE..T&HORA,DISP=SHR        00046800
//*         DD DSN=SIVA.MDC.WKF.CRUSORT2.D&DATE..T&HORA,DISP=SHR        00046900
//*         DD DSN=SIVA.MDC.WKF.CRUSORT3.D&DATE..T&HORA,DISP=SHR        00047000
//*         DD DSN=SIVA.MDC.WKF.CRUSORT4.D&DATE..T&HORA,DISP=SHR        00047100
//VIB449A1 DD DSN=SIVA.MDC.WKF.VOB459A1.D&DATE..T&HORA,DISP=SHR         00047200
//VIB449R1 DD DSN=&&TALON,DISP=(,PASS,DELETE),UNIT=SYSDA,               00047300
//         SPACE=(TRK,(5,1),RLSE)                                       00047400
//SYSOUT   DD SYSOUT=*                                                  00047500
//SYSUDUMP DD DUMMY                                                     00047600
//SYSCOUNT DD SYSOUT=*                                                  00047700
//SYSDBOUT DD SYSOUT=*                                                  00047800
//SYSABOUT DD SYSOUT=*                                                  00047900
//SYSTSIN  DD DSN=SIVA.CARDS(CAC0204),DISP=SHR                          00048000
//*                                                                     00048100
//*********                                                             00048200
//**********************************************************************00048300
//*                        --  MAILOPER --                             *00048400
//* OBJETIVO : AVISAR A AF/OPERATOR QUE TERMINARON MAL LOS TALONES     *00048500
//*                                                                    *00048600
//* PASO REINICIABLE POR RESTART                                       *00048700
//**********************************************************************00048800
//CAC0213 EXEC PGM=MAILOPER,COND=(6,GT),                                00048900
//  PARM=('/AF-OPERATOR PROBLEMAS CON TALONES')                         00049000
//CAC0212  EXEC  PGM=ICEGENER,COND=(4,LT)                               00049100
//SYSIN    DD   DUMMY                                                   00049200
//SYSPRINT DD   DUMMY                                                   00049300
//*********IMPRESORA DE MESA DE CAPITALES (BMV3)                        00049400
//*SYSUT2   DD   SYSOUT=(S,,TAL),DEST=BMD3                              00049500
//*********DESHINIBIR ESTA LINEA EN LA NOCHE  OJO OJO OJO  OJO          00049600
//*SYSUT2   DD   SYSOUT=(S,,TAL),DEST=BMV3                              00049700
//*********IMPRESORA DE BOLSA MEXICANA (DA04)                           00049800
//*********INIBIR ESTA LINEA EN LA NOCHE    OJO   OJO   OJO             00049900
//SYSUT2   DD   SYSOUT=(S,,TAL),DEST=DA04                               00050000
//SYSUT1   DD   DSN=&&TALON,DISP=(OLD,PASS)                             00050100
//**********************************************************************00050200
//*                        -- VIBT99E --                               *00050300
//*                                                                    *00050400
//* OBJETIVO  :   GENERACION DE LOS TALONES DE ORDENES PARA SU         *00050500
//*               OPERACION DEL PISO                                   *00050600
//* ACTUALIZA :   PARAM                                                *00050700
//*                                                                    *00050800
//* EN CASO DE CANCELAR POR CUALQUIER CODIGO REPROCESAR APARTE CON LOS *00050900
//* ARCHIVOS DE LA HORA Y EL DIA CORRESPONDIENTE                       *00051000
//*                                                                    *00051100
//* PASO NO REINICIABLE                                                *00051200
//**********************************************************************00051300
//CAC0211  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00051400
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00051500
//SYSPRINT DD SYSOUT=*                                                  00051600
//*VIBT99A1 DD DSN=SIVA.MDC.WKF.CRUSORT5.D&DATE..T&HORA,DISP=SHR        00051700
//*         DD DSN=SIVA.MDC.WKF.CRUSORT6.D&DATE..T&HORA,DISP=SHR        00051800
//*         DD DSN=SIVA.MDC.WKF.CRUSORT7.D&DATE..T&HORA,DISP=SHR        00051900
//*         DD DSN=SIVA.MDC.WKF.CRUSORT8.D&DATE..T&HORA,DISP=SHR        00052000
//VIBT99A1 DD DSN=SIVA.MDC.WKF.VOBT96A1.D&DATE..T&HORA,DISP=SHR         00052100
//VIBT99R1 DD DSN=&&TALON1,DISP=(,PASS,DELETE),UNIT=SYSDA,              00052200
//        SPACE=(TRK,(5,1),RLSE)                                        00052300
//SYSOUT   DD SYSOUT=*                                                  00052400
//SYSUDUMP DD DUMMY                                                     00052500
//SYSCOUNT DD SYSOUT=*                                                  00052600
//SYSDBOUT DD SYSOUT=*                                                  00052700
//SYSABOUT DD SYSOUT=*                                                  00052800
//SYSTSIN  DD DSN=SIVA.CARDS(CAC0203),DISP=SHR                          00052900
//*                                                                     00053000
//**********************************************************************00053100
//*                        --  MAILOPER --                             *00053200
//* OBJETIVO : AVISAR A AF/OPERATOR QUE TERMINARON MAL LOS TALONES     *00053300
//*                                                                    *00053400
//* PASO REINICIABLE POR RESTART                                       *00053500
//**********************************************************************00053600
//CAC0210 EXEC PGM=MAILOPER,COND=(6,GT),                                00053700
//  PARM=('/AF-OPERATOR PROBLEMAS CON TALONES')                         00053800
//********************************************************************* 00053900
//CAC0209  EXEC  PGM=ICEGENER,COND=(4,LT)                               00054000
//SYSIN    DD   DUMMY                                                   00054100
//SYSPRINT DD   DUMMY                                                   00054200
//SYSUT2   DD   SYSOUT=(S,,TALR),DEST=DA04                              00054300
//SYSUT1   DD   DSN=&&TALON1,DISP=(OLD,PASS)                            00054400
//*                                                                     00054500
//********************************************************************  00054600
//CAC0208  EXEC  PGM=ICEGENER,COND=(4,LT)                               00054700
//SYSIN    DD   DUMMY                                                   00054800
//SYSPRINT DD   DUMMY                                                   00054900
//*SYSUT2   DD   SYSOUT=(O,,TAL)                                        00055000
//SYSUT2   DD   SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')                   00055100
//SYSUT1   DD   DSN=&&TALON,DISP=(OLD,DELETE)                           00055200
//********************************************************************  00055300
//CAC0207  EXEC  PGM=ICEGENER,COND=(4,LT)                               00055400
//SYSIN    DD   DUMMY                                                   00055500
//SYSPRINT DD   DUMMY                                                   00055600
//*SYSUT2   DD   SYSOUT=(O,,TALR)                                       00055700
//SYSUT2   DD   SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')                   00055800
//SYSUT1   DD   DSN=&&TALON1,DISP=(OLD,DELETE)                          00055900
//**********************************************************************00056000
//*                        -- VIB595D --                               *00056100
//*                                                                    *00056200
//* OBJETIVO  :   GENERACION DE LOS TALONES DE CANCELACION DE ORDENES  *00056300
//*               PARA SU OPERACION EN EL PISO                         *00056400
//* ACTUALIZA :   ORDENES                                              *00056500
//*                                                                    *00056600
//*                                                                    *00056700
//* PASO    REINICIABLE                                                *00056800
//**********************************************************************00056900
//CAC0206  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00057000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00057100
//SYSPRINT DD SYSOUT=*                                                  00057200
//VIB595R1 DD DSN=&&TALCAN,DISP=(,PASS,DELETE),UNIT=SYSDA,              00057300
//         SPACE=(TRK,(5,1),RLSE)                                       00057400
//SYSOUT   DD SYSOUT=*                                                  00057500
//SYSUDUMP DD DUMMY                                                     00057600
//SYSCOUNT DD SYSOUT=*                                                  00057700
//SYSDBOUT DD SYSOUT=*                                                  00057800
//SYSABOUT DD SYSOUT=*                                                  00057900
//SYSTSIN  DD DSN=SIVA.CARDS(CAC0202),DISP=SHR                          00058000
//*                                                                     00058100
//**********************************************************************00058200
//*                        -- VIBT94D --                               *00058300
//*                                                                    *00058400
//* OBJETIVO  :   GENERACION DE LOS TALONES DE CANCELACION DE ORDENES  *00058500
//*               PARA SU OPERACION EN EL PISO                         *00058600
//* ACTUALIZA :   ORDENES                                              *00058700
//*                                                                    *00058800
//*                                                                    *00058900
//* PASO    REINICIABLE                                                *00059000
//**********************************************************************00059100
//CAC0205  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00059200
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00059300
//SYSPRINT DD SYSOUT=*                                                  00059400
//VIBT94R1 DD DSN=&&TALCAN1,DISP=(,PASS,DELETE),UNIT=SYSDA,             00059500
//         SPACE=(TRK,(5,1),RLSE)                                       00059600
//SYSOUT   DD SYSOUT=*                                                  00059700
//SYSUDUMP DD DUMMY                                                     00059800
//SYSCOUNT DD SYSOUT=*                                                  00059900
//SYSDBOUT DD SYSOUT=*                                                  00060000
//SYSABOUT DD SYSOUT=*                                                  00060100
//SYSTSIN  DD DSN=SIVA.CARDS(CAC0201),DISP=SHR                          00060200
//*                                                                     00060300
//*******************************************************************   00060400
//CAC0204  EXEC  PGM=ICEGENER,COND=(4,LT)                               00060500
//SYSIN    DD   DUMMY                                                   00060600
//SYSPRINT DD   DUMMY                                                   00060700
//SYSUT2   DD   SYSOUT=(S,,TALC),DEST=DA04                              00060800
//*SYSUT2   DD   SYSOUT=(S,,TALC),DEST=BMV3                             00060900
//*SYSUT2   DD   SYSOUT=(S,,TALC),DEST=BMD3                             00061000
//SYSUT1   DD   DSN=&&TALCAN,DISP=(OLD,PASS)                            00061100
//********************************************************************  00061200
//CAC0203  EXEC  PGM=ICEGENER,COND=(4,LT)                               00061300
//SYSIN    DD   DUMMY                                                   00061400
//SYSPRINT DD   DUMMY                                                   00061500
//*SYSUT2   DD   SYSOUT=(O,,TALC)                                       00061600
//SYSUT2   DD   SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')                   00061700
//SYSUT1   DD   DSN=&&TALCAN,DISP=(OLD,DELETE)                          00061800
//********************************************************************  00061900
//CAC0202  EXEC  PGM=ICEGENER,COND=(4,LT)                               00062000
//SYSIN    DD   DUMMY                                                   00062100
//SYSPRINT DD   DUMMY                                                   00062200
//SYSUT2   DD   SYSOUT=(S,,TACR),DEST=DA04                              00062300
//*SYSUT2   DD   SYSOUT=(S,,TACR),DEST=YYYY                             00062400
//SYSUT1   DD   DSN=&&TALCAN1,DISP=(OLD,PASS)                           00062500
//********************************************************************  00062600
//CAC0201  EXEC  PGM=ICEGENER,COND=(4,LT)                               00062700
//SYSIN    DD   DUMMY                                                   00062800
//SYSPRINT DD   DUMMY                                                   00062900
//*SYSUT2   DD   SYSOUT=(O,,TACR)                                       00063000
//SYSUT2   DD   SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')                   00063100
//SYSUT1   DD   DSN=&&TALCAN1,DISP=(OLD,DELETE)                         00063200
