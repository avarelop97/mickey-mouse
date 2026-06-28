//FDE2000 PROC                                                          00000100
//**********************************************************************00000200
//*                                                                    *00000300
//* SISTEMA        :  SOCIEDADES DE INVERSION                           00000400
//*                                                                    *00000500
//* PROCESO        :  PFDFDE20                                         *00000600
//*                                                                    *00000700
//* OBJETIVO       :  GENERACION DE ARCHIVOS PARA CARGA INICIAL DE     *00000800
//*                   BANCO A SIVA                                     *00000900
//*                                                                    *00001000
//* REALIZO        :  MARTHA GUIDO                                      00001100
//*                                                                     00001200
//* FECHA          :  AGOSTO DE 1998                                   *00001300
//**********************************************************************00001400
//****************************************************************      00001500
//*          COPIA ARCHIVO DE CLIENTES SOC DE INV                *      00001600
//*                      ALTAMIRA                                *      00001700
//****************************************************************      00001800
//FDE2022 EXEC  PGM=IDCAMS                                              00001900
//INPUT   DD DSN=SIVA.SIN.FIX.CARGA.CTEALTB,DISP=SHR                    00002000
//OUTPUT  DD DSN=SIVA.SIN.FIX.CTEALTB.TEMP,                             00002100
//        DISP=(NEW,CATLG,DELETE),                                      00002200
//        SPACE=(TRK,(100,50),RLSE),                                    00002300
//        DCB=(LRECL=347,BLKSIZE=0,RECFM=FB),                           00002400
//        UNIT=SYSDA                                                    00002500
//SYSPRINT DD SYSOUT=*                                                  00002600
//SYSIN DD DSN=SIVA.CARDS(FDEXXX),DISP=SHR                              00002700
//****************************************************************      00002800
//*       COPIA ARCHIVO MAESTRO DE CLIENTES SOC DE INV           *      00002900
//*                      PCLA                                    *      00003000
//****************************************************************      00003100
//FDE2021 EXEC  PGM=IDCAMS,COND=(4,LT)                                  00003200
//INPUT   DD DSN=SIVA.SIN.FIX.MCMAEST,DISP=SHR                          00003300
//OUTPUT  DD DSN=SIVA.SIN.FIX.MCMAEST.TEMP,                             00003400
//        DISP=(NEW,CATLG,DELETE),                                      00003500
//        SPACE=(TRK,(200,50),RLSE),                                    00003600
//        DCB=(LRECL=791,BLKSIZE=0,RECFM=FB),                           00003700
//        UNIT=SYSDA                                                    00003800
//SYSPRINT DD SYSOUT=*                                                  00003900
//SYSIN DD DSN=SIVA.CARDS(FDEXXX),DISP=SHR                              00004000
//********************************************************************* 00004100
//*    ORDENA ARCHIVO DE SOC DE INV ALTAMIRA POR NUMERO DE CONTRATO   * 00004200
//*                                                                   * 00004300
//********************************************************************* 00004400
//FDE2020  EXEC PGM=SYNCSORT,COND=(4,LT)                                00004500
//SORTIN   DD DSN=SIVA.SIN.FIX.CTEALTB.TEMP,DISP=SHR                    00004600
//SORTOUT  DD DSN=SIVA.SIN.FIX.CTEALTB1,                                00004700
//         DISP=(,CATLG,DELETE),                                        00004800
//         SPACE=(TRK,(100,50),RLSE),                                   00004900
//         DCB=(LRECL=347,BLKSIZE=0,RECFM=FB),                          00005000
//         UNIT=SYSDA                                                   00005100
//SYSOUT   DD SYSOUT=*                                                  00005200
//SYSPRINT DD SYSOUT=*                                                  00005300
//SYSIN DD DSN=SIVA.CARDS(FDE2020),DISP=SHR                             00005400
//*                                                                     00005500
//********************************************************************* 00005600
//*    ORDENA ARCHIVO DE SOC DE INV   PCLA   POR NUMERO DE CONTRATO   * 00005700
//*                                                                   * 00005800
//********************************************************************* 00005900
//FDE2019  EXEC PGM=SYNCSORT,COND=(4,LT)                                00006000
//SORTIN   DD DSN=SIVA.SIN.FIX.MCMAEST.TEMP,DISP=SHR                    00006100
//SORTOUT  DD DSN=SIVA.SIN.FIX.MCMAEST1,                                00006200
//         DISP=(,CATLG,DELETE),                                        00006300
//         SPACE=(TRK,(200,50),RLSE),                                   00006400
//         DCB=(LRECL=791,BLKSIZE=0,RECFM=FB),                          00006500
//         UNIT=SYSDA                                                   00006600
//SYSOUT   DD SYSOUT=*                                                  00006700
//SYSPRINT DD SYSOUT=*                                                  00006800
//SYSIN DD DSN=SIVA.CARDS(FDE2019),DISP=SHR                             00006900
//*                                                                     00007000
//********************************************************************* 00007100
//*  COMPARA LOS ARCHIVOS PARA SELECCIONAR LOS CONTRATOS ACTIVOS        00007200
//*                      EN AMBOS SISTEMAS                              00007300
//********************************************************************* 00007400
//FDE2018  EXEC PGM=VOB298E,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00007500
//        TIME=100                                                      00007600
//*                                                                     00007700
//SYSOUT   DD SYSOUT=*                                                  00007800
//CTEALTB  DD DSN=SIVA.SIN.FIX.CTEALTB1,DISP=SHR                        00007900
//MAEST    DD DSN=SIVA.SIN.FIX.MCMAEST1,DISP=SHR                        00008000
//NEALTAM  DD DSN=SIVA.SIN.FIX.NEALT,                                   00008100
//         DISP=(,CATLG,DELETE),                                        00008200
//         SPACE=(TRK,(200,50),RLSE),                                   00008300
//         DCB=(LRECL=791,BLKSIZE=0,RECFM=FB),                          00008400
//         UNIT=SYSDA                                                   00008500
//NEMAEST  DD DSN=SIVA.SIN.FIX.NEMAE,                                   00008600
//         DISP=(,CATLG,DELETE),                                        00008700
//         SPACE=(TRK,(100,50),RLSE),                                   00008800
//         DCB=(LRECL=347,BLKSIZE=0,RECFM=FB),                          00008900
//         UNIT=SYSDA                                                   00009000
//CTEACTIV DD DSN=SIVA.SIN.FIX.CTEACTIV.TEMP,                           00009100
//         DISP=(,CATLG,DELETE),                                        00009200
//         SPACE=(TRK,(200,40),RLSE),                                   00009300
//         DCB=(LRECL=791,BLKSIZE=0,RECFM=FB),                          00009400
//         UNIT=SYSDA                                                   00009500
//*                                                                     00009600
//********************************************************************* 00009700
//*    ORDENA ARCHIVO DE CLIENTES ACTIVOS POR CUENTA DE CHEQUES         00009800
//*                                                                     00009900
//********************************************************************* 00010000
//FDE2017  EXEC PGM=SYNCSORT,COND=(4,LT)                                00010100
//SORTIN   DD DSN=SIVA.SIN.FIX.CTEACTIV.TEMP,DISP=SHR                   00010200
//SORTOUT  DD DSN=SIVA.SIN.FIX.CTEACTIV,                                00010300
//         DISP=(,CATLG,DELETE),                                        00010400
//         SPACE=(TRK,(200,40),RLSE),                                   00010500
//         DCB=(LRECL=791,BLKSIZE=0,RECFM=FB),                          00010600
//         UNIT=SYSDA                                                   00010700
//SYSOUT   DD SYSOUT=*                                                  00010800
//SYSPRINT DD SYSOUT=*                                                  00010900
//SYSIN DD DSN=SIVA.CARDS(FDE2017),DISP=SHR                             00011000
//*                                                                     00011100
//********************************************************************* 00011200
//*              COMPARA EL ARCHIVO DE CLIENTES ACTIVOS CON             00011300
//*              EL ARCHIVO DE CUENTAS DE CHEQUES VIGENTES              00011400
//********************************************************************* 00011500
//FDE2016  EXEC PGM=VOB299E,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00011600
//        TIME=100                                                      00011700
//*                                                                     00011800
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420                                 00011900
//SYSPRINT DD SYSOUT=X                                                  00012000
//SYSOUT   DD SYSOUT=*                                                  00012100
//*                                                                     00012200
//SYSDBOUT DD SYSOUT=X                                                  00012300
//SYSABOUT DD DUMMY                                                     00012400
//SYSUDUMP DD DUMMY                                                     00012500
//CTEACTIV DD DSN=SIVA.SIN.FIX.CTEACTIV,DISP=SHR                        00012600
//CUENTAS  DD DSN=SIVA.SIN.FIX.CUENTAS.CHEQUES.SORT,DISP=SHR            00012700
//NUEMAE   DD DSN=SIVA.SIN.FIX.NUEVO.MCMAEST.TEMP,                      00012800
//         DISP=(,CATLG,DELETE),                                        00012900
//         SPACE=(TRK,(200,40),RLSE),                                   00013000
//         DCB=(LRECL=793,BLKSIZE=0,RECFM=FB),                          00013100
//         UNIT=SYSDA                                                   00013200
//SINCTA   DD DSN=SIVA.SIN.FIX.CTE.SINCTA.TEMP,                         00013300
//         DISP=(,CATLG,DELETE),                                        00013400
//         SPACE=(TRK,(100,50),RLSE),                                   00013500
//         DCB=(LRECL=791,BLKSIZE=0,RECFM=FB),                          00013600
//         UNIT=SYSDA                                                   00013700
//*                                                                     00013800
//********************************************************************* 00013900
//*    ORDENA ARCHIVO CTES SIN CTA  POR CONTRATO                      * 00014000
//*                                                                   * 00014100
//********************************************************************* 00014200
//FDE2015  EXEC PGM=SYNCSORT,COND=(4,LT)                                00014300
//SORTIN   DD DSN=SIVA.SIN.FIX.CTE.SINCTA.TEMP,DISP=SHR                 00014400
//SORTOUT  DD DSN=SIVA.SIN.FIX.CTE.SINCTA,                              00014500
//         DISP=(,CATLG,DELETE),                                        00014600
//         SPACE=(TRK,(100,50),RLSE),                                   00014700
//         DCB=(LRECL=791,BLKSIZE=0,RECFM=FB),                          00014800
//         UNIT=SYSDA                                                   00014900
//SYSOUT   DD SYSOUT=*                                                  00015000
//SYSPRINT DD SYSOUT=*                                                  00015100
//SYSIN    DD DSN=SIVA.CARDS(FDE2015),DISP=SHR                          00015200
//*                                                                     00015300
//****************************************************************      00015400
//*                 COPIA ARCHIVO DE POSICIONES                  *      00015500
//*                                                              *      00015600
//****************************************************************      00015700
//FDE2014 EXEC  PGM=IDCAMS,COND=(4,LT)                                  00015800
//INPUT   DD DSN=SIVA.SIN.FIX.MCPOSCL,DISP=SHR                          00015900
//OUTPUT  DD DSN=SIVA.SIN.FIX.MCPOSCL.TEMP,                             00016000
//        DISP=(NEW,CATLG,DELETE),                                      00016100
//        SPACE=(TRK,(150,50),RLSE),                                    00016200
//        DCB=(LRECL=059,BLKSIZE=0,RECFM=FB),                           00016300
//        UNIT=SYSDA                                                    00016400
//SYSPRINT DD SYSOUT=*                                                  00016500
//SYSIN DD DSN=SIVA.CARDS(FDEXXX),DISP=SHR                              00016600
//********************************************************************* 00016700
//*            ORDENA ARCHIVO DE POSICIONES POR CONTRATO              * 00016800
//*                                                                   * 00016900
//********************************************************************* 00017000
//FDE2013  EXEC PGM=SYNCSORT,COND=(4,LT)                                00017100
//SORTIN   DD DSN=SIVA.SIN.FIX.MCPOSCL.TEMP,DISP=SHR                    00017200
//SORTOUT  DD DSN=SIVA.SIN.FIX.MCPOSCL1,                                00017300
//         DISP=(,CATLG,DELETE),                                        00017400
//         SPACE=(TRK,(150,50),RLSE),                                   00017500
//         DCB=(LRECL=059,BLKSIZE=0,RECFM=FB),                          00017600
//         UNIT=SYSDA                                                   00017700
//SYSOUT   DD SYSOUT=*                                                  00017800
//SYSPRINT DD SYSOUT=*                                                  00017900
//SYSIN DD DSN=SIVA.CARDS(FDE2013),DISP=SHR                             00018000
//*                                                                     00018100
//********************************************************************* 00018200
//*  COMPARA CONTRATOS SIN CTA DE CHEQUES CON EL ARCHIVO DE POSICIONES  00018300
//*                                                                     00018400
//********************************************************************* 00018500
//FDE2012  EXEC PGM=VOB300E,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00018600
//        TIME=100                                                      00018700
//SYSOUT   DD SYSOUT=*                                                  00018800
//POSIC    DD DSN=SIVA.SIN.FIX.MCPOSCL1,DISP=SHR                        00018900
//BAJAS    DD DSN=SIVA.SIN.FIX.CTE.SINCTA,DISP=SHR                      00019000
//CONPOS   DD DSN=SIVA.SIN.FIX.SINCTA.CONPOS,                           00019100
//         DISP=(,CATLG,DELETE),                                        00019200
//         SPACE=(TRK,(100,50),RLSE),                                   00019300
//         DCB=(LRECL=793,BLKSIZE=0,RECFM=FB),                          00019400
//         UNIT=SYSDA                                                   00019500
//SINPOS   DD DSN=SIVA.SIN.FIX.SINCTA.SINPOS,                           00019600
//         DISP=(,CATLG,DELETE),                                        00019700
//         SPACE=(TRK,(100,50),RLSE),                                   00019800
//         DCB=(LRECL=791,BLKSIZE=0,RECFM=FB),                          00019900
//         UNIT=SYSDA                                                   00020000
//********************************************************************* 00020100
//*  COMPARA CONTRATOS QUE NO EXISTEN EN ALTAMIRA CON EL ARCHVIO DE     00020200
//*                    POSICIONES                                       00020300
//********************************************************************* 00020400
//FDE2011  EXEC PGM=VOB300E,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00020500
//        TIME=100                                                      00020600
//SYSOUT   DD SYSOUT=*                                                  00020700
//POSIC    DD DSN=SIVA.SIN.FIX.MCPOSCL1,DISP=SHR                        00020800
//BAJAS    DD DSN=SIVA.SIN.FIX.NEALT,DISP=SHR                           00020900
//CONPOS   DD DSN=SIVA.SIN.FIX.NOACTI.CONPOS,                           00021000
//         DISP=(,CATLG,DELETE),                                        00021100
//         SPACE=(TRK,(100,50),RLSE),                                   00021200
//         DCB=(LRECL=793,BLKSIZE=0,RECFM=FB),                          00021300
//         UNIT=SYSDA                                                   00021400
//SINPOS   DD DSN=&&NEALT,                                              00021500
//         DISP=(NEW,PASS),                                             00021600
//         SPACE=(TRK,(100,50),RLSE),                                   00021700
//         DCB=(LRECL=791,BLKSIZE=0,RECFM=FB),                          00021800
//         UNIT=SYSDA                                                   00021900
//********************************************************************* 00022000
//*            ORDENA ARCHIVO NUEVO MCMAEST POR CONTRATO              * 00022100
//*                                                                   * 00022200
//********************************************************************* 00022300
//FDE2010  EXEC PGM=SYNCSORT,COND=(4,LT)                                00022400
//SORTIN   DD DSN=SIVA.SIN.FIX.NUEVO.MCMAEST.TEMP,DISP=SHR              00022500
//SORTOUT  DD DSN=SIVA.SIN.FIX.NUEVO.MCMAEST.TEMP.SORT,                 00022600
//         DISP=(NEW,CATLG,DELETE),                                     00022700
//         SPACE=(TRK,(150,50),RLSE),                                   00022800
//         DCB=(LRECL=793,BLKSIZE=0,RECFM=FB),                          00022900
//         UNIT=SYSDA                                                   00023000
//SYSOUT   DD SYSOUT=*                                                  00023100
//SYSPRINT DD SYSOUT=*                                                  00023200
//SYSIN DD DSN=SIVA.CARDS(FDE2010),DISP=SHR                             00023300
//*SORT FIELDS=(01,09,A),FORMAT=CH                                      00023400
//*                                                                     00023500
//********************************************************************* 00023600
//*  COMPARA CONTRATOS SIN CTA DE CHEQUES CON EL ARCHIVO DE POSICIONES  00023700
//*                                                                     00023800
//********************************************************************* 00023900
//FDE2009  EXEC PGM=VOB325E,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00024000
//        TIME=100                                                      00024100
//SYSOUT   DD SYSOUT=*                                                  00024200
//POSIC    DD DSN=SIVA.SIN.FIX.MCPOSCL1,DISP=SHR                        00024300
//MAEST    DD DSN=SIVA.SIN.FIX.NUEVO.MCMAEST.TEMP.SORT,DISP=SHR         00024400
//CONPOS   DD DSN=SIVA.SIN.FIX.CONPOS.MCMAEST,                          00024500
//*        ESTE ARCHIVO SI SUBE                                         00024600
//         DISP=(,CATLG,DELETE),                                        00024700
//         SPACE=(TRK,(100,50),RLSE),                                   00024800
//         DCB=(LRECL=793,BLKSIZE=0,RECFM=FB),                          00024900
//         UNIT=SYSDA                                                   00025000
//SINPOS   DD DSN=SIVA.SIN.FIX.SINPOS.MCMAEST,                          00025100
//*        A REVISAR EN EL SIGUIENTE PROGRAMA                           00025200
//         DISP=(,CATLG,DELETE),                                        00025300
//         SPACE=(TRK,(100,50),RLSE),                                   00025400
//         DCB=(LRECL=793,BLKSIZE=0,RECFM=FB),                          00025500
//         UNIT=SYSDA                                                   00025600
//*                                                                     00025700
//********************************************************************* 00025800
//*  COMPARA CONTRATOS SIN CTA DE CHEQUES CON EL ARCHIVO DE POSICIONES  00025900
//*                                                                     00026000
//********************************************************************* 00026100
//FDE2008  EXEC PGM=VOB316E,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00026200
//        TIME=100                                                      00026300
//SYSOUT   DD SYSOUT=*                                                  00026400
//EDOS     DD DSN=SIVA.SIN.FIX.MCEDOS.CARIN,DISP=SHR                    00026500
//*        MAS DE UN RESPALDO                                           00026600
//MAEST    DD DSN=SIVA.SIN.FIX.SINPOS.MCMAEST,DISP=SHR                  00026700
//CONEDOS  DD DSN=SIVA.SIN.FIX.CONEDO.MCMAEST,                          00026800
//         DISP=(,CATLG,DELETE),                                        00026900
//         SPACE=(TRK,(100,50),RLSE),                                   00027000
//         DCB=(LRECL=793,BLKSIZE=0,RECFM=FB),                          00027100
//         UNIT=SYSDA                                                   00027200
//SINEDOS  DD DSN=SIVA.SIN.FIX.SINEDO.MCMAEST,                          00027300
//*        ESTE ARCHIVO NO SUBE                                         00027400
//         DISP=(,CATLG,DELETE),                                        00027500
//         SPACE=(TRK,(100,50),RLSE),                                   00027600
//         DCB=(LRECL=793,BLKSIZE=0,RECFM=FB),                          00027700
//         UNIT=SYSDA                                                   00027800
//*                                                                     00027900
//********************************************************************* 00028000
//*    ORDENA ARCHIVO NUEVO MCMAEST POR CONTRATO PARA REALIZAR LA     * 00028100
//*                    LA CARGA INICIAL                               * 00028200
//********************************************************************* 00028300
//FDE2007  EXEC PGM=SYNCSORT,COND=(4,LT)                                00028400
//SORTIN   DD DSN=SIVA.SIN.FIX.CONEDO.MCMAEST,DISP=SHR                  00028500
//         DD DSN=SIVA.SIN.FIX.CONPOS.MCMAEST,DISP=SHR                  00028600
//         DD DSN=SIVA.SIN.FIX.SINCTA.CONPOS,DISP=SHR                   00028700
//         DD DSN=SIVA.SIN.FIX.NOACTI.CONPOS,DISP=SHR                   00028800
//SORTOUT  DD DSN=SIVA.SIN.FIX.NUEVO.MCMAEST,                           00028900
//         DISP=(,CATLG,DELETE),                                        00029000
//         SPACE=(TRK,(200,50),RLSE),                                   00029100
//         DCB=(LRECL=793,BLKSIZE=0,RECFM=FB),                          00029200
//         UNIT=SYSDA                                                   00029300
//SYSOUT   DD SYSOUT=*                                                  00029400
//SYSPRINT DD SYSOUT=*                                                  00029500
//SYSIN DD DSN=SIVA.CARDS(FDE2007),DISP=SHR                             00029600
//*                                                                     00029700
//********************************************************************* 00029800
//*  GENERA ARCHIVO - REPORTE CONTRATO NOMBRE Y POSICION (CTAS INEXS)   00029900
//********************************************************************* 00030000
//FDE2006  EXEC PGM=VOB301E,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00030100
//        TIME=100                                                      00030200
//*                                                                     00030300
//SYSOUT   DD SYSOUT=*                                                  00030400
//*                                                                     00030500
//SINCTA   DD DSN=SIVA.SIN.FIX.SINCTA.CONPOS,DISP=SHR                   00030600
//POSIC    DD DSN=SIVA.SIN.FIX.MCPOSCL1,DISP=SHR                        00030700
//CTEALT   DD DSN=SIVA.SIN.FIX.CTEALTB1,DISP=SHR                        00030800
//REPOR    DD DSN=SIVA.SIN.FIX.REPOR.SINCTA,                            00030900
//         DISP=(,CATLG,DELETE),                                        00031000
//         SPACE=(TRK,(100,50),RLSE),                                   00031100
//         DCB=(LRECL=132,BLKSIZE=0,RECFM=FB),                          00031200
//         UNIT=SYSDA                                                   00031300
//********************************************************************* 00031400
//*  IMPRIME REPORTE DE CONTRATOS SIN CUENTA CORRECTA CON POSICION      00031500
//********************************************************************* 00031600
//FDE2005  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),         00031700
//        PARM='/DEBUG',TIME=100                                        00031800
//*                                                                     00031900
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420                                 00032000
//SYSPRINT DD SYSOUT=X                                                  00032100
//SYSOUT   DD SYSOUT=*                                                  00032200
//CONPOS   DD DSN=SIVA.SIN.FIX.REPOR.SINCTA,DISP=SHR                    00032300
//VOB302R1 DD SYSOUT=8                                                  00032400
//*                                                                     00032500
//SYSDBOUT DD SYSOUT=X                                                  00032600
//SYSABOUT DD DUMMY                                                     00032700
//SYSUDUMP DD DUMMY                                                     00032800
//SYSTSIN  DD DSN=SIVA.CARDS(FDE2005),DISP=SHR                          00032900
//*                                                                     00033000
//********************************************************************* 00033100
//*  IMPRIME REPORTE DE CONTRATOS NO ACTIVOS EN ALTAMIRA                00033200
//********************************************************************* 00033300
//FDE2004  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),         00033400
//        PARM='/DEBUG',TIME=100                                        00033500
//*                                                                     00033600
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420                                 00033700
//SYSPRINT DD SYSOUT=X                                                  00033800
//SYSOUT   DD SYSOUT=*                                                  00033900
//NEALT    DD DSN=SIVA.SIN.FIX.NEALT,DISP=SHR                           00034000
//VOB303R1 DD SYSOUT=8                                                  00034100
//*                                                                     00034200
//SYSDBOUT DD SYSOUT=X                                                  00034300
//SYSABOUT DD DUMMY                                                     00034400
//SYSUDUMP DD DUMMY                                                     00034500
//SYSTSIN  DD DSN=SIVA.CARDS(FDE2004),DISP=SHR                          00034600
//*                                                                     00034700
//********************************************************************* 00034800
//*  IMPRIME REPORTE CONTRATOS CON CUENTAS INEXISTENTES                 00034900
//********************************************************************* 00035000
//FDE2003  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),         00035100
//        PARM='/DEBUG',TIME=100                                        00035200
//*                                                                     00035300
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420                                 00035400
//SYSPRINT DD SYSOUT=X                                                  00035500
//SYSOUT   DD SYSOUT=*                                                  00035600
//SINCTA   DD DSN=SIVA.SIN.FIX.SINCTA.SINPOS,DISP=SHR                   00035700
//VOB304R1 DD SYSOUT=8                                                  00035800
//*                                                                     00035900
//SYSDBOUT DD SYSOUT=X                                                  00036000
//SYSABOUT DD DUMMY                                                     00036100
//SYSUDUMP DD DUMMY                                                     00036200
//SYSTSIN  DD DSN=SIVA.CARDS(FDE2003),DISP=SHR                          00036300
//*                                                                     00036400
//********************************************************************* 00036500
//*  COMPARA CONTRATOS SIN CTA DE CHEQUES CON EL ARCHIVO DE POSICIONES  00036600
//********************************************************************* 00036700
//FDE2002  EXEC PGM=VOB318E,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00036800
//        TIME=100                                                      00036900
//SYSOUT   DD SYSOUT=*                                                  00037000
//CTEALTB  DD DSN=SIVA.SIN.FIX.CTEALTB1,DISP=SHR                        00037100
//MAEST    DD DSN=SIVA.SIN.FIX.NUEVO.MCMAEST,DISP=SHR                   00037200
//VOB318E  DD DSN=SIVA.SIN.FIX.REPORTE.ALTAS,                           00037300
//         DISP=(,CATLG,DELETE),                                        00037400
//         SPACE=(TRK,(100,50),RLSE),                                   00037500
//         DCB=(LRECL=100,BLKSIZE=0,RECFM=FB),                          00037600
//         UNIT=SYSDA                                                   00037700
//********************************************************************* 00037800
//*  GENERA INFORMACION PARA CONFIRMACION DE OPERACIONES   BANCO        00037900
//********************************************************************* 00038000
//FDE2001  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),         00038100
//        PARM='/DEBUG',TIME=100                                        00038200
//*                                                                     00038300
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420                                 00038400
//SYSPRINT DD SYSOUT=X                                                  00038500
//SYSOUT   DD SYSOUT=*                                                  00038600
//MAEST    DD DSN=SIVA.SIN.FIX.REPORTE.ALTAS,DISP=SHR                   00038700
//VOB317R1 DD SYSOUT=8                                                  00038800
//*                                                                     00038900
//SYSDBOUT DD SYSOUT=X                                                  00039000
//SYSABOUT DD DUMMY                                                     00039100
//SYSUDUMP DD DUMMY                                                     00039200
//SYSTSIN  DD DSN=SIVA.CARDS(FDE2001),DISP=SHR                          00039300
//*                                                                     00039400
