//ZMPCB001 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   <<  C O N T R A L O R I A  >>                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  PROCESO DE INTERFAZ DE CONCILIACION BANCARIA        *
//*                (CARGA UNICAMENTE MOVIMIENTOS CONTABLES).           *
//*   EJECUCION DESPUES : DE PROBLEMAS EN LOS PROCESOS DE CONTABILIDAD *
//*                       ALTAMIRA (COMO EVENTUAL).                    *
//*                                                                    *
//*   FECHA:  JUNIO 2006                                               *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PJF01P06 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2')
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMPCB001,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ128
//* OBJETIVO: CARGA LA TABLA ZMDT601 CON LA INFORMACION DE LOS
//*           ASIENTOS CONTABLES DE CB TRANSF. DE PU  ** CONTRALORIA **
//*---------------------------------------------------------------------
//PJF01P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMJ128AP DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMPCB001,DISP=SHR
//*CONTACB    ARCHIVO QUE VIENE DESDE P.U.
//CONTACB  DD DSN=SIVA.TES.FIX.F&FECHA..CONTACB,DISP=SHR
//ZMJ128R1 DD DSN=MXCP.ZM.FIX.REP.CONTACB.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=132,RECFM=FBA,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF01T03),DISP=SHR
//*
