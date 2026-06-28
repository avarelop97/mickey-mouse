//ZMHLPE06 PROC
//**********************************************************************00003000
//*                     C A S A   D E   B O L S A                      *00003000
//*                     =========================                      *00003000
//*                     <<< MERCADO DE CAPITALES >>>                   *00003000
//*                                                                    *00003000
//*   APLICACION:       SISTEMA INTEGRAL DE VALORES (S.I.V.A)          *00003000
//*                                                                    *00003000
//*   PROCEDIM. :       ZMHLPE06                                       *00003000
//*                                                                    *00003000
//*   OBJETIVO  :       ASIGNACION AUTOMATICA                          *00003000
//*                                                                    *00003000
//*   CORRE ANTES DE  : NINGUNO                                        *00003000
//*                                                                    *00003000
//*   CORRE DESPUES DE: NINGUNO                                        *00003000
//*                                                                    *00003000
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *00003000
//*                                                                    *00003000
//*   ELABORO         : ERNESTO MANUEL CUAUTLE MARTINEZ                *00003000
//*                                                                    *00003000
//*                                                                    *00003000
//**********************************************************************00003000
//**                      LOG DE MODIFICACIONES                        *00003000
//**********************************************************************00003000
//**MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                     *00003000
//**-------------------------------------------------------------------*00003000
//**      |          |       |        |                                *00003000
//**      |          |       |        |                                *00003000
//**********************************************************************00003000
//*                                                                    *00003000
//**********************************************************************00090000
//* RECIBE LOS PARAMETROS ENVIADOS DE LA LINEA Y LOS GRABA EN ARCHIVO  *00100000
//**********************************************************************00110000
//PHL06P02 EXEC PGM=ZM3DG001,PARM=('&EMP','&SUC','&INT1','&INT2')       00140000
//*                                                                     00120000
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.WKF.MDC.E&EMP..S&SUC..ZMHLPE06,               00260000
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(10,05),RLSE)
//*                                                                     00310000
//**********************************************************************
//*        -- ZM4DH506 --                                              *
//*        ASIGNACION AUTOMATICA                                       *
//**********************************************************************
//PHL06P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMH506A1 DD DSN=MXCP.ZM.WKF.MDC.E&EMP..S&SUC..ZMHLPE06,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZHL06T01),DISP=SHR
//*
//**********************************************************************
//*        AVISO EN CASO DE ERROR A LA CONSOLA                         *
//**********************************************************************
//PHL06P00 EXEC PGM=MAILOPER,COND=(4,GE,PHL06P01),
//         PARM=('/ATENCION OPERADOR.AVISAR A SOPROD QUE',
//             ' PROCESO SIVAXAUT TERMINO MAL.CONTESTAR SI',
//             'PARA TERMINAR')
