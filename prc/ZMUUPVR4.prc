//ZMUUPVR4 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCESO   :  ZMUUPVR4                                            *
//*                                                                    *
//*   OBJETIVO  :  RESPALDA LA TABLA OPERA DEJANDO LOS REGISTROS EN    *
//*                ARCHIVO.                                            *
//*                                                                    *
//*   MICHEL DE LOS SANTOS GARCIA.                                     *
//*   ACCENTURE.                                                       *
//*   MARZO 2012.                                                      *
//**********************************************************************
//*
//**********************************************************************
//*                     * UNLOAD *                                     *
//*  DESCARGA DE LA TABLA PRODUSVP.OPERA DEJANDOLA EN UN ARCHIVO.      *
//**********************************************************************
//PUVR4P01 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,UNLOOPERA,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT                       01497705
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.EDC.OPERA01.ORESPA01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BLKSIZE=0),
//            SPACE=(CYL,(905,500),RLSE)
//*
//SYSCNTL  DD  DUMMY
//*
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMT01TR4),DISP=SHR
//*
//**********************************************************************
//*              TERMINA PROCESO ZMUUPVR4                              *
//**********************************************************************
