//ZMCYPC37 PROC
//**********************************************************************
//**                    C A S A   D E   B O L S A                      *
//**                    =========================                      *
//**                    <<< MERCADO DE DINERO >>>                      *
//**                                                                   *
//**  APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//**                                                                   *
//**  PROCEDIM. :  ZMCYPC37-SIVAXMUV                                   *
//**                                                                   *
//**  OBJETIVO  :  REPORTE DE MOVIMIENTOS DE MDD                       *
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
//*                       UNLOAD                                       *
//*                DESCARGA DE OPERDIN                                 *
//**********************************************************************
//*
//PLC02P95 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMCYPC37,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.OPC865.OPERDIN,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=129,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//*
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y69),DISP=SHR
//*
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE CONCEPT                                 *
//**********************************************************************
//*
//PLC02P90 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC37,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.OPC865.CONCEPT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=27,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//*
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y70),DISP=SHR
//*
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE OPERA                                   *
//**********************************************************************
//*
//PLC02P85 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC37,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.OPC865.OPERA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=113,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//*
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y71),DISP=SHR
//*
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE CUENTA                                  *
//**********************************************************************
//*
//PLC02P80 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC37,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.DESCARGA.OPC865.CUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=7,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSCNTL  DD DUMMY                                                     00024000
//*
//UTPRINT  DD SYSOUT=*                                                  00024100
//SYSPRINT DD SYSOUT=*                                                  00024200
//SYSUDUMP DD SYSOUT=*                                                  00024300
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y72),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* MATCH ENTRE ARCHIVO CON DESCARGA DE OPERDIN Y CONCEPT POR EL CAMPO *
//* ICONCEPT, PARA AGREGAR EL CAMPO ITVBMV                             *
//**********************************************************************
//*
//PLC02P75 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.DESCARGA.OPC865.OPERDIN,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.DESCARGA.OPC865.CONCEPT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MATCH865.OPERDIN.CONCEPT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y73),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* MATCH ENTRE EL ARCHIVO CON DATOS DE OPERDIN Y CONCEPT CONTRA LA    *
//* DESCARGA DE CUENTA POR ICUENTA, PARA DESCARTAR LOS CONTRAROS QUE   *
//* TENGAN IESTRATO 'CAS','PRV'                                        *
//**********************************************************************
//*
//PLC02P73 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.MATCH865.OPERDIN.CONCEPT,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.DESCARGA.OPC865.CUENTA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MATCH865.OPERDIN.CUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=133,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y74),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* MATCH ENTRE ARCHIVO CON DESCARGA DE OPERA   Y CONCEPT POR EL CAMPO *
//* ICONCEPT, PARA AGREGAR LOS CAMPOS IEMISORA, ISERIE, ITVBMV         *
//**********************************************************************
//*
//PLC02P70 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.DESCARGA.OPC865.OPERA,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.DESCARGA.OPC865.CONCEPT,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MATCH865.OPERA.CONCEPT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=134,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y75),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* MATCH ENTRE ARCHIVO CON LA INFORMACION DE OPERA Y CUENTA POR NUMERO*
//* DE CONTRARO, PARA DEJAR UNICAMENTE LOS QUE SON ISUCCASA 032        *
//**********************************************************************
//*
//PLC02P65 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.MATCH865.OPERA.CONCEPT,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.DESCARGA.OPC865.CUENTA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MATCH865.OPERA.CUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=134,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y76),DISP=SHR
//*
//*********************************************************************
//*   PROGRAMA: ZM4CY041                                              *
//*   OBJETIVO: GENERAR ARCHIVO CON LAS OPERACIONES DE LA TABLA       *
//*             OPERDIN (FIDEICOMISOS ) SOLO LAS QUE TENGAN LA FECHA  *
//*             DE LIQUIDACION ENVIADA                                *
//*********************************************************************
//PLC02P60 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM2083E1 DD DSN=MXCP.ZM.FIX.MATCH865.OPERDIN.CUENTA,DISP=SHR
//*
//ZM2083E2 DD DSN=MXCP.ZM.FIX.ZMLLRL02.PARMS,DISP=SHR
//*
//ZM2083S1 DD DSN=MXCP.ZM.FIX.OPC865.OPERDIN.FIDEIC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=160,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE30Y77),DISP=SHR
//*
//*********************************************************************
//*   PROGRAMA: ZM4CY042                                              *
//*   OBJETIVO: GENERAR ARCHIVO CON LAS OPERACIONES DE LA TABLA       *
//*             OPERA   (FIDEICOMISOS ) SOLO LAS QUE TENGAN LA FECHA  *
//*             DE LIQUIDACION ENVIADA                                *
//*********************************************************************
//PLC02P55 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM2083E1 DD DSN=MXCP.ZM.FIX.MATCH865.OPERA.CUENTA,DISP=SHR
//*
//ZM2083E2 DD DSN=MXCP.ZM.FIX.ZMLLRL02.PARMS,DISP=SHR
//*
//ZM2083S1 DD DSN=MXCP.ZM.FIX.OPC865.OPERA.FIDEIC,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=160,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE30Y78),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO : JUNTA LA INFORMACION DE OPERDIN Y OPERA EN UNO SOLO     *
//**********************************************************************
//*
//PLC02P50 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.OPC865.OPERDIN.FIDEIC,DISP=SHR
//*
//         DD DSN=MXCP.ZM.FIX.OPC865.OPERA.FIDEIC,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.OPC865.OPERDIN.OPERA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=160,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y79),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO : PREPARA ARCHIVO CON LOS MOVIMIENTOS FIDEICOMISOS  PARA  *
//*            TRANSMISION A USUARIO                                   *
//**********************************************************************
//*
//PLC02P45 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.OPC865.OPERDIN.OPERA,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.OPC865.MOVTOS.FIDEIC,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=153,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y80),DISP=SHR
//*
//**********************************************************************
//*  PASO:     PLC02P40                                                *
//*  PROGRAMA: ZM4DLE11                                                *
//*  OBJETIVO  APAGA EVENTO DE EJECUCION DE REPORTE                    *
//**********************************************************************
//PLC02P40 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.FIX.ZMLLRL02.PARMS,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUE30Y81),DISP=SHR
//*
