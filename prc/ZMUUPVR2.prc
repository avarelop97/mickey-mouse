//ZMUUPVR2 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                   >>>>  ESTADOS DE CUENTA  <<<<                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCESO   :  ZMUUPVR2                                            *
//*                                                                    *
//*   OBJETIVO  :  RESPALDA LA TABLA SECART DEJANDO LOS REGISTROS EN   *
//*                ARCHIVO.                                            *
//*                                                                    *
//*   MICHEL DE LOS SANTOS GARCIA.                                     *
//*   ACCENTURE.                                                       *
//*   MARZO 2012.                                                      *
//**********************************************************************
//*
//**********************************************************************
//*                     * UNLOAD *                                     *
//*  DESCARGA DE LA TABLA PRODUSVP.SECART EN UN ARCHIVO.               *
//**********************************************************************
//PUVR2P01 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,UNLOSECART,NEW/RESTART,,MSGLEVEL(1)'
//*
//STEPLIB  DD DISP=SHR,DSN=BMC.DB2.MXP1.LOAD
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNEXIT                       01497705
//         DD DISP=SHR,DSN=LDB2MXP1.DBP1.SDSNLOAD
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.EDC.SECART01.SRESPA01,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            DCB=(BLKSIZE=0),
//            SPACE=(CYL,(705,500),RLSE)
//*
//SYSCNTL  DD  DUMMY
//*
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZMT01TR2),DISP=SHR
//*
//**********************************************************************
//*              TERMINA PROCESO ZMUUPVR2                              *
//**********************************************************************
