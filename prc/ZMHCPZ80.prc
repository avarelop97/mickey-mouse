//ZMHCPZ80 PROC
//*
//**********************************************************************
//*                                                                    *
//*     BBB  BBB  VV VV    PPPP RRRR OOOO BBB  U  U RRRR SSSS AAAA     *
//*     B BB B BB VV VV    P PP R RR O  O B BB U  U R RR S    A  A     *
//*     BBBB BBBB VV VV @@ PPPP RRRR O  O BBBB U  U RRRR SSSS AAAA     *
//*     B BB B BB  VVV     P    RR   O  O B BB U  U RR      S A  A     *
//*     BBB  BBB    V      P    R RR OOOO BBB  UUUU R RR SSSS A  A     *
//*                                                                    *
//**********************************************************************
//**********************************************************************
//*                                                                    *
//* SISTEMA        :  SISTEMA INTEGRAL DE VALORES (S.I.V.A.)           *
//*                   CAPITALES                                        *
//*                                                                    *
//* PROCESO        :  ZMHCPZ80                                         *
//*                                                                    *
//* OBJETIVO       :  GENERA ARCHIVOS PARA LA CNBV DE ASIGNACIONES Y   *
//*                   ORDENES DE CAPITALES.                            *
//* CORRE                                                              *
//* DESPUES DEL    :  SIVAXCNB.                                        *
//*                                                                    *
//* REALIZO        :  OSCAR URBANO F.(AZERTIA).                        *
//* FECHA          :  OCTUBRE 2008.                                    *
//*                                                                    *
//* OBSERVACION    :  ESTE PROCEDIMIENTO SE EJECUTA EVENTUALMENTE      *
//*                                                                    *
//**********************************************************************
//* USUARIO :  SOFTWARE FACTORY MEXICO  ACCENTURE  (XM09016)          *
//*  PASO:        CAMBIO:                                              *
//*  PHC80P04     MODIFICACION DE LONGITUD DE ARCHIVOS DE 300 A 313    *
//*               MODIFICACION DE LONGITUD DE ARCHIVOS DE 310 A 323    *
//**********************************************************************
//**********************************************************************
//*                        -- ZM3DG010--                               *
//* PASO 05 SECUENCIA 02                                               *
//* OBJETIVO       :  GENERA CODIGO DE RETORNO DE ACUERDO A LA EMPRESA *
//*                   CBP ==> RC=1 || BCM  ==> RC=2                    *
//**********************************************************************
//PHC80P05 EXEC PGM=ZM3DG010
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRCNB,DISP=SHR
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//*
//**********************************************************************
//*                        -- ZM4DHU8A--                               *
//* PASO 04 SECUENCIA 03                                               *
//* OBJETIVO       :  GENERA ARCHIVOS PARA LA CNBV DE OPERACIONES Y    *
//*                   ORDENES DE CAPITALES.                            *
//**********************************************************************
// IF  PHC80P05.RC EQ 2 & PHC80P05.RC LT 4 THEN
//PHC80P04 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRCNB,DISP=SHR
//*
//VOBU80A1 DD DSN=MXCP.ZM.FIX.EBCM.ASIGN.CNBV,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=313,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(10,5),RLSE)
//*
//VOBU80A2 DD DSN=MXCP.ZM.FIX.EBCM.ORDEN.CNBV,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=323,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHC80P04),DISP=SHR
// ENDIF
//*
//**********************************************************************
//*                        -- ZM4DHU8A--                               *
//* PASO 03 SECUENCIA 03                                               *
//* OBJETIVO       :  GENERA ARCHIVOS PARA LA CNBV DE OPERACIONES Y    *
//*                   ORDENES DE CAPITALES.                            *
//**********************************************************************
// IF  PHC80P05.RC EQ 1 & PHC80P05.RC LT 4 THEN
//PHC80P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.EMP.SUC.PATRCNB,DISP=SHR
//*
//VOBU80A1 DD DSN=MXCP.ZM.FIX.ECBP.ASIGN.CNBV,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=313,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(10,5),RLSE)
//*
//VOBU80A2 DD DSN=MXCP.ZM.FIX.ECBP.ORDEN.CNBV,
//           DISP=(NEW,CATLG,DELETE),
//           DCB=(DSORG=PS,RECFM=FBA,LRECL=323,BLKSIZE=0),
//           UNIT=3390,
//           SPACE=(CYL,(10,5),RLSE)
//*
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//SYSDBOUT DD  SYSOUT=*
//SYSABOUT DD  DUMMY
//SYSUDUMP DD  DUMMY
//SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(PHC80P04),DISP=SHR
// ENDIF
//*
//**********************************************************************
//* PROGRAMA: DMBATCH PARA TRANSFERIR ARCHIVOS BCM                     *
//**********************************************************************
// IF  PHC80P05.RC EQ 2 & PHC80P04.RC LT 4 THEN
//PHC80P02 EXEC PGM=DMBATCH,COND=(4,LT)
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(PHC80P02),DISP=SHR
// ENDIF
//**********************************************************************
//* PROGRAMA: DMBATCH PARA TRANSFERIR ARCHIVOS CBP                     *
//**********************************************************************
// IF  PHC80P05.RC EQ 1 & PHC80P03.RC LT 4 THEN
//PHC80P01 EXEC PGM=DMBATCH,COND=(4,LT)
//STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(PHC80P01),DISP=SHR
// ENDIF
