//ZMGLPZ52 PROC
//*********************************************************************
//*                     C A S A   D E   B O L S A                     *
//*                     =========================                     *
//*                                                                   *
//*   APLICACION       :  PLD                                         *
//*                                                                   *
//*   JCL              :  ZMGLPZ52                                    *
//*                                                                   *
//*   OBJETIVO         :  ARCHIVO CON DATOS GENERALES CLIENTES CB(PLD)*
//*                                                                   *
//*   CORRE DESPUES DE :  HORARIO, 21:00 HRS   (MENSUAL)              *
//*                                                                   *
//*   ELABORADO POR    :  HGM                                         *
//*********************************************************************
//*   PASO    : PRECF200                                               *
//*   OBJETIVO: DESCARGA DE ARCHIVO DATOS GENERALES CLIENTES CB (PLD)  *
//*--------------------------------------------------------------------*
//PGLPZ200 EXEC PGM=ADUUMAIN,
//         PARM='MXP1,ZMDB6010,NEW,,MSGLEVEL(1)'
//*
//STEPLIB  DD DSN=BMC.DB2.MXP1.LOAD,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNEXIT,DISP=SHR
//         DD DSN=LDB2MXP1.DBP1.SDSNLOAD,DISP=SHR
//*
//SYSREC   DD DSN=MXCP.ZM.FIX.ECBP.CTESCB.PLDGRAL,
//            DISP=(NEW,CATLG,DELETE),UNIT=3390,
//            SPACE=(CYL,(300,150),RLSE),
//            DCB=(RECFM=FB,BLKSIZE=0,DSORG=PS)
//*
//SYSCNTL  DD DUMMY
//UTPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSIN  DD DSN=ZIVA.ZME.CONTROL(ZHPLDZ01),DISP=SHR
//*
//*********************************************************************
//*   PASO    : PRECF200                                               *
//*   OBJETIVO: DESCARGA DE ARCHIVO DATOS GENERALES CLIENTES CB (PLD)  *
//*--------------------------------------------------------------------*
//PGLPZ190 EXEC PGM=IKJEFT01,COND=(04,LT)
//*
//ZM3PLZE1 DD DSN=MXCP.ZM.FIX.ECBP.CTESCB.PLDGRAL,DISP=SHR
//*
//FDSALIDA DD DSN=MXCP.ZM.FIX.ECBP.CTES.ARCCB,
//            DISP=(NEW,CATLG,DELETE),
//*TRY-INI
//*           DCB=(DSORG=PS,RECFM=FBA,LRECL=448,BLKSIZE=0),
//            DCB=(DSORG=PS,RECFM=FBA,LRECL=495,BLKSIZE=0),
//*TRY-FIN
//            UNIT=3390,
//            SPACE=(CYL,(300,150),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHPLDZ02),DISP=SHR
//*
