//ZMHTPE20 PROC
//**********************************************************************
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*   PROCEDIM. :  ZMHTPE20                                            *
//*   OBJETIVO  :  REALIZA TRANSFERENCIA DE ARCHIVO DE ORDENES DE      *
//*                CONTINGENCIA A SIVA.                                *
//*   CORRE ANTES DE  :  NINGUNO                                       *
//*   CORRE DESPUES DE:  SIVAXTAO                                      *
//*   PERIODICIDAD    :  A SOLICITUD DEL USUARIO                       *
//*   ELABORADO POR   :  STK, JULIO 2011 (RHB)                         *
//*   ACTUALIZA       : NINGUNA TABLA                                  *
//**********************************************************************
//*   MODIFICACION    :  SE CAMBIA LA LONGITUD DEL ARCHIVO DE ORDENES  *00030000
//*                      MODIFICANDO  EL CAMPO IFOLMERC SE COMENTA EL  *00030000
//*                      PASO DONDE SE REALIZA LA TRANSFERENCIA, Y SE  *
//*                      PASA A UN JOB INDEPENDIENTE (CBHTNE27).       *
//*   ELABORADO POR   :  GONET                                         *00030000
//*   FECHA           :  07 MAYO 2018                                  *00030000
//**********************************************************************
//*   MODIFICACION    :  SE CAMBIA LA LONGITUD DEL ARCHIVO DE ORDENES  *00030000
//*                      AGREGANDO EL FOLIO GL PADRE AL CUAL SE DISTRI-*00030000
//*                      BUYE UNA ORDEN GLOBAL DE CASA DE BOLSA POR ME-*
//*                      DIO DE CARGA DE CONTINGENCIA.                 *
//*   ELABORADO POR   :  MI30309                                       *00030000
//*   FECHA           :  12 AGOSTO 2024                                *00030000
//**********************************************************************
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PHT20P03     EN ARCHIVO SECUENCIAL.                               *00040000
//**********************************************************************
//PHT20P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHTPE20,
//            DISP=(NEW,CATLG,DELETE),
//            DCB=(LRECL=096,RECFM=FB,BLKSIZE=0,DSORG=PS),
//            UNIT=3390,SPACE=(CYL,(02,01),RLSE)
//*
//SYSTSPRT DD SYSOUT=*,DCB=BLKSIZE=0
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSDBOUT DD SYSOUT=*
//SYSABOUT DD DUMMY
//SYSUDUMP DD DUMMY
//*
//**********************************************************************
//*    CREA EL ARCHIVO DE ORDENES DE CONTINGENCIA                      *
//**********************************************************************
//PHT20P02 EXEC PGM=IEFBR14,COND=(4,LT)
//ARCHIVO   DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..ORDCONT,
//             DISP=(NEW,CATLG,CATLG),
//*
//*            DCB=(LRECL=109,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*            DCB=(LRECL=114,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             DCB=(LRECL=119,RECFM=FB,BLKSIZE=0,DSORG=PS),
//*
//             UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//**********************************************************************
//*  PASO:  3     REALIZA LA TRANSFERENCIA DEL ARCHIVO                 *00030000
//**********************************************************************
//*PHT20P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT20T01),DISP=SHR
//*
//**********************************************************************00010000
//*                 F I N   Z M H T P E 2 0                            *00020000
//**********************************************************************00010000
