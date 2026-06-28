//ZMHLPE51 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                     <<  MERCADO DE VALORES >>                      *
//*                                                                    *
//*   APLICACION      :  SISTEMA INTEGRAL DE VALORES (S.I.V.A)         *
//*                                                                    *
//*   PROCEDIMIENTO   :  ZMHLPE51                                      *
//*                                                                    *
//*   OBJETIVO        :  VALIDACION DE LA FEHCA DE LOS ARCHIVOS DE     *
//*                      ENTRADA CON LA FECHA DEL SISTEMA (P05)        *
//*                      (OPCION 851)                                  *
//*                                                                    *
//*   CORRE ANTES DE  :  SIVAXVEV                                      *
//*                                                                    *
//*   CORRE DESPUES DE:  ????????                                      *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA           : AGOSTO 04, 2003                                *
//*                                                                    *
//*   AUTOR           : GETRONICS - MEXICO  (VICTOR VARGAS MARTINEZ)   *
//*                                                                    *
//*   OBSERVACION     : ESTE PROCEDIMIENTO SE PUEDE EJECUTAR MAS DE    *
//*                     UNA VEZ DURANTE EL DIA.                        *
//*--------------------------------------------------------------------*
//*--------------------------------------------------------------------*
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO   *
//*--------------------------------------------------------------------*
//PHL51P03 EXEC PGM=ZM3DG001,REGION=0M,
//         PARM=('&EMP','&SUC')
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=SIVA.VAL.WKF.E&EMP..S&SUC..ZMHLPE51,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(2,1),RLSE)
//**********************************************************************
//*       PROGRAMA: ZM4EHB82                                           *
//*       FUNCIO  : VALIDA LA FECHA ACTUAL DEL ARCHIVO DEL VECTOR DE   *
//*                 PRECIOS.                                           *
//**********************************************************************
//PHL51P02 EXEC PGM=IKJEFT01,REGION=0M,COND=(4,LT)
//ZMHB82P1 DD DSN=SIVA.VAL.WKF.E&EMP..S&SUC..ZMHLPE51,DISP=SHR
//*ZMHB82A1 DD DSN=SIVA.VAL.FIX.ECBP.VECPRE,
//ZMHB82A1 DD DSN=SIVA.VAL.FIX.VECPRE,
//            DISP=SHR
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD  DSN=ZIVA.ZME.CONTROL(ZHL51T01),DISP=SHR
//*--------------------------------------------------------------------
//*        AVISO EN CASO DE ERROR A LA CONSOLA             30/ABR/08
//*--------------------------------------------------------------------
//*PHL51P01 EXEC PGM=MAILOPER,COND=(4,GE,PHL51P02),
//*         PARM=('/AVISAR A PRODUCCION QUE PROCESO',
//*             ' CBHLNE01 (ZMHLPE51)TERMINO MAL.CONTESTAR SI',
//*             'PARA TERMINAR')
