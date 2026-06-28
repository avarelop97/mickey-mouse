//FDM2400 PROC                                                          00010000
//*                                                                     00020000
//**********************************************************************00021000
//*                                                                    *00022000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00023000
//*                                                                    *00024000
//* PROCESO        : PFDFDM24.                                         *00025000
//*                  DEPURACION DE PREREMD (TABLA DE COMISIONES)       *00026000
//*                                                                    *00027000
//* OBJETIVO: DEPURAR MENSUALMENTE (TODOS LOS 8 DE CADAMES) LA TABLA   *00028000
//*           PREREMD.                                                 *00029000
//*                                                                    *00029200
//* CORRE                                                              *00029300
//* ANTES DE       :  IMAGE COPYS POSTERIORES A FINDIA                 *00029400
//*                                                                    *00029500
//* DESPUES DE     :  PFDFDD23                                         *00029600
//*                                                                    *00029700
//* REALIZO        :  RAFAEL ZULETA VARGAS                             *00029800
//*                                                                    *00029900
//* FECHA          :  FEBRERO DE 1993.                                 *00030000
//**********************************************************************00030100
//* LOG DE MODIFICACIONES.                                              00031000
//*        REALIZO :  ASATECK(ABRAHAM JUAREZ PIÑOQ)                    *00032003
//*        FECHA   :  FEBRERO DE 2000.                                 *00033000
//*        OBJETIVO:  DEPURAR MENSUALMENTE LA TABLA REDAUXI INCLUIR    *00034000
//*                   PROGRAMA DEPURADOR.                               00035000
//*        PASO    :  FDM2401C.                                         00036000
//**********************************************************************00040000
//**********************************************************************00050000
//*                        -- VOBR02M --                               *00060000
//*                                                                    *00070000
//* OBJETIVO : DEPURAR TABLA REDAUXI.                                 * 00080000
//*                                                                    *00090000
//* PASO REINICIABLE POR RESTART                                       *00100000
//**********************************************************************00110000
//FDM2401C EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,                     00120000
//             TIME=100                                                 00130000
//SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0                                   00140000
//SYSPRINT DD  SYSOUT=X                                                 00150000
//SYSOUT   DD  SYSOUT=X                                                 00160000
//SYSDBOUT DD  SYSOUT=X                                                 00180000
//SYSABOUT DD  DUMMY                                                    00190000
//SYSUDUMP DD  DUMMY                                                    00200000
//SYSTSIN  DD  DSN=SIVA.CARDS(FDM2401C),DISP=SHR                        00210000
//**********************************************************************00220000
//*                        -- VOBD02M --                               *00230000
//*                                                                    *00240000
//* OBJETIVO : DEPURAR TABLA PREREMD.                                  *00250000
//*                                                                    *00260000
//* PASO REINICIABLE POR RESTART                                       *00270000
//**********************************************************************00280000
//*FDM2401 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,                     00290000
//*             TIME=100                                                00300000
//*SYSTSPRT DD  SYSOUT=X,DCB=BLKSIZE=0                                  00310000
//*SYSPRINT DD  SYSOUT=X                                                00320000
//*SYSOUT   DD  SYSOUT=X                                                00330000
//*SYSDBOUT DD  SYSOUT=X                                                00340000
//*SYSABOUT DD  DUMMY                                                   00350000
//*SYSUDUMP DD  DUMMY                                                   00360000
//*SYSTSIN  DD  DSN=SIVA.CARDS(FDM2401),DISP=SHR                        00370000
