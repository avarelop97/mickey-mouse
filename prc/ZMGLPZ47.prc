//ZMGLPZ47 PROC
//**********************************************************************
//*  SISTEMA    : SISTEMA INTEGRAL DE VALORES (S.I.V.A.)               R
//*  PROCESO    : ZMGLPZ47                                             *
//*  REALIZO    : FSW-DGCM(XMY1076)                                    *
//*  OBJETIVO   : ACTUALIZA LA TABLA ZMDT630                           *
//*  FECHA      : 29 DE ENERO DE 2018.                                 *
//**********************************************************************
//*                  LOG DE MODIFICACIONES                             *
//**********************************************************************
//* MODIFI       AUTOR     FECHA    DESCRIPCION                        *
//* ----------- --------- -------- ----------------------------------- *
//*--------------------------------------------------------------------*
//* PASO     : ZMG47P01                                                *
//* PROGRAMA : ADUUMAIN                                                *
//* OBJETIVO : DESCARGA DE LA TABLA DE CUENTA                          *
//*--------------------------------------------------------------------*
//ZMG47P01 EXEC PGM=ADUUMAIN,COND=(4,LT),
//         PARM='MXP1,ZMGLPZ47,NEW,,MSGLEVEL(1)'
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.LOAD.CBGLPZ47.Z6CUENTA,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(350,90),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD  DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMG47P01),DISP=SHR
//**********************************************************************
//* PASO    : ZMG47P02                                                 *
//* PROGRAMA: IKJEFT01/ZM4MGP34                                        *
//* OBJETIVO: ACTUALIZACION A LA TABLA ZMDT630                         *
//**********************************************************************
//ZMG47P02 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*
//ENTRADA1 DD DSN=MXCP.ZM.FIX.LOAD.CBGLPZ47.Z6CUENTA,
//            DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZMG47P02),DISP=SHR
//*
