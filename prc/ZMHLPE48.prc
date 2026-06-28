//ZMHLPE48 PROC
//*--------------------------------------------------------------------*
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION       : SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO    : PMHLPE48                                      *
//*                                                                    *
//*   OBJETIVO         : ACTUALIZACION DE PRECIOS DE VALORES/MERCADO DE*
//*                      DINERO                                        *
//*                      ( OPCION 851 )                                *
//*                                                                    *
//*   CORRE ANTES DE   : SIVAXVED                                      *
//*                                                                    *
//*   CORRE DESPUES DE : SIVAXVET                                      *
//*                                                                    *
//*   PERIODICIDAD     : CORRE A SOLICITUD DEL USUARIO                 *
//*                                                                    *
//*   FECHA            : AGSOTO 04, 2003                               *
//*                                                                    *
//*   AUTOR            : GETRONICS - MEXICO (VICTOR VARGAS MARTINEZ)   *
//*                                                                    *
//*   OBSERVACION      : ESTE PROCEDIMIENTO SE PUEDE EJECUTAR MAS DE   *
//*                      UNA VEZ DURANTE EL DIA.                       *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*--------------------------------------------------------------------*
//PHL48P03 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=SIVA.VAL.WKF.E&EMP..S&SUC..ZMHLPE48,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//*
//*--------------------------------------------------------------------*
//* PROGRAMA: ZM4EHB83                                                 *
//* FUNCION:  CARGA PRECIOS DE CAPITALES EN TABLAS VECPRE Y PRECIO.    *
//*--------------------------------------------------------------------*
//PHL48P02 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)
//*
//ZMHB83P1 DD DSN=SIVA.VAL.WKF.E&EMP..S&SUC..ZMHLPE48,DISP=SHR
//*ZMHB83A1 DD DSN=SIVA.VAL.FIX.ECBP.VECPRE,DISP=SHR
//ZMHB83A1 DD DSN=SIVA.VAL.FIX.VECPRE,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL48T01),DISP=SHR
//*
//*--------------------------------------------------------------------
//*        AVISO EN CASO DE ERROR A LA CONSOLA
//*--------------------------------------------------------------------
//PHL48P01 EXEC PGM=MAILOPER,COND=(4,GE,PHL48P02),
//         PARM=('/AVISAR A PRODUCCION QUE PROCESO',
//             ' SIVAXVEV (ZMHLPE48)TERMINO MAL.CONTESTAR SI',
//             'PARA TERMINAR')
