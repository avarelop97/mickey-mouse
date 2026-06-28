//ZMUEPM31 PROC
//*--------------------------------------------------------------------*
//* APLICATIVO  : ZM@ - ZIVA MULTIEMPRESA                              *
//* OBJETIVO    : ACTUALIZA MPRESAL Y MPREACT DE TABLA DE ZMDT831      *
//* PERIODICIDAD: MENSUAL                                              *
//* AUTOR       : FSW-DGCM(CCM)                                        *
//* FECHA       : 13 DE DICIEMBRE DE 2017                              *
//*--------------------------------------------------------------------*
//*            L O G    D E   M O D I F I C A C I O N E S              *
//*--------------------------------------------------------------------*
//*    MARCA     AUTOR    FECHA   DESCRIPCION                          *
//* ---------- --------- ------- ------------------------------------- *
//*  @MEX00-I  ......... ....... ..................................... *
//*--------------------------------------------------------------------*
//* PASO       : PUE31P99.                                             *
//* UTILERIA   : ADUUMAIN.                                             *
//* OBJETIVO   : DESCARGA COMPLETA DE LA TABLA ZMDT831                 *
//*--------------------------------------------------------------------*
//PUE31P99 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,PUE31P99,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMUEPM31.ZMDT831.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PUE31P99),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PUE31P98                                                *
//* PGM/UTIL : IKJEFT01/ZM4MU629                                       *
//* OBJETIVO : GENERA ARCHIVO PARA DESCARGA DE LA TABLA ZMDT831        *
//*--------------------------------------------------------------------*
//PUE31P98 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMSVFQS1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU627.ZMSVFQS1,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//ZMSVFQS2 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU627.ZMSVFQS2,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//ZMSVFQS3 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU627.ZMSVFQS3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//ZMSVFQS4 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU627.ZMSVFQS4,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//ZMSVFQS5 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU627.ZMSVFQS5,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=80,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE31T01),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : PUE31P97.                                             *
//* UTILERIA   : ADUUMAIN.                                             *
//* OBJETIVO   : DESCARGA DE LOS DATOS MES ANTERIOR OBTENIDO DE LAS    *
//*              ZMDT831 Y EDVALCA                                     *
//*--------------------------------------------------------------------*
//PUE31P97 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PUE31P97,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831VAN.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU627.ZMSVFQS1,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE31P95.                                             *
//* UTILERIA   : ADUUMAIN.                                             *
//* OBJETIVO   : DESCARGA DE LOS DATOS MES ACTUAL   OBTENIDO DE LAS    *
//*              ZMDT831 Y EDVALCA                                     *
//*--------------------------------------------------------------------*
//PUE31P95 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PUE31P95,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831VAC.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU627.ZMSVFQS2,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE31P85.                                             *
//* UTILERIA   : ADUUMAIN.                                             *
//* OBJETIVO   : DESCARGA DE LOS DATOS MES ACTUAL   OBTENIDO DE LAS    *
//*              ZMDT831 Y OPERACION - INFORMACION VENCIMIENTO REPORTO *
//*--------------------------------------------------------------------*
//PUE31P85 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PUE31P85,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831OPW.ANT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU627.ZMSVFQS3,DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : PUE31P80.                                             *
//* UTILERIA   : SORT                                                  *
//*--------------------------------------------------------------------*
//PUE31P80 EXEC PGM=ICEMAN,COND=(4,LT)
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831OPW.ANT.F&FECHA,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831OPW.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(500,250),RLSE),UNIT=3390,
//            DCB=(LRECL=484,RECFM=FB,BLKSIZE=0,DSORG=PS)
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PUE3175A),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE31P75.                                             *
//* UTILERIA   : ADUUMAIN.                                             *
//* OBJETIVO   : DESCARGA DE LOS DATOS MES ACTUAL   OBTENIDO DE LAS    *
//*              OPERACIONES DE REPORTO CON VENCIMIENTOS NO INCLUIDAS  *
//*              EN LA TABLA DE REFERENCIAL(ZMDT831)                   *
//*--------------------------------------------------------------------*
//PUE31P75 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,PUE31P75,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831OPX.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS),
//            SPACE=(CYL,(200,100),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU627.ZMSVFQS4,DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE31P70.                                             *
//* UTILERIA   : ICEMAN.                                               *
//*--------------------------------------------------------------------*
//PUE31P70 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831VAC.F&FECHA,
//            DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831VAN.F&FECHA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831PAA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=484,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//JNF1CNTL DD DSN=ZIVA.ZME.CONTROL(PUE3170A),DISP=SHR
//JNF2CNTL DD DSN=ZIVA.ZME.CONTROL(PUE3170B),DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PUE3170C),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO       : PUE31P65.                                             *
//* UTILERIA   : ICEMAN                                                *
//*--------------------------------------------------------------------*
//PUE31P65 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831VAC.F&FECHA,
//            DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831VAN.F&FECHA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831PAC.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=484,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//JNF1CNTL DD DSN=ZIVA.ZME.CONTROL(PUE3165A),DISP=SHR
//JNF2CNTL DD DSN=ZIVA.ZME.CONTROL(PUE3165B),DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PUE3165C),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*  PASO       : PUE31P60
//*  UTILERIA   : ICEMAN                                               *
//*--------------------------------------------------------------------*
//PUE31P60 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831PAA.F&FECHA,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831PAC.F&FECHA,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831POS.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=484,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PUE31P60),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO       : PUE31P63.                                             *
//* UTILERIA   : ICEMAN                                                *
//*--------------------------------------------------------------------*
//PUE31P63 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831OPX.F&FECHA,
//            DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831OPW.F&FECHA,
//            DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMUEPM31.OPERVEC.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=484,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//JNF1CNTL DD DSN=ZIVA.ZME.CONTROL(PUE3163A),DISP=SHR
//*JNF2CNTL DD DSN=ZIVA.ZME.CONTROL(PUE3163C),DISP=SHR
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PUE3163B),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PUE31P55                                                *
//* PGM/UTIL : ICEMAN                                                  *
//*--------------------------------------------------------------------*
//PUE31P55 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831OPW.F&FECHA,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ZMUEPM31.OPERVEC.F&FECHA,
//            DISP=SHR
//         DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831POS.F&FECHA,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831TOT.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            UNIT=3390,
//            SPACE=(CYL,(100,50),RLSE),
//            DCB=(RECFM=FB,LRECL=484,BLKSIZE=0,DSORG=PS)
//*
//QRLSDB2  DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(PUE31P55),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO     : PUE31P50                                                *
//* PGM/UTIL : IKJEFT01/ZM4MU626                                       *
//* OBJETIVO : ACTUALIZA MPRESAL Y MPREACT DE LA TABLA ZMDT831         *
//*--------------------------------------------------------------------*
//PUE31P50 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM3190E1 DD DSN=MXCP.ZM.FIX.ZMUEPM31.T831TOT.F&FECHA,
//            DISP=SHR
//*
//ZM3190S1 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU626.FORM.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=1443,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(300,150),RLSE)
//*
//ZM3190S2 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU626.ACTU.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=837,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(300,150),RLSE)
//*
//ZM3190S3 DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU626.INCI.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=344,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(300,150),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=MXCP.ZM.FIX.ECT.EBCM.ZM4MU627.ZMSVFQS5,
//            DISP=SHR
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE31T04),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMUEPM31 SIVA MULTIEMPRESA                  *
//**********************************************************************
