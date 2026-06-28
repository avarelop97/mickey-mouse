//FDD1400 PROC                                                          00010000
//*                                                                     00020000
//**********************************************************************00030000
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *00031002
//*                                                                    *00040000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00050000
//*                                                                    *00060000
//* PROCESO        :  PFDFDD14                                         *00070000
//*                   FIN DE DIA DEL SIVA.                             *00080000
//*                                                                    *00090000
//* OBJETIVO       :  REALIZAR EL PROCESO DIARIO DE SAVE/PROCUENTA     *00100000
//*                   Y CONTRATOS  AL CIERRE DE OPERACIONES            *00110000
//*                                                                    *00120000
//* CORRE                                                              *00130000
//* ANTES DE       :  PFDFDD07, PFDFDD08, PFDFDD10, PFDFDD11, PFDFDD12 *00140002
//*                                                                    *00160000
//* DESPUES DE     :  PFDFDD01, PFDFDD02, PFDFDD05                     *00170002
//*                   PFDFDD13 (CUANDO ES PROCESO MENSUAL DE CARVAR)   *00180000
//*                                                                    *00190000
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *00200000
//* FECHA          :  DICIEMBRE/ 1991                                  *00210000
//*                                                                    *00220000
//* OBSERVACION    :  EL PROCESO FINDIA SE DIVIDIO EN 12 SUBPROCESOS   *00230000
//*                   A MANERA DE OPTIMIZAR EL TIEMPO TOTAL DE EJECU - *00240000
//*                   CION LOS CUALES SERAN SUBMITIDOS POR DISPARADOR  *00250000
//*                   Y NO POR CONSOLA                                 *00260000
//*                                                                    *00270000
//* MODIFICACION   :  SE INCLUYERON LOS PASOS PARA BAJAS AUTOMATICAS   *00280000
//*                   DEL PROCESO ESTADISTICO, LOS CUALES CORRERAN     *00290000
//*                   MENSUALMENTE, POR LO QUE SE REALIZAN BACKUPS     *00300000
//*                   AUMENTANDO A 38 PASOS EL PROC.                   *00310000
//*                                    A.T.T.E.                        *00320000
//*                                SOPORTE A PRODUCCION                *00330000
//*                                   21/JUN/91                        *00340000
//*                                                                    *00350000
//* MODIFICACION   : SE PARTIO EN PFDFDD05, PFDFDD13 Y PFDFDD14        *00360000
//*                                                                    *00370000
//*                                                                    *00380000
//*                                                                    *00390000
//**********************************************************************00400000
//**********************************************************************00410000
//*                          === VOB849O ===                           *00420000
//* OBJETIVO : ACTUALIZA EL SALDO PROMEDIO DE PROCUENTA                *00430000
//*            (ACTUALIZA CTAMAES)                                     *00440000
//*                                                                    *00450000
//* PASO REINICIABLE POR RESTART                                       *00460000
//**********************************************************************00470000
//*FDD1403 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=1024K,TIME=100          00480002
//*SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=6292                                00490002
//*SYSPRINT DD SYSOUT=X                                                 00500002
//*SYSOUT   DD SYSOUT=X                                                 00510002
//*SYSDBOUT DD SYSOUT=X                                                 00520002
//*SYSABOUT DD DUMMY                                                    00530002
//*SYSUDUMP DD DUMMY                                                    00540002
//*SYSTSIN DD DSN=SIVA.CARDS(FDD1403),DISP=SHR                          00550002
//*                                                                     00560000
//**********************************************************************00570000
//*                          === VOBK04O ===                           *00580000
//* OBJETIVO : REPORTA LOS CONTRATOS DESBLOQUEADOS PARA OPERAR EN EL   *00590002
//*            DIA.                                                    *00600000
//*                                                                    *00610000
//* ACTUALIZA TABLA : CUENTA.                                          *00620000
//*                                                                    *00630000
//* PASO REINICIABLE POR RESTART                       ***CONTRATOS    *00640002
//**********************************************************************00650000
//*            PASO PARA CASA DE BOLSA                                  00651002
//**********************************************************************00652002
//FDD1402 EXEC PGM=IKJEFT01,DYNAMNBR=20,                                00660000
//       REGION=4M,TIME=100,                                            00670000
//       COND=(4,LT)                                                    00680000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00690000
//SYSPRINT DD SYSOUT=X                                                  00700000
//SYSOUT   DD SYSOUT=X                                                  00710000
//SYSDBOUT DD SYSOUT=X                                                  00720000
//SYSUDUMP DD DUMMY                                                     00730000
//SYSUDUMP DD DUMMY                                                     00740000
//*VOBK04R1 DD SYSOUT=(O,,TC03)                                         00750003
//VOBK04R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')                     00751003
//SYSTSIN DD DSN=SIVA.CARDS(FDD1402),DISP=SHR                           00760002
//**********************************************************************00761002
//*            PASO PARA BANCO                                          00762002
//**********************************************************************00763002
//*FDD1402B EXEC PGM=IKJEFT01,DYNAMNBR=20,                              00764002
//*       REGION=1024K,TIME=100,                                        00765002
//*       COND=(4,LT)                                                   00766002
//*SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420                                00767002
//*SYSPRINT DD SYSOUT=X                                                 00768002
//*SYSOUT   DD SYSOUT=X                                                 00769002
//*SYSDBOUT DD SYSOUT=X                                                 00769102
//*SYSUDUMP DD DUMMY                                                    00769202
//*SYSUDUMP DD DUMMY                                                    00769302
//*VOBK04R1 DD SYSOUT=(O,,3C03)                                         00769402
//*SYSTSIN DD DSN=SIVA.CARDS(FDD1402B),DISP=SHR                         00769502
//**********************************************************************00772000
//*                          === VOB643O ===                           *00780000
//* OBJETIVO : BLOQUEAR AUTOMATICAMENTE CONTRATOS SIN DOCUMENTACION.   *00790000
//*            (ACTUALIZA CUENTA)                                      *00800000
//*                                                                    *00810000
//* PASO REINICIABLE POR RESTART                                       *00820000
//**********************************************************************00830000
//*FDD1401 EXEC PGM=IKJEFT01,DYNAMNBR=20,                               00840001
//*       REGION=1024K,TIME=100,                                        00850001
//*       COND=(4,LT)                                                   00860001
//*SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=6292                                00870001
//*SYSPRINT DD SYSOUT=X                                                 00880001
//*SYSOUT   DD SYSOUT=X                                                 00890001
//*SYSDBOUT DD SYSOUT=X                                                 00900001
//*SYSABOUT DD DUMMY                                                    00910001
//*SYSUDUMP DD DUMMY                                                    00920001
//*SYSTSIN DD DSN=SIVA.CARDS(FDD1401),DISP=SHR                          00930002
//**********************************************************************00940000
//* PEND          FIN DEL PROCEDIMIENTO FDD1400                        *00950000
//**********************************************************************00960000
