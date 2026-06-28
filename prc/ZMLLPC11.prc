//ZMLLPC11 PROC                                                         00040000
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE DINERO >>>                      *00003000
//*                                                                    *00003000
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00003000
//*                                                                    *00003000
//*   PROCEDIM. :  ZMLLPC11-SIVAXDEC                                   *00003000
//*                                                                    *00003000
//*   OBJETIVO  :  CONCILIACION DECALOG                                *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  :  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE:  NINGUNO                                       *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//*                                                                    *00003000
//*********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CSP Y LOS GRABA EN ARCHIVO
//*********************************************************************
//*
//PLC11P10 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','     ','     ',)
//ZMG001A1 DD DSN=MXC&AMB..ZM.TMP.MDD.E&EMP..S&SUC..ZMLLPC11,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*****************************************************************
//* PASO: PLC11P05                                                *
//* PROGRAMA: ZM4DLD93                                            *
//* OBJETIVO: GENERACION DE ARCHIVO DE PRESTVAL-CONCILIACIONES    *
//*           EVENTOS CORP. TITULOS & CASH (PROCESO LINEA)        *
//*****************************************************************
//PLC11P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMLD93A1 DD DSN=MXCP.ZM.FIX.MDD.E&EMP..S&SUC..ZM4DLD93,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(10,05),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=350,BLKSIZE=0),
//            UNIT=3390
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLP11T05),DISP=SHR
//*
//*****************************************************************
