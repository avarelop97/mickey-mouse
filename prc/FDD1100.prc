//FDD1100 PROC                                                          00000100
//*                                                                     00000200
//**********************************************************************00000300
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *00000400
//*                                                                    *00000500
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00000600
//*                                                                    *00000700
//* PROCESO        :  PFDFDD11                                         *00000800
//*                   FIN DE DIA DEL SIVA.                             *00000900
//*                                                                    *00001000
//* OBJETIVO       :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *00001100
//*                   - INTERFASES BATCH (TSO)                         *00001200
//*                                                                    *00001300
//*   6TA. PARTE   :  GENERACION DE REPORTES                           *00001400
//*   AJP             (SOCIEDADES DE INVERSIOQ)                        *00001500
//*                                                                    *00001600
//* CORRE                                                              *00001700
//* ANTES DE       :  PFDFDD12                                         *00001800
//*                                                                    *00001900
//* DESPUES DE     :  PFDFDD01, PFDFDD02, PFDFDD05                     *00002000
//*                                                                    *00002100
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *00002200
//* FECHA          :  FEBRERO DE 1991                                  *00002300
//*                                                                    *00002400
//* OBSERVACION    :  EL PROCESO FINDIA SE DIVIDIO EN 12 SUBPROCESOS   *00002500
//*                   A MANERA DE OPTIMIZAR EL TIEMPO TOTAL DE EJECU - *00002600
//*                   CION LOS CUALES SERAN SUBMITIDOS POR DISPARADOR  *00002700
//*                   Y NO POR CONSOLA                                 *00002800
//*                                                                    *00002900
//* NOTA           :  ESTE PROCESO PUEDE CORRER EN PARALELO CON EL     *00003000
//*                   PFDFDD10                                         *00003100
//*                                                                    *00003200
//* MODIFICACION   : -SE INCLUYO UN PASO DE QMF PARA LA DEPURACION     *00003300
//*                   DIARIA DE ORDENES Y HECHOS                       *00003400
//*                                                JGM/10-MAY-91       *00003500
//*                                                                    *00003600
//*                  -SE ELIMINO EL PASO DEL PROGRAMA VOB809O Y        *00003700
//*                   SE INSERTO EN EL PFDFDD12                        *00003800
//*                                                JGM/23-MAY-91       *00003900
//*                                                                    *00004000
//*                  -SE AGREGARON LOS PROGRAMAS                       *00004100
//*                                                                    *00004200
//*                  -SE ELIMINO EL QMF DE DEPURACION DIARIA           *00004300
//*                   DE ORDENES Y HECHOS SE INSERTO EN EL FDD1200     *00004400
//*                   Y SE RENUMERARON LOS PASOS.                      *00004500
//*                                                RAT/13-ABR-93       *00004600
//*                                                                    *00004700
//*                  -SE INSERTO EL PASO FDD0510 PARA EJECUTAR EL      *00004800
//*                   REPORTE DE SOC. INV. (VIB163D), COMO FDD1102.    *00004900
//*                   A SOLICITUD DE ALMA ROSALES Y ROBERTO MAX.       *00005000
//*                                                RAT/25-NOV-93       *00005100
//*                                                                    *00005200
//*                  -SE INSERTO PASO FDD1102A Y FDD1102B PARA COPIA   *00005300
//*                   DE ARCHIVOS, RESPALDOS DE CUENTA Y CARTERA.     * 00005400
//*                   OSCAR URBANO F.(ASATECK).        28/MAY/1999.    *00005500
//*                                                                    *00005600
//**********************************************************************00005700
//**********************************************************************00005800
//* SUBPROCESO : (D) AL CIERRE DE OPERACIONES                          *00005900
//*              - SOCIEDADES DE INVERSION                             *00006000
//**********************************************************************00006100
//*                                                                     00006200
//**********************************************************************00006300
//*                             -- IDCAMS --                           *00006400
//* OBJETIVO : BORRAR ARCHIVOS UTILIZADOS EN PROCESO.                  *00006500
//*                                                                    *00006600
//* PASO REINICIABLE POR RESTART                                       *00006700
//**********************************************************************00006800
//FDD1103 EXEC PGM=IDCAMS,REGION=4M,COND=(4,LT)                         00006900
//SYSPRINT DD SYSOUT=X                                                  00007000
//SYSIN    DD DSN=SIVA.CARDS(FDD1103),DISP=SHR                          00007100
//*                                                                     00007200
//**********************************************************************00007300
//*                          === VOBC39D ===                           *00007400
//* OBJETIVO : DETECTAR LOS ENLACES GENERADOS EN MERCADO DE DINERO     *00007500
//*                                                                    *00007600
//* PASO REINICIABLE POR RESTART                   ***M. DINERO        *00007700
//**********************************************************************00007800
//FDD1113 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,                      00007900
//             TIME=100                                                 00008000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00008100
//SYSPRINT DD SYSOUT=X                                                  00008200
//SYSOUT   DD SYSOUT=X                                                  00008300
//SYSDBOUT DD SYSOUT=X                                                  00008400
//SYSABOUT DD DUMMY                                                     00008500
//SYSUDUMP DD DUMMY                                                     00008600
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1113),DISP=SHR                          00008700
//*                                                                     00008800
//**********************************************************************00008900
//*                          === VOBD19D ===                           *00009000
//* OBJETIVO : GENERA REPORTE DE LOS ENLACES DEL DIA DE MDD            *00009100
//*                                                                    *00009200
//* PASO REINICIABLE POR RESTART                      ***M. DINERO     *00009300
//**********************************************************************00009400
//FDD1112 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,                      00009500
//             TIME=100,COND=(4,LT)                                     00009600
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00009700
//*VOBD19R1 DD SYSOUT=(V,,TD62)                                         00009800
//VOBD19R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00009900
//SYSPRINT DD SYSOUT=X                                                  00010000
//SYSOUT   DD SYSOUT=X                                                  00010100
//SYSDBOUT DD SYSOUT=X                                                  00010200
//SYSABOUT DD DUMMY                                                     00010300
//SYSUDUMP DD DUMMY                                                     00010400
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1112),DISP=SHR                          00010500
//*                                                                     00010600
//**********************************************************************00010700
//*                    * VOBD66O *                                     *00010800
//* OBJETIVO : DEPURACION DE HOJAOPE                                   *00010900
//*                                                                    *00011000
//* ACTUALIZA TABLA : HOJAOPE, ENLACES, PARAM, FOLCTRL.                *00011100
//*                                                                    *00011200
//* PASO REINICIABLE POR RESTART.                    **M. DINERO       *00011300
//**********************************************************************00011400
//FDD1111 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,          00011500
//             TIME=100                                                 00011600
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00011700
//SYSPRINT DD  SYSOUT=*                                                 00011800
//SYSOUT   DD  SYSOUT=*                                                 00011900
//SYSDBOUT DD  SYSOUT=*                                                 00012000
//SYSUDUMP DD DUMMY                                                     00012100
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD1111),DISP=SHR                         00012200
//*                                                                     00012300
//**********************************************************************00012400
//*                          === VIB190D ===                           *00012500
//* OBJETIVO : GENERA REPORTE DE CANCELACION DE OPERACIONES DEL DIA    *00012600
//*                                                                    *00012700
//* PASO REINICIABLE POR RESTART                     *** SOC. INVERS.  *00012800
//**********************************************************************00012900
//FDD1110 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,                      00013000
//             TIME=100,COND=(4,LT)                                     00013100
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00013200
//SYSPRINT DD SYSOUT=X                                                  00013300
//SYSOUT   DD SYSOUT=X                                                  00013400
//SYSDBOUT DD SYSOUT=X                                                  00013500
//SYSABOUT DD DUMMY                                                     00013600
//SYSUDUMP DD DUMMY                                                     00013700
//*VIB190R1 DD SYSOUT=(V,,TI05)                                         00013800
//VIB190R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00013900
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1110),DISP=SHR                          00014000
//*                                                                     00014100
//**********************************************************************00014200
//*                           -- VIB191D --                            *00014300
//* OBJETIVO : MONITOREAR TENENCIA POR RANGO                           *00014400
//*            VERIFICAR QUE EXISTA EL FDDETRO POR RANGO, Y QUE ESTE   *00014500
//*            TENGA RANGOS PREESTABLECIDOS PARA DISPARAR LOS FDD11S   *00014600
//*            NECESARIOS HASTA EJECUTAR EL PROGRAMA VIB190E,          *00014700
//*            (LISTADO DE TENENCIAS POR RANGO)                        *00014800
//*                                                                    *00014900
//* PASO REINICIABLE POR RESTART                      ***SOC. INVERS.  *00015000
//**********************************************************************00015100
//FDD1109 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00015200
//             TIME=100                                                 00015300
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00015400
//SYSUDUMP DD DUMMY                                                     00015500
//SYSABEND DD DUMMY                                                     00015600
//SYSDBOUT DD SYSOUT=X                                                  00015700
//SYSPRINT DD SYSOUT=X                                                  00015800
//SYSOUT   DD SYSOUT=X                                                  00015900
//PRINT    DD SYSOUT=X                                                  00016000
//SYSABOUT DD SYSOUT=X                                                  00016100
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1109),DISP=SHR                          00016200
//*                                                                     00016300
//**********************************************************************00016400
//*                           -- DSNTIAUL --                           *00016500
//* OBJETIVO : COPIAR TABLA (DB2) CUENTA A ARCHIVO SECUENCIAL EN DISCO *00016600
//*                                                                    *00016700
//* PASO REINICIABLE POR RESTART                                       *00016800
//**********************************************************************00016900
//FDD1108 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),TIME=100            00017000
//SYSTSPRT DD SYSOUT=*                                                  00017100
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1108A),DISP=SHR                         00017200
//SYSPUNCH DD SYSOUT=*                                                  00017300
//SYSPRINT DD SYSOUT=*                                                  00017400
//SYSREC00 DD DSN=SIVA.OTR.WKF.VIB190E.CUENTA,                          00017500
//            DISP=(NEW,CATLG,DELETE),                                  00017600
//            UNIT=SYSDA,                                               00017700
//            SPACE=(CYL,(10,5),RLSE)                                   00017800
//SYSIN    DD DSN=SIVA.CARDS(FDD1108B),DISP=SHR                         00017900
//*                                                                     00018000
//**********************************************************************00018100
//*                             -- SORT --                             *00018200
//* OBJETIVO : CLASIFICAR ARCHIVO SECUENCIAL (CUENTA)                  *00018300
//*                                                                    *00018400
//* PASO REINICIABLE POR RESTART                                       *00018500
//**********************************************************************00018600
//FDD1107 EXEC PGM=SYNCSORT,COND=(4,LT),TIME=100                        00018700
//SORTIN   DD DSN=SIVA.OTR.WKF.VIB190E.CUENTA,DISP=SHR                  00018800
//SORTOUT  DD DSN=SIVA.OTR.WKF.VIB190E.CUENTA.SORT,                     00018900
//            DISP=(NEW,CATLG,DELETE),                                  00019000
//            UNIT=SYSDA,                                               00019100
//            SPACE=(CYL,(10,5),RLSE),                                  00019200
//            DCB=*.FDD1107.SORTIN                                      00019300
//SYSPRINT DD SYSOUT=*                                                  00019400
//SYSOUT   DD SYSOUT=*                                                  00019500
//SYSIN    DD DSN=SIVA.CARDS(FDD1107),DISP=SHR                          00019600
//*                                                                     00019700
//**********************************************************************00019800
//*                           -- DSNTIAUL --                           *00019900
//* OBJETIVO : COPIAR TABLA (DB2) CARTERA A ARCHIVO SECUENCIAL         *00020000
//*                                                                    *00020100
//* PASO REINICIABLE POR RESTART                                       *00020200
//**********************************************************************00020300
//FDD1106 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),TIME=100            00020400
//SYSTSPRT DD SYSOUT=*                                                  00020500
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1106A),DISP=SHR                         00020600
//SYSPUNCH DD SYSOUT=*                                                  00020700
//SYSPRINT DD SYSOUT=*                                                  00020800
//SYSREC00 DD DSN=SIVA.OTR.WKF.VIB190E.CARTERA,                         00020900
//            DISP=(NEW,CATLG,DELETE),                                  00021000
//            UNIT=SYSDA,                                               00021100
//            SPACE=(CYL,(40,5),RLSE)                                   00021200
//SYSIN    DD DSN=SIVA.CARDS(FDD1106B),DISP=SHR                         00021300
//*                                                                     00021400
//**********************************************************************00021500
//*                             -- SORT --                             *00021600
//* OBJETIVO : CLASIFICAR ARCHIVO SECUENCIAL (CARTERA)                 *00021700
//*                                                                    *00021800
//* PASO REINICIABLE POR RESTART                                       *00021900
//**********************************************************************00022000
//FDD1105 EXEC PGM=SYNCSORT,COND=(4,LT),TIME=100                        00022100
//SORTIN   DD DSN=SIVA.OTR.WKF.VIB190E.CARTERA,DISP=SHR                 00022200
//SORTOUT  DD DSN=SIVA.OTR.WKF.VIB190E.CARTERA.SORT,                    00022300
//            DISP=(NEW,CATLG,DELETE),                                  00022400
//            UNIT=SYSDA,                                               00022500
//            SPACE=(CYL,(10,10),RLSE),                                 00022600
//            DCB=*.FDD1105.SORTIN                                      00022700
//SYSPRINT DD SYSOUT=*                                                  00022800
//SYSOUT   DD SYSOUT=*                                                  00022900
//SYSIN    DD DSN=SIVA.CARDS(FDD1105),DISP=SHR                          00023000
//*                                                                     00023100
//**********************************************************************00023200
//*                           -- VIB190E --                            *00023300
//* OBJETIVO : REPORTAR TENENCIAS POR RANGO                            *00023400
//*                                                                    *00023500
//* PASO REINICIABLE POR RESTART                      ***SOC. INVERS.  *00023600
//**********************************************************************00023700
//FDD1104 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),TIME=100,           00023800
//             REGION=4M                                                00023900
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00024000
//SYSUDUMP DD DUMMY                                                     00024100
//SYSABEND DD DUMMY                                                     00024200
//SYSDBOUT DD SYSOUT=X                                                  00024300
//SYSPRINT DD SYSOUT=X                                                  00024400
//SYSOUT   DD SYSOUT=X                                                  00024500
//PRINT    DD SYSOUT=X                                                  00024600
//SYSABOUT DD SYSOUT=X                                                  00024700
//VIB190A1 DD DSN=SIVA.OTR.WKF.VIB190E.CARTERA.SORT,DISP=SHR            00024800
//VIB190A2 DD DSN=SIVA.OTR.WKF.VIB190E.CUENTA.SORT,DISP=SHR             00024900
//VIB190R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00025000
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1104),DISP=SHR                          00025100
//*                                                                     00025200
//**********************************************************************00025300
//*                           -- VIBS12D --                            *00025400
//* OBJETIVO : TENENCIAS POR RANGO SOC. DE INVERSION                   *00025500
//*                                                                    *00025600
//* PASO REINICIABLE POR RESTART                      ***SOC. INVERS.  *00025700
//**********************************************************************00025800
//FDD1104Z EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=0M          00025900
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00026000
//SYSUDUMP DD DUMMY                                                     00026100
//SYSABEND DD DUMMY                                                     00026200
//SYSDBOUT DD SYSOUT=X                                                  00026300
//SYSPRINT DD SYSOUT=X                                                  00026400
//SYSOUT   DD SYSOUT=X                                                  00026500
//PRINT    DD SYSOUT=X                                                  00026600
//SYSABOUT DD SYSOUT=X                                                  00026700
//VIBS12A1 DD DSN=SIVA.SIN.FIX.TENENCIA.BCOYCASA,                       00026800
//            DISP=(NEW,CATLG,DELETE),                                  00026900
//            UNIT=SYSDA,SPACE=(CYL,(15,2),RLSE),                       00027000
//            DCB=(RECFM=FB,LRECL=72,BLKSIZE=720,DSORG=PS)              00027100
//VIBS12R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00027200
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1104Z),DISP=SHR                         00027300
//**********************************************************************00027400
//*                       -- VIB163D --                                *00027500
//*                                                                    *00027600
//* OBJETIVO : EMITIR REPORTE DE MOVIMIENTOS DIARIOS - S.I.            *00027700
//*            NO ACTUALIZA TABLAS.                                    *00027800
//*                                                                    *00027900
//* PASO REINICIABLE POR RESTART                    ***SOC. INVERS.    *00028000
//**********************************************************************00028100
//FDD1102  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(5,LT)          00028200
//*VIB163R1 DD SYSOUT=(V,,TI12)                                         00028300
//VIB163R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00028400
//SOCCOM   DD DSN=SIVA.SIN.WKF.SOCCOM,DISP=(NEW,CATLG,DELETE),          00028500
//            UNIT=SYSDA,SPACE=(CYL,(15,2),RLSE),                       00028600
//            DCB=(RECFM=FB,LRECL=40,BLKSIZE=0,DSORG=PS)                00028700
//VIB163R2 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00028800
//VIB163A1 DD DSN=SIVA.SIN.WKF.VIB163A1,DISP=(NEW,CATLG,DELETE),        00028900
//            UNIT=SYSDA,SPACE=(CYL,(15,2),RLSE),                       00029000
//            DCB=(RECFM=FB,LRECL=132,BLKSIZE=0,DSORG=PS)               00029100
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00029200
//SYSPRINT DD SYSOUT=*                                                  00029300
//SYSOUT   DD SYSOUT=*                                                  00029400
//SYSDBOUT DD SYSOUT=*                                                  00029500
//SYSABOUT DD DUMMY                                                     00029600
//SYSUDUMP DD DUMMY                                                     00029700
//SYSTSIN  DD DSN=SIVA.CARDS(FDD1102),DISP=SHR                          00029800
//*                                                                     00029900
//**********************************************************************00030000
//* COPIA DE ARCHIVO DE SOCIEDADES DE INVERSION          *              00030100
//* PARA REPORTES PARA BANCO                                           *00030200
//**********************************************************************00030300
//FDD1101  EXEC PGM=ICEGENER,REGION=4M,TIME=100,COND=(4,LT)             00030400
//SYSPRINT DD  SYSOUT=*                                                 00030500
//SYSIN    DD  DUMMY                                                    00030600
//*                                                                     00030700
//SYSUT1   DD  DSN=SIVA.OTR.WKF.VIB190E.CARTERA.SORT,DISP=SHR           00030800
//SYSUT2   DD  DSN=SIVA.SIN.FIX.VIB190E.CARTERA.BCO,                    00030900
//             DISP=(NEW,CATLG,DELETE),                                 00031000
//             UNIT=3390,SPACE=(CYL,(5,5),RLSE),                        00031100
//             DCB=(RECFM=FB,LRECL=122,BLKSIZE=0)                       00031200
//*                                                                     00031300
//SYSOUT   DD  SYSOUT=X                                                 00031400
//SYSDBOUT DD  SYSOUT=X                                                 00031500
//*                                                                     00031600
//**********************************************************************00031700
//**********************************************************************00031800
//* PROCESO DE RESPALDO DE ARCHIVO DE SOCIEDADES DE INVERSION          *00031900
//* PARA REPORTES PARA BANCO                                           *00032000
//**********************************************************************00032100
//FDD1100  EXEC PGM=ICEGENER,REGION=4M,TIME=100,COND=(4,LT)             00032200
//SYSPRINT DD  SYSOUT=*                                                 00032300
//SYSIN    DD  DUMMY                                                    00032400
//*                                                                     00032500
//SYSUT1   DD  DSN=SIVA.OTR.WKF.VIB190E.CUENTA.SORT,DISP=SHR            00032600
//SYSUT2   DD  DSN=SIVA.SIN.FIX.VIB190E.CUENTA.BCO,                     00032700
//             DISP=(NEW,CATLG,DELETE),                                 00032800
//             UNIT=3390,SPACE=(CYL,(30,5),RLSE),                       00032900
//*** I AGR 020509                                                      00033000
//*****        DCB=(RECFM=FB,LRECL=669,BLKSIZE=0)                       00033100
//*** F                                                                 00033200
//             DCB=(RECFM=FB,LRECL=672,BLKSIZE=0)                       00033300
//*                                                                     00033400
//SYSOUT   DD  SYSOUT=X                                                 00033500
//SYSDBOUT DD  SYSOUT=X                                                 00033600
//*                                                                     00033700
//**********************************************************************00033800
//**********************************************************************00033900
//* PEND          FIN DEL PROCEDIMIENTO FDD1100                        *00034000
//**********************************************************************00034100
