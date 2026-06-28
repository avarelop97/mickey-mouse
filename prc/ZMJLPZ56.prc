//ZMJLPZ56 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   <<  C O N T R A L O R I A  >>                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  CARGA INFORMACION DE SECART PARA REPROCESO DE       *
//*                ESTADOS DE CUENTA.                                  *
//*   EJECUCION :  SOLICITUD DE USUARIO                                *
//*                                                                    *
//*   FECHA:  AGOSTO 2014                                              *
//*   AUTOR:  JOSE OSCAR SEGURA PEREZ                                  *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PJF02P10 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.EBCM.ZMJLPZ56,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4SEC01
//* OBJETIVO: CARGA LA TABLA SECART CON LA INFORMACION OBTENIDA
//*           DEL RESPALDO SECART DE IMAGECOPY                       **
//*---------------------------------------------------------------------
//PJF02P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//*           ARCHIVO DESCOMPACTADO
//ARCHSECA DD DSN=MXCP.ZM.FIX.UNLOAD.SECART,DISP=SHR
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJP03T01),DISP=SHR
//*
//*
