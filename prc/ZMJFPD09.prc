//ZMJFPD09 PROC
//*
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                   <<  C O N T R A L O R I A  >>                    *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  PROCESO DE INTERFAZ DE CONCILIACION BANCARIA        *
//*                                                                    *
//*   EJECUCION DESPUES : DEL PROCESO HANDM001. (QUE REALIZA LAS       *
//*                       TRANFERENCIAS DE LOS ARCHIVOS QUE VIENEN DE  *
//*                       PU).                                         *
//*                       EVENTUAL                                     *
//*   FECHA:  JUNIO 2003                                               *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF |  FECHA   |USUARIO|  PASO  |DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*      |          |       |        |                                 *
//**********************************************************************
//*ACV*SIVA*PENDIENTE*HPC***********************************************
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
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD09,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ127
//* OBJETIVO: CARGA LA TABLA ZMDT600 CON LA INFORMACION DEL EDO.CTA.
//*           DE LA CONCENTRADORA TRANSF. DESDE PU    ** CONTRALORIA **
//*---------------------------------------------------------------------
//PJF01P05 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMJ127AP DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD09,DISP=SHR
//*EDOCTA     ARCHIVO QUE VIENE DESDE P.U.
//EDOCTA   DD DSN=SIVA.TES.FIX.F&FECHA..EDOCTA,DISP=SHR
//ZMJ127R1 DD DSN=MXCP.ZM.FIX.CON.E&EMP..EDOCTA.F&FECHA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(80,40),RLSE),
//            DCB=(DSORG=PS,LRECL=132,RECFM=FBA,BLKSIZE=0),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF01T05),DISP=SHR
//*
