//ZMUCPD06 PROC
//**********************************************************************
//*                     C A S A   D E  B O L S A                       *
//*                     ========================                       *
//*                     << SISTEMA DE VALORES >>                       *
//*                                                                    *
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*                                                                    *
//*   PROCEDIM. :  ZMUCPD06                                            *
//*                                                                    *
//*   OBJETIVO  :  REALIZA TRANSFERENCIA DEL ARCHIVO EMISORAS          *
//*                EGUARDS     AL SERVIDOR SBBV04                      *
//*                (TRANSFERENCIA DEL SIVA AL SERVIDOR)                *
//*                                                                    *
//*   MODIFICACION:  REALIZA TRANSFERENCIAS A SERVIDOR  BLADE          *
//*                  \\CBNOCFS03\C_CB003                               *
//*   OCTUBRE 2005.  GETRONICS.                                        *
//*                                                                    *
//*   CORRE ANTES DE  :                                                *
//*                                                                    *
//*   CORRE DESPUES DE: CBHFND33                                       *
//*                                                                    *
//*   PERIODICIDAD    : DIARIO                                         *
//*                                                                    *
//*   ELABORADO POR: GRUPO CII.                                        *
//*                                                                    *
//*   FECHA:  DICIEMBRE  2004.                                         *
//*                                                                    *
//*   ACTUALIZA : NINGUNA TABLA                                        *
//**********************************************************************
//*  PASO:  2     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *
//*               EN ARCHIVO SECUENCIAL.                               *
//*                                                         ZM3DG001   *
//*-------------------------------------------------------------------**
//PUC06P02 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','    ','     ','     ',)
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.SIE.E&EMP..ZMUCPD06,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//*-------------------------------------------------------------------**
//*  PASO:  1   REALIZA LA TRANSFERENCIA DE LOS ARCHIVOS ESTADISTICOS  *
//*             AL SERVIDOR BLADE                                      *
//*           DSN1='\\CBNOCFS03\C_CB003\ZM\CUSTODIA\EMEGUARD.TXT'      *
//*           DSN2='MXCP.ZM.WKF.MDC.ECBP.EMISORAS.EGUARDS'             *
//*-------------------------------------------------------------------**
//PUC06P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//STEPLIB   DD DISP=SHR,DSN=SYS3.CONNECT.TGT.LINKLIB
//DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.NETMAP
//DMPUBLIB  DD DISP=SHR,DSN=MBVP.ALTAMIRA.PROCESS
//DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.MSG
//DMPRINT   DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//NDMCMDS   DD SYSOUT=*
//SYSUDUMP  DD DUMMY
//SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZUT06T01),DISP=SHR
//*
//*--------------------------------------------------------------------*
//*                 F I N   Z M U C P D 0 6                            *
//*--------------------------------------------------------------------*
