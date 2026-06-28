//ZMJLPZ57 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   <<  C O N T R A L O R I A  >>                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  VALIDACION DE CAPAS DE MDD.                         *
//*                                                                    *
//*   EJECUCION :  SOLICITUD DE USUARIO                                *
//*                                                                    *
//*   FECHA:  NOVIEMBRE 2014                                           *
//*   AUTOR:  HITSS                                                    *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PJL57P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.MDD.ZMJLPZ57,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390,
//            SPACE=(CYL,(1,1),RLSE)
//*
//*---------------------------------------------------------------------
//* PROGRAMA:
//* OBJETIVO: VALIDACION DE CAPAS  MDD
//*---------------------------------------------------------------------
//PJL57P01 EXEC PGM=IKJEFT01,COND=(4,LT)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSPUNCH DD DUMMY
//QRLSDB2  DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL57T01),DISP=SHR
//*
