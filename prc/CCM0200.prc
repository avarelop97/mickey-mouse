//**********************************************************************00001000
//*                                                                    *00002000
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00003000
//*                                                                    *00004000
//* PROCESO        :  PCICCM02                                         *00005000
//*                   CIERRE MENSUAL DE COBERTURAS CAMBIARIAS          *00006000
//*                                                                    *00007000
//* OBJETIVO       :  CERRAR LA OPERACION MENSUAL DE COBERTURAS        *00008000
//*                   CAMBIARIAS AUTOMATICAMENTE.                      *00009000
//* CORRE                                                              *00009300
//* ANTES DE       :  SU OPERACION DEL PRIMER DIA HABIL DEL MES        *00009400
//*                                                                    *00009500
//* DESPUES DE     :  PIDIDD06 DEL ULTIMO DIA HABIL DEL MES            *00009600
//*                                                                    *00009700
//* REALIZO        :  RICARDO ARGUETA TEPEPA                           *00009800
//* FECHA          :  AGOSTO DE 1992                                   *00009900
//*                                                                    *00010000
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EN FORMA MENSUAL.  *00010100
//*                                                                    *00010300
//**********************************************************************00010400
//CCM0200  PROC SALS=X,SALU=Y,CICS=,UZPR=TK64                           00010500
//********************************************************************  00011000
//*                    REPORTE INFORME CONTABLE MENSUAL                 00012000
//*                              CIB013M                                00012300
//*05/12/90                                                             00013000
//********************************************************************  00014200
//*-------------------------------------------------------------------  00014300
//*        REPORTE INFORME CONTABLE MENSUAL                             00014400
//*-------------------------------------------------------------------  00014500
//CCM0201  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M                      00014600
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//CIB013R1 DD SYSOUT=(O,&CICS,&UZPR)                                    00015000
//CIB013RX DD SYSOUT=(&SALU,&CICS,&UZPR)                                00015100
//SYSTSPRT DD SYSOUT=&SALS,DCB=BLKSIZE=0                                00016000
//SYSPRINT DD SYSOUT=&SALS                                              00017000
//SYSOUT   DD SYSOUT=&SALS                                              00018000
//SYSDBOUT DD SYSOUT=&SALS                                              00019000
//SYSABOUT DD DUMMY                                                     00020000
//SYSUDUMP DD DUMMY                                                     00030000
//SYSTSIN  DD DSN=SIVA.CARDS(CCM0201),DISP=SHR                          00040002
