//ZMHLDZ51 PROC
//*********************************************************************
//*                                             D E F I N I T I V O
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*    PROCESO DEFINITIVO PAGO DE DIVIDENDOS OPC 803.
//*********************************************************************
//*
//*-------------------------------------------------------------------
//* EJECUCION DE DEFINITIVO DE EJERCICIO DE DERECHOS DE RENTA VARIABLE
//* ZM4EH981  VALORES
//*-------------------------------------------------------------------
//PJH51P6A EXEC PGM=IKJEFT01
//ZMH981A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..P&INT2..ZMHLPE31,DISP=SHR
//*
//ZMH981A2 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ARCH,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FB,LRECL=80,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(2,1),RLSE)
//ZMH981A3 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ARCH.ZM6RG075,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=569,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMH981A4 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ARCH.ZM6RH978,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=143,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMH981A5 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ARCH.ZM6RH979,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=440,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMH981A6 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ARCH.ZM6RH995,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=584,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMH981A7 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ARCH.ISRBON,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=020,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMH981A8 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ARCH.VARCOMP,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=044,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//ZMH981A9 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ARCH.DIVEFE,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=440,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMH981AA DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..DEFI.DIVIDEN,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=955,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//ZMH981S1 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..REPD01,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,
//           SPACE=(CYL,(4,2),RLSE)
//ZMH981S2 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..REPD02,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//           UNIT=3390,
//           SPACE=(CYL,(4,2),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL31T06),DISP=SHR
//*
//*-------------------------------------------------------------------
//* EJECUCION DE DEFINITIVO DE EJERCICIO DE DERECHOS DE RENTA VARIABLE
//* ZM4EH980  ACTUALIZA LA BASE DE DATOS POR EL EJERCICIO DE DERECHOS
//*-------------------------------------------------------------------
//PJH51P60 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH980A0 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..P&INT2..ZMHLPE31,DISP=SHR
//ZMH980A1 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ARCH.ZM6RG075,DISP=SHR
//ZMH980A2 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ARCH.ZM6RH978,DISP=SHR
//ZMH980A3 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ARCH.ZM6RH979,DISP=SHR
//ZMH980A4 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ARCH.ZM6RH995,DISP=SHR
//ZMH980A5 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ARCH.ISRBON,DISP=SHR
//ZMH980A6 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ARCH.VARCOMP,DISP=SHR
//ZMH980A7 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ARCH.DIVEFE,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL31T02),DISP=SHR
//*
//**********************************************************************
//*  OBJETIVO : SORTEAR ARCHIVO                                        *
//*  PROGRAMA : ICEMAN(TARJETA DE SORT ZHL31T6A)                       *
//**********************************************************************
//PJH51P6B EXEC PGM=ICEMAN,
//         COND=(4,LT)
//*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..REPD02,
//            DISP=SHR
//SORTOUT  DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..REPD03,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(4,2),RLSE)
//*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHL31T6A),DISP=SHR
//*
//*******************************************************************
//* OBJETIVO : SEPARA LAS CUENTAS DE FIDEICOMISO DEL RESTO
//* PROGRAMA : ZM4CFID1
//*******************************************************************
//PJH51P06 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH981A3 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..P&INT2..ZMHLPE31,DISP=SHR
//ZMH981A4 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..REPD03,DISP=SHR
//ZMH981A5 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..REPD01,DISP=SHR
//*
//ZMH981R1 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ZMH981R1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//*
//ZMH981RX DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ZMH981R2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL31T6B),DISP=SHR
//*
//*----------------------------------------------------------------
//*   EJECUCION DEL PROGRAMA  (ZM4EH982)
//*   REPORTE DE EFECTIVO ACREDITADO SOBRE VALORES PIGNORADOS
//*                                 VALORES
//*----------------------------------------------------------------
//PJH51P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH982A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..P&INT2..ZMHLPE31,DISP=SHR
//ZMH982A2 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ARCH,DISP=SHR
//ZMH982R1 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ZMH982R1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL31T04),DISP=SHR
//*
//*----------------------------------------------------------------
//*   EJECUCION DEL PROGRAMA  (ZM4EH983) DERECHOS EJERCIDOS
//*   POR PERSONAS REPORTE DE DERECHOS EJERCIDOS POR PERSONAS
//*   FISICAS Y MORALES       VALORES
//*----------------------------------------------------------------
//PJH51P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMH983A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..P&INT2..ZMHLPE31,DISP=SHR
//ZMH983A2 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ARCH,DISP=SHR
//ZMH983R1 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ZMH983R1,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//*
//ZMH983R2 DD DSN=MXCP.ZM.FIX.E&EMP..P&INT2..ZMH983R2,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=132,RECFM=FBA,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,
//            SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL31T03),DISP=SHR
//*
//*--------------------------------------------------------------------*
//* PASO        : PJH51P00                                             *
//* UTILERIA    : IKJEFT01/ZM4DG005                                    *
//* OBJETIVO    : ACTUALIZA CTLPROC - &EMP - &INT2 COMO TERMINADO      *
//*                                                                    *
//* OBSERVACION : "ESTE PROGRAMA SIEMPRE DEBE IR EN EL ULTIMO PASO"    *
//*                                                                    *
//*--------------------------------------------------------------------*
//PJH51P00 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMDG05A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..P&INT2..ZMHLPE31,DISP=SHR
//*
//QRLSDB2  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZDG05T01),DISP=SHR
//*
//*********************************************************************
//*                         TERMINA ZMHLDZ51                          *
//*********************************************************************
