//ZMGLPZ43 PROC
//**********************************************************************
//*  SISTEMA    : SISTEMA INTEGRAL DE VALORES (S.I.V.A.)               *
//*  PROCESO    : ZMGLPZ43                                             *
//*  OBJETIVO   : GENERA REPORTE DE CALCULO DE MONTO SEMESTRAL PROM    *
//*  FECHA      : ENERO 2018                                           *
//**********************************************************************
//*                  LOG DE MODIFICACIONES                             *
//**********************************************************************
//* MODIFI       AUTOR     FECHA    DESCRIPCION                        *
//* ----------- --------- -------- ----------------------------------- *
//*--------------------------------------------------------------------*
//* PASO     : PGL43P04                                                *
//* PROGRAMA : ZM3PLDFI                                                *
//* OBJETIVO : DESCARGA DE LA TABLA DE CUENTA                          *
//*                                                                    *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//* PROGRAMA: ADUUMAIN                                                 *
//* OBJETIVO: DESCARGA DE TABLA CUENTA                                 *
//*--------------------------------------------------------------------*
//PGL43P04 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMGLPZ43,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.LOAD.CBGLPZ43.ZCUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZGL43T03),DISP=SHR
//*--------------------------------------------------------------------*
//* PASO     : PGL43P02                                                *
//* PROGRAMA : ZM3PLDFE                                                *
//* OBJETIVO : PROGRAMA QUE GENERA LA FECHA DEL SISTEMA A PARTIR DEL   *
//*            ODATE.                                                  *
//*--------------------------------------------------------------------*
//PGL43P02 EXEC PGM=ZM3PLDFE,PARM=('&FECHA'),COND=(4,LT)
//ARCHDATE DD DSN=MXCP.ZM.FIX.CBGLPZ43.DATE.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(1,1),RLSE),UNIT=3390,
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=0,DSORG=PS)
//SYSABOUT DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSTSPRT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSOUX   DD SYSOUT=*
//**********************************************************************
//* PASO    : PGL43P01                                                 *
//* PROGRAMA: IKJEFT01                                                 *
//* OBJETIVO: GENERACION DE REPORTE DE MONTOS SEMESTRAL PROMEDIO       *
//**********************************************************************
//PGL43P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//E2FECHAS DD DSN=MXCP.ZM.FIX.CBGLPZ43.DATE.F&FECHA,
//            DISP=SHR
//E2CUENTA DD DSN=MXCP.ZM.FIX.LOAD.CBGLPZ43.ZCUENTA,
//            DISP=SHR
//ZMGV43R1 DD DSN=MXCP.ZM.FIX.EMP.SUC.CALPROM,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=133,BLKSIZE=0,DSORG=PS)
//ZMGV43S2 DD DSN=MXCP.ZM.FIX.PLD7.ACT.MONT,
//            DISP=(NEW,CATLG,CATLG),UNIT=3390,
//            SPACE=(CYL,(20,10),RLSE),
//            DCB=(RECFM=FB,LRECL=62,BLKSIZE=0,DSORG=PS)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGL43T01),DISP=SHR
//*
//**********************************************************************
//* PASO    : PGL43P00                                                 *
//* PROGRAMA: CONTROL-D                                                *
//* OBJETIVO: ENVIO A CONTROL-D                                        *
//**********************************************************************
//PGL43P00    EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.FIX.EMP.SUC.CALPROM,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
