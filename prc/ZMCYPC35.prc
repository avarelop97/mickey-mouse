//ZMCYPC35 PROC
//**********************************************************************
//**                    C A S A   D E   B O L S A                      *
//**                    =========================                      *
//**                    <<< MERCADO DE DINERO >>>                      *
//**                                                                   *
//**  APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//**                                                                   *
//**  PROCEDIM. :  ZMCYPC35-SIVAXMUV                                   *
//**                                                                   *
//**  OBJETIVO  :  REPORTE DE EXENTOS DE  I.S.R.                       *
//**                                                                   *
//**  CORRE ANTES DE  :  NINGUNO                                       *
//**                                                                   *
//**  CORRE DESPUES DE:  NINGUNO                                       *
//**                                                                   *
//**  PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//**                                                                   *
//**********************************************************************
//**********************************************************************
//*         B I T A C O R A  D E  M O D I F I C A C I O N E S          *
//*         -------------------------------------------------          *
//*                                                                    *
//* N O M B R E                 D E S C R I P C I O N                  *
//* --------------------- -------------------------------------------  *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE OPERDIN                                 *
//**********************************************************************
//*
//PLC02P95 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC35,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.OPERDIN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y39),DISP=SHR
//*
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE CUENTA                                  *
//**********************************************************************
//*
//PLC02P90 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC35,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.CUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y40),DISP=SHR
//*
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE ZMDT440                                 *
//**********************************************************************
//*
//PLC02P85 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC35,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.ZMDT440,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y41),DISP=SHR
//*
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE ZMDT715                                 *
//**********************************************************************
//*
//PLC02P80 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC35,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.ZMDT715,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y42),DISP=SHR
//*
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE PERJUR                                 *
//**********************************************************************
//*
//PLC02P75 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC35,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.PERJUR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y43),DISP=SHR
//*
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE CONCEPT                                 *
//**********************************************************************
//*
//PLC02P70 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC35,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.CONCEPT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y44),DISP=SHR
//*
//**********************************************************************
//*                       SORT                                         *
//* OBJETIVO : TOMA LA DESCARGA DE OPERDIN Y GENERA UN ARCHIVO SOLO    *
//*            CON IOPERAS 625 Y 627                                   *
//**********************************************************************
//*
//PLC02P65 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.OPERDIN,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.OPER625,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=106,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y45),DISP=SHR
//*
//**********************************************************************
//*                       SORT                                         *
//* OBJETIVO : TOMA LA DESCARGA DE OPERDIN Y GENERA UN ARCHIVO SOLO    *
//*            CON IOPERAS 1008 Y 1155                                 *
//**********************************************************************
//*
//PLC02P60 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.OPERDIN,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.OPER1008,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=106,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y46),DISP=SHR
//*
//*********************************************************************
//*   PROGRAMA: ZM4CY036                                              *
//*   OBJETIVO: TOMA LA DESCARGA DE OPERDIN Y GENERA ARCHIVO CON      *
//*             LOS DATOS QUE SE PUEDEN LLENAR DE LA TABLA DEJANDO EN *
//*             UN SOLO REGISTRO POR IREF, CUENTA,CONCEPT,USUARIO,    *
//*             FOPERA, EL MONTO, INTERES E ISR SI ES QUE APLICA      *
//*             OPERAS 625, 627                                       *
//*********************************************************************
//PLC02P55 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM2083E1 DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.OPER625,DISP=SHR
//*
//ZM2083S1 DD DSN=MXCP.ZM.FIX.REPOISR.VERSION1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=103,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE30Y47),DISP=SHR
//*
//*********************************************************************
//*   PROGRAMA: ZM4CY037                                              *
//*   OBJETIVO: TOMA LA DESCARGA DE OPERDIN Y GENERA ARCHIVO CON      *
//*             LOS DATOS QUE SE PUEDEN LLENAR DE LA TABLA DEJANDO EN *
//*             UN SOLO REGISTRO POR IREF, CUENTA,CONCEPT,USUARIO,    *
//*             FOPERA, EL MONTO, INTERES E ISR SI ES QUE APLICA      *
//*             OPERAS 1008, 1155                                     *
//*********************************************************************
//PLC02P50 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM2083E1 DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.OPER1008,DISP=SHR
//*
//ZM2083S1 DD DSN=MXCP.ZM.FIX.REPOISR.VERSION2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=103,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE30Y48),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO : JUNTA LA INFORMACION DE OPERDIN DE TODOS LOS IOPERAS    *
//**********************************************************************
//*
//PLC02P45 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REPOISR.VERSION1,DISP=SHR
//*
//         DD DSN=MXCP.ZM.FIX.REPOISR.VERSION2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REPOISR.VERSION3,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=103,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y49),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* MATCH ENTRE ARCHIVO CON DESCARGA DE CUENTA Y PERJUR POR LOS CAMPOS *
//* IPERJUR, ISUBCLAS PARA OBTENER LA PERSONALIDAD JURIDICA  SPERJUR   *
//**********************************************************************
//*
//PLC02P40 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.CUENTA,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.PERJUR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.SPERJUR,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=12,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y50),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* MATCH ENTRE ARCHIVO CON LA INFORMACION DE CUENTA Y PERJUR Y EL     *
//* ARCHIVO CON LOS DATOS DE OPERDIN PARA ADICIONAR LOS CAMPOS IPERJUR *
//* ISUBCLAS Y SPERJUR, EL MATCH VA POR NUMERO DE CUENTA               *
//**********************************************************************
//*
//PLC02P35 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.REPOISR.VERSION3,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.SPERJUR,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REPOISR.VERSION4,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=105,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y51),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* MATCH ENTRE ARCHIVO CON LA INFORMACION DE OPERDIN-CUENTA-PERJUR Y  *
//* ARCHIVO CON LOS DATOS DE ZMDT440 PARA ADICIONAR LOS CAMPOS TIPOINST*
//* IPOLITICA, EL MATCH VA POR EMISORA-SERIE                           *
//**********************************************************************
//*
//PLC02P30 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.REPOISR.VERSION4,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.ZMDT440,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REPOISR.VERSION5,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=107,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y52),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* MATCH ENTRE ARCHIVO CON INFORMACION DE OPERDIN-CUENTA-PERJUR-ZM440 *
//* Y ARCHIVO CON LOS DATOS DE ZMDT715 PARA ADICIONAR LOS CAMPOS DE    *
//* LAS TASAS, EL MATCH VA POR EMISORA-SERIE                           *
//**********************************************************************
//*
//PLC02P25 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.REPOISR.VERSION5,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.ZMDT715,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REPOISR.VERSION6,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=132,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y53),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* MATCH ENTRE ARCHIVO DE OPERDIN-CUENTA-PERJUR-ZMDT440-ZMDT715 Y EL  *
//* ARCHIVO CON LOS DATOS DE CONCEPT PARA ADICIONAR EL CAMPO  DE       *
//* ABURSA, EL MATCH VA POR CONCEPT                                    *
//**********************************************************************
//*
//PLC02P20 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.REPOISR.VERSION6,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.DESCARGA.IS2.CONCEPT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REPOISR.VERSION7,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=138,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y54),DISP=SHR
//*
//*********************************************************************
//*   PROGRAMA: ZM4CY038                                              *
//*   OBJETIVO: GENERAR REPORTE CON LAS OPERACIONES CON NUEVA TABLA   *
//*             PERJUR PARA REVISION FISCAL Y VALIDACION DE ISR       *
//*********************************************************************
//PLC02P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM2083E1 DD DSN=MXCP.ZM.FIX.REPOISR.VERSION7,DISP=SHR
//*
//ZM2083S1 DD DSN=MXCP.ZM.FIX.REPORTE.PERJUR.ISR,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=250,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE30Y55),DISP=SHR
//*
