//ZMLFPD01 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     <<  MERCADO DE DINERO >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  CARGA DE TIPOS DE CAMBIO VIGENTES EXTRAIDOS DESDE   *
//*                P. U.                                               *
//*                                                                    *
//*   FECHA:  JULIO  2003                                              *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//*
//**********************************************************************
//* OBJETIVO : CARGA INFORMACION EN LA TABLA TIPCAMB CON LOS TIPOS DE  *
//*            CAMBIO VIGENTES EXTRAIDOS DESDE P. U.                   *
//*                                                       ZM4DL001     *
//**********************************************************************
//*
//PJFXXP01 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//PI601765 DD DUMMY
//*
//ZML001A1 DD DSN=SIVA.MDD.FIX.TIPOCAM.DLSUDI,DISP=SHR
//SYSTSPRT DD SYSOUT=X
//SYSPRINT DD SYSOUT=X
//SYSOUT   DD SYSOUT=X
//SYSDBOUT DD SYSOUT=X
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZLF01T01),DISP=SHR
//*
