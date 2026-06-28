//ZMHLPE50 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<     GLOBAL RISK     >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMHLPE50                                      *
//*                                                                    *
//*   OBJETIVO         : ACTUALIZACION DE BETAS (GLOBAL RISK)          *
//*                      ( OPCION 851 )                                *
//*                                                                    *
//*   CORRE ANTES DE   : NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE : SIVAXVET                                      *
//*                                                                    *
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *
//*                                                                    *
//*   FECHA            : AGOSTO 04, 2003                               *
//*                                                                    *
//*   AUTOR            : GETRONICS - MEXICO (VICTOR VARGAS MARTINEZ)   *
//*                                                                    *
//*   OBSERVACION      : ESTE PROCEDIMIENTO SE PUEDE EJECUTAR MAS DE   *
//*                      UNA VEZ DURANTE EL DIA.                       *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*--------------------------------------------------------------------*
//PHL50P03 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=X,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=SIVA.VAL.WKF.E&EMP..S&SUC..ZMHLPE50,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4EHB85                                                 *
//* FUNCION:  ACTUALIZACION DE BETAS (GLOBLA RISLK)                    *
//*--------------------------------------------------------------------*
//PHL50P02 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)
//*
//ZMHB85P1 DD DSN=SIVA.VAL.WKF.E&EMP..S&SUC..ZMHLPE50,DISP=SHR
//*ZMHB85A1 DD DSN=SIVA.VAL.FIX.ECBP.VECBET,DISP=SHR
//ZMHB85A1 DD DSN=SIVA.VAL.FIX.VECBET,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL50T01),DISP=SHR
//*
//*--------------------------------------------------------------------
//*        AVISO EN CASO DE ERROR A LA CONSOLA
//*--------------------------------------------------------------------
//PHL50P01 EXEC PGM=MAILOPER,COND=(4,GE,PHL50P02),
//         PARM=('/AVISAR A PRODUCCION QUE PROCESO',
//             ' SIVAXVEG (ZMHLPE50)TERMINO MAL.CONTESTAR SI',
//             'PARA TERMINAR')
