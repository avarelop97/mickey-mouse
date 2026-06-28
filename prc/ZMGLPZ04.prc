//ZMGLPZ04 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO ANT.   :  SUBMITIDOR  (SIVAXZMP) PRC ZMGLPE04              *
//* PROCESO        :  SUBMITIDOR  (CBGLPZ04) PRC ZMGLPP04              *
//*                   GENERAR ARCHIVO DE PLAZOS PARA ENVIO A BLADE     *
//*                                                                    *
//* OBJETIVO       :  MONITOR DE PLAZOS DIARIOS DE BANCA PATRIMONIAL   *
//*                                                                    *
//* PERIODICIDAD   :  A ELECCION DE USUARIO EN OPCION MUV 332 (PF4)    *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  FEBRERO 2006                                     *
//*                                                                    *
//* MODIFICO       :  OSCAR URBANO FERNANDEZ. (AZERTIA).               *
//* FECHA          :  OCTUBRE 2008.                                    *
//*                                                                    *
//*--------------------------------------------------------------------*
//*MODIF     |  FECHA   |USUARIO|  PASO  | DESCRIPCION
//*--------------------------------------------------------------------*
//*@SWFMEX01   101019    XM09404 PGT04P00 MODIFICACION DE PROCESO PARA *
//*                                       INCLUIR 1 PASO, EL OBJETIVO  *
//*                                       ES LA TRANSMISION DE ARCHIVOS*
//*                                       DE HOST A SERVIDOR VIA TANTIA*
//*--------------------------------------------------------------------*
//*@ N/A       25102010  XM09340 PGT04P00 MODIFICACION DE PROCESO PARA *
//*                                       INCLUIR 1 PASO, EL OBJETIVO  *
//*                                       ES LA TRANSMISION DE ARCHIVOS*
//*                                       DE HOST A SERVIDOR VIA       *
//*                                       CONNECT.                     *
//*--------------------------------------------------------------------*
//*-------------------------------------------------------------------**
//*                          -- ZM4DG004 --                            *
//*                                                                    *
//*  OBJETIVO:    GENERAR ARCHIVO CON LOS DATOS DE LOS PLAZOS DEL DIA  *
//*               DE CLIENTES DE BANCA PATRIMONIAL.                    *
//*-------------------------------------------------------------------**
//PGT04P03 EXEC PGM=IKJEFT01
//ZMG004A1 DD DSN=MXCP.ZM.FIX.PLZ.BCM.MONITOR.PLAZOSDD,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(DSORG=PS,RECFM=FB,LRECL=264,BLKSIZE=0),
//            SPACE=(CYL,(20,10),RLSE),
//            UNIT=3390
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZGT04T03),DISP=SHR
//*
//*-------------------------------------------------------------------**
//*  PASO: 2      REALIZA LA TRANSFERENCIA DEL ARCHIVO DE PLAZOS EN    *
//*               HOST: DSN=MXCP.ZM.FIX.PLZ.BCM.MONITOR.PLAZOSDD, A EL *
//*               SERV: SBBV04\PUBLIC\PLAZOS                           *
//*-------------------------------------------------------------------**
//PGT04P02 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//*
//STEPLIB  DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSDUMP   DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZGT04T02),DISP=SHR
//*
//*-------------------------------------------------------------------**
//*  PASO: 1      REALIZA LA TRANSFERENCIA DEL ARCHIVO DE PLAZOS EN    *
//*               HOST: DSN=MXCP.ZM.FIX.PLZ.BCM.MONITOR.PLAZOSDD, A EL *
//*               SERV: BLADE CBNOCFS03\C_CB003\ZM\PATRIM\MONIPLAZ.TXT *
//*-------------------------------------------------------------------**
//PGT04P01 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//*
//STEPLIB  DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT   DD SYSOUT=*
//SYSDUMP   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZGT04T01),DISP=SHR
//*
//**********************************************************************
//* PASO    : PGT04P00                                                 *
//* OBJETIVO: REALIZA LA TRANSFERENCIA DE ARCHIVO EN HOST:             *
//*           MXCP.ZM.FIX.PLZ.BCM.MONITOR.PLAZOSDD AL SERVIDOR BLADE   *
//*           \\CBNOCNAS07\g_cb019\LAC\MONIPLAZ.TXT                    *
//**********************************************************************
//PGT04P00 EXEC PGM=DMBATCH,PARM=(YYSLYNQ),COND=(4,LT)
//*
//STEPLIB  DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT   DD SYSOUT=*
//SYSDUMP   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZGT04T00),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                 F I N   Z M G L P E 0 4                            *
//*--------------------------------------------------------------------*
