//ZMJLPE43 PROC
//**********************************************************************
//*                                                                    *
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                                                                    *
//*   APLICACION:  SISTEMA CONTRATOS PERFIL                            *
//*                                                                    *
//*   PROCEDIMI.:  ZMJLPE43                                            *
//*                                                                    *
//*   OBJETIVO  :  REPORTE DE CAMBIOS A CONTRATOS HISTORICO            *
//*                                                                    *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*                                                                    *
//*   CORRE DESPUES DE:  NINGUNO                                       *
//*                                                                    *
//*   PERIODICIDAD    : CORRE A SOLICITUD DEL USUARIO.                 *
//*                                                                    *
//*   FECHA     :  MARZO, 2009.                                        *
//*                                                                    *
//*   AUTOR     :  GETRONICS                                           *
//*                                                                    *
//*   MODIFICADO:                                                      *
//*                                                                    *
//**********************************************************************
//*    RECIBE LOS PARAMETROS ENVIADOS DE CICS Y LOS GRABA EN ARCHIVO
//**********************************************************************
//PJL43P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJLPE43,
//            DISP=(NEW,CATLG,CATLG),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//**********************************************************************
//* OBJETIVO : PROCESA HISTORICO DE LA CARTERA                         *
//*                                                                    *
//* PROGRAMA: ZM4DUK02                                                 *
//**********************************************************************
//PJL43P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//ZMDUK021 DD SYSOUT=X
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL43T01),DISP=SHR
//*
//**********************************************************************
//*        TERMINA PROCESO ZMJLPE43 SIVA MULTIEMPRESA                  *
//**********************************************************************
