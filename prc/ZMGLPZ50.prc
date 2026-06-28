//ZMGLPZ50 PROC
//**********************************************************************
//*  SISTEMA    : SISTEMA INTEGRAL DE VALORES (S.I.V.A.)               *
//*  PROCESO    : ZMGLPZ50                                             *
//*  OBJETIVO   : SE GENERA UN REPORTE DE OPERACIONES DE COMPRAS Y VTAS*
//*               DE MERCADO DE CAPITALES DE MANERA SEMESTRAL          *
//*  FECHA      : SEPTIEMRE 2018                                       *
//**********************************************************************
//*                  LOG DE MODIFICACIONES                             *
//**********************************************************************
//* MODIFI       AUTOR     FECHA    DESCRIPCION                        *
//* ----------- --------- -------- ----------------------------------- *
//* @TMRY       MB59217   09OCT19  SE AGREGAN LLAMADOS A PRC ANUAL     *
//**********************************************************************
//*
//**********************************************************************
//* PASO     : PGL50P06                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PRUEBSVP.ZMDT107 DONDE SE OBTIENEN *
//*            TODAS LAS CANCELACIONES QUE SE HAYAN REALIZADO DURANTE  *
//*            EL PERIODO DE LOS ULTIMOS 6 MESES.                      *
//**********************************************************************
//PGL50P06  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMGLPZ50,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBGLPZ50.DESCA107.CANCELA,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL49T06),DISP=SHR
//*
//*@TMRY-I
// IF (&MES=01) THEN
//**********************************************************************
//* PASO     : PGL50P05                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PRUEBSVP.ZMDT107 DONDE SE OBTIENEN *
//*            TODAS LAS CANCELACIONES QUE SE HAYAN REALIZADO DURANTE  *
//*            EL PERIODO DEL ULTIMO ANIO.                             *
//**********************************************************************
//PGL50P05  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMGLPZ50,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBGLPZ50.DESCA107.CANCELA.ANUAL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL49T09),DISP=SHR
//*
// ENDIF
//*@TMRY-F
//*
//**********************************************************************
//* PASO     : PGL50P04                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PRUEBSVP.ZMDT107 DONDE SE OBTIENEN *
//*            TODAS LAS COMPRAS Y VENTAS QUE SE HAYAN REALIZADO DURAN-*
//*            TE EL PERIODO DE LOS ULTIMOS 6 MESES.                   *
//**********************************************************************
//PGL50P04  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMGLPZ50,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBGLPZ50.DESCA107.COMPRAS,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL49T04),DISP=SHR
//*
//*@TMRY-I
// IF (&MES=01) THEN
//*
//**********************************************************************
//* PASO     : PGL50P4A                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA PRUEBSVP.ZMDT107 DONDE SE OBTIENEN *
//*            TODAS LAS COMPRAS Y VENTAS QUE SE HAYAN REALIZADO DURAN-*
//*            TE EL PERIODO DEL ULTIMO ANIO.                          *
//**********************************************************************
//PGL50P4A  EXEC PGM=ADUUMAIN,COND=(4,LT),
//          PARM='MXP1,ZMGLPZ50,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.CBGLPZ50.DESCA107.COMPRAS.ANUAL,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(200,100),RLSE),
//            BLKSIZE=0,DSORG=PS
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL49T08),DISP=SHR
//*
// ENDIF
//*@TMRY-F
//*
//**********************************************************************
//* PASO     : PGL50P03                                                *
//* PROGRAMA : ZM3PLDFE                                                *
//* OBJETIVO : PROGRAMA QUE GENERA LA FECHA DEL SISTEMA A PARTIR DEL   *
//*            ODATE.                                                  *
//*--------------------------------------------------------------------*
//PGL50P03 EXEC PGM=ZM3PLDFE,PARM=('&FECHA'),COND=(4,LT)
//ARCHDATE DD DSN=MXCP.ZM.FIX.CBGLPZ50.DATE.F&FECHA,
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
//* PASO    : PGL50P02                                                 *
//* PROGRAMA: IKJEFT01                                                 *
//* PROGRAMA: ZM3PLD03                                                 *
//* OBJETIVO: SE GENERA UN REPORTE DE OPERACIONES DE COMPRAS Y VENTAS  *
//*           MERCADO DE CAPITALES  CORRESPONDIENTE  A UN SEMESTRE     *
//**********************************************************************
//PGL50P02 EXEC PGM=ZM3PLD03,COND=(4,LT)
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBGLPZ50.DATE.F&FECHA,
//            DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.CBGLPZ50.DESCA107.COMPRAS,
//            DISP=SHR
//ENTRADA3 DD DSN=MXCP.ZM.FIX.CBGLPZ50.DESCA107.CANCELA,
//            DISP=SHR
//SALIDA1  DD DSN=MXCP.ZM.FIX.REP.OPER.VTAS.COMPRAS.MDC,
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
//* PASO    : PGL50P01                                                 *
//* PROGRAMA: IKJEFT01                                                 *
//* PROGRAMA: ZM3PLD03                                                 *
//* OBJETIVO: SE GENERA UN REPORTE DE OPERACIONES DE COMPRAS Y VENTAS  *
//*           MERCADO DE CAPITALES CORRESPONDIENTE A UN ANIO          *
//**********************************************************************
//PGL50P01 EXEC PGM=ZM3PLD03,COND=(4,LT),PARM=('ANUAL')
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.CBGLPZ50.DATE.F&FECHA,
//            DISP=SHR
//ENTRADA2 DD DSN=MXCP.ZM.FIX.CBGLPZ50.DESCA107.COMPRAS.ANUAL,
//            DISP=SHR
//ENTRADA3 DD DSN=MXCP.ZM.FIX.CBGLPZ50.DESCA107.CANCELA.ANUAL,
//            DISP=SHR
//SALIDA1  DD DSN=MXCP.ZM.FIX.REP.OPER.VTAS.COMPRAS.MDC.ANUAL,
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
// ENDIF
//*@TMRY-F
