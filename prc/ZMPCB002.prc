//ZMPCB002 PROC
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
//*   FECHA:  ENERO 2012                                               *
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
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.E&EMP..ZMPCB002.AUX,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//**********************************************************************
//* PROGRAMA: ZM3DG001
//* OBJETIVO: RECIBE PARAMETROS Y LOS CARGA EN ARCHIVO
//*           PARA SIGUIENTES PASOS
//**********************************************************************
//PJF02P09 EXEC PGM=ZM3DG001,COND=(4,LT),
//         PARM=('CBP','ZPR','CBPZPR',' ')
//PI601765 DD DUMMY
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//ZMG001A1 DD DSN=MXCP.ZM.FIX.TES.ECBP.ZMPCB002,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(CYL,(2,1),RLSE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=96,BLKSIZE=0),
//            UNIT=3390
//*---------------------------------------------------------------------
//* PROGRAMA: ZM4DJ128
//* OBJETIVO: CARGA LA TABLA ZMDT601 CON LA INFORMACION DE LOS
//*           ASIENTOS CONTABLES DE CB TRANSF. DE PU  ** CONTRALORIA **
//*---------------------------------------------------------------------
//PJF02P08 EXEC PGM=IKJEFT01,COND=(4,LT)
//PI601765 DD DUMMY
//ZMJ128AP DD DSN=MXCP.ZM.FIX.TES.ECBP.ZMPCB002,DISP=SHR
//*CONTACB    ARCHIVO QUE VIENE DESDE P.U.
//CONTACB  DD DSN=SIVA.TES.FIX.REPRO.CONTACB,DISP=SHR
//ZMJ128R1 DD DSN=MXCP.ZM.FIX.REP.CONTACB.DEF,
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
//*---------------------------------------------------------------------
//* PROGRAMA: TRANSFERENCIA DE ARCHIVO
//*---------------------------------------------------------------------
//PJF02P07 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//*
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZGPTB002),DISP=SHR
//*
//**********************************************************************
//* INICIALIZACION DEL ARCHIVO DE ENTRADA DEL PROCESO DE               *
//* MIGRACION.                                                         *
//**********************************************************************
//PJF02P06 EXEC  PGM=ICEGENER,COND=(4,LT)
//SYSIN    DD  DUMMY
//SYSPRINT DD  SYSOUT=*
//SYSUT1   DD  DSN=NULLFILE,
//             DCB=(RECFM=FB,LRECL=127)
//SYSUT2   DD  DSN=SIVA.TES.FIX.REPRO.CONTACB,DISP=SHR
//*
