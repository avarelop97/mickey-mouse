//*DGC                                                                  00001000
//FDM1600 PROC                                                          00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                                                                    *00040000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00050000
//*                                                                    *00060000
//* PROCESO        :  PFDFDM16                                         *00070000
//*                   FIN DE DIA MENSUAL DEL SIVA                      *00080000
//*                                                                    *00090000
//* OBJETIVO       :  EMITIR REPORTE DE CONTRATOS VIGENTES DEL MES.    *00100000
//*                   - INTERFASES BATCH (TSO)                         *00110000
//*                                                                    *00120000
//* CORRE                                                              *00130000
//* ANTES DE       :  NINGUNO                                          *00140000
//*                                                                    *00150000
//* DESPUES DE     :  PFDFDD19 O PFDFDD09                              *00160000
//*                                                                    *00170000
//* REALIZO        :  JOEL GONZALEZ MARTINEZ / KARINA SALINAS SANCHEZ  *00180000
//* FECHA          :  JULIO DE 1992                                    *00190000
//*                                                                    *00200000
//* OBSERVACION    :  ESTE EL PRIMER PROCESO MENSUAL DE FIN DE DIA     *00210000
//*                   Y CORRE EN PARALELO CON EL FIN DE DIA DIARIO     *00220000
//*                                                                    *00230000
//**********************************************************************00240000
//*                                                                     00250000
//********************************************************************* 00260000
//*                        PROGRAMA VIBB27M                             00270000
//*  OBJETIVO:  GENERA EL REPORTE MENSUAL DE COMISIONES                 00280000
//*                EMISORAS  MERCADO  DE  CAPITALES                     00290000
//********************************************************************* 00300000
//FDM1609 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M           00310000
//*VIBB27R1 DD SYSOUT=(O,,TV62)                                         00320000
//VIBB27R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                     00321000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00330000
//SYSPRINT DD SYSOUT=X                                                  00340000
//SYSOUT   DD SYSOUT=X                                                  00350000
//SYSDBOUT DD SYSOUT=X                                                  00360000
//SYSABOUT DD DUMMY                                                     00370000
//SYSUDUMP DD DUMMY                                                     00380000
//SYSTSIN  DD DSN=SIVA.CARDS(FDM1609),DISP=SHR                          00390000
//*                                                                     00400000
//**********************************************************************00410000
//*                            === VOBK55M ===                         *00420000
//*                                                                    *00430000
//* OBJETIVO : REPORTE DE SERVICIOS ACTIVADOS POR CONTRATO             *00440000
//*                                                                    *00450000
//* PASO REINICIABLE POR RESTART.                                      *00460000
//**********************************************************************00470000
//FDM1608   EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)         00480000
//SYSTSPRT  DD SYSOUT=X,DCB=BLKSIZE=0                                   00490000
//SYSPRINT  DD SYSOUT=X                                                 00500000
//SYSOUT    DD SYSOUT=X                                                 00510000
//PRINT     DD SYSOUT=X                                                 00520000
//SYSDBOUT  DD SYSOUT=X                                                 00530000
//SYSABOUT  DD SYSOUT=X                                                 00540000
//*VOBK55R1  DD SYSOUT=(O,,TC22),DCB=BLKSIZE=0                          00550000
//VOBK55R1 DD  SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                    00551000
//VOBK55A1  DD UNIT=SYSDA,SPACE=(CYL,(10))                              00560000
//VOBKWK01  DD UNIT=SYSDA,SPACE=(CYL,(10))                              00570000
//SYSUDUMP  DD DUMMY                                                    00580000
//SYSTSIN   DD DSN=SIVA.CARDS(FDM1608),DISP=SHR                         00590000
//**********************************************************************00600000
//*                            === VOBK59M ===                         *00610000
//*                                                                    *00620000
//* OBJETIVO : REPORTE DE CONTRATOS EXENTOS DE CARGOS VARIOS           *00630000
//*                                                                    *00640000
//* PASO REINICIABLE POR RESTART.                                      *00650000
//**********************************************************************00660000
//FDM1607   EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)         00670000
//SYSTSPRT  DD SYSOUT=X,DCB=BLKSIZE=0                                   00680000
//SYSPRINT  DD SYSOUT=X                                                 00690000
//SYSOUT    DD SYSOUT=X                                                 00700000
//PRINT     DD SYSOUT=X                                                 00710000
//SYSDBOUT  DD SYSOUT=X                                                 00720000
//SYSABOUT  DD SYSOUT=X                                                 00730000
//*VOBK59R1  DD SYSOUT=(O,,TC24),DCB=BLKSIZE=0                          00740000
//VOBK59R1 DD  SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                    00741000
//VOBK59A1  DD UNIT=SYSDA,SPACE=(CYL,(10))                              00750000
//VOBKWK01  DD UNIT=SYSDA,SPACE=(CYL,(10))                              00760000
//SYSUDUMP  DD DUMMY                                                    00770000
//SYSTSIN   DD DSN=SIVA.CARDS(FDM1607),DISP=SHR                         00780000
//**********************************************************************00790000
//*                            === VOBK58M ===                         *00800000
//*                                                                    *00810000
//* OBJETIVO : REPORTE DE CONTRATOS ACTIVADOS VIA FAX                  *00820000
//*                                                                    *00830000
//* PASO REINICIABLE POR RESTART.                                      *00840000
//**********************************************************************00850000
//FDM1606   EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)         00860000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00870000
//SYSPRINT DD SYSOUT=X                                                  00880000
//SYSOUT   DD SYSOUT=X                                                  00890000
//SYSDBOUT DD SYSOUT=X                                                  00900000
//SYSABOUT DD SYSOUT=X                                                  00910000
//*VOBK58R1 DD SYSOUT=(O,,TC23),DCB=BLKSIZE=0                           00920000
//VOBK58R1 DD  SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                    00921000
//VOBK58A1 DD UNIT=SYSDA,SPACE=(CYL,(10))                               00930000
//VOBKWK01 DD UNIT=SYSDA,SPACE=(CYL,(10))                               00940000
//SYSUDUMP DD DUMMY                                                     00950000
//SYSTSIN   DD DSN=SIVA.CARDS(FDM1606),DISP=SHR                         00960000
//**********************************************************************00970000
//*                            === IDCAMS  ===                         *00980000
//*                                                                    *00990000
//* OBJETIVO : BORRAR ARCHIVO  UTILIZADO  EN PROCESO.                  *01000000
//*                                                                    *01010000
//* PASO REINICIABLE POR RESTART.                                      *01020000
//**********************************************************************01030000
//*                                                                     01040000
//FDM1605 EXEC PGM=IDCAMS,REGION=4M,COND=(0,NE)                         01050000
//SYSPRINT DD SYSOUT=*                                                  01060000
//SYSIN    DD DSN=SIVA.CARDS(FDM1605),DISP=SHR                          01070000
//**********************************************************************01080000
//*                          === VIB171M ===                           *01090000
//* OBJETIVO : REPORTE PARA SOCIEDADES DE INVERSION                    *01100000
//*                                                                    *01110000
//**********************************************************************01120000
//*                                                                     01130000
//FDM1604 EXEC PGM=IKJEFT01,DYNAMNBR=20,                                01140000
//           REGION=4M,COND=(4,LT),                                     01150000
//            TIME=100                                                  01160000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    01180000
//SYSPRINT DD SYSOUT=X                                                  01190000
//SYSOUT   DD SYSOUT=X                                                  01200000
//*VIB171RB DD SYSOUT=(V,,TI33)                                         01210000
//VIB171RB DD  SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                    01210100
//*VIB171RC DD SYSOUT=(V,,TI33)                                         01211000
//VIB171RC DD  SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                    01212000
//SOCEXT   DD DSN=SIVA.SIN.FIX.SOCEXT,DISP=(NEW,CATLG,DELETE),          01220000
//            UNIT=SYSDA,SPACE=(CYL,(15,5),RLSE),                       01230000
//            DCB=(RECFM=FB,LRECL=87,BLKSIZE=8700,DSORG=PS)             01240000
//SYSDBOUT DD SYSOUT=X                                                  01250000
//SYSABOUT DD SYSOUT=X                                                  01260000
//SYSUDUMP DD DUMMY                                                     01270000
//SYSTSIN  DD DSN=SIVA.CARDS(FDM1604),DISP=SHR                          01280000
//*                                                                     01290000
//**********************************************************************01300000
//*                        -- VIBK28M --                               *01310000
//*                                                                    *01320000
//* OBJETIVO : RESUMEN DE CONTRATOS DESBLOQUEADOS POR 24 HRS.          *01330000
//*                         R.M.R.M.                                   *01340000
//* PASO REINICIABLE POR RESTART                                       *01350000
//**********************************************************************01360000
//*            PASO PARA CASA DE BOLSA                                  01370000
//**********************************************************************01380000
//FDM1603 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,                      01390000
//           TIME=100                                                   01400000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    01410000
//SYSPRINT DD SYSOUT=X                                                  01420000
//SYSOUT   DD SYSOUT=X                                                  01430000
//PRINT    DD SYSOUT=X                                                  01440000
//SYSDBOUT DD DUMMY                                                     01450000
//SYSABOUT DD DUMMY                                                     01460000
//SYSUDUMP DD DUMMY                                                     01470000
//*VIBK28R1 DD SYSOUT=(V,,TC13),DCB=BLKSIZE=0,FCB=CD03                  01480000
//VIBK28R1 DD  SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                    01481000
//SYSTSIN  DD DSN=SIVA.CARDS(FDM1603),DISP=SHR                          01490000
//*                                                                     01500000
//**********************************************************************01510000
//*                        -- VIBK09M --                               *01520000
//*                                                                    *01530000
//* OBJETIVO : REPORTE DE CONTRATOS VIGENTES EN EL MES                 *01540000
//*                         K. S. S.                                   *01550000
//* PASO REINICIABLE POR RESTART                                       *01560000
//**********************************************************************01570000
//*            PASO PARA CASA DE BOLSA                                  01580000
//**********************************************************************01590000
//FDM1602 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,                      01600000
//           TIME=100                                                   01610000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    01620000
//SYSPRINT DD SYSOUT=X                                                  01630000
//SYSOUT   DD SYSOUT=X                                                  01640000
//PRINT    DD SYSOUT=X                                                  01650000
//SYSDBOUT DD DUMMY                                                     01660000
//SYSABOUT DD DUMMY                                                     01670000
//SYSUDUMP DD DUMMY                                                     01680000
//*VIBK09R1 DD SYSOUT=(V,,TC07),DCB=BLKSIZE=0,FCB=CD03                  01690000
//VIBK09R1 DD  SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')                    01691000
//SYSTSIN  DD DSN=SIVA.CARDS(FDM1602),DISP=SHR                          01700000
//*                                                                     01710000
//**********************************************************************01720000
//*                        -- VIBT84M --                               *01730000
//*                                                                    *01740000
//* OBJETIVO : REPORTE DE BONIFICACIONES - ADMON. DE PROMOCION         *01750000
//*                                                                    *01760000
//* PASO REINICIABLE POR RESTART                                       *01770000
//*                                                                    *01780000
//* INCLUIDO EL 28/FEB/1999 - MARCO A. MORALES G. (ASATECK)            *01790000
//**********************************************************************01800000
//*            PASO PARA CASA DE BOLSA                                  01810000
//**********************************************************************01820000
//FDM1601 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,TIME=100              01830000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    01840000
//SYSPRINT DD SYSOUT=*                                                  01850000
//VIBT84R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CTDRSV')                    01860000
//SYSOUT   DD SYSOUT=*                                                  01870000
//SYSDBOUT DD SYSOUT=*                                                  01880000
//SYSABOUT DD DUMMY                                                     01890000
//SYSUDUMP DD DUMMY                                                     01900000
//SYSTSIN  DD DSN=SIVA.CARDS(FDM1601),DISP=SHR                          01910000
//**********************************************************************01920000
//* PEND          FIN DEL PROCEDIMIENTO FDM1600                        *01930000
//**********************************************************************01940000
