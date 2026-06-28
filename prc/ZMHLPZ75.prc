//ZMHLPZ75 PROC
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                   CAPITALES                                        *
//*                                                                    *
//* PROCESO        :  ZMHLPZ75                                         *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVOS PARA LA CNBV DE ASIGNACIONES Y   *
//*                   ORDENES DE CAPITALES.                            *
//* CORRE                                                              *
//* ANTES DE       :  A PETICION DEL USUARIO OPCION 169.               *
//*                                                                    *
//* REALIZO        :  AZERTIA(F.V.C.).                                 *
//* FECHA          :  JULIO 2005.                                      *
//* MODIFICO       :  OSCAR URBANO F.(AZERTIA).                        *
//* FECHA          :  OCTUBRE 2008.                                    *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EVENTUALMENTE A PE-*
//*                   TICION DEL USUARIO.                              *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                        -- ZM3DG010--                               *
//* PASO 05 SECUENCIA 02                                               *
//* OBJETIVO       :  GENERA CODIGO DE RETORNO DE ACUERDO A LA EMPRESA *
//*                   CBP ==> RC=1 || BCM ==> RC=2                     *
//**********************************************************************
//PHL75P05 EXEC PGM=ZM3DG010
//*
//ZMG001A1 DD DSN=MXCP.ZM.WKF.EMP.SUC.PATRECP,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//*
//**********************************************************************
//*                        -- ZM4EGU78--                               *
//* PASO 04 SECUENCIA 03                                               *
//* OBJETIVO       :  GENERA ARCHIVOS PARA LA CNBV DE OPERACIONES Y    *
//*                   ORDENES DE CAPITALES.                            *
//**********************************************************************
// IF  PHL75P05.RC EQ 2 & PHL75P05.RC LT 4 THEN
//PHL75P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMG001A1 DD DSN=MXCP.ZM.WKF.EMP.SUC.PATRECP,DISP=SHR
//*
//VOBU78A1 DD DSN=MXCP.ZM.FIX.EBCM.OPERACS.CNBV,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=370,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(10,5),RLSE)
//*
//VOBU78A2 DD DSN=MXCP.ZM.FIX.EBCM.ORDENE.CNBV,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=283,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHL75P04),DISP=SHR
// ENDIF
//*
//**********************************************************************
//*                        -- ZM4EGU78--                               *
//* PASO 03 SECUENCIA 03                                               *
//* OBJETIVO       :  GENERA ARCHIVOS PARA LA CNBV DE OPERACIONES Y    *
//*                   ORDENES DE CAPITALES.                            *
//**********************************************************************
// IF  PHL75P05.RC EQ 1 & PHL75P05.RC LT 4 THEN
//PHL75P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMG001A1 DD DSN=MXCP.ZM.WKF.EMP.SUC.PATRECP,DISP=SHR
//*
//VOBU78A1 DD DSN=MXCP.ZM.FIX.ECBP.OPERACS.CNBV,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=370,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(10,5),RLSE)
//*
//VOBU78A2 DD DSN=MXCP.ZM.FIX.ECBP.ORDENE.CNBV,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=283,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHL75P04),DISP=SHR
// ENDIF
//*
//**********************************************************************
//* PROGRAMA: DMBATCH PARA TRANSFERIR ARCHIVOS BCM                     *
//**********************************************************************
// IF  PHL75P05.RC EQ 2 & PHL75P04.RC LT 4 THEN
//PHL75P02 EXEC PGM=DMBATCH,COND=(4,LT)
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(PHL75P02),DISP=SHR
// ENDIF
//**********************************************************************
//* PROGRAMA: DMBATCH PARA TRANSFERIR ARCHIVOS CBP                     *
//**********************************************************************
// IF  PHL75P05.RC EQ 1 & PHL75P03.RC LT 4 THEN
//PHL75P01 EXEC PGM=DMBATCH,COND=(4,LT)
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(PHL75P02),DISP=SHR
// ENDIF
