//ZMPPO127 PROC
//*
//*--------------------------------------------------------------------*
//* PROYECTO     : ZM - MODULO DE SIVA MULTI EMPRESA ALTAMIRIZADO.     *
//* PROCESO      : ZMPPO127.                                           *
//* PERIODICIDAD : CICLICO.                                            *
//* OBJETIVO     : GENERA REPORTE DE EFECTIVO DE PROMOTORES.           *
//* REALIZO      : TECNOCOM.                                           *
//* FECHA        : 21 DE AGOSTO DEL 2018.                              *
//*--------------------------------------------------------------------*
//*         L O G    D E   M O D I F I C A C I O N E S                 *
//*--------------------------------------------------------------------*
//*    MARCA      AUTOR    FECHA  DESCRIPCION                          *
//* ----------- --------- ------- ------------------------------------ *
//* FS-0.0.0-00 XXXXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*                               XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX *
//*--------------------------------------------------------------------*
//* PASO       : ZM127195                                              *
//* UTILERIA   : IKJEFT01/ZM4C1271                                     *
//* OBJETIVO   : VALIDA EL PROMOTOR.                                   *
//*--------------------------------------------------------------------*
//ZM127195 EXEC PGM=IKJEFT01
//*
//E1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZMLLRL03.PARMS,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXC&AMB..ZM.FIX.REPEFE.PROMOT,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=178,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE)
//*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZM127195),
//             DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM127190                                              *
//* UTILERIA   : ZM3C1271                                              *
//* OBJETIVO   : GENERA CONTROL DE EXTRACCION DE LAS CUENTAS DEL       *
//*              PROMOTOR.                                             *
//*--------------------------------------------------------------------*
// IF (ZM127195.RC = 0) THEN
//ZM127190 EXEC PGM=ZM3C1271,PARM=('&AMB')
//*
//E1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZMLLRL03.PARMS,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.CONTROL.CUENTAS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(01,01),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM127185                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : GENERA ARCHIVO DE CUENTAS DEL PROMOTOR.               *
//*--------------------------------------------------------------------*
// IF (ZM127190.RC = 0) THEN
//ZM127185 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZM127185,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.CUENTAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=23,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.CONTROL.CUENTAS,
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM127180                                              *
//* UTILERIA   : ZM3C1272                                              *
//* OBJETIVO   : GENERA LAS CONTROL PARA LA DESCARGA DE OPERACIONES,   *
//*              EFECTIVOS Y TOTALES DEL PROMOTOR.                     *
//*--------------------------------------------------------------------*
//ZM127180 EXEC PGM=ZM3C1272,PARM=('&AMB'),COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZMLLRL03.PARMS,
//            DISP=SHR
//*
//E2DQ0002 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.CUENTAS,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.CONTROL.OPERAS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(01,01),RLSE)
//*
//S2DQ0002 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.CONTROL.EFECTIVO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(01,01),RLSE)
//*
//S3DQ0003 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.CONTROL.OPERATE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(01,01),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM127175                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : EXTRACCION DE LAS OPERACIONES DE LAS CUENTAS DEL      *
//*              PROMOTOR.                                             *
//*--------------------------------------------------------------------*
// IF (ZM127180.RC = 0) THEN
//ZM127175 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZM127175,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.OPERAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=46,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.CONTROL.OPERAS,
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM127170                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : EXTRACCION DEL EFECTIVO DEL PROMOTOR.                 *
//*--------------------------------------------------------------------*
//ZM127170 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZM127170,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.EFECVOS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=17,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.CONTROL.EFECTIVO,
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM127165                                              *
//* UTILERIA   : ZM3C1274                                              *
//* OBJETIVO   : UNIFICA LOS TOTALES DE LOS EFECTIVOS POR CADA CUENTA  *
//*              DEL PROMOTOR.                                         *
//*--------------------------------------------------------------------*
//ZM127165 EXEC PGM=ZM3C1274,COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.EFECVOS,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.EFECTIVO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=52,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(01,01),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM127160                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : EXTRACCION DE LAS CUENTAS QUE OPERARON DEL PROMOTOR.  *
//*--------------------------------------------------------------------*
//ZM127160 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZM127160,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.OPERATES,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=20,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.CONTROL.OPERATE,
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM127155                                              *
//* UTILERIA   : ZM3C1276                                              *
//* OBJETIVO   : UNIFICA LOS TOTALES DE LOS OPERATES.                  *
//*--------------------------------------------------------------------*
//ZM127155 EXEC PGM=ZM3C1276,COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.OPERATES,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.OPERATES.TOTAL,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=20,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(01,01),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM127150                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : EXTRAE EL GRUPO DE CONCEPT A PROCESAR.                *
//*--------------------------------------------------------------------*
//ZM127150 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.OPERAS,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.OPERAS.CONCEPTS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=46,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZM127150),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM127145                                              *
//* UTILERIA   : ZM3C1273                                              *
//* OBJETIVO   : GENERA LAS CONTROL PARA LA DESCARGA DE PRECIOS Y      *
//*              EMISIONES DE LAS OPERACIONES DEL PROMOTOR.            *
//*--------------------------------------------------------------------*
//ZM127145 EXEC PGM=ZM3C1273,PARM=('&AMB'),COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXC&AMB..ZM.FIX.ZMLLRL03.PARMS,
//            DISP=SHR
//*
//E2DQ0002 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.OPERAS.CONCEPTS,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.CONTROL.PRECIO,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(01,01),RLSE)
//*
//S2DQ0002 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.CONTROL.EMISORAS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(01,01),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM127140                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : GENERA ARCHIVO DE PRECIOS.                            *
//*--------------------------------------------------------------------*
// IF (ZM127145.RC = 0) THEN
//ZM127140 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZM127140,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.PRECIO,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1500,700),RLSE),
//            DCB=(RECFM=FB,LRECL=51,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.CONTROL.PRECIO,
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM127135                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : FILTRA EL ARCHIVO DE PRECIOS.                         *
//*--------------------------------------------------------------------*
//ZM127135 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.PRECIO,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.PRECIOS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1500,700),RLSE),
//            DCB=(RECFM=FB,LRECL=51,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZM127135),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM127130                                              *
//* UTILERIA   : ADUUMAIN                                              *
//* OBJETIVO   : GENERA ARCHIVO DE EMISIONES.                          *
//*--------------------------------------------------------------------*
//ZM127130 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZM127130,NEW,,MSGLEVEL(1)',COND=(4,LT)
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.EMISORAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(1000,500),RLSE),
//            DCB=(RECFM=FB,LRECL=28,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSPUNCH DD SYSOUT=*
//SYSCNTL  DD DUMMY
//*
//SYSIN    DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.CONTROL.EMISORAS,
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM127125                                              *
//* UTILERIA   : ZM3C1275                                              *
//* OBJETIVO   : SE ASIGNA PRECIO Y EMISIONES A CADA OPERACION.        *
//*--------------------------------------------------------------------*
//ZM127125 EXEC PGM=ZM3C1275,COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.OPERAS.CONCEPTS,
//            DISP=SHR
//*
//E2DQ0002 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.PRECIOS,
//            DISP=SHR
//*
//E3DQ0003 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.EMISORAS,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.OPERAS.PREYCTAS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=76,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(01,01),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM127120                                              *
//* UTILERIA   : ICEMAN                                                *
//* OBJETIVO   : EXTRAE EL GRUPO DE CONCEPT A PROCESAR.                *
//*--------------------------------------------------------------------*
//ZM127120 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.OPERAS.PREYCTAS,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.OPERAS.PREYCTAS.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=76,BLKSIZE=0,DSORG=PS)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZM127120),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM227135                                              *
//* UTILERIA   : IEFBR14                                               *
//* OBJETIVO   : GENERA EL ARCHIVO DE OPERACIONES DEL REPORTE.         *
//*--------------------------------------------------------------------*
// ELSE
//ZM227135 EXEC PGM=IEFBR14
//*
//SYSIN    DD DUMMY
//*
//DD1      DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.OPERAS.PREYCTAS.SORT,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=76,DSORG=PS)
//*
// ENDIF
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM227130                                              *
//* UTILERIA   : IEFBR14                                               *
//* OBJETIVO   : GENERA EL ARCHIVO DE OPERACIONES DEL REPORTE.         *
//*--------------------------------------------------------------------*
// ELSE
//ZM227130 EXEC PGM=IEFBR14
//*
//SYSIN    DD DUMMY
//*
//DD1      DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.OPERAS.PREYCTAS.SORT,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=76,DSORG=PS)
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM227125                                              *
//* UTILERIA   : IEFBR14                                               *
//* OBJETIVO   : GENERA EL ARCHIVO DE EFECTIVO PARA EL REPORTE.        *
//*--------------------------------------------------------------------*
//ZM227125 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//SYSIN    DD DUMMY
//*
//DD1      DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.EFECTIVO,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=52,DSORG=PS)
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM227120                                              *
//* UTILERIA   : IEFBR14                                               *
//* OBJETIVO   : GENERA EL ARCHIVO DE TOTALES PARA EL REPORTE.         *
//*--------------------------------------------------------------------*
//ZM227120 EXEC PGM=IEFBR14,COND=(4,LT)
//*
//SYSIN    DD DUMMY
//*
//DD1      DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.OPERATES.TOTAL,
//            DISP=(NEW,CATLG,CATLG),
//            UNIT=3390,SPACE=(CYL,(1,1),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,LRECL=20,DSORG=PS)
//*
// ENDIF
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM127115                                              *
//* UTILERIA   : ZM3C1277                                              *
//* OBJETIVO   : GENERA EL REPORTE DE EFECTIVOS DEL PROMOTOR.          *
//*--------------------------------------------------------------------*
//ZM127115 EXEC PGM=ZM3C1277,COND=(4,LT)
//*
//E1DQ0001 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.CUENTAS,
//            DISP=SHR
//*
//E2DQ0002 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.OPERAS.PREYCTAS.SORT,
//            DISP=SHR
//*
//E3DQ0003 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.EFECTIVO,
//            DISP=SHR
//*
//E4DQ0004 DD DSN=MXC&AMB..ZM.FIX.ZMLLRL03.PARMS,
//            DISP=SHR
//*
//E5DQ0005 DD DSN=MXC&AMB..ZM.TMP.ZMPPO127.OPERATES.TOTAL,
//            DISP=SHR
//*
//S1DQ0001 DD DSN=MXC&AMB..ZM.FIX.REPEFE.PROMOT,
//            DISP=(MOD,KEEP,KEEP),
//            DCB=(LRECL=178,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(1000,500),RLSE)
//*
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
// ENDIF
//*
// ENDIF
//*
//*--------------------------------------------------------------------*
//* PASO       : ZM127110.                                             *
//* UTILERIA   : IKJEFT01/ZM4DLE11.                                    *
//* OBJETIVO   : APAGA EVENTO DE EJECUCION DE REPORTE.                 *
//*--------------------------------------------------------------------*
//ZM127110 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXC&AMB..ZM.FIX.ZMLLRL03.PARMS,
//            DISP=SHR
//*
//QRLSDB2  DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSTSPRT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSABOUT DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZM127110),
//            DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                     FIN DEL PROCESO ZMPPO127                       *
//*--------------------------------------------------------------------*
