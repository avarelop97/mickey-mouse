//FDD0800 PROC                                                          00010000
//*                                                                     00020000
//**********************************************************************00030000
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//*                                                                    *00040000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00050000
//*                                                                    *00060000
//* PROCESO        :  PFDFDD08                                         *00070000
//*                   FIN DE DIA DEL SIVA.                             *00080000
//*                                                                    *00090000
//* OBJETIVO       :  REALIZAR LA INTERFASE DE FIN DE DIA DEL SIVA.    *00100000
//*                   - INTERFASES BATCH (TSO)                         *00110000
//*                                                                    *00120000
//*   5TA. PARTE   :  ACTUALIZACION TESORERIA PREVIA A REPORTES        *00121000
//*                                                                    *00122000
//*                                                                    *00122100
//* CORRE                                                              *00122200
//* ANTES DE       :  PFDFDD10, PFDFDD11, PFDFDD12                     *00122300
//*                                                                    *00122400
//* DESPUES DE     :  PFDFDD01, PFDFDD02,PFDFDD05,PFDFDD07             *00122500
//*                                                                    *00122700
//* REALIZO        :  JOEL GONZALEZ MARTINEZ                           *00122800
//* FECHA          :  FEBRERO DE 1991                                  *00122900
//*                                                                    *00123000
//* OBSERVACION    :  EL PROCESO FINDIA SE DIVIDIO EN 7 SUBPROCESOS    *00124000
//*                   A MANERA DE OPTIMIZAR EL TIEMPO TOTAL DE EJECU - *00125000
//*                   CION LOS CUALES SERAN SUBMITIDOS POR DISPARADOR  *00126000
//*                   Y NO POR CONSOLA                                 *00127000
//*                                                                    *00128000
//* NOTA           :  ESTE PROCESO SE DIVIDIO EN DOS PARA OPTIMIZAR    *00129000
//*                   PROCESO EL RESTO,CORRE EN EL (PFDFDD31)          *00130000
//* MODIFICADO     :  EN AGOSTO DE 1995. POR SOPORTE A PRODUCCION      *00131000
//*                                                                    *00131000
//**********************************************************************00132000
//*                                                                     00220000
//**********************************************************************00230000
//*                       -- VIBA28D --                                *00240000
//* OBJETIVO : DIARIO DE OPERACIONES POR EMISORA :                     *00250000
//*            CAPITALES, SOCIEDADES DE INVERSION Y MERCADO DE DINERO  *00260000
//*                                                                    *00270000
//*          SE COMENTARIZO ESTE PASO Y SE INCLUYO EL PASO FDD2901     *00270000
//*          A SOLICITUD DE FERNANDO ACEVEDO/ANGEL ARANGO. 13/NOV/95   *00270000
//*                                   ATTE. RUBEN HDEZ.                *00270000
//*                                                                    *00270000
//* PASO REINICIABLE POR RESTART                       ***VALORES      *00280000
//**********************************************************************00290000
//*            PASO PARA CASA DE BOLSA                                  00290000
//**********************************************************************00290000
//FDD0812  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),         00310000
//         PARM='/DEBUG',TIME=100                                       00090000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00320000
//SYSPRINT DD SYSOUT=X                                                  00330000
//SYSOUT   DD SYSOUT=X                                                  00340000
//SYSDBOUT DD SYSOUT=X                                                  00350000
//SYSABOUT DD DUMMY                                                     00360000
//SYSUDUMP DD DUMMY                                                     00370000
//VIBA28A1 DD DSN=SIVA.OTR.FIX.DIARIO,DISP=SHR                          00380000
//*VIBA28R1 DD SYSOUT=(V,,TV90)                                         00390000
//VIBA28R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*VIBA28RX DD SYSOUT=(V,,TV90)                                         00390000
//VIBA28RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(5))                                00400000
//SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(5))                                00410000
//SYSTSIN  DD DSN=SIVA.CARDS(FDD0812),DISP=SHR                          00420000
//*                                                                     00134000
//********************************************************************* 00040000
//*  NOTA :  ESTE PASO CORRE UN PARALELO AGREGADO EL 281096           * 00040000
//*   SOLICITADO POR ARTURO GALLEGOS.                                 * 00040000
//*  PASO PARA VIBA28P                                  *** VALORES   * 00050000
//********************************************************************* 00060000
//FDD0811  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K,      00070000
//        PARM='/DEBUG',TIME=100                                        00090000
//VIBA28A1 DD DSN=SIVA.VAL.FIX.VIBA28P1,DISP=SHR                        00151028
//*VIBA28R1  DD SYSOUT=(V,,TV90)                                        00240000
//*VIBA28R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*VIBA28RX  DD SYSOUT=(V,,TV90)                                        00240000
//VIBA28RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SORTWK01  DD UNIT=SYSDA,SPACE=(CYL,(5,1))                             00200021
//SORTWK02  DD UNIT=SYSDA,SPACE=(CYL,(5,1))                             00210021
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=2420                                 00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//SYSDBOUT DD SYSOUT=X                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2901),DISP=SHR                          00300000
//*                                                                     00134000
//************************************************************
//*  NOTA: ESTE PASO CORRE EN PARALELO
//*        SOLICITADO POR GUADALUPE ALDANA
//*        DEBE SER LIBERADO JUNTO CON EL PASO ANTERIOR
//*        QUE CORRE EN PARALELO ARTURO GALLEGOS
//*  OBJETIVO: COPIA UN ARCHIVO SECUENCIAL EN UN VSAM
//*  PROGRAMO : SISCON (OSCAR CORTES SANTOS)            *** VALORES
//************************************************************
//FDD0810  EXEC PGM=IDCAMS,COND=(4,LT)
//SYSPRINT   DD   SYSOUT=*
//SYSIN      DD   DSN=SIVA.CARDS(FDD2905),DISP=SHR
//*
//FDD0809  EXEC PGM=IDCAMS,REGION=4M,COND=(4,LT)
//SYSPRINT   DD SYSOUT=X
//INPUT      DD DSN=SIVA.VAL.FIX.VIBA28P1,DISP=SHR
//OUTPUT     DD DSN=SIVA.VAL.FIX.RESUMEN.CARCLI.ONLINE,DISP=SHR
//SYSIN      DD DSN=SIVA.CARDS(FDD2901A),DISP=SHR
//**********************************************************************00290000
//*            PASO PARA BANCO                             *** VALORES  00290000
//* ESTE PASO SE COMENTARIZA A PETICION DEL AREA DE VALORES*** VALORES  00290000
//**********************************************************************00290000
//*FDD0809  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)         00310000
//*SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                   00320000
//*SYSPRINT DD SYSOUT=X                                                 00330000
//*SYSOUT   DD SYSOUT=X                                                 00340000
//*SYSDBOUT DD SYSOUT=X                                                 00350000
//*SYSABOUT DD DUMMY                                                    00360000
//*SYSUDUMP DD DUMMY                                                    00370000
//*VIBA28A1 DD DSN=SIVA.VAL.FIX.DIARIOB,DISP=SHR                        00380000
//**VIBA28R1 DD SYSOUT=(V,,TV90)                                        00390000
//*VIBA28R1 DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//**VIBA28RX DD SYSOUT=(V,,TV90)                                        00390000
//*VIBA28RX DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//*SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(5))                               00400000
//*SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(5))                               00410000
//*SYSTSIN  DD DSN=SIVA.CARDS(FDD0811),DISP=SHR                         00420000
//*                                                                     00134000
//**********************************************************************00650000
//*                           -- VOB803D --                            *00660000
//* OBJETIVO : ACTUALIZA EFECTIVO COMPROMETIDO DE TESORERIA            *00670000
//*            (ACTUALIZA CARTERA)                                     *00680000
//*                                                                    *00690000
//* PASO REINICIABLE POR RESTART                         *** TESORERIA *00700000
//**********************************************************************00710000
//FDD0808  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00720000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00730000
//SYSPRINT DD SYSOUT=X                                                  00740000
//SYSOUT   DD SYSOUT=X                                                  00750000
//SYSDBOUT DD SYSOUT=X                                                  00760000
//SYSABOUT DD SYSOUT=X                                                  00770000
//SYSUDUMP DD DUMMY                                                     00780000
//SYSTSIN  DD DSN=SIVA.CARDS(FDD0804),DISP=SHR                          00790000
//*                                                                     00800000
