//ZMGLPE04 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  MODULO UNICO DE VALORES ( M.U.V)                 *
//*                                                                    *
//* PROCESO        :  SUBMITIDOR  (SIVAXZMP)                           *
//*                   GENERAR ARCHIVO DE PLAZOS PARA ENVIO A BLADE     *
//*                                                                    *
//* OBJETIVO       :  MONITOR DE PLAZOS DIARIOS DE BANCA PATRIMONIAL   *
//*                                                                    *
//* PERIODICIDAD   :  A ELECCION DE USUARIO EN OPCION MUV 332 (PF4)    *
//*                                                                    *
//* REALIZO        :  OSCAR SAUL CONTRERAS TELLEZ                      *
//* FECHA          :  FEBRERO 2006                                     *
//*                                                                    *
//**********************************************************************
//*                      LOG DE MODIFICACIONES                         *
//**********************************************************************
//*MODIF ³  FECHA   ³USUARIO³  PASO  ³DESCRIPCION                      *
//*--------------------------------------------------------------------*
//*AZERT 15-ENE-06   IDCEX52 PGT04P03 CAMBIA LONG DEL ARCHIVO A 264    *
//**********************************************************************
//*      ³          ³       ³        ³                                 *
//*-------------------------------------------------------------------**
//*                          -- ZM3DG001 --                            *
//*                                                                    *
//*  OBJETIVO:    RECIBE LOS PARAMETROS ENVIADOS DE EL DISPARADOR Y LOS*
//*               GRABA EN UN ARCHIVO SECUENCIAL.                      *
//*-------------------------------------------------------------------**
//PGT04P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//ZMG001A1 DD DSN=MXCP.ZM.WKF.PLZ.E&EMP..S&SUC..ZMGLPE04,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*-------------------------------------------------------------------**
//*                          -- ZM4DG004 --                            *
//*                                                                    *
//*  OBJETIVO:    GENERAR ARCHIVO CON LOS DATOS DE LOS PLAZOS DEL DIA  *
//*               DE CLIENTES DE BANCA PATRIMONIAL.                    *
//*-------------------------------------------------------------------**
//PGT04P03 EXEC PGM=IKJEFT01,COND=(4,LT)
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
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
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
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT   DD SYSOUT=*
//SYSDUMP   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZGT04T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                 F I N   Z M G L P E 0 4                            *
//*--------------------------------------------------------------------*
