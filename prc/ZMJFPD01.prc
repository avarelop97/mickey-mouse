//ZMJFPD01 PROC
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
//*                                                                    *
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
//ZMG001A1 DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD01,
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
//ZMJ127AP DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD01,DISP=SHR
//*EDOCTA     ARCHIVO QUE VIENE DESDE P.U.
//EDOCTA   DD DSN=SIVA.TES.FIX.F&FECHA..EDOCTA,DISP=SHR
//ZMJ127R1 DD  DSN=MXCP.ZM.VM01.TES.E&EMP..EDOCTA.F&FECHA,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(80,40),RLSE),
//             DCB=(BLKSIZE=0,DSORG=PS,LRECL=132,RECFM=FBA),
//             UNIT=FJVTP
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF01T05),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ICEGENER
//* OBJETIVO: SE AGREGO PASO PARA QUE HAGA UN IEBGENER DEL ARCHIVO
//*           QUE GENERA EL PASO ANTERIOR.
//*---------------------------------------------------------------------
//PJF01P04 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.VM01.TES.E&EMP..EDOCTA.F&FECHA,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ128
//* OBJETIVO: CARGA LA TABLA ZMDT601 CON LA INFORMACION DE LOS
//*           ASIENTOS CONTABLES DE CB TRANSF. DE PU  ** CONTRALORIA **
//*---------------------------------------------------------------------
//PJF01P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMJ128AP DD DSN=MXCP.ZM.TMP.TES.E&EMP..ZMJFPD01,DISP=SHR
//*CONTACB    ARCHIVO QUE VIENE DESDE P.U.
//CONTACB  DD DSN=SIVA.TES.FIX.F&FECHA..CONTACB,DISP=SHR
//ZMJ128R1 DD  DSN=MXCP.ZM.VM01.TES.E&EMP..CONTACB.F&FECHA,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(80,40),RLSE),
//             DCB=(BLKSIZE=0,DSORG=PS,LRECL=132,RECFM=FBA),
//             UNIT=FJVTP
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJF01T03),DISP=SHR
//*
//*---------------------------------------------------------------------
//* PROGRAMA: ICEGENER
//* OBJETIVO: SE AGREGO PASO PARA QUE HAGA UN IEBGENER DEL ARCHIVO
//*           QUE GENERA EL PASO ANTERIOR.
//*---------------------------------------------------------------------
//PJF01P02 EXEC PGM=ICEGENER,COND=(4,LT)
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DSN=MXCP.ZM.VM01.TES.E&EMP..CONTACB.F&FECHA,DISP=SHR
//SYSUT2   DD SUBSYS=(C600,'SYSOUT=J,PREFIX=CDAMD')
//SYSIN    DD DUMMY
//*
//*---------------------------------------------------------------------
//* PROGRAMA: CTMCND
//* OBJETIVO: ADICIONA CONDICION PARA QUE SEA TOMADA POR CONTROL-D
//*---------------------------------------------------------------------
//*PJF01P01 EXEC PGM=CTMCND,PARM='ADD COND ZMJFPD01_IN_SEP_OK WDATE',
//*         COND=(4,LT)
//*STEPLIB  DD DISP=SHR,DSN=SYS3.IOAO.SYSZBBV.TGT.LOAD
//*DAPARM   DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.PARM
//*         DD DISP=SHR,DSN=SYS3.IOAI.SYSZBBV.TGT.IOAENV
//*DALOG    DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.LOG
//*DARESF   DD DISP=SHR,DSN=SYS3.IOAD.SYSZBBV.DATA.NRS
//*PRTDBG   DD SYSOUT=*
//*SYSPRINT DD DUMMY
//*SYSUDUMP DD DUMMY
//*DAPRINT  DD SYSOUT=*
//*DACNDIN  DD DDNAME=SYSIN
//*
