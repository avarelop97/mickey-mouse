//FDD2200 PROC                                                          00010000
//**********************************************************************00024000
//*    G R U P O - F I N A N C I E R O - P R O B U R S A   (B B V)     *
//* SISTEMA        :  SOCIEDADES DE INVERSION                          *00026000
//* PROCESO        :  PFDFDD22   (DISPARADOR) FDD2200    PROCEDIMIENTO *00029000
//* OBJETIVO       :  CORRER LA INTERFASE DEL SISTEMA DE ADMON. Y      *00029200
//*                   CONTROL DE SOCIEDADES DE INVERSION EXCLUSIVO     *00029200
//*                   PARA FIN DE DIA.                                 *00029500
//* CINTAS         :  SOCIN1                                           *00029200
//* FECHA          :  FEBRERO/1994                                     *00030200
//* CORRE ANTES DE :  PNDSID07                                         *00025000
//* Y  DESPUES  DE :  PFDFDD15                                         *00025000
//**********************************************************************00340000
//**********************************************************************00340000
//* OBJETIVO : BORRA LOS ARCHIVOS DE TRABAJO                           *00360000
//**********************************************************************00380000
//FDD2210  EXEC PGM=IDCAMS,COND=(4,LT)                                  00330000
//SYSPRINT DD SYSOUT=*                                                  00340000
//SYSIN    DD DSN=SIVA.CARDS(FDD2210),DISP=SHR                          00350000
//*                                                                     00010000
//**********************************************************************00040000
//* EJECUTA    PROGRAMA VIB237D                                        *00060001
//* TRANSFIERE MOVIMIENTOS DE "REPORTOS" EN EL FILE 'REPSOCIN'         *00070000
//*                                                  ***SOC. INVERS.   *00040000
//**********************************************************************00040000
//FDD2209  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00110000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00150000
//SYSABEND DD DUMMY                                                     02440000
//SYSPRINT DD SYSOUT=*                                                  00160000
//SYSOUT   DD SYSOUT=*                                                  00210002
//PRINT    DD SYSOUT=*                                                  02480000
//REPSOCIN DD DSN=SIVA.SIN.FIX.REPSOCIN.FINDIA,                         00170002
//            DISP=(NEW,CATLG,DELETE),                                  00170002
//            UNIT=SYSDA,SPACE=(CYL,(15,2),RLSE),                       00180000
//            DCB=(RECFM=FB,LRECL=119,BLKSIZE=0,DSORG=PS)               00190000
//SYSDBOUT DD SYSOUT=*                                                  00220002
//SYSABOUT DD DUMMY                                                     00230000
//SYSUDUMP DD DUMMY                                                     00240000
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2209),DISP=SHR                          00250003
//*                                                                     00030000
//**********************************************************************00040000
//* EJECUTA    PROGRAMA VIB227D                                        *00060001
//* TRANSFIERE MOVIMIENTOS DE "SIVA" PARA EL SISTEMA DE SOC. INV.      *00070000
//*                                                    ***SOC. INVERS. *00040000
//**********************************************************************00040000
//FDD2208  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00110000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00150000
//SYSABEND DD DUMMY                                                     02440000
//SYSPRINT DD SYSOUT=*                                                  00160000
//SYSOUT   DD SYSOUT=*                                                  00210002
//PRINT    DD SYSOUT=*                                                  02480000
//VIB227A1 DD DSN=SIVA.SIN.FIX.OPESOCIN.FINDIA,                         00170002
//            DISP=(NEW,CATLG,DELETE),                                  00170002
//            UNIT=SYSDA,SPACE=(CYL,(15,2),RLSE),                       00180000
//            DCB=(RECFM=FB,LRECL=94,BLKSIZE=0,DSORG=PS)                00190000
//*VIB227R1 DD SYSOUT=(O,,ZI01)                                         00200002
//VIB227R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSDBOUT DD SYSOUT=*                                                  00220002
//SYSABOUT DD DUMMY                                                     00230000
//SYSUDUMP DD DUMMY                                                     00240000
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2208),DISP=SHR                          00250003
//*                                                                     00010000
//**********************************************************************00040000
//* EJECUTA    PROGRAMA VIB229D                                        *00050001
//* TRANSFIERE EL ARCHIVO DE EMISORAS "CONCEPT"                        *00060000
//*                                                    ***SOC. INVERS. *00080000
//**********************************************************************00080000
//FDD2207  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00110000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00142000
//SYSPRINT DD SYSOUT=*                                                  00143000
//EMISORA  DD DSN=SIVA.SIN.FIX.EMISOCIN.FINDIA,                         00170002
//            DISP=(NEW,CATLG,DELETE),                                  00170002
//            UNIT=SYSDA,SPACE=(CYL,(5,2),RLSE),                        00180000
//            DCB=(RECFM=FB,LRECL=158,BLKSIZE=0,DSORG=PS)               00190000
//*VIB229R1 DD SYSOUT=(O,,ZI03)                                         00144102
//VIB229R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSOUT   DD SYSOUT=*                                                  00145002
//SYSDBOUT DD SYSOUT=*                                                  00145102
//SYSABOUT DD DUMMY                                                     00146000
//SYSUDUMP DD DUMMY                                                     00147000
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2207),DISP=SHR                          00148003
//*                                                                     00030000
//**********************************************************************00040000
//* EJECUTA    PROGRAMA VIB233D                                        *00050001
//* TRANSFIERE PARAMETROS   "PARAM"                                    *00060000
//*                                                 ***SOC. INVERS.    *00080000
//**********************************************************************00080000
//FDD2206  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,LT)          00110000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0                                    00142000
//SYSPRINT DD SYSOUT=*                                                  00143000
//PARSOCIN DD DSN=SIVA.SIN.FIX.PARSOCIN.FINDIA,                         00144002
//            DISP=(NEW,CATLG,DELETE),                                  00170002
//            UNIT=SYSDA,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//*VIB233R1 DD SYSOUT=(O,,ZI02)                                         00144102
//VIB233R1 DD SUBSYS=(C600,'SYSOUT=O,PREFIX=CDAMD')
//SYSOUT   DD SYSOUT=*                                                  00145002
//SYSDBOUT DD SYSOUT=*                                                  00145102
//SYSABOUT DD DUMMY                                                     00146000
//SYSUDUMP DD DUMMY                                                     00147000
//SYSTSIN  DD DSN=SIVA.CARDS(FDD2206),DISP=SHR                          00148003
//*                                                                     00030000
//**********************************************************************05130000
//* EJECUTA     VIB231D                                                *05150000
//* APAGA EL RENGLON DE INTERFACES DE SOC. INV. EN CTLPROC             *05150000
//*                                                   ***SOC. INVERS.  *05170000
//**********************************************************************05170000
//FDD2202  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT),REGION=4M,         05190000
//             TIME=100                                                 05200000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   05240000
//SYSPRINT DD  SYSOUT=*                                                 05250000
//SYSOUT   DD  SYSOUT=*                                                 05260000
//SYSDBOUT DD  SYSOUT=*                                                 05270000
//SYSABOUT DD  DUMMY                                                    05280000
//SYSUDUMP DD  DUMMY                                                    05290000
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2202),DISP=SHR                         05300000
//*                                                                     05120000
//**********************************************************************05130000
//* EJECUTA     VIB235D                                                *05150000
//* AVISA EN EL PARAMETRO 'P92' QUE LA INTERFASE TERMINO ANORMALMENTE  *05150000
//*                                                   ***SOC. INVERS.  *05170000
//**********************************************************************05170000
//FDD2201  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(8,GE),REGION=4M,         05190000
//             TIME=100                                                 05200000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//SYSTSPRT DD  SYSOUT=*,DCB=BLKSIZE=0                                   05240000
//SYSPRINT DD  SYSOUT=*                                                 05250000
//SYSOUT   DD  SYSOUT=*                                                 05260000
//SYSDBOUT DD  SYSOUT=*                                                 05270000
//SYSABOUT DD  DUMMY                                                    05280000
//SYSUDUMP DD  DUMMY                                                    05290000
//SYSTSIN  DD  DSN=SIVA.CARDS(FDD2201),DISP=SHR                         05300000
//*                                                                     00290006
