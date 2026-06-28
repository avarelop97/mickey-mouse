//FUD0400 PROC                                                          00001000
//*                                                                     00002000
//**********************************************************************00029600
//*                                                                    *00029700
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00029800
//*                                                                    *00029900
//* PROCESO        :  FUD0400                                          *00030000
//*                   CIERRE DE FUTUROS. INDICES.                      *00030100
//*                                                                    *00030200
//* OBJETIVO       :  GENERAR REPORTES  DEL CIERRE DE FUTURTOS         *00030300
//*                                                                    *00030300
//*                                                                    *00030500
//* DESPUES DE     :  ON-LINE                                          *00031400
//*                                                                    *00031500
//* REALIZO        :  LXP                                              *00031600
//* FECHA          :  SEPTIEMBRE 1997.                                 *00031700
//*                                                               OSCT *00031800
//**********************************************************************00032400
//**********************************************************************00032400
//*              PASO PARA BORRAR LOS ARCHIVOS ANTERIORES              *
//**********************************************************************
//FUD0426 EXEC PGM=IDCAMS,REGION=4M
//SYSIN    DD  DSN=SIVA.CARDS(FUD0426),DISP=SHR
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//**********************************************************************00032400
//* OBJETIVO       :      GENERAR CARTAS CONFIRMACION DE INDICES       *00030300
//**********************************************************************00080001
//FUD0425 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M           00070000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//SYSDBOUT DD SYSOUT=X                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=SIVA.CARDS(FUD0304),DISP=SHR                          00210002
//CIB128R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//*                                                                     00181000
//**********************************************************************00032400
//* OBJETIVO       :      GENERAR CARTAS CONFIRMACION DE TASAS         *00030300
//**********************************************************************00080001
//FUD0424 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M           00070000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//SYSDBOUT DD SYSOUT=X                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=SIVA.CARDS(FUD0303),DISP=SHR                          00210002
//*CIB124R1 DD SYSOUT=(V,,TK44)                                         00140027
//CIB124R1 DD DSN=SIVA.MDD.FIX.FUTUROS.CARTAS.TASAS,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=80,BLKSIZE=0),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//*                                                                     00181000
//**********************************************************************00440005
//*                        * IEBGENER *                                 00450005
//*                                                                     00450005
//* OBJETIVO : MANDAR A SPOOL REPORTE CARTAS DE CONFIRMACION            00460005
//*                           CIB124R1                                  00480005
//**********************************************************************00490005
//*                                                                     00500005
//FUD0423  EXEC PGM=ICEGENER,REGION=4M,TIME=100,COND=(4,LT)             00510005
//SYSUT1   DD  DSN=SIVA.MDD.FIX.FUTUROS.CARTAS.TASAS,DISP=SHR           00171001
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSPRINT DD  SYSOUT=X                                                 00570005
//SYSOUT   DD  SYSOUT=X                                                 00580005
//SYSDBOUT DD  SYSOUT=X                                                 00590005
//SYSIN    DD  DUMMY                                                    00600005
//*                                                                     00630005
//**********************************************************************00032400
//* OBJETIVO       :      BORRAR ARCHIVO DE INDICES                    *00030300
//**********************************************************************00080001
//FUD0422 EXEC PGM=IDCAMS,COND=(0,NE)                                   00070000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSIN    DD  DSN=SIVA.CARDS(FUD0302),DISP=SHR                         00210002
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//*                                                                     00310000
//**********************************************************************00032400
//*                                                                    *00030300
//* OBJETIVO       :    ***   N O V A C I O N E S   ***                *00030300
//*                                                                    *00030300
//**********************************************************************00080001
//FUD0421 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,          00070000
//        PARM='/DEBUG',TIME=100                                        00090000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//FOLCTRL  DD  DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//SYSDBOUT DD SYSOUT=X                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0421),DISP=SHR                         00210002
//*                                                                     00002000
//**********************************************************************00032400
//* OBJETIVO       :      CREAR LOS ARCHIVOS DE TASAS E INDICES        *00030300
//**********************************************************************00080001
//*FUD0421 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,         00070000
//*        PARM='/DEBUG',TIME=100                                       00090000
//*STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//*SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                   00230000
//*SYSPRINT DD SYSOUT=X                                                 00240000
//*SYSOUT   DD SYSOUT=X                                                 00250000
//*SYSDBOUT DD SYSOUT=X                                                 00270000
//*SYSABOUT DD DUMMY                                                    00280000
//*SYSUDUMP DD DUMMY                                                    00290000
//*SYSTSIN  DD  DSN=SIVA.CARDS(FUD0301),DISP=SHR                        00210002
//*COB156A1 DD DSN=SIVA.MDD.FIX.FUTUROS.TASAS,                          00140027
//*           DISP=(NEW,CATLG,DELETE),                                  00151028
//*           DCB=(DSORG=PS,LRECL=117,RECFM=FB,BLKSIZE=0),              00160026
//*           UNIT=SYSDA,                                               00170028
//*           SPACE=(CYL,(10,5),RLSE)                                   00180028
//*                                                                     00181000
//*COB156A2 DD DSN=SIVA.MDD.FIX.FUTUROS.INDICES,                        00140027
//*           DISP=(NEW,CATLG,DELETE),                                  00151028
//*           DCB=(DSORG=PS,LRECL=117,RECFM=FB,BLKSIZE=0),              00160026
//*           UNIT=SYSDA,                                               00170028
//*           SPACE=(CYL,(10,5),RLSE)                                   00180028
//*                                                                     00181000
//*                                                                     00002000
//**********************************************************************00029600
//*                                                                    *00029700
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *00029800
//*                                                                    *00029900
//* PROCESO        :  PCIFUD02                                         *00030000
//*                   FUTUROS DE TASAS E INDICES.                      *00030100
//*                                                                    *00030200
//* OBJETIVO       :  IMPRIMIR REPORTES DE FUTUROS                     *00030300
//*                                                                    *00030500
//* CORRE                                                              *00030900
//* ANTES DE       :  FIN DE DIA.                                      *00031000
//*                                                                    *00031300
//* DESPUES DE     :  PCIFUD03                                         *00031400
//*                                                                    *00031500
//*                                                                    *00031800
//**********************************************************************00032400
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE OPERACION DIARIA                *00030300
//**********************************************************************00080001
//FUD0420 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//*CIB117R1 DD  SYSOUT=(V,,TK30)                                        00171001
//CIB117R1 DD DSN=SIVA.MDD.FIX.FUTUROS.OPERDIA,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=1330),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0216),DISP=SHR                         00210002
//*                                                                     00310000
//**********************************************************************00440005
//*                        * IEBGENER *                                 00450005
//*                                                                     00450005
//* OBJETIVO : MANDAR A SPOOL REPORTE OPERACION DIARIA DE FUTUROS       00460005
//*                           CIB117R1                                  00480005
//**********************************************************************00490005
//*                                                                     00500005
//FUD0419  EXEC PGM=ICEGENER,REGION=4M,TIME=100,COND=(4,LT)             00510005
//SYSUT1   DD  DSN=SIVA.MDD.FIX.FUTUROS.OPERDIA,DISP=SHR                00171001
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSPRINT DD  SYSOUT=X                                                 00570005
//SYSOUT   DD  SYSOUT=X                                                 00580005
//SYSDBOUT DD  SYSOUT=X                                                 00590005
//SYSIN    DD  DUMMY                                                    00600005
//*                                                                     00630005
//**********************************************************************00032400
//* OBJETIVO       :         VENCIMIENTO DE TASAS                      *00030300
//**********************************************************************00080001
//FUD0418 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//FOLCTRL  DD  DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                         00210002
//CIB116R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0105),DISP=SHR                         00210002
//**********************************************************************00032400
//* OBJETIVO       :         VENCIMIENTO DE INDICES                    *00030300
//**********************************************************************00080001
//FUD0417 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//FOLCTRL  DD  DSN=MXCP.ZM.VSL.FOLCTRL,DISP=SHR                         00210002
//CIB130R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0215),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE PONDERADO TASAS                 *00030300
//**********************************************************************00080001
//FUD0416 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB118R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0213),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE PONDERADO INDICES               *00030300
//**********************************************************************00080001
//FUD0415 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB127R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0212),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE POSICION GLOBAL TASAS           *00030300
//**********************************************************************00080001
//FUD0414 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//*CIB122R1 DD  SYSOUT=(V,,TK33)                                        00171001
//CIB122R1 DD DSN=SIVA.MDD.FIX.FUTUROS.POSIGLO,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=1330),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0211),DISP=SHR                         00210002
//**********************************************************************00440005
//*                        * IEBGENER *                                 00450005
//*                                                                     00450005
//* OBJETIVO : MANDAR A SPOOL REPORTE POSICION GLOBAL DE FUTUROS        00460005
//*                           CIB122R1                                  00480005
//**********************************************************************00490005
//*                                                                     00500005
//FUD0413  EXEC PGM=ICEGENER,REGION=4M,TIME=100,COND=(4,LT)             00510005
//SYSUT1   DD  DSN=SIVA.MDD.FIX.FUTUROS.POSIGLO,DISP=SHR                00171001
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSPRINT DD  SYSOUT=X                                                 00570005
//SYSOUT   DD  SYSOUT=X                                                 00580005
//SYSDBOUT DD  SYSOUT=X                                                 00590005
//SYSIN    DD  DUMMY                                                    00600005
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE POSICION GLOBAL INDICES         *00030300
//**********************************************************************00080001
//FUD0412 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB129R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0210),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE VALUACION TASAS                 *00030300
//**********************************************************************00080001
//FUD0411 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//*CIB119R1 DD  SYSOUT=(V,,TK35)                                        00171001
//CIB119R1 DD DSN=SIVA.MDD.FIX.FUTUROS.VALTASAS,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=1330),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0209),DISP=SHR                         00210002
//**********************************************************************00440005
//*                        * IEBGENER *                                 00450005
//*                                                                     00450005
//* OBJETIVO : MANDAR A SPOOL REPORTE VALUACION DE TASAS FUTUROS        00460005
//*                           CIB119R1                                  00480005
//**********************************************************************00490005
//*                                                                     00500005
//FUD0410  EXEC PGM=ICEGENER,REGION=4M,TIME=100,COND=(4,LT)             00510005
//SYSUT1   DD  DSN=SIVA.MDD.FIX.FUTUROS.VALTASAS,DISP=SHR               00171001
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSPRINT DD  SYSOUT=X                                                 00570005
//SYSOUT   DD  SYSOUT=X                                                 00580005
//SYSDBOUT DD  SYSOUT=X                                                 00590005
//SYSIN    DD  DUMMY                                                    00600005
//*                                                                     00630005
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE VALUACION INDICES               *00030300
//**********************************************************************00080001
//*FUD0409 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4096K,COND=(4,LT),      00100001
//*             TIME=100                                                00110001
//*SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420                               00150001
//*SYSPRINT DD  SYSOUT=*                                                00160001
//*SYSOUT   DD  SYSOUT=*                                                00170001
//*CIB126R1 DD  SYSOUT=(V,,TK36)                                        00171001
//*SYSDBOUT DD  SYSOUT=*                                                00180001
//*SYSABOUT DD  SYSOUT=*                                                00190001
//*SYSUDUMP DD  DUMMY                                                   00200001
//*SYSTSIN  DD  DSN=SIVA.CARDS(FUD0208),DISP=SHR                        00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE NOVACION TASAS                  *00030300
//**********************************************************************00080001
//FUD0409 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//*CIB139R1 DD  SYSOUT=(V,,TK37)                                        00171001
//CIB139R1 DD DSN=SIVA.MDD.FIX.FUTUROS.NOVTASAS,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=133,BLKSIZE=1330),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0207),DISP=SHR                         00210002
//**********************************************************************00440005
//*                        * IEBGENER *                                 00450005
//*                                                                     00450005
//* OBJETIVO : MANDAR A SPOOL REPORTE NOVACION DE TASAS FUTUROS         00460005
//*                           CIB139R1                                  00480005
//**********************************************************************00490005
//*                                                                     00500005
//FUD0408  EXEC PGM=ICEGENER,REGION=4M,TIME=100,COND=(4,LT)             00510005
//SYSUT1   DD  DSN=SIVA.MDD.FIX.FUTUROS.NOVTASAS,DISP=SHR               00171001
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSPRINT DD  SYSOUT=X                                                 00570005
//SYSOUT   DD  SYSOUT=X                                                 00580005
//SYSDBOUT DD  SYSOUT=X                                                 00590005
//SYSIN    DD  DUMMY                                                    00600005
//*                                                                     00630005
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE NOVACION INDICE                 *00030300
//**********************************************************************00080001
//FUD0407 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB138R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0206),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE MTTO. GARANTIA TASAS            *00030300
//**********************************************************************00080001
//FUD0406 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB123R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0205),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE MTTO. GARANTIA INDICES          *00030300
//**********************************************************************00080001
//FUD0405 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB120R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0204),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE DIVERSIFICACION POR             *00030300
//*                   INTERMEDIARIO                                    *00030300
//**********************************************************************00080001
//FUD0404 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB147R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0203),DISP=SHR                         00210002
//**********************************************************************
//*                                                                     00310000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE DIVERSIFICACION POR PLAZO       *00030300
//*                                                                    *00030300
//* NOTA           :  SE COMENTO ESTE PASO A SOLICITUD DE G.PEREZ      *00030300
//*                :  14-MAYO-96.                                      *00030300
//**********************************************************************00080001
//*FUD0403 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4096K,COND=(4,LT),      00100001
//*             TIME=100                                                00110001
//*SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420                               00150001
//*SYSPRINT DD  SYSOUT=*                                                00160001
//*SYSOUT   DD  SYSOUT=*                                                00170001
//*CIB148R1 DD  SYSOUT=(V,,TK42)                                        00171001
//*SYSDBOUT DD  SYSOUT=*                                                00180001
//*SYSABOUT DD  SYSOUT=*                                                00190001
//*SYSUDUMP DD  DUMMY                                                   00200001
//*SYSTSIN  DD  DSN=SIVA.CARDS(FUD0202),DISP=SHR                        00210002
//**********************************************************************
//*====================================================================*
//*                                                                     08221000
//*    SPUFI QUE ACTUALIZA ICARTA < 1000                                08230000
//*    PASO TEMPORAL EN LO QUE SE INVESTIGA EL CODIGO 302 EN COC104O    08240000
//*  * * * ***   CASA DE BOLSA Y BBV  *** * * *                         08250000
//*====================================================================*
//*
//*FUD0403  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)         00009000
//*STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                     00006000
//*         DD  DSN=PLI.V2R3M0.SIBMLINK,DISP=SHR                        00007000
//*         DD  DSN=PLI.V2R3M0.PLILINK,DISP=SHR                         00008000
//*SYSTSPRT DD  SYSOUT=*                                                00010000
//*SYSPRINT DD  SYSOUT=*                                                00020000
//*SYSUDUMP DD DUMMY                                                    00030000
//*SYSTSIN  DD  DSN=SIVA.CARDS(APD0303),DISP=SHR                        00040000
//*SYSIN    DD  DSN=SIVA.CARDS(FUD0403),DISP=SHR                        00100000
//**********************************************************************00032400
//* OBJETIVO       :  IMPRIMIR REPORTE CONTRATOS MARCO                 *00030300
//**********************************************************************00080001
//FUD0402 EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT),          00100001
//             TIME=100                                                 00110001
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   00150001
//SYSPRINT DD  SYSOUT=*                                                 00160001
//SYSOUT   DD  SYSOUT=*                                                 00170001
//CIB132R1 DD SUBSYS=(C600,'SYSOUT=S,PREFIX=CDAMD')
//SYSDBOUT DD  SYSOUT=*                                                 00180001
//SYSABOUT DD  SYSOUT=*                                                 00190001
//SYSUDUMP DD  DUMMY                                                    00200001
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0201),DISP=SHR                         00210002
//*
//**********************************************************************00032400
//* OBJETIVO       :      GENERAR ARCHIVO POSICION DE TASAS            *00030300
//**********************************************************************00080001
//FUD0401A EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M          00070000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//SYSDBOUT DD SYSOUT=X                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=SIVA.CARDS(FUD0401A),DISP=SHR                         00210002
//VIBN44A1 DD DSN=SIVA.MDD.FIX.FUTUROS.POSICION.TASAS,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=119,BLKSIZE=0),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//*                                                                     00181000
//**********************************************************************00032400
//* OBJETIVO       :      GENERAR ARCHIVO NOVACION DE TASAS            *00030300
//**********************************************************************00080001
//FUD0401B EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M          00070000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD DSN=SIVA.BIB.CARGA,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00230000
//SYSPRINT DD SYSOUT=X                                                  00240000
//SYSOUT   DD SYSOUT=X                                                  00250000
//SYSDBOUT DD SYSOUT=X                                                  00270000
//SYSABOUT DD DUMMY                                                     00280000
//SYSUDUMP DD DUMMY                                                     00290000
//SYSTSIN  DD DSN=SIVA.CARDS(FUD0401B),DISP=SHR                         00210002
//VIBN45A1 DD DSN=SIVA.MDD.FIX.FUTUROS.NOVACION.TASAS,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=145,BLKSIZE=0),
//           UNIT=SYSDA,
//           SPACE=(TRK,(5,5))
//*                                                                     00181000
//**********************************************************************
//*                      - VNBE11D -
//* OBJETIVO : FINALIZA   EVENTO PARA LIMITAR CIERRE DE FUTUROS
//*            APAGA EL EVENTO FUT -- 'F' --
//**********************************************************************
//*
//FUD0401 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4096K,
//             TIME=100
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//         DD  DSN=SIVA.BIB.CARGA,DISP=SHR
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=2420
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD  DSN=SIVA.CARDS(FUD0401),DISP=SHR
//*
