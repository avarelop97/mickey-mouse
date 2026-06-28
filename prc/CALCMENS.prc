//CALCMENS PROC CICS=,SALU=,SALS=,UZPR=                                 00010000
//*                                                                     00020000
//**********************************************************************00030000
//*                                                                    *00040000
//*                  MODULO DE PROCUENTA                               *00050000
//*                  ABRIL      21, 1990                               *00060000
//*                                                              OSCT  *00070000
//**********************************************************************00080000
//*                                                                     00090000
//**********************************************************************00100000
//*           --- BUSCA EL MES A PROCESAR, SI ES ---                   *00110000
//*           --- EL 12, REGRESA CODIGO DE RET=00---                   *00120000
//*           ---  PARA RESPALDAR TABLAS A CINTA ---                   *00130000
//*                      --- VIB896O ---                               *00140000
//**********************************************************************00150000
//*                                                                     00160000
//PASO07  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M                       00170000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//        DD DSN=SYS1.COB2CLIB,DISP=SHR                                 00190000
//        DD DSN=SYS1.COB2COMP,DISP=SHR                                 00200000
//*                                                                     00210000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00220000
//SYSPRINT DD SYSOUT=X                                                  00230000
//SYSOUT   DD SYSOUT=X                                                  00240000
//SYSDBOUT DD SYSOUT=X                                                  00250000
//SYSABOUT DD DUMMY                                                     00260000
//SYSUDUMP DD DUMMY                                                     00270000
//*                                                                     00280000
//SYSTSIN  DD DSN=SIVA.PARMXXP(PARM125),DISP=SHR                        00290000
//*                                                                     00300000
//**********************************************************************00310000
//*           MENSAJE AL OPERADOR PARA QUE MONTE LA CINTA              *00320000
//**********************************************************************00330000
//*                                                                     00340000
//PASO06 EXEC PGM=MAILOPER,COND=(04,EQ,PASO07),                         00350000
//   PARM=('/OPERADOR, FAVOR DE MONTAR LA CINTA DE',                    00360000
//             ' RESPALDO DE PROCESO ANUAL EN LA PRT209     ',          00370000
//             ' CONTESTE  SI ')                                        00380000
//*                                                                     00390000
//**********************************************************************00400000
//*           --- SI EL MES EN PROCESO ES EL 12 ---                    *00410000
//*           ---        EJECUTA ESTE PASO       ---                   *00420000
//*           ---  PARA RESPALDAR TABLAS A CINTA ---                   *00430000
//**********************************************************************00440000
//*                                                                     00450000
//**********************************************************************00460000
//*                          === IKJEFT01 ===                          *00470000
//* OBJETIVO : COPIAR A CINTA LA TABLA PARAM.                          *00480000
//**********************************************************************00490000
//*                                                                     00500000
//PASO05 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(04,EQ,PASO07),             00510000
//         TIME=100                                                     00520000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//           DD  DSN=LDB2MXP1.DBP1.RUNLIB.LOAD,DISP=SHR                 00540000
//SYSTSPRT   DD  SYSOUT=*                                               00550000
//SYSTSIN    DD  DSN=SIVA.PARMXXP(PARM126),DISP=SHR                     00560000
//SYSPUNCH   DD  DSN=SIVA.PARMXXP(ANUAL01),DISP=SHR                     00570000
//SYSPRINT   DD  SYSOUT=*                                               00580000
//SYSREC00   DD  DSN=PARAM,DISP=(,PASS),UNIT=TAPE,VOL=SER=PRT209,       00590000
//     LABEL=(1,SL)                                                     00600000
//SYSIN      DD  DSN=SIVA.PARMXXP(PARM128),DISP=SHR                     00610000
//*                                                                     00620000
//**********************************************************************00630000
//*                          === IKJEFT01 ===                          *00640000
//* OBJETIVO : COPIAR A CINTA LA TABLA CTAMAES.                        *00650000
//**********************************************************************00660000
//*                                                                     00670000
//PASO04 EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(04,EQ,PASO07),             00680000
//         TIME=100                                                     00690000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//           DD  DSN=LDB2MXP1.DBP1.RUNLIB.LOAD,DISP=SHR                 00710000
//SYSTSPRT   DD  SYSOUT=*                                               00720000
//SYSTSIN    DD  DSN=SIVA.PARMXXP(PARM126),DISP=SHR                     00730000
//SYSPUNCH   DD  DSN=SIVA.PARMXXP(ANUAL02),DISP=SHR                     00740000
//SYSPRINT   DD  SYSOUT=*                                               00750000
//SYSREC00   DD  DSN=CTAMAES,DISP=(,KEEP),UNIT=TAPE,VOL=SER=PRT209,     00760000
//    LABEL=(2,SL)                                                      00770000
//SYSIN      DD  DSN=SIVA.PARMXXP(PARM127),DISP=SHR                     00780000
//*                                                                     00790000
//**********************************************************************00800000
//*           --- CALCULO  DEL  SALDO  MENSUAL ---                     *00810000
//*                      --- VOB895O ---                               *00820000
//********************************************************************* 00830000
//*                                                                     00840000
//PASO03  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M                       00850000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//        DD DSN=SYS1.COB2CLIB,DISP=SHR                                 00870000
//        DD DSN=SYS1.COB2COMP,DISP=SHR                                 00880000
//FOLCTRL  DD DSN=MXCP.ZM.VSL.FOLCTRL,                                  00890000
//            DISP=SHR                                                  00900000
//VOB895A1 DD DSN=&&ARCH,                                               00910000
//          DISP=(NEW,PASS),                                            00920000
//          DCB=(DSORG=PS,RECFM=FB,LRECL=289,BLKSIZE=0),                00930000
//          UNIT=SYSDA,                                                 00940000
//          SPACE=(TRK,(1,1))                                           00950000
//SYSOUT   DD SYSOUT=&SALS                                              00960000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    00970000
//SYSPRINT DD SYSOUT=X                                                  00980000
//SYSDBOUT DD SYSOUT=X                                                  00990000
//SYSABOUT DD SYSOUT=X                                                  01000000
//SYSUDUMP DD DUMMY                                                     01010000
//VOB895R1 DD SYSOUT=(&SALU,&CICS,&UZPR)                                01020000
//SYSTSIN  DD DSN=SIVA.PARMXXP(PARAMF2),DISP=SHR                        01030000
//********************************************************************* 01040000
//*         REPORTE DE ESTADISTICAS POR CLIENTE                         01050000
//*                  VOB894O                                            01060000
//********************************************************************* 01070000
//PASO02  EXEC PGM=IKJEFT01,DYNAMNBR=20,COND=(4,LT,PASO03),REGION=4M    01080000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//        DD DSN=SYS1.COB2CLIB,DISP=SHR                                 01100000
//        DD DSN=SYS1.COB2COMP,DISP=SHR                                 01110000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    01120000
//SYSPRINT DD SYSOUT=X                                                  01130000
//SYSOUT   DD SYSOUT=&SALS                                              01140000
//VOB894A1 DD DSN=&&ARCH,                                               01150000
//           DISP=(OLD,PASS)                                            01160000
//VOB894R1 DD SYSOUT=(&SALU,&CICS,&UZPR)                                01170000
//SORTWK01 DD UNIT=SYSDA,SPACE=(CYL,(1))                                01180000
//SORTWK02 DD UNIT=SYSDA,SPACE=(CYL,(1))                                01190000
//SORTWK03 DD UNIT=SYSDA,SPACE=(CYL,(1))                                01200000
//SORTWK04 DD UNIT=SYSDA,SPACE=(CYL,(1))                                01210000
//SORTWK05 DD UNIT=SYSDA,SPACE=(CYL,(1))                                01220000
//SORTWK06 DD UNIT=SYSDA,SPACE=(CYL,(1))                                01230000
//SYSDBOUT DD SYSOUT=X                                                  01240000
//SYSABOUT DD DUMMY                                                     01250000
//SYSUDUMP DD DUMMY                                                     01260000
//SYSTSIN  DD DSN=SIVA.PARMXXP(PARAMF3),DISP=SHR                        01270000
//**********************************************************************01280000
//**********************************************************************01290000
//*           --- SI EL MES EN PROCESO ES EL 12  ---                   *01300000
//*           --EJECUTA PROGRAMA DE PROCESO ANUAL --                   *01310000
//*                     ---  VOB812O   ---                             *01320000
//**********************************************************************01330000
//*                                                                     01340000
//PASO01  EXEC PGM=IKJEFT01,DYNAMNBR=20,REGION=4M,COND=(4,EQ,PASO07)    01350000
//STEPLIB  DD  DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD  DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR                      01497705
//        DD DSN=SYS1.COB2CLIB,DISP=SHR                                 01370000
//        DD DSN=SYS1.COB2COMP,DISP=SHR                                 01380000
//*                                                                     01390000
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0                                    01400000
//SYSPRINT DD SYSOUT=X                                                  01410000
//SYSOUT   DD SYSOUT=X                                                  01420000
//SYSDBOUT DD SYSOUT=X                                                  01430000
//SYSABOUT DD DUMMY                                                     01440000
//SYSUDUMP DD DUMMY                                                     01450000
//*                                                                     01460000
//SYSTSIN  DD DSN=SIVA.PARMXXP(PARM124),DISP=SHR                        01470000
//*                                                                     01480000
//*-------------------------------------------------------------------- 01490000
//*        AVISO EN CASO DE ERROR A LA CONSOLA                          01500000
//*-------------------------------------------------------------------- 01510000
//PASO00   EXEC PGM=MAILOPER,COND=(4,GE),                               01520000
//         PARM=('/ATENCION OPERADOR.AVISAR A SIVACIION QUE',           01530000
//             ' PROCESO CALCMENS TERMINO MAL.CONTESTAR SI',            01540000
//             'PARA TERMINAR')                                         01550000
//*-------------------------------------------------------------------- 01560000
