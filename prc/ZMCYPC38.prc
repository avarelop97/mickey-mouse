//ZMCYPC38 PROC
//**********************************************************************
//**                    C A S A   D E   B O L S A                      *
//**                    =========================                      *
//**                    <<< MERCADO DE DINERO >>>                      *
//**                                                                   *
//**  APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//**                                                                   *
//**  PROCEDIM. :  ZMCYPC38-SIVAXMUV                                   *
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
//**********************************************************************
//*   PROGRAMA: ZM4CY043                                               *
//*   OBJETIVO: GENERAR ARCHIVO CON FORMATO PARA LA DESCARGA  DE LOS   *
//*             MOVIMIENTOS DE LA TABLA ZMDT612 DE LA FECHA LIQUIDACION*
//*              ENVIADA                                               *
//**********************************************************************
//PLC02P95 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM2083E1 DD DSN=MXCP.ZM.FIX.ZMLLRL04.PARMS,DISP=SHR
//*
//ZM2083S1 DD DSN=MXCP.ZM.FIX.PARAM.LIQUI.ZM612,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=80,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//ZM2083S2 DD DSN=MXCP.ZM.FIX.PARAM.LIQUI.ZM612.CUS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=80,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE30Y82),DISP=SHR
//*
//**********************************************************************
//*   PROGRAMA: ZM4CY044                                               *
//*   OBJETIVO: GENERAR ARCHIVO CON FORMATO PARA LA DESCARGA  DE LOS   *
//*             MOVIMIENTOS DE LA TABLA ZMDT624 DE LA FECHA LIQUIDACION*
//*             ENVIADA                                                *
//**********************************************************************
//PLC02P90 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM2083E1 DD DSN=MXCP.ZM.FIX.ZMLLRL04.PARMS,DISP=SHR
//*
//ZM2083S1 DD DSN=MXCP.ZM.FIX.PARAM.LIQUI.ZM624,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=80,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//ZM2083S2 DD DSN=MXCP.ZM.FIX.PARAM.LIQUI.ZM624.CAP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=80,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE30Y83),DISP=SHR
//*
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE ZMDT612                                 *
//**********************************************************************
//*
//PLC02P85 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC38,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.UNLOAD.LIQUI.ZM612,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.PARAM.LIQUI.ZM612,
//            DISP=SHR
//*
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE ZMDT612 CUS                             *
//**********************************************************************
//*
//PLC02P80 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC38,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.UNLOAD.LIQUI.ZM612.CUS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.PARAM.LIQUI.ZM612.CUS,
//            DISP=SHR
//*
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE ZMDT624 IND                             *
//**********************************************************************
//*
//PLC02P75 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC38,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.UNLOAD.LIQUI.ZM624.IND,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.PARAM.LIQUI.ZM624,
//            DISP=SHR
//*
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE ZMDT624 CAP                             *
//**********************************************************************
//*
//PLC02P70 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC38,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.UNLOAD.LIQUI.ZM624.CAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=MXCP.ZM.FIX.PARAM.LIQUI.ZM624.CAP,
//            DISP=SHR
//*
//**********************************************************************
//*                       UNLOAD                                       *
//*                DESCARGA DE OPERA                                   *
//**********************************************************************
//*
//PLC02P65 EXEC PGM=ADUUMAIN,COND=(0,NE),
//         PARM='MXP1,ZMCYPC38,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//         DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//PI601765 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.UNLOAD.LIQUI.OPERAS,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=200,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y90),DISP=SHR
//*
//**********************************************************************
//*                          --- S O R T---                            *
//* ORDENADO POR: IREF, ISEC, IOPERA,  (IND)                           *
//**********************************************************************
//PLC02P60 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.UNLOAD.LIQUI.ZM624.IND,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.UNLOAD.ZM624.IND.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=30,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y91),DISP=SHR
//*
//**********************************************************************
//*                          --- S O R T---                            *
//* ORDENADO POR: IREF, ISEC, IOPERA,  (CAP)                           *
//**********************************************************************
//PLC02P55 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.UNLOAD.LIQUI.ZM624.CAP,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.UNLOAD.ZM624.CAP.SORT,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=30,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y92),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* MATCH ENTRE ARCHIVO CON DESCARGA DE ZMDT624 (IND) Y OPERA POR LOS  *
//* CAMPOS, IREF, ISEC, IOPERA PARA OBTENER TODOS LOS REGISTROS QUE SI *
//* HACEN MATCH                                                        *
//**********************************************************************
//*
//PLC02P50 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.UNLOAD.ZM624.IND.SORT,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.UNLOAD.LIQUI.OPERAS,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MATCH751.SIZM624.IND,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=35,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y93),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* MATCH ENTRE ARCHIVO CON DESCARGA DE ZMDT624 (IND) Y OPERA POR LOS  *
//* CAMPOS, IREF, ISEC, IOPERA PARA OBTENER TODOS LOS REGISTROS QUE NO *
//* HACEN MATCH                                                        *
//**********************************************************************
//*
//PLC02P45 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.UNLOAD.ZM624.IND.SORT,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.UNLOAD.LIQUI.OPERAS,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MATCH751.NOZM624.IND,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=30,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y94),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* MATCH ENTRE ARCHIVO CON DESCARGA DE ZMDT624 (CAP) Y OPERA POR LOS  *
//* CAMPOS, IREF, ISEC, IOPERA PARA OBTENER TODOS LOS REGISTROS QUE SI *
//* HACEN MATCH                                                        *
//**********************************************************************
//*
//PLC02P40 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.UNLOAD.ZM624.CAP.SORT,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.UNLOAD.LIQUI.OPERAS,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MATCH751.SIZM624.CAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=35,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y95),DISP=SHR
//*
//**********************************************************************
//*                          --- ICEMAN ---                            *
//* MATCH ENTRE ARCHIVO CON DESCARGA DE ZMDT624 (IND) Y OPERA POR LOS  *
//* CAMPOS, IREF, ISEC, IOPERA PARA OBTENER TODOS LOS REGISTROS QUE NO *
//* HACEN MATCH                                                        *
//**********************************************************************
//*
//PLC02P35 EXEC PGM=ICEMAN,COND=(4,LT)
//*
//SORTJNF1 DD DSN=MXCP.ZM.FIX.UNLOAD.ZM624.CAP.SORT,DISP=SHR
//*
//SORTJNF2 DD DSN=MXCP.ZM.FIX.UNLOAD.LIQUI.OPERAS,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.MATCH751.NOZM624.CAP,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=30,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(400,200),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y96),DISP=SHR
//*
//**********************************************************************
//*   PROGRAMA: ZM4CY045                                               *
//*   OBJETIVO: GENERAR ARCHIVO CON LOS MOVIMIENTOS DE TODAS LAS       *
//*             OPERACIONES DE LA OPCION 751 DE LA FECHA DE LIQUIDACION*
//*             ENVIADA                                                *
//**********************************************************************
//PLC02P30 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM2083E1 DD DSN=MXCP.ZM.FIX.UNLOAD.LIQUI.ZM612,DISP=SHR
//*
//ZM2083S1 DD DSN=MXCP.ZM.FIX.REPOR.LIQUI.ZM612,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=140,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE30Y84),DISP=SHR
//*
//**********************************************************************
//*   PROGRAMA: ZM4CY046                                               *
//*   OBJETIVO: GENERAR ARCHIVO CON LOS MOVIMIENTOS DE TODAS LAS       *
//*             OPERACIONES DE LA OPCION CUS DE LA FECHA DE LIQUIDACION*
//*             ENVIADA                                                *
//**********************************************************************
//PLC02P25 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM2083E1 DD DSN=MXCP.ZM.FIX.UNLOAD.LIQUI.ZM612.CUS,DISP=SHR
//*
//ZM2083S1 DD DSN=MXCP.ZM.FIX.REPOR.LIQUI.ZM612.CUS,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=140,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE30Y85),DISP=SHR
//*
//**********************************************************************
//*   PROGRAMA: ZM4CY047                                               *
//*   OBJETIVO: GENERAR ARCHIVO CON LOS MOVIMIENTOS DE TODAS LAS       *
//*             OPERACIONES DE LA OPCION IND DE LA FECHA DE LIQUIDACION*
//*             ENVIADA (LAS QUE HICIERON MATCH)                       *
//**********************************************************************
//PLC02P20 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM2083E1 DD DSN=MXCP.ZM.FIX.MATCH751.SIZM624.IND,DISP=SHR
//*
//ZM2083S1 DD DSN=MXCP.ZM.FIX.REPOR.LIQUI.ZM624.IND1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=140,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE30Y86),DISP=SHR
//*
//**********************************************************************
//*   PROGRAMA: ZM4CY049                                               *
//*   OBJETIVO: GENERAR ARCHIVO CON LOS MOVIMIENTOS DE TODAS LAS       *
//*             OPERACIONES DE LA OPCION IND DE LA FECHA DE LIQUIDACION*
//*             ENVIADA (LAS QUE NO HICIERON MATCH)                    *
//**********************************************************************
//PLC02P15 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM2083E1 DD DSN=MXCP.ZM.FIX.MATCH751.NOZM624.IND,DISP=SHR
//*
//ZM2083S1 DD DSN=MXCP.ZM.FIX.REPOR.LIQUI.ZM624.IND2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=140,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE30Y97),DISP=SHR
//*
//**********************************************************************
//*   PROGRAMA: ZM4CY048                                               *
//*   OBJETIVO: GENERAR ARCHIVO CON LOS MOVIMIENTOS DE TODAS LAS       *
//*             OPERACIONES DE LA OPCION CAP DE LA FECHA DE LIQUIDACION*
//*             ENVIADA (LAS QUE HICERON MATCH)                        *
//**********************************************************************
//PLC02P10 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM2083E1 DD DSN=MXCP.ZM.FIX.MATCH751.SIZM624.CAP,DISP=SHR
//*
//ZM2083S1 DD DSN=MXCP.ZM.FIX.REPOR.LIQUI.ZM624.CAP1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=140,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE30Y87),DISP=SHR
//*
//**********************************************************************
//*   PROGRAMA: ZM4CY050                                               *
//*   OBJETIVO: GENERAR ARCHIVO CON LOS MOVIMIENTOS DE TODAS LAS       *
//*             OPERACIONES DE LA OPCION CAP DE LA FECHA DE LIQUIDACION*
//*             ENVIADA (LAS QUE HICERON MATCH)                        *
//**********************************************************************
//PLC02P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZM2083E1 DD DSN=MXCP.ZM.FIX.MATCH751.NOZM624.CAP,DISP=SHR
//*
//ZM2083S1 DD DSN=MXCP.ZM.FIX.REPOR.LIQUI.ZM624.CAP2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(RECFM=FB,DSORG=PS,LRECL=140,BLKSIZE=0),
//            SPACE=(CYL,(10,05),RLSE),UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSIN    DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZUE30Y98),DISP=SHR
//*
//**********************************************************************
//*                     * SORT   *                                     *
//* OBJETIVO : JUNTA LA INFORMACION DE TODAS LAS OPCIONES              *
//**********************************************************************
//*
//PLC02P04 EXEC PGM=ICEMAN,COND=(4,LT)
//PI601765 DD  DUMMY
//SYSOUT   DD SYSOUT=*
//*
//SORTIN   DD DSN=MXCP.ZM.FIX.REPOR.LIQUI.ZM612,DISP=SHR
//*
//         DD DSN=MXCP.ZM.FIX.REPOR.LIQUI.ZM612.CUS,DISP=SHR
//*
//         DD DSN=MXCP.ZM.FIX.REPOR.LIQUI.ZM624.IND1,DISP=SHR
//*
//         DD DSN=MXCP.ZM.FIX.REPOR.LIQUI.ZM624.IND2,DISP=SHR
//*
//         DD DSN=MXCP.ZM.FIX.REPOR.LIQUI.ZM624.CAP1,DISP=SHR
//*
//         DD DSN=MXCP.ZM.FIX.REPOR.LIQUI.ZM624.CAP2,DISP=SHR
//*
//SORTOUT  DD DSN=MXCP.ZM.FIX.REPOR.OPC751.LIQUI,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(DSORG=PS,LRECL=140,RECFM=FB,BLKSIZE=0),
//            SPACE=(CYL,(80,40),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZUE30Y88),DISP=SHR
//*
//**********************************************************************
//*  PASO:     PLC02P40                                                *
//*  PROGRAMA: ZM4DLE11                                                *
//*  OBJETIVO  APAGA EVENTO DE EJECUCION DE REPORTE                    *
//**********************************************************************
//PLC02P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLE11A1 DD DSN=MXCP.ZM.FIX.ZMLLRL04.PARMS,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//*
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZUE30Y89),DISP=SHR
//*
