//ZMGLPZ48 PROC
//**********************************************************************
//*  SISTEMA    : SISTEMA INTEGRAL DE VALORES (S.I.V.A.)               *
//*  PROCESO    : ZMGLPZ48                                             *
//*  OBJETIVO   : SE GENERA UN REPORTE DE OPERACIONES DE COMPRAS Y VTAS*
//*               DE SOCIEDADES DE INVERSION DE MANERA SEMESTRAL       *
//*  FECHA      : SEPTIEMRE 2018                                       *
//**********************************************************************
//*                  LOG DE MODIFICACIONES                             *
//**********************************************************************
//* MODIFI       AUTOR     FECHA    DESCRIPCION                        *
//* ----------- --------- -------- ----------------------------------- *
//*  @TMRY      MB59217   09OCT19  SE AGREGAN LLAMADOS A PRCS ANUAL    *
//**********************************************************************
//*
//**********************************************************************
//* PASO     : PGL48P06                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PRUEBSVP.ZMDT107 DONDE SE OBTIENEN *
//*            TODAS LAS CANCELACIONES QUE SE HAYAN REALIZADO DURANTE  *
//*            EL PERIODO DE LOS ULTIMOS 6 MESES.                      *
//**********************************************************************
//PGL48P06  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMGLPZ48,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBGLPZ48.DESCA107.CANCELA,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL48T06),DISP=SHR
//*
//*@TMRY-I
// IF (&MES=01) THEN
//**********************************************************************
//* PASO     : PGL48P05                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PRUEBSVP.ZMDT107 DONDE SE OBTIENEN *
//*            TODAS LAS CANCELACIONES QUE SE HAYAN REALIZADO DURANTE  *
//*            EL PERIODO DEL ULTIMO ANIO.                             *
//**********************************************************************
//PGL48P05  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMGLPZ48,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBGLPZ48.DESCA107.CANCELA.ANUAL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL48T09),DISP=SHR
//*
// ENDIF
//*@TMRY-F
//*
//**********************************************************************
//* PASO     : PGL48P04                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PRUEBSVP.ZMDT107 DONDE SE OBTIENEN *
//*            TODAS LAS COMPRAS Y VENTAS QUE SE HAYAN REALIZADO DURAN-*
//*            TE EL PERIODO DE LOS ULTIMOS 6 MESES.                   *
//**********************************************************************
//PGL48P04  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,CBGLPZ48,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBGLPZ48.DESCA107.COMPRAS,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL48T04),DISP=SHR
//*
//*@TMRY-I
// IF (&MES=01) THEN
//**********************************************************************
//* PASO     : PGL48P4A                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PRUEBSVP.ZMDT107 DONDE SE OBTIENEN *
//*            TODAS LAS COMPRAS Y VENTAS QUE SE HAYAN REALIZADO DURAN-*
//*            TE EL PERIODO DEL ULTIMO ANIO.                          *
//**********************************************************************
//PGL48P4A  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,CBGLPZ48,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBGLPZ48.DESCA107.COMPRAS.ANUAL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL48T08),DISP=SHR
// ENDIF
//*@TMRY-F
//*
//**********************************************************************
//* PASO     : PGL48P03                                                *
//* PROGRAMA : ZM3PLDFE                                                *
//* OBJETIVO : PROGRAMA QUE GENERA LA FECHA DEL SISTEMA A PARTIR DEL   *
//*            ODATE.                                                  *
//*--------------------------------------------------------------------*
//PGL48P03 EXEC PGM=ZM3PLDFE,PARM=('&FECHA'),COND=(4,LT)
//ARCHDATE DD DSN=MXCP.ZM.FIX.CBGLPZ48.DATE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1,1),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//*
//**********************************************************************
//* PASO    : PGL48P02                                                 *
//* PROGRAMA: IKJEFT01                                                 *
//* PROGRAMA: ZM3PLD01                                                 *
//* OBJETIVO: SE GENERA UN REPORTE DE OPERACIONES DE COMPRAS Y VENTAS  *
//*           DE SOCIEDADES DE INVERSION CORRESPONDIENTE A UN SEMESTRE *
//**********************************************************************
//PGL48P02 EXEC PGM=ZM3PLD01,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBGLPZ48.DATE.F&FECHA,
//            DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.CBGLPZ48.DESCA107.COMPRAS,
//            DISP=SHR
//ENTRADA3 DD DSN=MXCP.ZM.FIX.CBGLPZ48.DESCA107.CANCELA,
//            DISP=SHR
//SALIDA1  DD DSN=MXCP.ZM.FIX.REP.OPER.VTAS.COMPRAS.SII,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS)
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//*
//*@TMRY-I
// IF (&MES=01) THEN
//**********************************************************************
//* PASO    : PGL48P01                                                 *
//* PROGRAMA: IKJEFT01                                                 *
//* PROGRAMA: ZM3PLD01                                                 *
//* OBJETIVO: SE GENERA UN REPORTE DE OPERACIONES DE COMPRAS Y VENTAS  *
//*           DE SOCIEDADES DE INVERSION CORRESPONDIENTE A UN ANIO     *
//**********************************************************************
//PGL48P01 EXEC PGM=ZM3PLD01,COND=(4,LT),PARM=('ANUAL')
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBGLPZ48.DATE.F&FECHA,
//            DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.CBGLPZ48.DESCA107.COMPRAS.ANUAL,
//            DISP=SHR
//ENTRADA3 DD DSN=MXCP.ZM.FIX.CBGLPZ48.DESCA107.CANCELA.ANUAL,
//            DISP=SHR
//SALIDA1  DD DSN=MXCP.ZM.FIX.REP.OPER.VTAS.COMPRAS.SII.ANUAL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS)
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
// ENDIF
//*@TMRY-F
