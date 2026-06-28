//ZMHTPE21 PROC
//**********************************************************************
//*   APLICACION:  SISTEMA INTEGRAL DE VALORES (S.I.V.A)               *
//*   PROCEDIM. :  ZMHTPE21                                            *
//*   OBJETIVO  :  REALIZA TRANSFERENCIA DE ARCHIVO DE HECHOS  DE      *
//*                CONTINGENCIA A SIVA.                                *
//*   CORRE ANTES DE  :  CBHTNE27                                      *
//*   CORRE DESPUES DE:  SIVAXTAH                                      *
//*   PERIODICIDAD    :  A SOLICITUD DEL USUARIO                       *
//*   ELABORADO POR   :  STK, JULIO 2011 (RHB)                         *
//*   ACTUALIZA       : NINGUNA TABLA                                  *
//**********************************************************************
//*   MODIFICACION    :  SE CAMBIA LA LONGITUD DEL ARCHIVO DE HECHOS   *00030000
//*                      PARA AGREGAR EL CAMPO IBOLSA, Y SE MODIFICA EL*00030000
//*                      CAMPO IFOLMERC, SE COMENTA EL PASO DONDE SE   *
//*                      REALIZA LA TRANSFERENCIA, Y SE PASA A UN JOB  *
//*                      INDEPENDIENTE (CBHTNE28).                     *
//*   ELABORADO POR   :  GONET                                         *00030000
//*   FECHA           :  20 0CTUBRE 2017                               *00030000
//**********************************************************************
//*  PASO:  1     RECIBE LOS PARAMETROS ENVIADOS DE LINEA Y LOS GRABA  *00030000
//*  PHT21P03     EN ARCHIVO SECUENCIAL.                               *00040000
//**********************************************************************
//PHT21P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.TMP.VAL.E&EMP..S&SUC..ZMHTPE21,
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
//*    CREA EL ARCHIVO DE HECHOS  DE CONTINGENCIA                      *
//**********************************************************************
//PHT21P02 EXEC PGM=IEFBR14,COND=(4,LT)
//ARCHIVO   DD DSN=MXCP.ZM.TMP.E&EMP..S&SUC..HECCONT,
//             DISP=(NEW,CATLG,CATLG),
//*            DCB=(LRECL=77,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             DCB=(LRECL=85,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//**********************************************************************
//*  PASO:  3     REALIZA LA TRANSFERENCIA DEL ARCHIVO                 *00030000
//**********************************************************************
//*PHT21P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//*STEPLIB   DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//*DMNETMAP  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//*DMPUBLIB  DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//*DMMSGFIL  DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//*DMPRINT   DD SYSOUT=*
//*SYSPRINT  DD SYSOUT=*
//*NDMCMDS   DD SYSOUT=*
//*SYSUDUMP  DD DUMMY
//*SYSIN     DD DSN=ZIVA.ZME.CONTROL(ZHT21T01),DISP=SHR
//*
//**********************************************************************00010000
//*                 F I N   Z M H T P E 2 1                            *00020000
//**********************************************************************00010000
