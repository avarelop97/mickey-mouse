//ZMHLPE49 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE DINERO  >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : ZMHLPE49                                      *
//*                                                                    *
//*   OBJETIVO         : ACTUALIZACION DE PRECIOS DE MERCADO DE DINERO *
//*                      ( OPCION 851 )                                *
//*                                                                    *
//*   CORRE ANTES DE   : SIVAXVEG                                      *
//*                                                                    *
//*   CORRE DESPUES DE : SIVAXVEV                                      *
//*                                                                    *
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *
//*                                                                    *
//*   FECHA            : AGOSTO 04, 2003                               *
//*                                                                    *
//*   AUTOR            : GETRONICS - MEXICO (VICTOR VARGAS MARTINEZ)   *
//*                                                                    *
//*   OBSERVACION      : ESTE PROCEDIMIENTO SE PUEDE EJECUATAR MAS DE  *
//*                      UNA VEZ DURANTE EL DIA.                       *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*--------------------------------------------------------------------*
//PHL49P03 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=SIVA.MDD.WKF.E&EMP..S&SUC..PMHLPE49,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4EHB84                                                 *
//* FUNCION:  ACTUALIZACION DE PRECIOS DE MERCADO DE DINERO            *
//*--------------------------------------------------------------------*
//PHL49P02 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)
//*
//ZMHB84P1 DD DSN=SIVA.MDD.WKF.E&EMP..S&SUC..PMHLPE49,DISP=SHR
//*ZMHB84A1 DD DSN=SIVA.VAL.FIX.ECBP.VECPRE,DISP=SHR
//ZMHB84A1 DD DSN=SIVA.VAL.FIX.VECPRE,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL49T01),DISP=SHR
//*
//*--------------------------------------------------------------------
//*        AVISO EN CASO DE ERROR A LA CONSOLA
//*--------------------------------------------------------------------
//PHL49P01 EXEC PGM=MAILOPER,COND=(4,GE,PHL49P02),
//         PARM=('/AVISAR A PRODUCCION QUE PROCESO',
//             ' SIVAXVED (ZMHLPE49)TERMINO MAL.CONTESTAR SI',
//             'PARA TERMINAR')
