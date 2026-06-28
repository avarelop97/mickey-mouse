//ZMJTPD55 PROC
//**********************************************************************
//*                     C A S A   D E   B O L S A                      *
//*                     =========================                      *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   OBJETIVO  :  TRANSFIERE EL ARCHIVO HISTORICO DESDE EL SERVIDOR   *
//*                NT HACIA EL HOST E INSERTA LOS REGISTROS EN LA      *
//*                TABLA ZMDT900.                                      *
//*                                                                    *
//*   ESTE PROC CORRESPONDE A LA OPCION 4 DE LA TRANSACCION Z110.      *
//*                                                                    *
//**********************************************************************
//*                                                                    *
//*  PASO 4: GENERA ARCHIVO CON PARAMETROS DE LA LINEA.                *
//*                                                                    *
//**********************************************************************
//PJL55P04 EXEC PGM=ZM3DG000,
//         PARM=('&EMP','&SUC','&INT1','&INT2','&FEC',)
//*
//ZMG001A1 DD DUMMY
//*
//SYSTSPRT DD SYSOUT=*,
//            DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*********************************************************************
//*                                                                   *
//*  PASO 3: GENERA SYSIN PARA TRANSFERENCIA DE ARCHIVO HISTORICO.    *
//*                                                                   *
//*********************************************************************
//*PJL55P03 EXEC PGM=IKJEFT01,COND=(4,LT)
//*
//*E1DQ9000 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJLPD55,DISP=SHR
//*S1DQ9000 DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJTPD55.SYSIN,
//*            DISP=(NEW,CATLG,DELETE),
//*            DCB=(LRECL=80,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            UNIT=3390,SPACE=(CYL,(2,1),RLSE)
//*
//*SYSTSPRT DD SYSOUT=*,
//*            DCB=BLKSIZE=0
//*SYSPRINT DD SYSOUT=*
//*SYSOUT   DD SYSOUT=*
//*SYSDBOUT DD SYSOUT=*
//*SYSABOUT DD DUMMY
//*SYSUDUMP DD DUMMY
//*SYSTSIN  DD DSN=ZIVA.ZME.CONTROL(ZJL55T03),DISP=SHR
//*
//**********************************************************************
//*                                                                    *
//*  PASO 2: REALIZA LA TRANSFERENCIA DEL ARCHIVO HISTORICO.           *
//*                                                                    *
//**********************************************************************
//*PJL55P02 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//*STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSDUMP   DD SYSOUT=*
//*SYSIN     DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ZMJTPD55.SYSIN,DISP=SHR
//*
