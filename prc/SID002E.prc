//SID002E PROC                                                          00010000
//**********************************************************************00020000
//*                                                                    *00030000
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *00031000
//*                                                                    *00032000
//* PROCESO        :  PSID002E                                         *00033000
//*                                                                    *00035000
//* OBJETIVO       :  CARGA DE COMPOSICION DE CARTERA                  *00036000
//*                                                                    *00038000
//* REALIZO        :  JAIME FLORES (ASATECK)                           *00039000
//*                                                                    *00039100
//* FECHA          :  AGOSTO DE 1998                                   *00039200
//*                                                                    *00039300
//**********************************************************************00039400
//**********************************************************************00039500
//*                    * IDCAMS  *                                      00039600
//* OBJETIVO : BORRA ARCHIVOS DE TRABAJO                                00039700
//*                                                                     00039800
//* PASO REINICIABLE POR RESTART.                                       00039900
//**********************************************************************00040000
//*                                                                     00050000
//*SID002E2 EXEC PGM=IDCAMS                                             00060000
//*SYSPRINT   DD SYSOUT=*                                               00061000
//*SYSIN      DD DSN=SIVA.CARDS(SID002E2),DISP=SHR                      00062000
//*                                                                     00063000
//SID002E1 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K,      00070000
//          PARM='/DEBUG',TIME=100                                      00090000
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=2420                                 00230000
//SYSPRINT DD SYSOUT=*                                                  00240000
//SYSOUT   DD SYSOUT=*                                                  00250000
//SYSDBOUT DD SYSOUT=*                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//ECTAR01F DD DSN=SIVA.SIN.FIX.ECTAR01F,DISP=SHR                        00300100
//*         DISP=(NEW,CATLG,DELETE),                                    00300200
//*         DCB=(DSORG=PS,RECFM=FB,LRECL=65,BLKSIZE=650),               00300300
//*         UNIT=SYSDA,                                                 00300400
//*         SPACE=(TRK,(1,1))                                           00300500
//SYSTSIN   DD DSN=SIVA.CARDS(SID002E1),DISP=SHR                        00300604
