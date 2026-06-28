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
//         DCB=(DSORG=PS,RECFM=FB,LRECL=120,BLKSIZE=0),                 00007300
//         UNIT=SYSDA,                                                  00007400
//         SPACE=(5300,(1,1))                                           00007500
//SYSOUT   DD SYSOUT=*                                                  00007600
//SYSDBOUT DD SYSOUT=*                                                  00007700
//SYSABOUT DD DUMMY                                                     00007800
//SYSUDUMP DD DUMMY                                                     00007900
//SYSTSIN  DD DSN=SIVA.CARDS(CAC0214),DISP=SHR                          00008000
//**********************************************************************00008100
//*                        -- VOBT96E --                               *00008200
//*                                                                    *00008300
//* OBJETIVO  :   CREA ARCHIVO DE SALIDA CON ORDENES NO PROCESADAS     *00008400
//* ACTUALIZA :   ORDENES                                              *00008500
//*                                                                    *00008600
//* REGRESA CODIGO 0020 SI TERMINA MAL POR CONTENCION  (-911)          *00008700
//*                                                                    *00008800
//* PASO REINICIABLE POR RESTART                                       *00008900
//**********************************************************************00009000
//CAC0215  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,                     00009100
//         COND=(4,LT)                                                  00009200
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00009300
//SYSPRINT DD SYSOUT=*                                                  00009400
//VOBT96A1 DD DSN=SIVA.MDC.WKF.VOBT96A1.D&DATE..T&HORA,                 00009500
//         DISP=(NEW,CATLG,DELETE),                                     00009600
//         DCB=(DSORG=PS,RECFM=FB,LRECL=120,BLKSIZE=0),                 00009700
//         UNIT=SYSDA,                                                  00009800
//         SPACE=(5300,(1,1))                                           00009900
//SYSOUT   DD SYSOUT=*                                                  00010000
//SYSDBOUT DD SYSOUT=*                                                  00010100
//SYSABOUT DD DUMMY                                                     00010200
//SYSUDUMP DD DUMMY                                                     00010300
//SYSTSIN  DD DSN=SIVA.CARDS(CAC0213),DISP=SHR                          00010400
//**********************************************************************00010500
//*                        --  SORT   --                               *00010600
//*                                                                    *00010700
//* OBJETIVO  :   SORT DE LAS ORDENES A REPORTAR AL PISO               *00010800
//*                                                                    *00010900
//* PASO REINICIABLE POR RESTART                                       *00011000
//**********************************************************************00011100
//*CAC0231  EXEC PGM=SYNCSORT,COND=(4,LT)                               00011200
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00011300
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00011400
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOB459A1.D&DATE..T&HORA,DISP=SHR        00011500
//*SORTOUT  DD DSN=SIVA.MDC.WKF.ORDSORT.D&DATE..T&HORA,                 00011600
//*         DISP=(NEW,CATLG,DELETE),                                    00011700
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=64,BLKSIZE=0),                 00011800
//*         UNIT=SYSDA,                                                 00011900
//*         SPACE=(TRK,(10,3),RLSE)                                     00012000
//*SYSOUT   DD SYSOUT=*                                                 00012100
//*SYSPRINT DD SYSOUT=*                                                 00012200
//*SYSIN    DD DSN=SIVA.CARDS(CAC0211),DISP=SHR                         00012300
//**********************************************************************00012400
//*                        --  SORT   --                               *00012500
//*                          VOBT96E                                   *00012600
//* OBJETIVO  :   SORT DE LAS ORDENES A REPORTAR AL PISO               *00012700
//*                                                                    *00012800
//* PASO REINICIABLE POR RESTART                                       *00012900
//**********************************************************************00013000
//*CAC0230  EXEC PGM=SYNCSORT,COND=(4,LT)                               00013100
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00013200
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00013300
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOBT96A1.D&DATE..T&HORA,DISP=SHR        00013400
//*SORTOUT  DD DSN=SIVA.MDC.WKF.ORDSORT1.D&DATE..T&HORA,                00013500
//*         DISP=(NEW,CATLG,DELETE),                                    00013600
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=64,BLKSIZE=0),                 00013700
//*         UNIT=SYSDA,                                                 00013800
//*         SPACE=(TRK,(10,3),RLSE)                                     00013900
//*SYSOUT   DD SYSOUT=*                                                 00014000
//*SYSPRINT DD SYSOUT=*                                                 00014100
//*SYSIN    DD DSN=SIVA.CARDS(CAC0211),DISP=SHR                         00014200
//**********************************************************************00014300
//*                        -- VOB460E --                               *00014400
//*                                                                    *00014500
//* OBJETIVO  :   SUMARIZA LAS ORDENES NO REPORTADAS AL PISO           *00014600
//*                                                                    *00014700
//* PASO REINICIABLE POR RESTART                                       *00014800
//**********************************************************************00014900
//*CAC0229  EXEC PGM=VOB460E,REGION=4M,COND=(4,LT)                      00015000
//*VOB460A1 DD DSN=SIVA.MDC.WKF.ORDSORT.D&DATE..T&HORA,DISP=SHR         00015100
//*VOB460A2 DD DSN=SIVA.MDC.WKF.VOB460A2.D&DATE..T&HORA,                00015200
//*         DISP=(NEW,CATLG,DELETE),                                    00015300
//*         DCB=(RECFM=FB,BLKSIZE=0,LRECL=48),                          00015400
//*         UNIT=SYSDA,                                                 00015500
//*         SPACE=(TRK,(10,3),RLSE)                                     00015600
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                   00015700
//*SYSPRINT DD SYSOUT=*                                                 00015800
//*SYSOUT   DD SYSOUT=*                                                 00015900
//*SYSDBOUT DD SYSOUT=*                                                 00016000
//*SYSABOUT DD DUMMY                                                    00016100
//*SYSUDUMP DD DUMMY                                                    00016200
//**********************************************************************00016300
//*                        -- VOBT97E --                               *00016400
//*                                                                    *00016500
//* OBJETIVO  :   SUMARIZA LAS ORDENES NO REPORTADAS AL PISO           *00016600
//*                                                                    *00016700
//* PASO REINICIABLE POR RESTART                                       *00016800
//**********************************************************************00016900
//*CAC0228  EXEC PGM=VOBT97E,REGION=4M,COND=(4,LT)                      00017000
//*VOBT97A1 DD DSN=SIVA.MDC.WKF.ORDSORT1.D&DATE..T&HORA,DISP=SHR        00017100
//*VOBT97A2 DD DSN=SIVA.MDC.WKF.VOBT97A2.D&DATE..T&HORA,                00017200
//*         DISP=(NEW,CATLG,DELETE),                                    00017300
//*         DCB=(RECFM=FB,BLKSIZE=0,LRECL=48),                          00017400
//*         UNIT=SYSDA,                                                 00017500
//*         SPACE=(TRK,(10,3),RLSE)                                     00017600
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                   00017700
//*SYSPRINT DD SYSOUT=*                                                 00017800
//*SYSOUT   DD SYSOUT=*                                                 00017900
//*SYSDBOUT DD SYSOUT=*                                                 00018000
//*SYSABOUT DD DUMMY                                                    00018100
//*SYSUDUMP DD DUMMY                                                    00018200
//**********************************************************************00018300
//*                        -- VOB426E --                               *00018400
//*                                                                    *00018500
//* OBJETIVO  :   IDENTIFIC LAS ORDENES DE CRUCE                       *00018600
//*                                                                    *00018700
//* PASO REINICIABLE POR RESTART                                       *00018800
//**********************************************************************00018900
//*CAC0227  EXEC PGM=VOB426E,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00019000
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                   00019100
//*SYSPRINT DD SYSOUT=*                                                 00019200
//*VOB426A1 DD DSN=SIVA.MDC.WKF.VOB460A2.D&DATE..T&HORA,DISP=SHR        00019300
//*VOB426A2 DD DSN=SIVA.MDC.WKF.VOB426A2.D&DATE..T&HORA,                00019400
//*         DISP=(NEW,CATLG,DELETE),                                    00019500
//*         DCB=(RECFM=FB,LRECL=48,BLKSIZE=0),                          00019600
//*         UNIT=SYSDA,                                                 00019700
//*         SPACE=(TRK,(1,1),RLSE)                                      00019800
//*SYSOUT   DD SYSOUT=*                                                 00019900
//*SYSDBOUT DD SYSOUT=*                                                 00020000
//*SYSABOUT DD DUMMY                                                    00020100
//*SYSUDUMP DD DUMMY                                                    00020200
//**********************************************************************00020300
//*                        -- VOBT98E --                               *00020400
//*                                                                    *00020500
//* OBJETIVO  :   IDENTIFIC LAS ORDENES DE CRUCE                       *00020600
//*                                                                    *00020700
//* PASO REINICIABLE POR RESTART                                       *00020800
//**********************************************************************00020900
//*CAC0226  EXEC PGM=VOBT98E,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00021000
//*SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                   00021100
//*SYSPRINT DD SYSOUT=*                                                 00021200
//*VOBT98A1 DD DSN=SIVA.MDC.WKF.VOBT97A2.D&DATE..T&HORA,DISP=SHR        00021300
//*VOBT98A2 DD DSN=SIVA.MDC.WKF.VOBT98A2.D&DATE..T&HORA,                00021400
//*         DISP=(NEW,CATLG,DELETE),                                    00021500
//*         DCB=(RECFM=FB,LRECL=48,BLKSIZE=0),                          00021600
//*         UNIT=SYSDA,                                                 00021700
//*         SPACE=(TRK,(1,1),RLSE)                                      00021800
//*SYSOUT   DD SYSOUT=*                                                 00021900
//*SYSDBOUT DD SYSOUT=*                                                 00022000
//*SYSABOUT DD DUMMY                                                    00022100
//*SYSUDUMP DD DUMMY                                                    00022200
//**********************************************************************00022300
//*                        --  SORT   --                               *00022400
//*                          VOB426E                                   *00022500
//* OBJETIVO  :   SORT INCLUDE DE LAS ORDENES NORMALES                 *00022600
//*               OPERACION NORMAL                                     *00022700
//* PASO REINICIABLE POR RESTART                                       *00022800
//**********************************************************************00022900
//*CAC0225  EXEC PGM=SYNCSORT,COND=(4,LT)                               00023000
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00023100
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00023200
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOB426A2.D&DATE..T&HORA,DISP=SHR        00023300
//*SORTOUT  DD DSN=SIVA.MDC.WKF.VOB426S1.D&DATE..T&HORA,                00023400
//*         DISP=(NEW,CATLG,DELETE),                                    00023500
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00023600
//*         UNIT=SYSDA,                                                 00023700
//*         SPACE=(TRK,(10,3),RLSE)                                     00023800
//*SYSOUT   DD SYSOUT=*                                                 00023900
//*SYSPRINT DD SYSOUT=*                                                 00024000
//*SYSIN    DD DSN=SIVA.CARDS(CAC0215),DISP=SHR                         00024100
//**********************************************************************00024200
//*                        --  SORT   --                               *00024300
//*                           VOBT98E                                  *00024400
//* OBJETIVO  :   SORT INCLUDE DE LAS ORDENES NORMALES                 *00024500
//*               OPERACION NORMAL                                     *00024600
//* PASO REINICIABLE POR RESTART                                       *00024700
//**********************************************************************00024800
//*CAC0224  EXEC PGM=SYNCSORT,COND=(4,LT)                               00024900
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00025000
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00025100
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOBT98A2.D&DATE..T&HORA,DISP=SHR        00025200
//*SORTOUT  DD DSN=SIVA.MDC.WKF.VOBT98S1.D&DATE..T&HORA,                00025300
//*         DISP=(NEW,CATLG,DELETE),                                    00025400
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00025500
//*         UNIT=SYSDA,                                                 00025600
//*         SPACE=(TRK,(10,3),RLSE)                                     00025700
//*SYSOUT   DD SYSOUT=*                                                 00025800
//*SYSPRINT DD SYSOUT=*                                                 00025900
//*SYSIN    DD DSN=SIVA.CARDS(CAC0215),DISP=SHR                         00026000
//**********************************************************************00026100
//*                        --  SORT   --                               *00026200
//*                          VOB426E                                   *00026300
//* OBJETIVO  :   SORT OMIT DE LAS ORDENES A PRECIO DE CIERRE          *00026400
//*               OPC                                                  *00026500
//* PASO REINICIABLE POR RESTART                                       *00026600
//**********************************************************************00026700
//*CAC0223  EXEC PGM=SYNCSORT,COND=(4,LT)                               00026800
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00026900
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00027000
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOB426A2.D&DATE..T&HORA,DISP=SHR        00027100
//*SORTOUT  DD DSN=SIVA.MDC.WKF.VOB426S2.D&DATE..T&HORA,                00027200
//*         DISP=(NEW,CATLG,DELETE),                                    00027300
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00027400
//*         UNIT=SYSDA,                                                 00027500
//*         SPACE=(TRK,(10,3),RLSE)                                     00027600
//*SYSOUT   DD SYSOUT=*                                                 00027700
//*SYSPRINT DD SYSOUT=*                                                 00027800
//*SYSIN    DD DSN=SIVA.CARDS(CAC0216),DISP=SHR                         00027900
//**********************************************************************00028000
//*                        --  SORT   --                               *00028100
//*                           VOBT98E                                  *00028200
//* OBJETIVO  :   SORT OMIT DE LAS ORDENES A PRECIO DE CIERRE          *00028300
//*               OPC                                                  *00028400
//* PASO REINICIABLE POR RESTART                                       *00028500
//**********************************************************************00028600
//*CAC0222  EXEC PGM=SYNCSORT,COND=(4,LT)                               00028700
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00028800
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00028900
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOBT98A2.D&DATE..T&HORA,DISP=SHR        00029000
//*SORTOUT  DD DSN=SIVA.MDC.WKF.VOBT98S2.D&DATE..T&HORA,                00029100
//*         DISP=(NEW,CATLG,DELETE),                                    00029200
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00029300
//*         UNIT=SYSDA,                                                 00029400
//*         SPACE=(TRK,(10,3),RLSE)                                     00029500
//*SYSOUT   DD SYSOUT=*                                                 00029600
//*SYSPRINT DD SYSOUT=*                                                 00029700
//*SYSIN    DD DSN=SIVA.CARDS(CAC0216),DISP=SHR                         00029800
//**********************************************************************00029900
//*                        --  SORT   --                               *00030000
//*                          VOB426E                                   *00030100
//* OBJETIVO  :   SORT INCLUDE DE LAS ORDENES DE CRUCE  P/PGM=VIB449E  *00030200
//*                                                                    *00030300
//* PASO REINICIABLE POR RESTART                                       *00030400
//**********************************************************************00030500
//*CAC0221  EXEC PGM=SYNCSORT,COND=(4,LT)                               00030600
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00030700
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00030800
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOB426S1.D&DATE..T&HORA,DISP=SHR        00030900
//*SORTOUT  DD DSN=SIVA.MDC.WKF.CRUSORT1.D&DATE..T&HORA,                00031000
//*         DISP=(NEW,CATLG,DELETE),                                    00031100
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00031200
//*         UNIT=SYSDA,                                                 00031300
//*         SPACE=(TRK,(10,3),RLSE)                                     00031400
//*SYSOUT   DD SYSOUT=*                                                 00031500
//*SYSPRINT DD SYSOUT=*                                                 00031600
//*SYSIN    DD DSN=SIVA.CARDS(CAC0206),DISP=SHR                         00031700
//**********************************************************************00031800
//*                        --  SORT   --                               *00031900
//*                          VOB426E                                   *00032000
//* OBJETIVO  :   SORT INCLUDE DE LAS ORDENES DE CRUCE P/PGM=VIB449E   *00032100
//*                                                                    *00032200
//* PASO REINICIABLE POR RESTART                                       *00032300
//**********************************************************************00032400
//*CAC0220  EXEC PGM=SYNCSORT,COND=(4,LT)                               00032500
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00032600
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00032700
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOB426S1.D&DATE..T&HORA,DISP=SHR        00032800
//*SORTOUT  DD DSN=SIVA.MDC.WKF.CRUSORT2.D&DATE..T&HORA,                00032900
//*         DISP=(NEW,CATLG,DELETE),                                    00033000
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00033100
//*         UNIT=SYSDA,                                                 00033200
//*         SPACE=(TRK,(10,3),RLSE)                                     00033300
//*SYSOUT   DD SYSOUT=*                                                 00033400
//*SYSPRINT DD SYSOUT=*                                                 00033500
//*SYSIN    DD DSN=SIVA.CARDS(CAC0212),DISP=SHR                         00033600
//**********************************************************************00033700
//*                        --  SORT   --                               *00033800
//*                          VOB426E                                   *00033900
//* OBJETIVO  :   SORT OMIT DE LAS ORDENES DE CRUCE P/PGM=VIB449E      *00034000
//*                                                                    *00034100
//* PASO REINICIABLE POR RESTART                                       *00034200
//**********************************************************************00034300
//*CAC0219  EXEC PGM=SYNCSORT,COND=(4,LT)                               00034400
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00034500
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00034600
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOB426S2.D&DATE..T&HORA,DISP=SHR        00034700
//*SORTOUT  DD DSN=SIVA.MDC.WKF.CRUSORT3.D&DATE..T&HORA,                00034800
//*         DISP=(NEW,CATLG,DELETE),                                    00034900
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00035000
//*         UNIT=SYSDA,                                                 00035100
//*         SPACE=(TRK,(10,3),RLSE)                                     00035200
//*SYSOUT   DD SYSOUT=*                                                 00035300
//*SYSPRINT DD SYSOUT=*                                                 00035400
//*SYSIN    DD DSN=SIVA.CARDS(CAC0206),DISP=SHR                         00035500
//**********************************************************************00035600
//*                        --  SORT   --                               *00035700
//*                           VOB426E                                  *00035800
//* OBJETIVO  :   SORT OMIT DE LAS ORDENES DE CRUCE P/PGM=VIB449E      *00035900
//*                                                                    *00036000
//* PASO REINICIABLE POR RESTART                                       *00036100
//**********************************************************************00036200
//*CAC0218  EXEC PGM=SYNCSORT,COND=(4,LT)                               00036300
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00036400
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00036500
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOB426S2.D&DATE..T&HORA,DISP=SHR        00036600
//*SORTOUT  DD DSN=SIVA.MDC.WKF.CRUSORT4.D&DATE..T&HORA,                00036700
//*         DISP=(NEW,CATLG,DELETE),                                    00036800
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00036900
//*         UNIT=SYSDA,                                                 00037000
//*         SPACE=(TRK,(10,3),RLSE)                                     00037100
//*SYSOUT   DD SYSOUT=*                                                 00037200
//*SYSPRINT DD SYSOUT=*                                                 00037300
//*SYSIN    DD DSN=SIVA.CARDS(CAC0212),DISP=SHR                         00037400
//**********************************************************************00037500
//*                        --  SORT   --                               *00037600
//*                          VOBT98E                                   *00037700
//* OBJETIVO  :   SORT INCLUDE DE LAS ORDENES DE CRUCE  P/PGM=VIBT99E  *00037800
//*                                                                    *00037900
//* PASO REINICIABLE POR RESTART                                       *00038000
//**********************************************************************00038100
//*CAC0217  EXEC PGM=SYNCSORT,COND=(4,LT)                               00038200
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00038300
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00038400
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOBT98S1.D&DATE..T&HORA,DISP=SHR        00038500
//*SORTOUT  DD DSN=SIVA.MDC.WKF.CRUSORT5.D&DATE..T&HORA,                00038600
//*         DISP=(NEW,CATLG,DELETE),                                    00038700
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00038800
//*         UNIT=SYSDA,                                                 00038900
//*         SPACE=(TRK,(10,3),RLSE)                                     00039000
//*SYSOUT   DD SYSOUT=*                                                 00039100
//*SYSPRINT DD SYSOUT=*                                                 00039200
//*SYSIN    DD DSN=SIVA.CARDS(CAC0206),DISP=SHR                         00039300
//**********************************************************************00039400
//*                        --  SORT   --                               *00039500
//*                          VOBT98E                                   *00039600
//* OBJETIVO  :   SORT INCLUDE DE LAS ORDENES DE CRUCE P/PGM=VIBT99E   *00039700
//*                                                                    *00039800
//* PASO REINICIABLE POR RESTART                                       *00039900
//**********************************************************************00040000
//*CAC0216  EXEC PGM=SYNCSORT,COND=(4,LT)                               00040100
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00040200
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00040300
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOBT98S1.D&DATE..T&HORA,DISP=SHR        00040400
//*SORTOUT  DD DSN=SIVA.MDC.WKF.CRUSORT6.D&DATE..T&HORA,                00040500
//*         DISP=(NEW,CATLG,DELETE),                                    00040600
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00040700
//*         UNIT=SYSDA,                                                 00040800
//*         SPACE=(TRK,(10,3),RLSE)                                     00040900
//*SYSOUT   DD SYSOUT=*                                                 00041000
//*SYSPRINT DD SYSOUT=*                                                 00041100
//*SYSIN    DD DSN=SIVA.CARDS(CAC0212),DISP=SHR                         00041200
//**********************************************************************00041300
//*                        --  SORT   --                               *00041400
//*                          VOBT98E                                   *00041500
//* OBJETIVO  :   SORT OMIT DE LAS ORDENES DE CRUCE P/PGM=VIBT99E      *00041600
//*                                                                    *00041700
//* PASO REINICIABLE POR RESTART                                       *00041800
//**********************************************************************00041900
//*CAC0215  EXEC PGM=SYNCSORT,COND=(4,LT)                               00042000
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00042100
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00042200
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOBT98S2.D&DATE..T&HORA,DISP=SHR        00042300
//*SORTOUT  DD DSN=SIVA.MDC.WKF.CRUSORT7.D&DATE..T&HORA,                00042400
//*         DISP=(NEW,CATLG,DELETE),                                    00042500
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00042600
//*         UNIT=SYSDA,                                                 00042700
//*         SPACE=(TRK,(10,3),RLSE)                                     00042800
//*SYSOUT   DD SYSOUT=*                                                 00042900
//*SYSPRINT DD SYSOUT=*                                                 00043000
//*SYSIN    DD DSN=SIVA.CARDS(CAC0206),DISP=SHR                         00043100
//**********************************************************************00043200
//*                        --  SORT   --                               *00043300
//*                           VOBT98E                                  *00043400
//* OBJETIVO  :   SORT OMIT DE LAS ORDENES DE CRUCE P/PGM=VIBT99E      *00043500
//*                                                                    *00043600
//* PASO REINICIABLE POR RESTART                                       *00043700
//**********************************************************************00043800
//*CAC0214  EXEC PGM=SYNCSORT,COND=(4,LT)                               00043900
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00044000
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                               00044100
//*SORTIN   DD DSN=SIVA.MDC.WKF.VOBT98S2.D&DATE..T&HORA,DISP=SHR        00044200
//*SORTOUT  DD DSN=SIVA.MDC.WKF.CRUSORT8.D&DATE..T&HORA,                00044300
//*         DISP=(NEW,CATLG,DELETE),                                    00044400
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=48,BLKSIZE=0),                 00044500
//*         UNIT=SYSDA,                                                 00044600
//*         SPACE=(TRK,(10,3),RLSE)                                     00044700
//*SYSOUT   DD SYSOUT=*                                                 00044800
//*SYSPRINT DD SYSOUT=*                                                 00044900
//*SYSIN    DD DSN=SIVA.CARDS(CAC0212),DISP=SHR                         00045000
//**********************************************************************00045100
//*                        -- VIB449E --                               *00045200
//*                                                                    *00045300
//* OBJETIVO  :   GENERACION DE LOS TALONES DE ORDENES PARA SU         *00045400
//*               OPERACION DEL PISO                                   *00045500
//* ACTUALIZA :   PARAM                                                *00045600
//*                                                                    *00045700
//* EN CASO DE CANCELAR POR CUALQUIER CODIGO REPROCESAR APARTE CON LOS *00045800
//* ARCHIVOS DE LA HORA Y EL DIA CORRESPONDIENTE                       *00045900
//*                                                                    *00046000
//* PASO NO REINICIABLE                                                *00046100
//**********************************************************************00046200
//CAC0214  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00046300
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00046400
//SYSPRINT DD SYSOUT=*                                                  00046500
//*VIB449A1 DD DSN=SIVA.MDC.WKF.CRUSORT1.D&DATE..T&HORA,DISP=SHR        00046600
//*         DD DSN=SIVA.MDC.WKF.CRUSORT2.D&DATE..T&HORA,DISP=SHR        00046700
//*         DD DSN=SIVA.MDC.WKF.CRUSORT3.D&DATE..T&HORA,DISP=SHR        00046800
//*         DD DSN=SIVA.MDC.WKF.CRUSORT4.D&DATE..T&HORA,DISP=SHR        00046900
//VIB449A1 DD DSN=SIVA.MDC.WKF.VOB459A1.D&DATE..T&HORA,DISP=SHR         00047000
//VIB449R1 DD DSN=&&TALON,DISP=(,PASS,DELETE),UNIT=SYSDA,               00047100
//         SPACE=(TRK,(5,1),RLSE)                                       00047200
//SYSOUT   DD SYSOUT=*                                                  00047300
//SYSUDUMP DD DUMMY                                                     00047400
//SYSCOUNT DD SYSOUT=*                                                  00047500
//SYSDBOUT DD SYSOUT=*                                                  00047600
//SYSABOUT DD SYSOUT=*                                                  00047700
//SYSTSIN  DD DSN=SIVA.CARDS(CAC0204),DISP=SHR                          00047800
//*                                                                     00047900
//*********                                                             00048000
//**********************************************************************00048100
//*                        --  MAILOPER --                             *00048200
//* OBJETIVO : AVISAR A AF/OPERATOR QUE TERMINARON MAL LOS TALONES     *00048300
//*                                                                    *00048400
//* PASO REINICIABLE POR RESTART                                       *00048500
//**********************************************************************00048600
//CAC0213 EXEC PGM=MAILOPER,COND=(6,GT),                                00048700
//  PARM=('/AF-OPERATOR PROBLEMAS CON TALONES')                         00048800
//CAC0212  EXEC  PGM=ICEGENER,COND=(4,LT)                               00048900
//SYSIN    DD   DUMMY                                                   00049000
//SYSPRINT DD   DUMMY                                                   00049100
//*********IMPRESORA DE MESA DE CAPITALES (BMV3)                        00049200
//*SYSUT2   DD   SYSOUT=(S,,TAL),DEST=BMD3                              00049300
//*********DESHINIBIR ESTA LINEA EN LA NOCHE  OJO OJO OJO  OJO          00049400
//*SYSUT2   DD   SYSOUT=(S,,TAL),DEST=BMV3                              00049500
//*********IMPRESORA DE BOLSA MEXICANA (DA04)                           00049600
//*********INIBIR ESTA LINEA EN LA NOCHE    OJO   OJO   OJO             00049700
//SYSUT2   DD   SYSOUT=(O,,TAL),DEST=DA04                               00049800
//SYSUT1   DD   DSN=&&TALON,DISP=(OLD,PASS)                             00049900
//**********************************************************************00050000
//*                        -- VIBT99E --                               *00050100
//*                                                                    *00050200
//* OBJETIVO  :   GENERACION DE LOS TALONES DE ORDENES PARA SU         *00050300
//*               OPERACION DEL PISO                                   *00050400
//* ACTUALIZA :   PARAM                                                *00050500
//*                                                                    *00050600
//* EN CASO DE CANCELAR POR CUALQUIER CODIGO REPROCESAR APARTE CON LOS *00050700
//* ARCHIVOS DE LA HORA Y EL DIA CORRESPONDIENTE                       *00050800
//*                                                                    *00050900
//* PASO NO REINICIABLE                                                *00051000
//**********************************************************************00051100
//CAC0211  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00051200
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00051300
//SYSPRINT DD SYSOUT=*                                                  00051400
//*VIBT99A1 DD DSN=SIVA.MDC.WKF.CRUSORT5.D&DATE..T&HORA,DISP=SHR        00051500
//*         DD DSN=SIVA.MDC.WKF.CRUSORT6.D&DATE..T&HORA,DISP=SHR        00051600
//*         DD DSN=SIVA.MDC.WKF.CRUSORT7.D&DATE..T&HORA,DISP=SHR        00051700
//*         DD DSN=SIVA.MDC.WKF.CRUSORT8.D&DATE..T&HORA,DISP=SHR        00051800
//VIBT99A1 DD DSN=SIVA.MDC.WKF.VOBT96A1.D&DATE..T&HORA,DISP=SHR         00051900
//VIBT99R1 DD DSN=&&TALON1,DISP=(,PASS,DELETE),UNIT=SYSDA,              00052000
//        SPACE=(TRK,(5,1),RLSE)                                        00052100
//SYSOUT   DD SYSOUT=*                                                  00052200
//SYSUDUMP DD DUMMY                                                     00052300
//SYSCOUNT DD SYSOUT=*                                                  00052400
//SYSDBOUT DD SYSOUT=*                                                  00052500
//SYSABOUT DD SYSOUT=*                                                  00052600
//SYSTSIN  DD DSN=SIVA.CARDS(CAC0203),DISP=SHR                          00052700
//*                                                                     00052800
//**********************************************************************00052900
//*                        --  MAILOPER --                             *00053000
//* OBJETIVO : AVISAR A AF/OPERATOR QUE TERMINARON MAL LOS TALONES     *00053100
//*                                                                    *00053200
//* PASO REINICIABLE POR RESTART                                       *00053300
//**********************************************************************00053400
//CAC0210 EXEC PGM=MAILOPER,COND=(6,GT),                                00053500
//  PARM=('/AF-OPERATOR PROBLEMAS CON TALONES')                         00053600
//*********                                                             00053700
//CAC0209  EXEC  PGM=ICEGENER,COND=(4,LT)                               00053800
//SYSIN    DD   DUMMY                                                   00053900
//SYSPRINT DD   DUMMY                                                   00054000
//SYSUT2   DD   SYSOUT=(O,,TALR),DEST=DA04                              00054100
//SYSUT1   DD   DSN=&&TALON1,DISP=(OLD,PASS)                            00054200
//*                                                                     00054300
//**********                                                            00054400
//CAC0208  EXEC  PGM=ICEGENER,COND=(4,LT)                               00054500
//SYSIN    DD   DUMMY                                                   00054600
//SYSPRINT DD   DUMMY                                                   00054700
//SYSUT2   DD   SYSOUT=(O,,TAL)                                         00054800
//SYSUT1   DD   DSN=&&TALON,DISP=(OLD,DELETE)                           00054900
//**********                                                            00055000
//CAC0207  EXEC  PGM=ICEGENER,COND=(4,LT)                               00055100
//SYSIN    DD   DUMMY                                                   00055200
//SYSPRINT DD   DUMMY                                                   00055300
//SYSUT2   DD   SYSOUT=(O,,TALR)                                        00055400
//SYSUT1   DD   DSN=&&TALON1,DISP=(OLD,DELETE)                          00055500
//**********************************************************************00055600
//*                        -- VIB595D --                               *00055700
//*                                                                    *00055800
//* OBJETIVO  :   GENERACION DE LOS TALONES DE CANCELACION DE ORDENES  *00055900
//*               PARA SU OPERACION EN EL PISO                         *00056000
//* ACTUALIZA :   ORDENES                                              *00056100
//*                                                                    *00056200
//*                                                                    *00056300
//* PASO    REINICIABLE                                                *00056400
//**********************************************************************00056500
//CAC0206  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00056600
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00056700
//SYSPRINT DD SYSOUT=*                                                  00056800
//VIB595R1 DD DSN=&&TALCAN,DISP=(,PASS,DELETE),UNIT=SYSDA,              00056900
//         SPACE=(TRK,(5,1),RLSE)                                       00057000
//SYSOUT   DD SYSOUT=*                                                  00057100
//SYSUDUMP DD DUMMY                                                     00057200
//SYSCOUNT DD SYSOUT=*                                                  00057300
//SYSDBOUT DD SYSOUT=*                                                  00057400
//SYSABOUT DD SYSOUT=*                                                  00057500
//SYSTSIN  DD DSN=SIVA.CARDS(CAC0202),DISP=SHR                          00057600
//*                                                                     00057700
//**********************************************************************00057800
//*                        -- VIBT94D --                               *00057900
//*                                                                    *00058000
//* OBJETIVO  :   GENERACION DE LOS TALONES DE CANCELACION DE ORDENES  *00058100
//*               PARA SU OPERACION EN EL PISO                         *00058200
//* ACTUALIZA :   ORDENES                                              *00058300
//*                                                                    *00058400
//*                                                                    *00058500
//* PASO    REINICIABLE                                                *00058600
//**********************************************************************00058700
//CAC0205  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00058800
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00058900
//SYSPRINT DD SYSOUT=*                                                  00059000
//VIBT94R1 DD DSN=&&TALCAN1,DISP=(,PASS,DELETE),UNIT=SYSDA,             00059100
//         SPACE=(TRK,(5,1),RLSE)                                       00059200
//SYSOUT   DD SYSOUT=*                                                  00059300
//SYSUDUMP DD DUMMY                                                     00059400
//SYSCOUNT DD SYSOUT=*                                                  00059500
//SYSDBOUT DD SYSOUT=*                                                  00059600
//SYSABOUT DD SYSOUT=*                                                  00059700
//SYSTSIN  DD DSN=SIVA.CARDS(CAC0201),DISP=SHR                          00059800
//*                                                                     00059900
//*********                                                             00060000
//CAC0204  EXEC  PGM=ICEGENER,COND=(4,LT)                               00060100
//SYSIN    DD   DUMMY                                                   00060200
//SYSPRINT DD   DUMMY                                                   00060300
//SYSUT2   DD   SYSOUT=(O,,TALC),DEST=DA04                              00060400
//*SYSUT2   DD   SYSOUT=(S,,TALC),DEST=BMV3                             00060500
//*SYSUT2   DD   SYSOUT=(S,,TALC),DEST=BMD3                             00060600
//SYSUT1   DD   DSN=&&TALCAN,DISP=(OLD,PASS)                            00060700
//**********                                                            00060800
//CAC0203  EXEC  PGM=ICEGENER,COND=(4,LT)                               00060900
//SYSIN    DD   DUMMY                                                   00061000
//SYSPRINT DD   DUMMY                                                   00061100
//SYSUT2   DD   SYSOUT=(O,,TALC)                                        00061200
//SYSUT1   DD   DSN=&&TALCAN,DISP=(OLD,DELETE)                          00061300
//*********                                                             00061400
//CAC0202  EXEC  PGM=ICEGENER,COND=(4,LT)                               00061500
//SYSIN    DD   DUMMY                                                   00061600
//SYSPRINT DD   DUMMY                                                   00061700
//SYSUT2   DD   SYSOUT=(O,,TACR),DEST=DA04                              00061800
//*SYSUT2   DD   SYSOUT=(S,,TACR),DEST=YYYY                             00061900
//SYSUT1   DD   DSN=&&TALCAN1,DISP=(OLD,PASS)                           00062000
//**********                                                            00062100
//CAC0201  EXEC  PGM=ICEGENER,COND=(4,LT)                               00062200
//SYSIN    DD   DUMMY                                                   00062300
//SYSPRINT DD   DUMMY                                                   00062400
//SYSUT2   DD   SYSOUT=(O,,TACR)                                        00062500
//SYSUT1   DD   DSN=&&TALCAN1,DISP=(OLD,DELETE)                         00062600
