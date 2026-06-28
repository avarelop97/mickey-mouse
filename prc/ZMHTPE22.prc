//ZMHTPE22 PROC
//**********************************************************************
//*   APLICACION:  SIVA 2012 - CONCILIACIóN SIVA BMV
//*   PROCEDIM. :  ZMHTPE22                                            *
//*   OBJETIVO  :  REALIZA TRANSFERENCIA DE ARCHIVO SIBOLSA(HECHOS)
//*   AUTOR     :  INTERNACIONAL DE SISTEMAS                           *
//*   FECHA     :  AGOSTO, 2013                                        *
//**********************************************************************
//*
//**********************************************************************
//*  PASO       : PHT22P03                                             *00030000
//*  PROGRAMA   : ZM3DG001                                             *
//*  DESCRIPCION: RECIBE LOS PARAMETROS RECIBIDOS Y LOS GRABA EN       *00030000
//*               EN ARCHIVO SECUENCIAL.                               *00040000
//**********************************************************************
//PHT22P03 EXEC PGM=ZM3DG001,
//         PARM=('&EMP','&SUC','&INT1','&INT2',)
//PI601765  DD DUMMY
//*
//ZMG001A1 DD DSN=MXCP.ZM.FIX.VAL.E&EMP..S&SUC..ZMHTPE22,
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
//*  PASO       : PHT22P02                                             *00030000
//*  PROGRAMA   : ZM3DG001                                             *
//*  DESCRIPCION: CREA EL ARCHIVO CIBOLSA(HECHOS)                      *00030000
//**********************************************************************
//PHT22P02 EXEC PGM=IEFBR14,COND=(4,LT)
//ARCHIVO   DD DSN=MXCP.ZM.FIX.ARCH.CIBOLSA,
//             DISP=(NEW,CATLG,CATLG),
//             DCB=(LRECL=64,RECFM=FB,BLKSIZE=0,DSORG=PS),
//             UNIT=3390,SPACE=(CYL,(5,1),RLSE)
//*
//**********************************************************************
//*  PASO       : PHT22P01                                             *00030000
//*  PROGRAMA   : DMBATCH                                              *
//*  DESCRIPCION: REALIZA LA TRANSFERENCIA DEL ARCHIVO                 *00030000
//**********************************************************************
//PHT22P01 EXEC PGM=DMBATCH,PARM=(YYSLYNN),COND=(4,LT)
//*
//STEPLIB  DD DSN=SYS3.CONNECT.TGT.LINKLIB,DISP=SHR
//DMNETMAP DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.NETMAP
//DMPUBLIB DD DISP=SHR,DSN=SIVA.NDM.PROCESS
//DMMSGFIL DD DISP=SHR,DSN=SYS3.CONNECT.DAT.CB.MSG
//DMPRINT  DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//NDMCMDS  DD SYSOUT=*
//SYSUDUMP DD DUMMY
//SYSIN    DD DSN=ZIVA.ZME.CONTROL(ZHT22T01),DISP=SHR
//*
//**********************************************************************00010000
//*                 F I N   Z M H T P E 2 1                            *00020000
//**********************************************************************00010000
