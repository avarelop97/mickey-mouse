//ZMJLPE57 PROC                                                         00010001
//**********************************************************************00030000
//*                     C A S A   D E   B O L S A                      *00040000
//*                     =========================                      *00050000
//*                                                                    *00150015
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *00160015
//*                                                                    *00170015
//*   OBJETIVO  :  ALTA DEL ARCHIVO HISTORICO 1 DE PRECIOS DE SIEFORES *00180015
//*                                                                    *00200015
//*********************************************************************
//*                                                                   *
//*              RECIBE LOS PARAMETROS ENVIADOS DE LINEA.             *
//*                                                                   *
//*********************************************************************
//PJL57P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//*
//ZMG001A1 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,
//            DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************01470002
//*                                                                    *
//*  PASO 1: ALTA DE PRECIOS DE ARCHIVO HISTORICO 1.                   *01490002
//*                                                                    *01500002
//**********************************************************************01510002
//PJL57P01 EXEC PGM=IKJEFT01,COND=(4,LT)                                01520002
//*                                                                     01540002
//E1DQ9000 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..PRECIOS.SIEFHIST,DISP=SHR   01550002
//E2DQ9000 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJLPD55,DISP=SHR           01550002
//*                                                                     01600002
//SYSTSPRT DD SYSOUT=*,                                                 01610002
//            DCB=BLKSIZE=0                                             01620002
//SYSPRINT DD SYSOUT=*                                                  01630002
//SYSOUT   DD SYSOUT=*                                                  01640002
//SYSDBOUT DD SYSOUT=*                                                  01650002
//SYSABOUT DD DUMMY                                                     01660002
//SYSUDUMP DD DUMMY                                                     01670002
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL55T01),DISP=SHR                   01680002
//*                                                                     01690002
